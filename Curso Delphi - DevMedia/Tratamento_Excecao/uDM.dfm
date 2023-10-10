object DtM: TDtM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 252
  Width = 338
  object AppEvents: TApplicationEvents
    OnException = AppEventsException
    Left = 152
    Top = 88
  end
  object idSMTP: TclSmtp
    Port = 587
    UseTLS = ctExplicit
    CertificateFlags = [cfIgnoreCommonNameInvalid, cfIgnoreUnknownAuthority, cfIgnoreRevocation]
    TLSFlags = [tfUseTLS, tfUseTLS11, tfUseTLS12]
    MailAgent = 'Clever Internet Suite'
    Left = 80
    Top = 176
  end
  object IdMessage: TclMailMessage
    ToList = <>
    CCList = <>
    BCCList = <>
    Date = 45208.407547187500000000
    CharSet = 'iso-8859-1'
    ContentType = 'text/plain'
    Left = 152
    Top = 176
  end
end
