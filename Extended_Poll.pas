unit Extended_Poll;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    ButtonAdd: TButton;
    ButtonRemove: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    Panel3: TPanel;
    ButtonClearVotes: TButton;
    ButtonClearNames: TButton;
    Edit2: TEdit;
    SpinEdit2: TSpinEdit;
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonRemoveClick(Sender: TObject);
    procedure ButtonClearNamesClick(Sender: TObject);
    procedure ButtonClearVotesClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  number_of_cases: byte = 2;
  cur_edit_field: TEdit;
  cur_spinedit_field: TSpinEdit;
  i: byte;

implementation

{$R *.dfm}

procedure TForm6.ButtonAddClick(Sender: TObject);
begin
  if number_of_cases < 64 then
   begin
   inc(number_of_cases);
   self.ClientHeight := self.ClientHeight + Edit1.Height + (Edit2.Top - Edit1.Top - Edit1.Height);
   cur_edit_field := TEdit.Create(self);
   cur_edit_field.Parent := Panel2;
   cur_edit_field.Top := Edit1.Top + 32*(number_of_cases-1);
   cur_edit_field.Left:= Edit1.Left;
   cur_edit_field.Width := Edit1.Width;
   cur_edit_field.Name := 'Edit' + IntToStr(number_of_cases);
   cur_edit_field.Text:= 'Case ' + IntToStr(number_of_cases);
   cur_edit_field.Tag := number_of_cases;
   cur_edit_field.OnEnter := Edit1Enter;
   cur_edit_field.OnExit  := Edit1Exit;
   cur_spinedit_field := TSpinEdit.Create(Self);
   cur_spinedit_field.Parent := Panel3;
   cur_spinedit_field.Top := SpinEdit1.Top + 32*(number_of_cases-1);
   cur_spinedit_field.Left:= SpinEdit1.Left;
   cur_spinedit_field.Width := SpinEdit1.Width;
   cur_spinedit_field.Name := 'SpinEdit' + IntToStr(number_of_cases);
   end;
end;

procedure TForm6.ButtonClearNamesClick(Sender: TObject);
begin
  for i := 1 to number_of_cases do
   TEdit(FindComponent('Edit' + IntToStr(i))).Text := 'Case ' + IntToStr(i);
end;

procedure TForm6.ButtonClearVotesClick(Sender: TObject);
begin
  for i := 1 to number_of_cases do
   TSpinEdit(FindComponent('SpinEdit' + IntToStr(i))).Value := 0;
end;

procedure TForm6.ButtonRemoveClick(Sender: TObject);
begin
  if number_of_cases > 2 then
   begin
   self.ClientHeight := self.ClientHeight - (Edit2.Top - Edit1.Top);
   TEdit(FindComponent('Edit' + IntToStr(number_of_cases))).Free;
   TSpinEdit(FindComponent('SpinEdit' + IntToStr(number_of_cases))).Free;
   dec(number_of_cases);
   end;
end;

procedure TForm6.Edit1Enter(Sender: TObject);
begin
  if TEdit(Sender).Text = 'Case ' + IntToStr(TEdit(Sender).Tag) then
   TEdit(Sender).Text := '';
end;

procedure TForm6.Edit1Exit(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then TEdit(Sender).Text :=
   'Case ' + IntToStr(TEdit(Sender).Tag);
end;

end.
