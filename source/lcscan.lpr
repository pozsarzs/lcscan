{ +--------------------------------------------------------------------------+ }
{ | LCScan 0.3r3 * Logical circuit scanner                                   | }
{ | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                | }
{ | lcscan.lpr                                                               | }
{ | Project file.                                                            | }
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

program lcscan;
{$MODE OBJFPC}{$H+}
uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}cthreads, {$ENDIF}{$ENDIF}
  Interfaces, Forms, LResources,
  {$IFNDEF UseFHS} DefaultTranslator,{$ENDIF}
  // own forms:
  frmmain, frmaddress
  // own units:
{$IFDEF UseFHS}, unttranslator{$ENDIF};

begin
  {$I lcscan.lrs}
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Title:='LCScan';
  Application.Run;
end.
