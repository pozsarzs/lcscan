{ +--------------------------------------------------------------------------+ }
{ | LCScan 0.3r3 * Logical circuit scanner                                   | }
{ | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                | }
{ | LCScan 0.3r2 * Logical circuit scanner                                   | }
{ | Copyright (C) 2006-2010 Pozsar Zsolt <info@pozsarzs.hu>                  | }
{ | frmaddress.pp                                                            | }
{ | Address selector window                                                  | }
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

unit frmaddress;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, Process;

type
  { TForm2 }
  TForm2 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2: TForm2; 

implementation
uses frmmain;
{$R *.lfm}
{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.RadioButton1Change(Sender: TObject);
begin
  frmmain.address:=$378;
end;

procedure TForm2.RadioButton2Change(Sender: TObject);
begin
  frmmain.address:=$278;
end;

procedure TForm2.RadioButton3Change(Sender: TObject);
begin
  frmmain.address:=$3bc;
end;

end.

