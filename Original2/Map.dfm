object fMap: TfMap
  Left = 469
  Top = 136
  HelpContext = 430
  BorderStyle = bsDialog
  Caption = 'Map'
  ClientHeight = 470
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 71
    Height = 13
    Caption = 'Available maps'
  end
  object Label2: TLabel
    Left = 5
    Top = 230
    Width = 61
    Height = 13
    Caption = 'Map preview'
  end
  object Label3: TLabel
    Left = 330
    Top = 230
    Width = 50
    Height = 13
    Caption = 'Size (pixel)'
  end
  object Label4: TLabel
    Left = 330
    Top = 275
    Width = 31
    Height = 13
    Caption = 'Author'
  end
  object Label5: TLabel
    Left = 330
    Top = 320
    Width = 41
    Height = 13
    Caption = 'Revision'
  end
  object lstMap: TListView
    Left = 5
    Top = 20
    Width = 626
    Height = 201
    Checkboxes = True
    Columns = <
      item
        Caption = 'Name'
        Width = 200
      end
      item
        Caption = 'Description'
        Width = 400
      end>
    ReadOnly = True
    RowSelect = True
    SortType = stText
    TabOrder = 0
    ViewStyle = vsReport
    OnChange = lstMapChange
    OnSelectItem = lstMapSelectItem
  end
  object panMapPreview: TPanel
    Left = 5
    Top = 245
    Width = 316
    Height = 220
    BevelOuter = bvLowered
    TabOrder = 1
    object imgMapPreview: TImage
      Left = 1
      Top = 1
      Width = 314
      Height = 218
      Align = alClient
    end
  end
  object txtMapSize: TEdit
    Left = 330
    Top = 245
    Width = 91
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object cmdOK: TBitBtn
    Left = 455
    Top = 435
    Width = 81
    Height = 26
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
    TabOrder = 3
    OnClick = cmdOKClick
  end
  object cmdAnnulla: TBitBtn
    Left = 545
    Top = 435
    Width = 81
    Height = 26
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object txtMapAuthor: TEdit
    Left = 330
    Top = 290
    Width = 301
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object txtMapRevision: TEdit
    Left = 330
    Top = 335
    Width = 301
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
end
