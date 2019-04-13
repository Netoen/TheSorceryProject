unit Additional_hidden;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.Samples.Spin,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdCtrls, Vcl.Menus,
  Vcl.ImgList, System.Actions;

type
  TForm5 = class(TForm)
    FileSaveDialog1: TFileSaveDialog;
    FileOpenDialog1: TFileOpenDialog;
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    Action1: TAction;
    procedure Action_Clear_LabelExecute(Sender: TObject);
    procedure SpinEditOverflowCheck(var Sender: TSpinEdit; var Lab: TLabel);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Action_Clear_LabelExecute(Sender: TObject);
var i: byte;
begin
  for i := 1 to 10 do
   ((Sender as TForm).FindComponent('Label' + IntToStr(i)) as TLabel).Caption := 'cleared';
end;

procedure TForm5.SpinEditOverflowCheck(var Sender: TSpinEdit; var Lab: TLabel);
begin
  if Sender.Value > StrToInt(Lab.Caption)
   then Sender.Value := StrToInt(Lab.Caption);
end;

end.
