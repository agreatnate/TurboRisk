object fSimGameLog: TfSimGameLog
  Left = 0
  Top = 0
  Caption = 'Game Log'
  ClientHeight = 475
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcLog: TPageControl
    Left = 0
    Top = 0
    Width = 690
    Height = 475
    ActivePage = tbsGames
    Align = alClient
    TabOrder = 0
    object tbsGames: TTabSheet
      Caption = 'Games'
      ExplicitWidth = 455
      object lstGames: TListView
        Left = 0
        Top = 0
        Width = 682
        Height = 286
        Align = alClient
        Columns = <
          item
            Caption = '#'
            Width = 40
          end
          item
            Caption = 'Date/Time'
            Width = 120
          end
          item
            Caption = 'Result'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'Time'
          end
          item
            Alignment = taCenter
            Caption = 'Turns'
            Width = 40
          end
          item
            Caption = 'Winner'
            Width = 100
          end>
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        OnSelectItem = lstGamesSelectItem
        ExplicitWidth = 455
        ExplicitHeight = 255
      end
      object Panel1: TPanel
        Left = 0
        Top = 286
        Width = 682
        Height = 161
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object lstPlayers: TListView
          Left = 0
          Top = 0
          Width = 682
          Height = 161
          Align = alClient
          Columns = <
            item
              Caption = 'Rank'
              Width = 40
            end
            item
              Caption = 'Player'
              Width = 120
            end
            item
              Alignment = taCenter
              Caption = 'Last turn'
              Width = 80
            end
            item
              Alignment = taCenter
              Caption = 'Armies'
              Width = 80
            end
            item
              Alignment = taCenter
              Caption = 'Territories'
              Width = 80
            end>
          GridLines = True
          ReadOnly = True
          TabOrder = 0
          ViewStyle = vsReport
          ExplicitWidth = 455
          ExplicitHeight = 192
        end
      end
    end
    object tbsRanking: TTabSheet
      Caption = 'Summary'
      ImageIndex = 1
      ExplicitWidth = 455
      object grdRanking: TJvStringGrid
        Left = 0
        Top = 0
        Width = 682
        Height = 447
        Align = alClient
        ColCount = 4
        DefaultColWidth = 100
        DefaultRowHeight = 17
        DefaultDrawing = False
        FixedCols = 0
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ScrollBars = ssVertical
        TabOrder = 0
        OnDrawCell = grdRankingDrawCell
        Alignment = taCenter
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        OnCaptionClick = grdRankingCaptionClick
        ExplicitWidth = 455
      end
    end
    object tbsAnalysis: TTabSheet
      Caption = 'Player'#39's analysis'
      ImageIndex = 2
      ExplicitWidth = 455
      DesignSize = (
        682
        447)
      object Label1: TLabel
        Left = 9
        Top = 11
        Width = 30
        Height = 13
        Caption = 'Player'
      end
      object cboPlayer: TComboBox
        Left = 9
        Top = 30
        Width = 194
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnSelect = cboPlayerSelect
      end
      object grdAnalysis: TJvStringGrid
        Left = 0
        Top = 65
        Width = 682
        Height = 382
        Anchors = [akLeft, akTop, akRight, akBottom]
        ColCount = 4
        DefaultColWidth = 100
        DefaultRowHeight = 17
        DefaultDrawing = False
        FixedCols = 0
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ScrollBars = ssVertical
        TabOrder = 1
        OnDrawCell = grdAnalysisDrawCell
        Alignment = taCenter
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        OnCaptionClick = grdAnalysisCaptionClick
        ExplicitWidth = 455
      end
    end
  end
end
