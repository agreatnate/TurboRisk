object fPref: TfPref
  Left = 0
  Top = 0
  HelpContext = 440
  BorderStyle = bsDialog
  Caption = 'Preferences'
  ClientHeight = 284
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tabPref: TPageControl
    Left = 5
    Top = 5
    Width = 426
    Height = 231
    ActivePage = tbsToolbar
    TabOrder = 0
    object tbsToolbar: TTabSheet
      Caption = 'Toolbar'
      object lstTlbButtons: TListView
        Left = 3
        Top = 30
        Width = 412
        Height = 170
        Checkboxes = True
        Columns = <>
        TabOrder = 0
        ViewStyle = vsSmallIcon
      end
      object chkTlbShowToolbar: TCheckBox
        Left = 3
        Top = 7
        Width = 97
        Height = 17
        Caption = 'Show Toolbar'
        TabOrder = 1
      end
    end
    object tbsMap: TTabSheet
      Caption = 'Map'
      ImageIndex = 1
      object chkMapHoover: TCheckBox
        Left = 8
        Top = 15
        Width = 296
        Height = 17
        Caption = 'Change territory color when mouse hoovers it'
        TabOrder = 0
        OnClick = chkMapHooverClick
      end
      object chkMapSelected: TCheckBox
        Left = 8
        Top = 105
        Width = 296
        Height = 17
        Caption = 'Change territory color when selected'
        TabOrder = 1
        OnClick = chkMapSelectedClick
      end
      object panMapHoover: TPanel
        Left = 25
        Top = 33
        Width = 231
        Height = 61
        BevelOuter = bvNone
        TabOrder = 2
        object Label1: TLabel
          Left = 4
          Top = 37
          Width = 32
          Height = 13
          Caption = 'Darker'
        end
        object Label2: TLabel
          Left = 191
          Top = 37
          Width = 33
          Height = 13
          Caption = 'Lighter'
        end
        object trbMapHoover: TTrackBar
          Left = 10
          Top = 5
          Width = 206
          Height = 33
          LineSize = 5
          Max = 16
          Min = -16
          PageSize = 10
          Frequency = 2
          TabOrder = 0
          OnChange = trbMapHooverChange
        end
        object txtMapHoover: TEdit
          Left = 96
          Top = 34
          Width = 36
          Height = 21
          Alignment = taCenter
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 1
        end
      end
      object panMapSelected: TPanel
        Left = 25
        Top = 123
        Width = 231
        Height = 61
        BevelOuter = bvNone
        TabOrder = 3
        object Label3: TLabel
          Left = 4
          Top = 37
          Width = 32
          Height = 13
          Caption = 'Darker'
        end
        object Label4: TLabel
          Left = 191
          Top = 37
          Width = 33
          Height = 13
          Caption = 'Lighter'
        end
        object trbMapSelected: TTrackBar
          Left = 10
          Top = 5
          Width = 206
          Height = 33
          LineSize = 5
          Max = 16
          Min = -16
          PageSize = 10
          Frequency = 2
          TabOrder = 0
          OnChange = trbMapSelectedChange
        end
        object txtMapSelected: TEdit
          Left = 96
          Top = 34
          Width = 36
          Height = 21
          Alignment = taCenter
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object tbsGame: TTabSheet
      Caption = 'Game'
      ImageIndex = 2
      object chkGameConfirmAbort: TCheckBox
        Left = 8
        Top = 15
        Width = 296
        Height = 17
        Caption = 'Ask for confirmation before aborting game in progress'
        TabOrder = 0
        OnClick = chkMapHooverClick
      end
      object chkExpertAttack: TCheckBox
        Left = 8
        Top = 38
        Width = 296
        Height = 17
        Caption = 'Advanced options in Attack window'
        TabOrder = 1
        OnClick = chkMapHooverClick
      end
    end
    object tbsUpdate: TTabSheet
      Caption = 'Update'
      ImageIndex = 3
      object chkUpdateCheck: TCheckBox
        Left = 8
        Top = 15
        Width = 296
        Height = 17
        Caption = 'Check for updates at startup'
        TabOrder = 0
        OnClick = chkMapHooverClick
      end
    end
  end
  object cmdOK: TBitBtn
    Left = 5
    Top = 245
    Width = 86
    Height = 31
    Caption = 'OK'
    Default = True
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = cmdOKClick
  end
  object cmdAnnulla: TBitBtn
    Left = 105
    Top = 245
    Width = 81
    Height = 31
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object cmdResetRules: TBitBtn
    Left = 280
    Top = 245
    Width = 151
    Height = 31
    Caption = 'Reset to default'
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
      33333333333F8888883F33330000324334222222443333388F3833333388F333
      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
      3338888300003AAAAAAA33333333333888888833333333330000333333333333
      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
      3333333333338888883333330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = cmdResetRulesClick
  end
end
