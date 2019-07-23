object fSim: TfSim
  Left = 0
  Top = 0
  HelpContext = 3000
  BorderIcons = [biSystemMenu]
  Caption = 'TRSim - TurboRisk Simulator'
  ClientHeight = 617
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcSim: TPageControl
    Left = 0
    Top = 0
    Width = 461
    Height = 617
    ActivePage = tbsSim
    Align = alClient
    TabOrder = 0
    object tbsSim: TTabSheet
      Caption = 'Simulation'
      object Label2: TLabel
        Left = 154
        Top = 74
        Width = 89
        Height = 13
        Caption = 'Randomly inlcuded'
      end
      object Label3: TLabel
        Left = 3
        Top = 74
        Width = 76
        Height = 13
        Caption = 'Always included'
      end
      object Label6: TLabel
        Left = 305
        Top = 74
        Width = 71
        Height = 13
        Caption = 'Never inlcuded'
      end
      object Label7: TLabel
        Left = 3
        Top = 47
        Width = 87
        Height = 13
        Caption = 'Players per game:'
      end
      object Label8: TLabel
        Left = 3
        Top = 14
        Width = 120
        Height = 13
        Caption = 'Number of games to play'
      end
      object Label9: TLabel
        Left = 189
        Top = 47
        Width = 10
        Height = 13
        Caption = 'to'
      end
      object Label12: TLabel
        Left = 126
        Top = 47
        Width = 22
        Height = 13
        Caption = 'from'
      end
      object lstAlways: TListBox
        Left = 3
        Top = 93
        Width = 145
        Height = 184
        DragMode = dmAutomatic
        ItemHeight = 13
        MultiSelect = True
        Sorted = True
        TabOrder = 3
        OnDragDrop = lstTRPDragDrop
        OnDragOver = lstTRPDragOver
      end
      object lstRandom: TListBox
        Left = 154
        Top = 93
        Width = 145
        Height = 184
        DragMode = dmAutomatic
        ItemHeight = 13
        MultiSelect = True
        Sorted = True
        TabOrder = 4
        OnDragDrop = lstTRPDragDrop
        OnDragOver = lstTRPDragOver
      end
      object lstNever: TListBox
        Left = 305
        Top = 93
        Width = 145
        Height = 184
        DragMode = dmAutomatic
        ItemHeight = 13
        MultiSelect = True
        Sorted = True
        TabOrder = 5
        OnDragDrop = lstTRPDragDrop
        OnDragOver = lstTRPDragOver
      end
      object txtMinPlayers: TEdit
        Left = 154
        Top = 44
        Width = 27
        Height = 21
        MaxLength = 2
        NumbersOnly = True
        TabOrder = 1
        Text = '2'
      end
      object txtMaxPlayers: TEdit
        Left = 205
        Top = 44
        Width = 27
        Height = 21
        MaxLength = 2
        NumbersOnly = True
        TabOrder = 2
        Text = '10'
      end
      object txtGames: TEdit
        Left = 154
        Top = 11
        Width = 78
        Height = 21
        NumbersOnly = True
        TabOrder = 0
        Text = '10'
      end
      object panError: TGroupBox
        Left = 305
        Top = 283
        Width = 145
        Height = 118
        Caption = 'TRP error handling'
        TabOrder = 6
        object Label1: TLabel
          Left = 9
          Top = 24
          Width = 79
          Height = 13
          Caption = 'In case of error:'
        end
        object chkErrorDump: TCheckBox
          Left = 9
          Top = 50
          Width = 124
          Height = 17
          Caption = 'Create a dump file'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object chkErrorAbort: TCheckBox
          Left = 9
          Top = 86
          Width = 124
          Height = 17
          Caption = 'Abort game'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
      object cmdStart: TBitBtn
        Left = 157
        Top = 531
        Width = 139
        Height = 52
        Caption = 'Start simulation'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = cmdStartClick
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 283
        Width = 296
        Height = 118
        Caption = 'Map && Stats'
        TabOrder = 8
        object chkShowMap: TCheckBox
          Left = 10
          Top = 23
          Width = 274
          Height = 17
          Caption = 'Show game on map (slower)'
          TabOrder = 0
        end
        object chkShowStats: TCheckBox
          Left = 10
          Top = 86
          Width = 274
          Height = 17
          Caption = 'Show game stats (slower)'
          TabOrder = 1
        end
        object cboMap: TComboBox
          Left = 26
          Top = 46
          Width = 258
          Height = 21
          Style = csDropDownList
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 407
        Width = 296
        Height = 118
        Caption = 'Simulation log'
        TabOrder = 9
        object Label4: TLabel
          Left = 10
          Top = 19
          Width = 44
          Height = 13
          Caption = 'Game log'
        end
        object Label5: TLabel
          Left = 10
          Top = 69
          Width = 69
          Height = 13
          Caption = 'CPU usage log'
        end
        object txtGameLogFile: TEdisComboDialog
          Left = 10
          Top = 38
          Width = 274
          Height = 21
          TabOrder = 0
          OnCustomDlg = txtGameLogFileCustomDlg
        end
        object txtCPULogFile: TEdisComboDialog
          Left = 10
          Top = 88
          Width = 274
          Height = 21
          TabOrder = 1
          OnCustomDlg = txtCPULogFileCustomDlg
        end
      end
      object GroupBox3: TGroupBox
        Left = 305
        Top = 407
        Width = 143
        Height = 118
        Caption = 'Game limits'
        TabOrder = 10
        object Label10: TLabel
          Left = 9
          Top = 19
          Width = 27
          Height = 13
          Caption = 'Turns'
        end
        object Label11: TLabel
          Left = 9
          Top = 69
          Width = 72
          Height = 13
          Caption = 'Time (seconds)'
        end
        object txtTurnLimit: TEdit
          Left = 9
          Top = 38
          Width = 79
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          Text = '10'
        end
        object txtTimeLimit: TEdit
          Left = 9
          Top = 88
          Width = 79
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          Text = '10'
        end
      end
    end
    object tbsAna: TTabSheet
      Caption = 'Analysis'
      ImageIndex = 1
      object Label13: TLabel
        Left = 10
        Top = 19
        Width = 44
        Height = 13
        Caption = 'Game log'
      end
      object Label14: TLabel
        Left = 10
        Top = 97
        Width = 69
        Height = 13
        Caption = 'CPU usage log'
      end
      object txtGameLogFile2: TEdisComboDialog
        Left = 10
        Top = 38
        Width = 331
        Height = 21
        TabOrder = 0
        OnCustomDlg = txtGameLogFileCustomDlg
      end
      object txtCPULogFile2: TEdisComboDialog
        Left = 10
        Top = 116
        Width = 331
        Height = 21
        TabOrder = 1
        OnCustomDlg = txtCPULogFileCustomDlg
      end
      object cmdAnalyseGameLog: TBitBtn
        Left = 347
        Top = 19
        Width = 103
        Height = 40
        Caption = 'Analyse'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = cmdAnalyseGameLogClick
      end
      object cmdAnalyseCPULog: TBitBtn
        Left = 347
        Top = 97
        Width = 103
        Height = 40
        Caption = 'Analyse'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = cmdAnalyseCPULogClick
      end
    end
  end
  object dlgOpenLogFile: TOpenDialog
    Filter = 'TRSim Game Log|sgl|TRSim CPU Log|scl'
    Title = 'Log file'
    Left = 394
    Top = 562
  end
end
