object frmAbstractFactory: TfrmAbstractFactory
  Left = 0
  Top = 0
  Caption = 'Abstract Factory'
  ClientHeight = 308
  ClientWidth = 628
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object tabVagas: TTabControl
    Left = 8
    Top = 8
    Width = 612
    Height = 289
    Style = tsButtons
    TabOrder = 0
    Tabs.Strings = (
      'Globo'
      'Google'
      'Sopftplan')
    TabIndex = 0
    OnChange = tabVagasChange
    object lblLegendaNome: TLabel
      Left = 48
      Top = 64
      Width = 32
      Height = 15
      Caption = 'Cargo'
    end
    object lblNome: TLabel
      Left = 160
      Top = 64
      Width = 400
      Height = 15
      AutoSize = False
    end
    object lblLegendaNivel: TLabel
      Left = 48
      Top = 110
      Width = 27
      Height = 15
      Caption = 'N'#237'vel'
    end
    object lblNivel: TLabel
      Left = 160
      Top = 110
      Width = 400
      Height = 15
      AutoSize = False
    end
    object lblLegendaConhecimento: TLabel
      Left = 48
      Top = 156
      Width = 79
      Height = 15
      Caption = 'Conhecimento'
    end
    object lblConhecimento: TLabel
      Left = 160
      Top = 156
      Width = 400
      Height = 15
      AutoSize = False
    end
    object lblLegendaValorBruto: TLabel
      Left = 48
      Top = 203
      Width = 58
      Height = 15
      Caption = 'Valor Bruto'
    end
    object lblValorBruto: TLabel
      Left = 160
      Top = 203
      Width = 400
      Height = 15
      AutoSize = False
    end
    object lblLegendaTicketRefeicao: TLabel
      Left = 48
      Top = 249
      Width = 79
      Height = 15
      Caption = 'Ticket Refei'#231#227'o'
    end
    object lblTicketRefeicao: TLabel
      Left = 160
      Top = 249
      Width = 400
      Height = 15
      AutoSize = False
    end
  end
end
