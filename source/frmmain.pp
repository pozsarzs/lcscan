{ +--------------------------------------------------------------------------+ }
{ | LCScan 0.3r3 * Logical circuit scanner                                   | }
{ | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                | }
{ | frmmain.pp                                                               | }
{ | Main form.                                                               | }
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

unit frmmain;
{$mode objfpc}{$H+}
interface
uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, Buttons, Spin, Convert, Ports, dos, gettext, frmaddress, Process;
type
  { TForm1 }
  TForm1 = class(TForm)
    Bevel1: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel19: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox2: TListBox;
    Memo1: TMemo;
    Notebook1: TNotebook;
    Page1: TPage;
    Page2: TPage;
    Page3: TPage;
    Page4: TPage;
    Page5: TPage;
    Process1: TProcess;
    Process2: TProcess;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    Shape1: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit10Change;
    procedure Edit11Change;
    procedure Edit12Change;
    procedure Edit13Change;
    procedure Edit14Change;
    procedure Edit15Change;
    procedure Edit16Change;
    procedure Edit1Change;
    procedure Edit2Change;
    procedure Edit3Change;
    procedure Edit4Change;
    procedure Edit5Change;
    procedure Edit6Change;
    procedure Edit7Change;
    procedure Edit8Change;
    procedure Edit9Change;
    procedure CheckBox1Change;
    procedure Form1Create(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure Notebook1PageChanged(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 
var
  Form1: TForm1; 
  address: word;
  exepath, p: shortstring;
  indatabuffer: array[0..255] of byte;
  min, max: byte;
  count: integer;
  i: integer;

{$I config.inc}

resourcestring
  MESSAGE01='About';
  MESSAGE02='Logical circuit scanner';
  MESSAGE03='Number converter';
  MESSAGE04='Decimal';
  MESSAGE05='Hexadecimal';
  MESSAGE06='Binary';
  MESSAGE07='Convert';
  MESSAGE08='Manual scan';
  MESSAGE09='Inputs';
  MESSAGE10='Outputs';
  MESSAGE11='Auto scan';
  MESSAGE12='Start';
  MESSAGE13='I/O lines';
  MESSAGE14='Quit';
  MESSAGE15='In';
  MESSAGE16='Out';
  MESSAGE17='Licence: GNU GPL 3.0 or later';
  MESSAGE18='Bad value! (0-255)';
  MESSAGE19='Bad value! (0-FF)';
  MESSAGE20='Bad value! (0-11111111)';
  MESSAGE21='Find';
  MESSAGE22='Data type';
  MESSAGE23='Next find?';
  MESSAGE24='Not found!';
  MESSAGE25='Port address';
  MESSAGE26='OK';
  MESSAGE27='Backend run error!';
  MESSAGE28='Wire';
  MESSAGE29='Cannot run default browser.';
  MESSAGE30='Cannot run default mailer.';

implementation
{$R *.lfm}
{ TForm1 }

//-- run browser ---------------------------------------------------------------
procedure runbrowser(url: string);
const
    defbrowser='xdg-open';
begin
  Form1.Process1.CommandLine:=defbrowser+' '+url;
  try
    Form1.Process1.Execute;
  except
    ShowMessage(MESSAGE29);
  end;
end;

//-- run mailer ----------------------------------------------------------------
procedure runmailer(url: string);
const
    defmailer='xdg-email';
begin
  Form1.Process2.CommandLine:=defmailer+' '+url;
  try
    Form1.Process2.Execute;
  except
    ShowMessage(MESSAGE30);
  end;
end;

// --- common functions --------------------------------------------------------
function twodigits(inp: string): string;   // Add some zeros if inp is too short
var
  b: byte;
  s: string;

begin
  s:=inp;
  for b:=1 to 2 do
    if length(s)<2 then s:='0'+s;
  result:=s;
end;

function treedigits(inp: string): string;  // Add some zeros if inp is too short
var
  b: byte;
  s: string;

begin
  s:=inp;
  for b:=1 to 3 do
    if length(s)<3 then s:='0'+s;
  result:=s;
end;

function eightbits(inp: string): string;   // Add some zeros if inp is too short
var
  b: byte;
  s: string;

begin
  s:=inp;
  for b:=1 to 8 do
    if length(s)<8 then s:='0'+s;
  result:=s;
end;

// -- OnCreate event -----------------------------------------------------------
procedure TForm1.Form1Create(Sender: TObject);
begin
  Page1.Caption:=MESSAGE13;                                        // Names page
  Label1.Caption:=MESSAGE16+' #1';
  Label2.Caption:=MESSAGE16+' #2';
  Label3.Caption:=MESSAGE16+' #3';
  Label4.Caption:=MESSAGE16+' #4';
  Label5.Caption:=MESSAGE16+' #5';
  Label6.Caption:=MESSAGE16+' #6';
  Label7.Caption:=MESSAGE16+' #7';
  Label8.Caption:=MESSAGE16+' #8';
  Label18.Caption:=MESSAGE15+' #1';
  Label17.Caption:=MESSAGE15+' #2';
  Label16.Caption:=MESSAGE15+' #3';
  Label15.Caption:=MESSAGE15+' #4';
  Label14.Caption:=MESSAGE15+' #5';
  Label13.Caption:=MESSAGE15+' #6';
  Label12.Caption:=MESSAGE15+' #7';
  Label11.Caption:=MESSAGE15+' #8';
  Edit1.Caption:=MESSAGE16+' #1';
  Edit2.Caption:=MESSAGE16+' #2';
  Edit3.Caption:=MESSAGE16+' #3';
  Edit4.Caption:=MESSAGE16+' #4';
  Edit5.Caption:=MESSAGE16+' #5';
  Edit6.Caption:=MESSAGE16+' #6';
  Edit7.Caption:=MESSAGE16+' #7';
  Edit8.Caption:=MESSAGE16+' #8';
  Edit16.Caption:=MESSAGE15+' #1';
  Edit15.Caption:=MESSAGE15+' #2';
  Edit14.Caption:=MESSAGE15+' #3';
  Edit13.Caption:=MESSAGE15+' #4';
  Edit12.Caption:=MESSAGE15+' #5';
  Edit11.Caption:=MESSAGE15+' #6';
  Edit10.Caption:=MESSAGE15+' #7';
  Edit9.Caption:=MESSAGE15+' #8';
  Label9.Caption:=MESSAGE10;
  Label10.Caption:=MESSAGE09;
  Button1.Caption:=MESSAGE14;

  Page3.Caption:=MESSAGE08;                                  // Manual scan page
  Label19.Caption:=MESSAGE10;
  Label20.Caption:=MESSAGE09;
  Label43.Caption:=MESSAGE28;

  Page2.Caption:=MESSAGE11;                                    // Auto scan page
  Button5.Caption:=MESSAGE12;
  Button6.Caption:=MESSAGE21;
  Label40.Caption:=MESSAGE10+' #8..#1';
  Label41.Caption:=MESSAGE09+' #8..#1';
  Label42.Caption:=MESSAGE21;
  RadioGroup1.Caption:=MESSAGE22;
  RadioButton1.Caption:=MESSAGE16;
  RadioButton2.Caption:=MESSAGE15;

  Page5.Caption:=MESSAGE03;                                    // Converter page
  Label25.Caption:=MESSAGE04;
  Label26.Caption:=MESSAGE05;
  Label27.Caption:=MESSAGE06;
  Button2.Caption:=MESSAGE07;
  Button3.Caption:=MESSAGE07;
  Button4.Caption:=MESSAGE07;
  Button7.Caption:=MESSAGE25;

  Page4.Caption:=MESSAGE01;                                        // About page
  Label22.Caption:=MESSAGE02;
  Label39.Caption:=MESSAGE17;

  Edit1Change;                                                          // Other
  Edit2Change;
  Edit3Change;
  Edit4Change;
  Edit5Change;
  Edit6Change;
  Edit7Change;
  Edit8Change;
  Edit16Change;
  Edit15Change;
  Edit14Change;
  Edit13Change;
  Edit12Change;
  Edit11Change;
  Edit10Change;
  Edit9Change;
  
  address:=$378;
  StatusBar1.Panels[0].Text:=' port: '+deztohex(inttostr(address))+'H';

  StatusBar1.Panels[1].Text:=' O/I: 000/000';
  StatusBar1.Panels[2].Text:=' O/I: 00H/00H';
  StatusBar1.Panels[3].Text:=' O/I: 00000000B/00000000B';
end;

// -- quit ---------------------------------------------------------------------
procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

//-- set port address ---------------------------------------------------------
procedure TForm1.Button7Click(Sender: TObject);
begin
  Form2.Caption:=MESSAGE25;
  Form2.GroupBox1.Caption:=MESSAGE25;
  Form2.Button1.Caption:=MESSAGE26;
  Form2.ShowModal;
  StatusBar1.Panels[0].Text:=' port: '+deztohex(inttostr(address))+'H';
end;

//-- clear at page change ------------------------------------------------------
procedure TForm1.Notebook1PageChanged(Sender: TObject);
begin
  CheckBox1.Checked:=false;
  CheckBox3.Checked:=false;
  CheckBox4.Checked:=false;
  CheckBox5.Checked:=false;
  CheckBox6.Checked:=false;
  CheckBox7.Checked:=false;
  CheckBox8.Checked:=false;
  CheckBox9.Checked:=false;

  Shape1.Brush.Color:=clMaroon;
  Shape3.Brush.Color:=clMaroon;
  Shape4.Brush.Color:=clMaroon;
  Shape5.Brush.Color:=clMaroon;
  Shape7.Brush.Color:=clMaroon;
  Shape8.Brush.Color:=clMaroon;
  Shape9.Brush.Color:=clMaroon;
  Shape10.Brush.Color:=clMaroon;

  StatusBar1.Panels[0].Text:=' port: '+deztohex(inttostr(address))+'H';
  StatusBar1.Panels[1].Text:=' O/I: 000/000';
  StatusBar1.Panels[2].Text:=' O/I: 00H/00H';
  StatusBar1.Panels[3].Text:=' O/I: 00000000B/00000000B';

  max:=255;
  min:=0;
end;

// -- names page ---------------------------------------------------------------
procedure TForm1.Edit1Change;
begin
  CheckBox1.Caption:=Edit1.Text;
end;

procedure TForm1.Edit2Change;
begin
  CheckBox3.Caption:=Edit2.Text;
end;

procedure TForm1.Edit3Change;
begin
  CheckBox4.Caption:=Edit3.Text;
end;

procedure TForm1.Edit4Change;
begin
  CheckBox5.Caption:=Edit4.Text;
end;

procedure TForm1.Edit5Change;
begin
  CheckBox6.Caption:=Edit5.Text;
end;

procedure TForm1.Edit6Change;
begin
  CheckBox7.Caption:=Edit6.Text;
end;

procedure TForm1.Edit7Change;
begin
  CheckBox8.Caption:=Edit7.Text;
end;

procedure TForm1.Edit8Change;
begin
  CheckBox9.Caption:=Edit8.Text;
end;

procedure TForm1.Edit9Change;
begin
  Label35.Caption:=Edit9.Text;
end;

procedure TForm1.Edit10Change;
begin
  Label34.Caption:=Edit10.Text;
end;

procedure TForm1.Edit11Change;
begin
  Label33.Caption:=Edit11.Text;
end;

procedure TForm1.Edit12Change;
begin
  Label32.Caption:=Edit12.Text;
end;

procedure TForm1.Edit13Change;
begin
  Label31.Caption:=Edit13.Text;
end;

procedure TForm1.Edit14Change;
begin
  Label30.Caption:=Edit14.Text;
end;

procedure TForm1.Edit15Change;
begin
  Label29.Caption:=Edit15.Text;
End;

procedure TForm1.Edit16Change;
begin
  Label28.Caption:=Edit16.Text;
end;

// -- auto scan page -----------------------------------------------------------
procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  SpinEdit3.MaxValue:=max;
  SpinEdit3.MinValue:=min;
  SpinEdit3.Value:=min;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  SpinEdit3.MaxValue:=255;
  SpinEdit3.MinValue:=0;
  SpinEdit3.Value:=0;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  s: string;
  i: integer;
  b: byte;
begin
  if RadioButton1.Checked=True then
  begin
    str(SpinEdit3.Value,s);
    val(s,b,i);
    ListBox2.ItemIndex:=b-min;
    ListBox2.TopIndex:=b-min;
  end else
  begin
    str(SpinEdit3.Value,s);
    val(s,b,i);
    for i:=0 to count do
    begin
      if i=count then
      begin
        messagedlg(MESSAGE24,mtInformation,[mbOK],0);
        break;
      end;
      if indatabuffer[i]=b then
      begin
        ListBox2.ItemIndex:=i;
        ListBox2.TopIndex:=i;
        if messagedlg(MESSAGE23,mtConfirmation,[mbYes, mbNo],0)= mrNo then break;
        if i=count then messagedlg(MESSAGE24,mtInformation,[mbOK],0);
      end;
    end;
  end;
end;

procedure TForm1.ListBox2DblClick(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:=' O/I: '+
    treedigits(inttostr(min+ListBox2.ItemIndex))+
    '/'+treedigits(inttostr(indatabuffer[ListBox2.ItemIndex]));
  StatusBar1.Panels[2].Text:=' O/I: '+
    twodigits(deztohex(inttostr(min+ListBox2.ItemIndex)))+
    'H/'+twodigits(deztohex(inttostr(indatabuffer[ListBox2.ItemIndex])))+'H';
  StatusBar1.Panels[3].Text:=' O/I: '+
    eightbits(deztobin(inttostr(min+ListBox2.ItemIndex)))+
    'B/'+eightbits(deztobin(inttostr(indatabuffer[ListBox2.ItemIndex])))+'B';
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  b: byte;
  si: longint;
  s: string;

begin
  for b:=0 to 255 do indatabuffer[b]:=0;
  if SpinEdit1.Value > SpinEdit2.Value then
  begin
    si:=SpinEdit1.Value;
    SpinEdit1.Value:=SpinEdit2.Value;
    SpinEdit2.Value:=si;
  end;
  str(SpinEdit1.Value,s);
  val(s,min,i);
  str(SpinEdit2.Value,s);
  val(s,max,i);
  if RadioButton1.Checked=true then
  begin
    SpinEdit3.MaxValue:=max;
    SpinEdit3.MinValue:=min;
  end;
  swapvectors;
  {$IFDEF UseFHS}
    exec(instpath+'bin/lcscan-backend','-a '+inttostr(min)+' '+inttostr(max)+
      ' '+inttostr(address));
  {$ELSE}
    exec(exepath+'lcscan-backend','-a '+inttostr(min)+' '+inttostr(max)+
      ' '+inttostr(address));
  {$ENDIF}
  swapvectors;
  if (dosexitcode<>0) or (doserror<>0) then
  begin
    messagedlg(MESSAGE27,mtError,[mbOK],0);
    Application.Terminate;
  end;
  Memo1.Lines.LoadFromFile('/tmp/lcscan.tmp');
  for count:=0 to Memo1.Lines.Count-1 do
    val(Memo1.Lines.Strings[count],indatabuffer[count],i);
  ListBox2.Items.Clear;
  for b:=0 to count do
  begin
    ListBox2.Items.Add(treedigits(inttostr(min+b))+
      '  '+eightbits(deztobin(inttostr(min+b)))+'    '+
      treedigits(inttostr(indatabuffer[b]))+
      '  '+eightbits(deztobin(inttostr(indatabuffer[b]))));
  end;
  SpinEdit3.Enabled:=True;
  RadioGroup1.Enabled:=True;
  Button6.Enabled:=True;
end;

// -- manual scan page ---------------------------------------------------------
procedure TForm1.CheckBox1Change;
var
  s,ss: string;
  b: byte;
  indata: byte;
  outdata: byte;
begin
  outdata:=0;
  if CheckBox1.Checked=true then outdata:=outdata+1;
  if CheckBox3.Checked=true then outdata:=outdata+2;
  if CheckBox4.Checked=true then outdata:=outdata+4;
  if CheckBox5.Checked=true then outdata:=outdata+8;
  if CheckBox6.Checked=true then outdata:=outdata+16;
  if CheckBox7.Checked=true then outdata:=outdata+32;
  if CheckBox8.Checked=true then outdata:=outdata+64;
  if CheckBox9.Checked=true then outdata:=outdata+128;
  swapvectors;
  {$IFDEF UseFHS}
    exec(instpath+'bin/lcscan-backend','-m '+inttostr(outdata)+' '+inttostr(address));
  {$ELSE}
    exec(exepath+'lcscan-backend','-m '+inttostr(outdata)+' '+inttostr(address));
  {$ENDIF}
  swapvectors;
  if (dosexitcode<>0) or (doserror<>0) then
  begin
    messagedlg(MESSAGE27,mtError,[mbOK],0);
    Application.Terminate;
  end;
  Memo1.Lines.LoadFromFile('/tmp/lcscan.tmp');
  val(Memo1.Lines.Strings[0],indata,i);
  str(indata,ss);
  s:=deztobin(ss);
  for b:=1 to 8 do
    if length(s)<8 then s:='0'+s;
  if s[8]='1' then Shape1.Brush.Color:=clRed else Shape1.Brush.Color:=clMaroon;
  if s[7]='1' then Shape3.Brush.Color:=clRed else Shape3.Brush.Color:=clMaroon;
  if s[6]='1' then Shape4.Brush.Color:=clRed else Shape4.Brush.Color:=clMaroon;
  if s[5]='1' then Shape5.Brush.Color:=clRed else Shape5.Brush.Color:=clMaroon;
  if s[4]='1' then Shape7.Brush.Color:=clRed else Shape7.Brush.Color:=clMaroon;
  if s[3]='1' then Shape8.Brush.Color:=clRed else Shape8.Brush.Color:=clMaroon;
  if s[2]='1' then Shape9.Brush.Color:=clRed else Shape9.Brush.Color:=clMaroon;
  if s[1]='1' then Shape10.Brush.Color:=clRed else Shape10.Brush.Color:=clMaroon;
  StatusBar1.Panels[1].Text:=' O/I: '+treedigits(inttostr(outdata))+
    '/'+treedigits(inttostr(indata));
  StatusBar1.Panels[2].Text:=' O/I: '+twodigits(deztohex(inttostr(outdata)))+
    'H/'+twodigits(deztohex(inttostr(indata)))+'H';
  StatusBar1.Panels[3].Text:=' O/I: '+eightbits(deztobin(inttostr(outdata)))+
    'B/'+eightbits(deztobin(inttostr(indata)))+'B';
end;

// -- number converter page ----------------------------------------------------
procedure TForm1.Button2Click(Sender: TObject);        // Dec. -> Hexadec., Bin.
var
  s: string;
  i, ii: integer;

begin
  s:=Edit17.Text;
  Edit18.Text:='-';
  Edit19.Text:='-';
  val(s,i,ii);
  if (ii<>0) or (i>255) then
  begin
    messagedlg(MESSAGE18,mtError,[mbOK],0);
    exit;
  end;
  str(i,s);
  Edit18.Text:=deztohex(s);
  Edit19.Text:=deztobin(s);
end;

procedure TForm1.Button3Click(Sender: TObject);        // Hexadec. -> Dec., Bin.
var
  s: string;

begin
  s:=Edit18.Text;
  Edit17.Text:='-';
  Edit19.Text:='-';
  if (hextodez(s)='0') and (s<>'0') and (s<>'00')
  then
  begin
    messagedlg(MESSAGE19,mtError,[mbOK],0);
    exit;
  end;
  Edit17.Text:=hextodez(s);
  Edit19.Text:=hextobin(s);
end;

procedure TForm1.Button4Click(Sender: TObject);        // Bin. -> Dec., Hexadec.
var
  s: string;
  b: byte;

begin
  s:=Edit19.Text;
  Edit17.Text:='-';
  Edit18.Text:='-';
  for b:=1 to length(s) do
  begin
   if (s[b]<>'0') and (s[b]<>'1')
   then
    begin
      messagedlg(MESSAGE20,mtError,[mbOK],0);
      exit;
    end;
  end;
  Edit17.Text:=bintodez(s);
  Edit18.Text:=bintohex(s);
end;

//-- send e-mail by default mailer ---------------------------------------------
procedure TForm1.Label38Click(Sender: TObject);
begin
  runmailer(Label38.Caption);
end;

//-- open homepage by default browser ------------------------------------------
procedure TForm1.Label24Click(Sender: TObject);
begin
  runbrowser(Label24.Caption);
end;

end.

