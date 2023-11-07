let LabelDhall = ./label.dhall

let DefinedLabelKind = LabelDhall.DefinedLabelKind

let Repository =
      { info-mail : List DefinedLabelKind
      , project49th-mail : List DefinedLabelKind
      , web23-frontend : List DefinedLabelKind
      , roundcube-akairer : List DefinedLabelKind
      , imp2forward : List DefinedLabelKind
      , web24-frontend : List DefinedLabelKind
      }

in  Repository
