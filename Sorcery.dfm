object Form1: TForm1
  Left = 100
  Top = 100
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'The Sorcery Project'
  ClientHeight = 542
  ClientWidth = 478
  Color = clBtnFace
  Constraints.MinHeight = 445
  Constraints.MinWidth = 486
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Left = 5
  GlassFrame.Top = 5
  GlassFrame.Right = 5
  GlassFrame.Bottom = 5
  Menu = MainMenu_MainForm
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Splitter1: TSplitter
    Left = 0
    Top = 304
    Width = 478
    Height = 4
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    MinSize = 50
    ResizeStyle = rsUpdate
    ExplicitTop = 330
    ExplicitWidth = 525
  end
  object Panel2: TPanel
    Left = 0
    Top = 123
    Width = 478
    Height = 181
    Align = alTop
    TabOrder = 2
    object Label_Bonuses: TLabel
      Left = 1
      Top = 1
      Width = 476
      Height = 19
      Align = alTop
      Caption = 'Items and Artifacts'
      ExplicitWidth = 134
    end
    object Memo_Items: TMemo
      Left = 1
      Top = 20
      Width = 476
      Height = 160
      Align = alClient
      TabOrder = 1
      WordWrap = False
    end
    object Button_Bonuses: TButton
      Left = 232
      Top = 0
      Width = 235
      Height = 20
      Caption = 'Bonuses, Curses and Penalties'
      TabOrder = 0
      Visible = False
      OnClick = Button_BonusesClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 520
    Width = 478
    Height = 22
    Panels = <
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 478
    Height = 92
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label_Gold: TLabel
      Left = 340
      Top = 8
      Width = 33
      Height = 19
      Caption = 'Gold'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2342110
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_Luck: TLabel
      Left = 142
      Top = 8
      Width = 32
      Height = 19
      Caption = 'Luck'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5627427
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_Provision: TLabel
      Left = 397
      Top = 8
      Width = 65
      Height = 19
      Caption = 'Provision'
    end
    object Label_Skill: TLabel
      Left = 81
      Top = 8
      Width = 29
      Height = 19
      Caption = 'Skill'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_Skill_Max: TLabel
      Left = 74
      Top = 67
      Width = 9
      Height = 19
      Caption = '0'
    end
    object Label_Stamina: TLabel
      Left = 8
      Top = 8
      Width = 57
      Height = 19
      Caption = 'Stamina'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label_Stamina_Max: TLabel
      Left = 11
      Top = 67
      Width = 9
      Height = 19
      Caption = '0'
    end
    object Label_Luck_Max: TLabel
      Left = 135
      Top = 67
      Width = 9
      Height = 19
      Caption = '0'
    end
    object Label_Stat1_Max: TLabel
      Left = 197
      Top = 67
      Width = 9
      Height = 19
      Caption = '0'
    end
    object Label_Stat2_Max: TLabel
      Left = 260
      Top = 67
      Width = 9
      Height = 19
      Caption = '0'
    end
    object Label_Stat2: TLabel
      Left = 257
      Top = 8
      Width = 56
      Height = 19
      AutoSize = False
      Caption = 'Stat 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnDblClick = Label_Stat2DblClick
    end
    object Label_Stat1: TLabel
      Left = 195
      Top = 8
      Width = 56
      Height = 19
      AutoSize = False
      Caption = 'Stat 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnDblClick = Label_Stat1DblClick
    end
    object Edit_Stat1: TEdit
      Left = 195
      Top = 6
      Width = 56
      Height = 27
      Enabled = False
      TabOrder = 12
      Visible = False
      OnKeyPress = Edit_Stat1KeyPress
    end
    object SpinButton_Luck: TSpinButton
      Left = 171
      Top = 68
      Width = 15
      Height = 18
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
      OnDownClick = SpinButton_LuckDownClick
      OnUpClick = SpinButton_LuckUpClick
    end
    object SpinButton_Skill: TSpinButton
      Left = 108
      Top = 68
      Width = 15
      Height = 18
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
      TabOrder = 8
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
      OnDownClick = SpinButton_SkillDownClick
      OnUpClick = SpinButton_SkillUpClick
    end
    object SpinButton_Stamina: TSpinButton
      Left = 50
      Top = 68
      Width = 15
      Height = 18
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
      TabOrder = 9
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
      OnDownClick = SpinButton_StaminaDownClick
      OnUpClick = SpinButton_StaminaUpClick
    end
    object SpinEdit_Gold: TSpinEdit
      Left = 319
      Top = 33
      Width = 72
      Height = 29
      MaxValue = 0
      MinValue = 0
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
      Value = 0
    end
    object SpinEdit_Luck: TSpinEdit
      Left = 133
      Top = 33
      Width = 56
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object SpinEdit_Provision: TSpinEdit
      Left = 397
      Top = 33
      Width = 70
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Value = 0
    end
    object SpinEdit_Skill: TSpinEdit
      Left = 71
      Top = 33
      Width = 56
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object SpinEdit_Stamina: TSpinEdit
      Left = 8
      Top = 33
      Width = 60
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object SpinEdit_Stat1: TSpinEdit
      Left = 195
      Top = 33
      Width = 56
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object SpinEdit_Stat2: TSpinEdit
      Left = 257
      Top = 33
      Width = 56
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object SpinButton_Stat1: TSpinButton
      Left = 233
      Top = 68
      Width = 15
      Height = 18
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
      TabOrder = 10
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
      OnDownClick = SpinButton_Stat1DownClick
      OnUpClick = SpinButton_Stat1UpClick
    end
    object SpinButton_Stat2: TSpinButton
      Left = 295
      Top = 68
      Width = 15
      Height = 18
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
      TabOrder = 11
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
      OnDownClick = SpinButton_Stat2DownClick
      OnUpClick = SpinButton_Stat2UpClick
    end
    object Edit_Stat2: TEdit
      Left = 257
      Top = 6
      Width = 56
      Height = 27
      Enabled = False
      TabOrder = 13
      Visible = False
      OnKeyPress = Edit_Stat2KeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 308
    Width = 478
    Height = 212
    Align = alClient
    TabOrder = 3
    object Label_Clues: TLabel
      Left = 1
      Top = 1
      Width = 476
      Height = 19
      Align = alTop
      Caption = 'Clues and Notes'
      ExplicitWidth = 114
    end
    object Memo_Clues: TMemo
      Left = 1
      Top = 20
      Width = 476
      Height = 191
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 31
    Align = alTop
    TabOrder = 4
    object Label_Name: TLabel
      Left = 0
      Top = 5
      Width = 127
      Height = 19
      Caption = 'Character'#39's name:'
    end
    object Label_Name_Edit: TLabel
      Left = 133
      Top = 5
      Width = 334
      Height = 20
      AutoSize = False
      Caption = 'Double-click to change'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnDblClick = Label_Name_EditDblClick
    end
    object Edit_Name: TEdit
      Left = 133
      Top = 2
      Width = 334
      Height = 27
      TabOrder = 0
      Visible = False
      OnKeyPress = Edit_NameKeyPress
    end
  end
  object MainMenu_MainForm: TMainMenu
    AutoHotkeys = maManual
    Left = 260
    Top = 65516
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&Reset'
        OnClick = Reset_Form
      end
      object Save1: TMenuItem
        Caption = '&Save'
        Enabled = False
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save &As...'
        OnClick = Save_As
      end
      object Open1: TMenuItem
        Caption = '&Load...'
        OnClick = Load
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit
      end
    end
    object Style1: TMenuItem
      Caption = 'Sty&le'
      object Amakrits1: TMenuItem
        Caption = 'A'
        object Amakrits: TMenuItem
          Caption = 'Amakrits'
          OnClick = ChangeStyle
        end
        object AmethystKamri: TMenuItem
          Caption = 'Amethyst Kamri'
          OnClick = ChangeStyle
        end
        object AquaGraphite: TMenuItem
          Caption = 'Aqua Graphite'
          OnClick = ChangeStyle
        end
        object AquaLightSlate: TMenuItem
          Caption = 'Aqua Light Slate'
          OnClick = ChangeStyle
        end
        object Auric: TMenuItem
          Caption = 'Auric'
          OnClick = ChangeStyle
        end
      end
      object Carbon1: TMenuItem
        Caption = 'C'
        object Carbon: TMenuItem
          Caption = 'Carbon'
          OnClick = ChangeStyle
        end
        object CharcoalDarkSlate: TMenuItem
          Caption = 'Charcoal Dark Slate'
          OnClick = ChangeStyle
        end
        object CobaltXEMedia: TMenuItem
          Caption = 'Cobalt XEMedia'
          OnClick = ChangeStyle
        end
        object CyanDusk: TMenuItem
          Caption = 'Cyan Dusk'
          OnClick = ChangeStyle
        end
        object CyanNight: TMenuItem
          Caption = 'Cyan Night'
          OnClick = ChangeStyle
        end
      end
      object E1: TMenuItem
        Caption = 'E'
        object EmeraldLightSlate: TMenuItem
          Caption = 'Emerald Light Slate'
          OnClick = ChangeStyle
        end
      end
      object G1: TMenuItem
        Caption = 'G'
        object Glossy: TMenuItem
          Caption = 'Glossy'
        end
        object Glow: TMenuItem
          Caption = 'Glow'
        end
        object GoldenGraphite: TMenuItem
          Caption = 'Golden Graphite'
          OnClick = ChangeStyle
        end
      end
      object I1: TMenuItem
        Caption = 'I'
        object IcebergClassico: TMenuItem
          Caption = 'Iceberg Classico'
          OnClick = ChangeStyle
        end
      end
      object L1: TMenuItem
        Caption = 'L'
        object LavenderClassico: TMenuItem
          Caption = 'Lavender Classico'
          OnClick = ChangeStyle
        end
        object Light1: TMenuItem
          Caption = 'Light'
          OnClick = ChangeStyle
        end
        object Luna1: TMenuItem
          Caption = 'Luna'
          OnClick = ChangeStyle
        end
      end
      object M1: TMenuItem
        Caption = 'M'
        object MetroBlack: TMenuItem
          Caption = 'Metropolis UI Black'
          OnClick = ChangeStyle
        end
        object MetroBlue: TMenuItem
          Caption = 'Metropolis UI Blue'
          OnClick = ChangeStyle
        end
        object MetropolisUIDark1: TMenuItem
          Caption = 'Metropolis UI Dark'
          OnClick = ChangeStyle
        end
        object MetropolisUIGreen1: TMenuItem
          Caption = 'Metropolis UI Green'
          OnClick = ChangeStyle
        end
      end
      object O1: TMenuItem
        Caption = 'O'
        object Obsidian1: TMenuItem
          Caption = 'Obsidian'
          OnClick = ChangeStyle
        end
        object OnyxBlue: TMenuItem
          Caption = 'Onyx Blue'
        end
      end
      object R1: TMenuItem
        Caption = 'R'
        object RubyGraphite: TMenuItem
          Caption = 'Ruby Graphite'
          OnClick = ChangeStyle
        end
      end
      object S1: TMenuItem
        Caption = 'S'
        object SapphireKamri: TMenuItem
          Caption = 'Sapphire Kamri'
          OnClick = ChangeStyle
        end
        object Silver: TMenuItem
          Caption = 'Silver'
        end
        object Sky: TMenuItem
          Caption = 'Sky'
        end
        object SlateClassico: TMenuItem
          Caption = 'Slate Classico'
          OnClick = ChangeStyle
        end
        object SmokeyQuartzKamri: TMenuItem
          Caption = 'Smokey Quartz Kamri'
          OnClick = ChangeStyle
        end
      end
      object T1: TMenuItem
        Caption = 'T'
        object TabletLight: TMenuItem
          Caption = 'Tablet Light'
        end
        object TabletDark: TMenuItem
          Caption = 'Tablet Dark'
        end
        object urquoiseGray: TMenuItem
          Caption = 'Turquoise Gray'
          OnClick = ChangeStyle
        end
      end
      object Windows1: TMenuItem
        Caption = 'Windows'
        object Windows: TMenuItem
          Caption = 'Windows'
        end
        object Windows10: TMenuItem
          Caption = 'Windows10'
        end
        object Windows10Blue: TMenuItem
          Caption = 'Windows10 Blue'
        end
        object Windows10Dark: TMenuItem
          Caption = 'Windows10 Dark'
        end
        object Windows10Green: TMenuItem
          Caption = 'Windows10 Green'
        end
        object Windows10Purple: TMenuItem
          Caption = 'Windows10 Purple'
        end
        object Windows10StaleGray: TMenuItem
          Caption = 'Windows10 StaleGray'
        end
      end
    end
    object ools1: TMenuItem
      Caption = '&Tools'
      object Polls1: TMenuItem
        Caption = 'Polls'
        OnClick = Polls
      end
      object ExtendedPoll1: TMenuItem
        Caption = 'Extended Poll'
        Enabled = False
        OnClick = Extended_Poll
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object DiceRolling1: TMenuItem
        Caption = 'Dice Rolling'
        OnClick = Dice
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Battle1: TMenuItem
        Caption = 'Battle'
        OnClick = Battle
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object HowtoUseHelp1: TMenuItem
        Caption = '&Help online'
        Enabled = False
      end
      object Arvsstreams1: TMenuItem
        Caption = 'Arv'#39's streams'
        OnClick = Arvsstreams1Click
      end
      object About1: TMenuItem
        Caption = '&About'
        OnClick = About
      end
    end
  end
  object Timer_Autosave: TTimer
    Enabled = False
    Interval = 15000
    OnTimer = Timer_AutosaveTimer
    Left = 440
    Top = 90
  end
end
