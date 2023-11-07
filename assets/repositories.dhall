let Repository = ./models/repository.dhall

let DefinedLabelKind = (./models/label.dhall).DefinedLabelKind

let mailLabels =
      [ DefinedLabelKind.mail-dan
      , DefinedLabelKind.mail-honki
      , DefinedLabelKind.mail-jsys
      , DefinedLabelKind.mail-kosen
      , DefinedLabelKind.mail-sg
      , DefinedLabelKind.mail-sok
      , DefinedLabelKind.mail-som
      , DefinedLabelKind.mail-ss
      , DefinedLabelKind.mail-stage
      , DefinedLabelKind.mail-zai
      , DefinedLabelKind.mail
      ]

let developmentLabels = [ DefinedLabelKind.development ]

let roundcubePluginsLabels =
      [ DefinedLabelKind.development, DefinedLabelKind.roundcube-plugins ]

in    { info-mail = mailLabels
      , project49th-mail = mailLabels
      , web23-frontend = developmentLabels
      , roundcube-akairer = roundcubePluginsLabels
      , imp2forward = developmentLabels
      , web24-frontend= developmentLabels
      }
    : Repository
