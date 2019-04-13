object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dice Roller'
  ClientHeight = 83
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label_Dice_Number_Title: TLabel
    Left = 8
    Top = 8
    Width = 120
    Height = 19
    Caption = 'Number of dice: '
  end
  object Label_dice_Number: TLabel
    Left = 142
    Top = 8
    Width = 31
    Height = 19
    Hint = 'Double-click ...'
    AutoSize = False
    Caption = '1'
    OnDblClick = Label_dice_NumberDblClick
  end
  object Label1: TLabel
    Left = 8
    Top = 58
    Width = 46
    Height = 19
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 46
    Height = 19
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 8
    Top = 105
    Width = 46
    Height = 19
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 8
    Top = 130
    Width = 46
    Height = 19
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 8
    Top = 155
    Width = 46
    Height = 19
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 8
    Top = 180
    Width = 46
    Height = 19
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 8
    Top = 205
    Width = 46
    Height = 19
    Caption = 'Label7'
  end
  object Label8: TLabel
    Left = 8
    Top = 230
    Width = 46
    Height = 19
    Caption = 'Label8'
  end
  object Label9: TLabel
    Left = 8
    Top = 255
    Width = 46
    Height = 19
    Caption = 'Label9'
  end
  object Label10: TLabel
    Left = 8
    Top = 280
    Width = 55
    Height = 19
    Caption = 'Label10'
  end
  object Label_Side_Number_Title: TLabel
    Left = 8
    Top = 33
    Width = 122
    Height = 19
    Caption = 'Number of sides:'
  end
  object Label_Side_Number: TLabel
    Left = 142
    Top = 33
    Width = 31
    Height = 19
    AutoSize = False
    Caption = '6'
    OnDblClick = Label_Side_NumberDblClick
  end
  object SpinButton1: TSpinButton
    Left = 179
    Top = 2
    Width = 20
    Height = 25
    DownGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    TabOrder = 0
    UpGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000080
      8000008080000080800000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000000000000000000000000000080
      8000008080000080800000808000008080000080800000808000000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    OnDownClick = SpinButton1DownClick
    OnUpClick = SpinButton1UpClick
  end
  object SpinButton2: TSpinButton
    Left = 179
    Top = 27
    Width = 20
    Height = 25
    DownGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    TabOrder = 1
    UpGlyph.Data = {
      0E010000424D0E01000000000000360000002800000009000000060000000100
      200000000000D800000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000080
      8000008080000080800000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000000000000000000000000000080
      8000008080000080800000808000008080000080800000808000000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000}
    OnDownClick = SpinButton2DownClick
    OnUpClick = SpinButton2UpClick
  end
  object Button_Roll: TButton
    Left = 112
    Top = 56
    Width = 87
    Height = 25
    Caption = 'Roll !'
    TabOrder = 2
    OnClick = Button_RollClick
  end
  object StaticText1: TStaticText
    Left = 80
    Top = 58
    Width = 13
    Height = 23
    Caption = '0'
    TabOrder = 3
  end
end
