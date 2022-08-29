{ +--------------------------------------------------------------------------+ }
{ | LCScan 0.3r2 * Logical circuit scanner                                   | }
{ | Copyright (C) 2006-2010 Pozsar Zsolt <info@pozsarzs.hu>                  | }
{ | lcscan-backend.pp                                                        | }
{ | Back-end programme                                                       | }
{ +--------------------------------------------------------------------------+ }

{
  This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

  This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

  You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
}

{

    Command-line parameters:

      lcscan -a start stop address           auto scan
      lcscan --auto-scan start stop address  auto scan
      lcscan -m value address                manual scan
      lcscan --manual-scan value address     manual scan

}

program backend;
{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes,
  ports;

var
  b,bb: byte;                                          // general byte variables
  i: integer;                                       // general integer variables
  lptport: word;                                         // paralel port address
  minvalue, maxvalue: byte;                              // start and end values
  inputdata: byte;                                                 // input data
  s: string;                                          // general string variable
  t: text;                                                        // output file
   
function ioperm(from: Cardinal; num: Cardinal; turn_on: Integer): Integer;
  cdecl; external 'libc';

procedure autoproc;                                                 // auto scan
begin
  if minvalue>maxvalue then
  begin
    b:=minvalue;
    minvalue:=maxvalue;
    maxvalue:=b;
  end;
  assign(t,'/tmp/lcscan.tmp');
  rewrite(t);
  for b:=minvalue to maxvalue do
  begin
    bb:=0;
    port[lptport]:=b;

    port[lptport+2]:=2;              // 1st group
    inputdata:=port[lptport+1];
    inputdata:=inputdata xor $70;    // invert 'busy' bit
    inputdata:=inputdata shr 4;
    if inputdata and $01 = 1 then bb:=bb+2;
    if inputdata and $02 = 2 then bb:=bb+64;
    if inputdata and $04 = 4 then bb:=bb+4;
    if inputdata and $08 = 8 then bb:=bb+128;

    port[lptport+2]:=0;              // 2st group
    inputdata:=port[lptport+1];
    inputdata:=inputdata xor $70;    // invert 'busy' bit
    inputdata:=inputdata shr 4;
    if inputdata and $01 = 1 then bb:=bb+8;
    if inputdata and $02 = 2 then bb:=bb+32;
    if inputdata and $04 = 4 then bb:=bb+1;
    if inputdata and $08 = 8 then bb:=bb+16;

    writeln(t,bb);
  end;
  close(t); 
end;

procedure manualproc;                                             // manual scan
begin
  assign(t,'/tmp/lcscan.tmp');
  rewrite(t);
  if ioresult<>0 then halt(3);
  bb:=0;
  port[lptport]:=minvalue;

  port[lptport+2]:=2;              // 1st group
  inputdata:=port[lptport+1];
  inputdata:=inputdata xor $70;    // invert 'busy' bit
  inputdata:=inputdata shr 4;
  if inputdata and $01 = 1 then bb:=bb+2;
  if inputdata and $02 = 2 then bb:=bb+64;
  if inputdata and $04 = 4 then bb:=bb+4;
  if inputdata and $08 = 8 then bb:=bb+128;

  port[lptport+2]:=0;              // 2st group
  inputdata:=port[lptport+1];
  inputdata:=inputdata xor $70;    // invert 'busy' bit
  inputdata:=inputdata shr 4;
  if inputdata and $01 = 1 then bb:=bb+8;
  if inputdata and $02 = 2 then bb:=bb+32;
  if inputdata and $04 = 4 then bb:=bb+1;
  if inputdata and $08 = 8 then bb:=bb+16;

  writeln(t,bb);
  close(t); 
end;

{$IFDEF WINDOWS}{$R lcscan-backend.rc}{$ENDIF}

begin
  if paramcount=0 then writeln('Error: Do not run lcscan-backend manually!') else
  begin
    s:=paramstr(1);

    if (s='-a') or (s='--auto-scan') then
    begin
      val(paramstr(2),minvalue,i);
      if i<>0 then
      begin
        writeln('Error: Bad start value!');
	halt(2);
      end; 
      val(paramstr(3),minvalue,i);
      if i<>0 then
      begin
        writeln('Error: Bad end value!');
	halt(2);
      end; 
      s:=paramstr(4);
      val(s,lptport,i);
      if i<>0 then
      begin
        writeln('Error: Bad port value!');
        halt(2);
      end; 
      ioperm(lptport, 8, 1);
      autoproc;
      halt(0);
    end;

    if (s='-m') or (s='--manual-scan') then
    begin
      val(paramstr(2),minvalue,i);
      if i<>0 then
      begin
        writeln('Error: Bad value!');
	halt(2);
      end; 
      s:=paramstr(3);
      val(s,lptport,i);
      if i<>0 then
      begin
        writeln('Error: Bad port value!');
        halt(2);
      end; 
      ioperm(lptport, 8, 1);
      manualproc;
      halt(0);
    end;
    writeln('Error: Bad parameters!');
    halt(2);
  end;
  halt(1);
end.

