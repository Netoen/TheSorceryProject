object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Extended Poll'
  ClientHeight = 103
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 31
    Align = alTop
    TabOrder = 0
    object ButtonAdd: TButton
      Left = 3
      Top = 3
      Width = 48
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = ButtonAddClick
    end
    object ButtonRemove: TButton
      Left = 53
      Top = 3
      Width = 68
      Height = 25
      Caption = 'Remove'
      TabOrder = 1
      OnClick = ButtonRemoveClick
    end
    object ButtonClearVotes: TButton
      Left = 233
      Top = 3
      Width = 92
      Height = 25
      Caption = 'Clear Votes'
      TabOrder = 2
      OnClick = ButtonClearVotesClick
    end
    object ButtonClearNames: TButton
      Left = 125
      Top = 3
      Width = 106
      Height = 25
      Caption = 'Clear Names'
      TabOrder = 3
      OnClick = ButtonClearNamesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 280
    Height = 72
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 80
    object Edit1: TEdit
      Tag = 1
      Left = 3
      Top = 6
      Width = 261
      Height = 27
      TabOrder = 0
      Text = 'Case 1'
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Tag = 2
      Left = 3
      Top = 38
      Width = 261
      Height = 27
      TabOrder = 1
      Text = 'Case 2'
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
  end
  object Panel3: TPanel
    Left = 280
    Top = 31
    Width = 59
    Height = 72
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitHeight = 80
    object SpinEdit1: TSpinEdit
      Left = 4
      Top = 5
      Width = 51
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 4
      Top = 38
      Width = 51
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
end
