object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Bonuses, Curses and Penalties'
  ClientHeight = 207
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 405
    Height = 207
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 523
    ExplicitHeight = 171
    object Memo_Equipment: TMemo
      Left = 1
      Top = 1
      Width = 403
      Height = 205
      Align = alClient
      ScrollBars = ssBoth
      TabOrder = 0
      ExplicitWidth = 520
      ExplicitHeight = 232
    end
  end
end
