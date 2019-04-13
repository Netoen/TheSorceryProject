unit Battle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls,
  Additional_hidden;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Panel_LeftSide: TPanel;
    Button_Add: TButton;
    Button_Remove: TButton;
    Button_ClearAll: TButton;
    Edit_Enemy1: TEdit;
    Panel_RightSide: TPanel;
    Label_Stamina: TLabel;
    SpinEdit_Stamina1: TSpinEdit;
    Panel4: TPanel;
    Memo_Additional: TMemo;
    Label_Skill: TLabel;
    SpinEdit_Skill1: TSpinEdit;
    Button_RemoveEnemy1: TButton;
    Panel_Edit1: TPanel;
    Panel_SpinEdit1: TPanel;
    Panel2: TPanel;
    procedure Button_AddClick(Sender: TObject);
    procedure Button_RemoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit_Enemy1Enter(Sender: TObject);
    procedure Edit_Enemy1Exit(Sender: TObject);
    procedure Button_RemoveEnemy1Click(Sender: TObject);
    procedure Button_ClearAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const dHeight = 5;

var
  Form7: TForm7;
  number_of_enemies: byte;
  cur_edit_enemy: TEdit;
  cur_panel_edit: TPanel;
  cur_panel_spinedit: TPanel;
  cur_spinedit_stamina: TSpinEdit;
  cur_spinedit_skill: TSpinEdit;
  cur_button: TButton;


implementation

{$R *.dfm}

procedure TForm7.Button_AddClick(Sender: TObject);
begin
 if number_of_enemies < 64 then begin
  inc(number_of_enemies);
  with self.Constraints do begin
   MaxHeight := MaxHeight + Panel_Edit1.Height;
   self.ClientHeight := self.ClientHeight + Panel_Edit1.Height;
   MinHeight := MinHeight + Panel_Edit1.Height;
   end;
  cur_panel_edit := TPanel.Create(Self);
  with cur_panel_edit do begin
   Parent := Panel_LeftSide;
   Height := Panel_Edit1.Height;
   Top := Parent.Height - 1;
   Align := alTop;
   Name := 'Panel_Edit' + IntToStr(number_of_enemies);
   Caption := '';
   end;
  cur_edit_enemy := TEdit.Create(Self);
  with cur_edit_enemy do begin
   Parent := cur_panel_edit;
   Align := alClient;
   Tag := number_of_enemies;
   OnEnter := Edit_Enemy1Enter;
   OnExit := Edit_Enemy1Exit;
   Name := 'Edit_Enemy' + IntToStr(number_of_enemies);
   Text := 'Enemy ' + IntToStr(number_of_enemies);
   end;
  cur_panel_spinedit := TPanel.Create(Self);
  with cur_panel_spinedit do begin
   Parent := Panel_RightSide;
   Align := alTop;
   Height := Panel_SpinEdit1.Height;
   Top := Parent.Height - 1;
   Name := 'Panel_SpinEdit' + IntToStr(number_of_enemies);
   Caption := '';
   end;
  cur_spinedit_skill := TSpinEdit.Create(Self);
  with cur_spinedit_skill do begin
   Parent := cur_panel_spinedit;
   Left := SpinEdit_Skill1.Left;
   Width := SpinEdit_Skill1.Width;
   Name := 'SpinEdit_Skill' + IntToStr(number_of_enemies);
   end;
  cur_spinedit_stamina := TSpinEdit.Create(Self);
  with cur_spinedit_stamina do begin
   Parent := cur_panel_spinedit;
   Left := SpinEdit_Stamina1.Left;
   Width := SpinEdit_Stamina1.Width;
   Name := 'SpinEdit_Stamina' + IntToStr(number_of_enemies);
   end;
  cur_button := TButton.Create(Self);
  with cur_button do begin
   Parent := cur_panel_spinedit;
   Caption := '<=X';
   Left := Button_RemoveEnemy1.Left;
   Width := Button_RemoveEnemy1.Width;
   Top := Button_RemoveEnemy1.Top;
   ImageAlignment := iaCenter;
   OnClick := Button_RemoveEnemy1Click;
   Name := 'Button_RemoveEnemy' + IntToStr(number_of_enemies);
   end;
  end;
end;

procedure TForm7.Button_ClearAllClick(Sender: TObject);
var l :byte;
begin
 for l := 1 to number_of_enemies do begin
  TEdit(FindComponent('Edit_Enemy' + IntToStr(l))).Text := 'Enemy ' + IntToStr(l);
  TSpinEdit(FindComponent('SpinEdit_Skill' + IntToStr(l))).Value := 0;
  TSpinEdit(FindComponent('SpinEdit_Stamina' + IntToStr(l))).Value := 0;
  end;
end;

procedure TForm7.Button_RemoveClick(Sender: TObject);
var c :byte; s :string;
begin
 if number_of_enemies > 1 then
  begin
  with self.Constraints do begin
   MinHeight := MinHeight - Panel_Edit1.Height;
   self.ClientHeight := self.ClientHeight - Panel_Edit1.Height;
   MaxHeight := MaxHeight - Panel_Edit1.Height;
   end;
  for c := TPanel(FindComponent('Panel_Edit'+IntToStr(number_of_enemies))).ControlCount - 1 downto 0  do
   TPanel(FindComponent('Panel_Edit'+IntToStr(number_of_enemies))).Controls[c].Free;
  for c := TPanel(FindComponent('Panel_SpinEdit'+IntToStr(number_of_enemies))).ControlCount - 1 downto 0  do
   TPanel(FindComponent('Panel_SpinEdit'+IntToStr(number_of_enemies))).Controls[c].Free;
  TPanel(FindComponent('Panel_Edit'+IntToStr(number_of_enemies))).Free;
  TPanel(FindComponent('Panel_SpinEdit'+IntToStr(number_of_enemies))).Free;
  dec(number_of_enemies);
  end;
end;

procedure TForm7.Button_RemoveEnemy1Click(Sender: TObject);
begin
//
end;

procedure TForm7.Edit_Enemy1Enter(Sender: TObject);
begin
 if TEdit(Sender).Text = 'Enemy ' + IntToStr(TEdit(Sender).Tag) then
  TEdit(Sender).Text := '';
end;

procedure TForm7.Edit_Enemy1Exit(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then TEdit(Sender).Text :=
   'Enemy ' + IntToStr(TEdit(Sender).Tag);
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
 number_of_enemies := 1;
end;

end.
