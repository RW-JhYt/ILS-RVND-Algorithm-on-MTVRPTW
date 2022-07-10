object MTVRPTW: TMTVRPTW
  Left = 198
  Top = 51
  Width = 1158
  Height = 662
  VertScrollBar.Position = 77
  Caption = 'ILS-RVND Algorithm on MTVRPTW'
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Bahnschrift'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label10: TLabel
    Left = 532
    Top = -43
    Width = 389
    Height = 22
    Caption = 'ALGORITMA ILS-RVND PADA PERMASALAHAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 409
    Top = -18
    Width = 701
    Height = 22
    Caption = 
      'MULTIPLE TRIPS VEHICLE ROUTING PROBLEM WITH TIME WINDOWS (MTVRPT' +
      'W)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 10
    Top = 33
    Width = 1249
    Height = 534
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Input Graf'
      object imgTitik: TImage
        Left = 0
        Top = 0
        Width = 1241
        Height = 497
        OnMouseUp = imgTitikMouseUp
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Input Matriks Bobot'
      ImageIndex = 1
      object sgMatriks: TStringGrid
        Left = 0
        Top = 0
        Width = 1241
        Height = 505
        ColCount = 2
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 0
        OnDrawCell = sgMatriksDrawCell
        OnKeyPress = sgMatriksKeyPress
        OnSelectCell = sgMatriksSelectCell
        OnSetEditText = sgMatriksSetEditText
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Input Data Customer dan Data Depot '
      ImageIndex = 2
      object Label2: TLabel
        Left = 424
        Top = 32
        Width = 137
        Height = 19
        Caption = 'Banyak Kendaraan'
      end
      object Label3: TLabel
        Left = 424
        Top = 72
        Width = 155
        Height = 19
        Caption = 'Kapasitas Kendaraan'
      end
      object Label4: TLabel
        Left = 424
        Top = 112
        Width = 133
        Height = 19
        Caption = 'Time Window (TW)'
      end
      object Label7: TLabel
        Left = 688
        Top = 32
        Width = 28
        Height = 19
        Caption = 'Unit'
      end
      object Label8: TLabel
        Left = 688
        Top = 72
        Width = 28
        Height = 19
        Caption = 'Unit'
      end
      object Label9: TLabel
        Left = 688
        Top = 112
        Width = 31
        Height = 19
        Caption = 'Jam'
      end
      object Label5: TLabel
        Left = 424
        Top = 152
        Width = 161
        Height = 19
        Caption = 'Kecepatan Kendaraan'
      end
      object Label6: TLabel
        Left = 688
        Top = 152
        Width = 61
        Height = 19
        Caption = 'Km/Jam'
      end
      object Label11: TLabel
        Left = 424
        Top = 192
        Width = 79
        Height = 19
        Caption = 'Iterasi Max'
      end
      object sgCust: TStringGrid
        Left = 8
        Top = 0
        Width = 377
        Height = 545
        ColCount = 3
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 0
        OnKeyPress = sgCustKeyPress
        OnSetEditText = sgCustSetEditText
      end
      object edBanyak: TEdit
        Left = 608
        Top = 24
        Width = 65
        Height = 27
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
      object edKapasitas: TEdit
        Left = 608
        Top = 64
        Width = 65
        Height = 27
        TabOrder = 2
      end
      object edWaktu: TEdit
        Left = 608
        Top = 105
        Width = 65
        Height = 27
        TabOrder = 3
      end
      object btProses: TButton
        Left = 424
        Top = 224
        Width = 329
        Height = 49
        Caption = 'Proses Data'
        TabOrder = 4
        OnClick = btProsesClick
      end
      object edKecepatan: TEdit
        Left = 608
        Top = 144
        Width = 65
        Height = 27
        TabOrder = 5
      end
      object edMax: TEdit
        Left = 608
        Top = 184
        Width = 65
        Height = 27
        TabOrder = 6
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Hasil Proses'
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1337
        Height = 553
        ActivePage = TabSheet5
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = 'Hasil Perhitungan'
          object mmOutput: TMemo
            Left = 0
            Top = 0
            Width = 1241
            Height = 473
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Graf Hasil'
          ImageIndex = 1
          object imgHasil: TImage
            Left = 0
            Top = 0
            Width = 1233
            Height = 465
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 567
    Width = 1259
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Copyright (c) 2021 Yunita Maulinda'
        Width = 50
      end>
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = -77
    Width = 1259
    Height = 19
    Align = alTop
    Panels = <
      item
        Alignment = taRightJustify
        Width = 50
      end>
  end
  object btShift10: TButton
    Left = 1264
    Top = 59
    Width = 89
    Height = 49
    Caption = 'Shift(1,0)'
    TabOrder = 3
    Visible = False
    OnClick = btShift10Click
  end
  object btShift20: TButton
    Left = 1264
    Top = 115
    Width = 89
    Height = 49
    Caption = 'Shift(2,0)'
    TabOrder = 4
    Visible = False
    OnClick = btShift20Click
  end
  object btSwap11: TButton
    Left = 1264
    Top = 171
    Width = 89
    Height = 49
    Caption = 'Swap(1,1)'
    TabOrder = 5
    Visible = False
    OnClick = btSwap11Click
  end
  object btSwap22: TButton
    Left = 1264
    Top = 227
    Width = 89
    Height = 49
    Caption = 'Swap(2,2)'
    TabOrder = 6
    Visible = False
    OnClick = btSwap22Click
  end
  object btCross: TButton
    Left = 1264
    Top = 283
    Width = 89
    Height = 49
    Caption = 'Cross'
    TabOrder = 7
    Visible = False
    OnClick = btCrossClick
  end
  object btOrOpt: TButton
    Left = 1264
    Top = 339
    Width = 89
    Height = 49
    Caption = 'Or-Opt'
    TabOrder = 8
    Visible = False
    OnClick = btOrOptClick
  end
  object bt2Opt: TButton
    Left = 1264
    Top = 395
    Width = 89
    Height = 49
    Caption = '2-Opt'
    TabOrder = 9
    Visible = False
    OnClick = bt2OptClick
  end
  object btExchange: TButton
    Left = 1264
    Top = 451
    Width = 89
    Height = 49
    Caption = 'Exchange'
    TabOrder = 10
    Visible = False
    OnClick = btExchangeClick
  end
  object btReinsertion: TButton
    Left = 1264
    Top = 507
    Width = 89
    Height = 49
    Caption = 'Reinsertion'
    TabOrder = 11
    Visible = False
    OnClick = btReinsertionClick
  end
  object MainMenu1: TMainMenu
    Top = 1
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Buka1: TMenuItem
        Caption = 'Buka'
        OnClick = Buka1Click
      end
      object btdataset: TMenuItem
        Caption = 'Buka Dataset'
        OnClick = btdatasetClick
      end
      object Simpan1: TMenuItem
        Caption = 'Simpan'
        OnClick = Simpan1Click
      end
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        ShortCut = 16465
        OnClick = Keluar1Click
      end
    end
    object File1: TMenuItem
      Caption = 'File'
      object Proses1: TMenuItem
        Caption = 'Proses'
        OnClick = Proses1Click
      end
      object Reset1: TMenuItem
        Caption = 'Reset'
        OnClick = Reset1Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 32
    Top = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 64
  end
  object SaveDialog1: TSaveDialog
    Left = 96
  end
  object XMLDocument1: TXMLDocument
    Left = 128
    DOMVendorDesc = 'MSXML'
  end
end
