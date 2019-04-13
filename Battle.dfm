object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Battle'
  ClientHeight = 114
  ClientWidth = 500
  Color = clBtnFace
  Constraints.MaxHeight = 147
  Constraints.MinHeight = 141
  Constraints.MinWidth = 1
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 31
    Align = alTop
    TabOrder = 0
    object Button_Add: TButton
      Left = 2
      Top = 3
      Width = 116
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      TabStop = False
      OnClick = Button_AddClick
    end
    object Button_Remove: TButton
      Left = 125
      Top = 3
      Width = 116
      Height = 25
      Caption = 'Remove'
      TabOrder = 1
      TabStop = False
      OnClick = Button_RemoveClick
    end
    object Button_ClearAll: TButton
      Left = 246
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Clear All'
      TabOrder = 2
      TabStop = False
      OnClick = Button_ClearAllClick
    end
    object Panel2: TPanel
      Left = 334
      Top = 1
      Width = 165
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      object Label_Stamina: TLabel
        Left = 56
        Top = 4
        Width = 57
        Height = 19
        Caption = 'Stamina'
      end
      object Label_Skill: TLabel
        Left = 9
        Top = 5
        Width = 29
        Height = 19
        Caption = 'Skill'
      end
    end
  end
  object Panel_LeftSide: TPanel
    Left = 0
    Top = 31
    Width = 333
    Height = 34
    Align = alClient
    TabOrder = 1
    object Panel_Edit1: TPanel
      Left = 1
      Top = 1
      Width = 331
      Height = 32
      Align = alTop
      TabOrder = 0
      object Edit_Enemy1: TEdit
        Tag = 1
        Left = 1
        Top = 1
        Width = 329
        Height = 30
        Align = alClient
        TabOrder = 0
        Text = 'Enemy 1'
        OnEnter = Edit_Enemy1Enter
        OnExit = Edit_Enemy1Exit
        ExplicitHeight = 27
      end
    end
  end
  object Panel_RightSide: TPanel
    Left = 333
    Top = 31
    Width = 167
    Height = 34
    Align = alRight
    TabOrder = 2
    object Panel_SpinEdit1: TPanel
      Left = 1
      Top = 1
      Width = 165
      Height = 32
      Align = alTop
      TabOrder = 0
      object SpinEdit_Skill1: TSpinEdit
        Left = 3
        Top = 1
        Width = 54
        Height = 29
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
      object Button_RemoveEnemy1: TButton
        Tag = 1
        Left = 123
        Top = 4
        Width = 38
        Height = 25
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = '<=X'
        DoubleBuffered = True
        HotImageIndex = 0
        ImageAlignment = iaCenter
        ImageIndex = 0
        ParentDoubleBuffered = False
        PressedImageIndex = 1
        TabOrder = 2
        OnClick = Button_RemoveEnemy1Click
      end
      object SpinEdit_Stamina1: TSpinEdit
        Left = 61
        Top = 1
        Width = 57
        Height = 29
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 500
    Height = 49
    Align = alBottom
    Caption = 'Panel4'
    TabOrder = 3
    object Memo_Additional: TMemo
      Left = 1
      Top = 1
      Width = 498
      Height = 47
      Align = alClient
      TabOrder = 0
    end
  end
end
