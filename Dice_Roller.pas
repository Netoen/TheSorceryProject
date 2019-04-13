unit Dice_Roller;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Additional_hidden;

type
  TForm3 = class(TForm)
    Label_Dice_Number_Title: TLabel;
    Label_dice_Number: TLabel;
    SpinButton1: TSpinButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label_Side_Number_Title: TLabel;
    Label_Side_Number: TLabel;
    SpinButton2: TSpinButton;
    Button_Roll: TButton;
    StaticText1: TStaticText;
    procedure SpinButton1DownClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure Button_RollClick(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure Label_dice_NumberDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label_Side_NumberDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Number_of_Dice, Number_of_Sides: byte;

implementation

{$R *.dfm}

procedure TForm3.Button_RollClick(Sender: TObject);
var i,k: byte; b: word;
begin
  b := 0;
  for i := 1 to Number_of_Dice do
  begin
   Randomize;
   k := Random(Number_of_Sides)+1;
   b := b + k;
   TLabel(FindComponent('Label' + IntToStr(i))).Caption := IntToStr(k);
  end;
  StaticText1.Caption := IntToStr(b);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Number_of_Dice  := 1;
  Number_of_Sides := 6;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Form5.Action_Clear_LabelExecute(Self);
  StaticText1.Caption := '0';
end;

procedure TForm3.Label_dice_NumberDblClick(Sender: TObject);
begin
  Form5.Action_Clear_LabelExecute(Self);
  StaticText1.Caption := '0';
end;

procedure TForm3.Label_Side_NumberDblClick(Sender: TObject);
begin
  Form5.Action_Clear_LabelExecute(Self);
  StaticText1.Caption := '0';
end;

procedure TForm3.SpinButton1DownClick(Sender: TObject);
begin
  if Number_of_Dice > 1 then
  begin
   Dec(Number_of_Dice);
   Label_Dice_Number.Caption := IntToStr(Number_of_Dice);
   Form5.Action_Clear_LabelExecute(Self);
   Form3.ClientHeight := Form3.ClientHeight - 24;
  end;
end;

procedure TForm3.SpinButton1UpClick(Sender: TObject);
begin
  if Number_of_Dice < 20 then
  begin
   Inc(Number_of_Dice);
   Label_Dice_Number.Caption := IntToStr(Number_of_Dice);
   Form5.Action_Clear_LabelExecute(Self);
   StaticText1.Caption := '0';
   Form3.ClientHeight := Form3.ClientHeight + 24;
  end;
end;

procedure TForm3.SpinButton2DownClick(Sender: TObject);
begin
  if Number_of_Sides > 2 then
  begin
   Dec(Number_of_Sides);
   Label_Side_Number.Caption := IntToStr(Number_of_Sides);
   Form5.Action_Clear_LabelExecute(Self);
   StaticText1.Caption := '0';
  end;
end;

procedure TForm3.SpinButton2UpClick(Sender: TObject);
begin
  if Number_of_Sides < 48 then
  begin
   Inc(Number_of_Sides);
   Label_Side_Number.Caption := IntToStr(Number_of_Sides);
   Form5.Action_Clear_LabelExecute(Self);
   StaticText1.Caption := '0';
  end;
end;

end.
