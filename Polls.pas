﻿unit Polls;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.ImgList;

type
  TForm4 = class(TForm)
    Panel_BasicCases: TPanel;
    TrackBar1: TTrackBar;
    ProgressBar1: TProgressBar;
    SpinEdit1: TSpinEdit;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Panel_Controls: TPanel;
    Button_Add: TButton;
    Button_Remove: TButton;
    Button_ClearCases: TButton;
    Panel_Additionalstuffaccessbutton: TPanel;
    Button_ChangeSize: TButton;
    ImageList1: TImageList;
    Panel_AdditionalStuff: TPanel;
    Edit_Case1: TEdit;
    Edit_Case2: TEdit;
    Edit_Case3: TEdit;
    Button_ClearVotes: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TrackBar1Change(Sender: TObject);
    procedure SetNewValue(NewValue: Word; Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button_ChangeSizeClick(Sender: TObject);
    procedure Button_AddClick(Sender: TObject);
    procedure Edit_Case1Enter(Sender: TObject);
    procedure Edit_Case1Exit(Sender: TObject);
    procedure Button_ClearCasesClick(Sender: TObject);
    procedure Button_RemoveClick(Sender: TObject);
    procedure Button_ClearVotesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const dH = 53; // delta for height changes

var
  Form4: TForm4;
  NumberOfCases :byte = 3;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
 Button_ClearCases.Click;
 Button_ClearVotes.Click;
end;

procedure TForm4.Button_AddClick(Sender: TObject);
var
 cur_editcase :TEdit;
 cur_spineditcase :TSpinEdit;
 cur_progrbar :TProgressBar;
 cur_trackbar :TTrackBar;
begin
  if NumberOfCases < 64 then begin
   inc(NumberOfCases);
   self.ClientHeight := self.ClientHeight + dH;
   self.Constraints.MinHeight := self.Constraints.MinHeight + dH;
   self.Constraints.MaxHeight := self.Constraints.MaxHeight + dH;
   cur_spineditcase := TSpinEdit.Create(Self);
   with cur_spineditcase do begin
    Parent := Panel_Basiccases;
    Top := SpinEdit1.Top + dH*(NumberOfCases-1);
    Left:= SpinEdit1.Left;
    Width := SpinEdit1.Width;
    Name := 'SpinEdit' + IntToStr(NumberOfCases);
    end;
   cur_editcase := TEdit.Create(self);
   with cur_editcase do begin
    Parent := Panel_AdditionalStuff;
    Top := Edit_Case1.Top + dH*(NumberOfCases-1);
    Left:= Edit_Case1.Left;
    Width := Edit_Case1.Width;
    Name := 'Edit_Case' + IntToStr(NumberOfCases);
    Text:= 'Case ' + IntToStr(NumberOfCases);
    Tag := NumberOfCases;
    Anchors := Edit_Case1.Anchors;
    OnEnter := Edit_Case1Enter;
    OnExit  := Edit_Case1Exit;
    end;
   cur_progrbar := TProgressBar.Create(Self);
   with cur_progrbar do begin
    Parent := Panel_BasicCases;
    Tag := NumberOfCases;
    Width := ProgressBar1.Width;
    Left := ProgressBar1.Left;
    Top := ProgressBar1.Top + dH*(NumberOfCases-1);
    end;
   cur_trackbar := TTrackBar.Create(Self);
   with cur_trackbar do begin
    Parent := Panel_BasicCases;
    Tag := NumberOfCases;
    Width := TrackBar1.Width;
    Left := TrackBar1.Left;
    Max := TrackBar1.Max;
    Top := TrackBar1.Top + dH*(NumberOfCases-1);
//    OnChange := TrackBar1.OnChange;
    end;
   end;
end;

procedure TForm4.Button_RemoveClick(Sender: TObject);
begin
  if NumberOfCases > 3 then begin
   self.ClientHeight := self.ClientHeight - dH;
   self.Constraints.MinHeight := self.Constraints.MinHeight - dH;
   self.Constraints.MaxHeight := self.Constraints.MaxHeight - dH;
   TEdit(FindComponent('Edit_Case' + IntToStr(NumberOfCases))).Free;
   TSpinEdit(FindComponent('SpinEdit' + IntToStr(NumberOfCases))).Free;
   TProgressBar(FindComponent('ProgressBar' + IntToStr(NumberOfCases))).Free;
   TTrackBar(FindComponent('TrackBar' + IntToStr(NumberOfCases))).Free;
   dec(NumberOfCases);
   end;
end;

procedure TForm4.Button_ChangeSizeClick(Sender: TObject);
const extrasize = 370; minorsize = 18;
begin
 with Panel_AdditionalStuff do
  if Width <= minorsize then begin
   Width := extrasize;
   Self.Constraints.MaxWidth := 0;
   Self.Width := Self.Width + extrasize - minorsize;
   Self.Constraints.MinWidth := Self.Constraints.MinWidth + extrasize;
   Button_ChangeSize.ImageIndex := 1;
   Button_ChangeSize.HotImageIndex := 1;
   end else begin
   Width := minorsize;
   Self.Constraints.MinWidth := Self.Constraints.MinWidth - extrasize;
   Self.Width := Self.Width - extrasize + minorsize;
   Self.Constraints.MaxWidth := Self.Constraints.MinWidth;
   Button_ChangeSize.ImageIndex := 0;
   Button_ChangeSize.HotImageIndex := 0;
   end;
end;

procedure TForm4.Button_ClearCasesClick(Sender: TObject);
var i :byte;
begin
 for i := 1 to NumberOfCases do
  TEdit(FindComponent('Edit_Case' + IntToStr(i))).Text := 'Case ' + IntToStr(i);
end;

procedure TForm4.Button_ClearVotesClick(Sender: TObject);
var i :byte;
begin
  for i := 1 to NumberOfCases do
   TSpinEdit(FindComponent('SpinEdit' + IntToStr(i))).Value := 0;
end;

procedure TForm4.Edit_Case1Enter(Sender: TObject);
begin
  if TEdit(Sender).Text = 'Case ' + IntToStr(TEdit(Sender).Tag) then
   TEdit(Sender).Text := '';
end;

procedure TForm4.Edit_Case1Exit(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then TEdit(Sender).Text :=
   'Case ' + IntToStr(TEdit(Sender).Tag);
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form4.Hide;
  Exit;
end;

procedure TForm4.SetNewValue(NewValue: Word; Sender: TObject);
var l :char; k :byte; MaxValue :word;
begin
  l := TWinControl(Sender).Name[High(TWinControl(Sender).Name)];
  TProgressBar(FindComponent('ProgressBar' + l)).Position := NewValue;
  TTrackBar(FindComponent('TrackBar' + l)).Position := NewValue;
  TSpinEdit(FindComponent('SpinEdit' + l)).Value := NewValue;
  MaxValue := SpinEdit1.Value;
  for k := 2 to NumberOfCases do MaxValue := MaxValue + TSpinEdit(FindComponent('SpinEdit' + IntToStr(k))).Value;
  for k := 1 to NumberOfCases do
   begin
   TProgressBar(FindComponent('ProgressBar' + IntToStr(k))).Max := MaxValue;
   end;

end;

procedure TForm4.SpinEdit1Change(Sender: TObject);
begin
  SetNewValue(TSpinEdit(Sender).Value, Sender);
end;

procedure TForm4.TrackBar1Change(Sender: TObject);
begin
  SetNewValue(TTrackBar(Sender).Position, Sender);
end;

end.
