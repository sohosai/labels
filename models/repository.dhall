let LabelDhall = ./label.dhall

let DefinedLabelKind = LabelDhall.DefinedLabelKind

let Repository =
      { info-mail : List DefinedLabelKind
      , project49th-mail : List DefinedLabelKind
      , web23 : List DefinedLabelKind
      }

in  Repository
