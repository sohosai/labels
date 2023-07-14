let List/map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/List/map.dhall

let ColorDhall = ./color.dhall

let Color = ColorDhall.Type

let colorToText = ColorDhall.colorToText

let Label = { name : Text, color : Color }

let ConvertedLabel = { name : Text, color : Text }

let convertLabel =
      \(label : Label) -> { name = label.name, color = colorToText label.color }

let convertLabels =
      \(labels : List Label) ->
        List/map Label ConvertedLabel convertLabel labels

let DefinedLabelKind =
      < mail-dan
      | mail-honki
      | mail-jsys
      | mail-kosen
      | mail-sg
      | mail-sok
      | mail-som
      | mail-ss
      | mail-stage
      | mail-zai
      | mail
      >

let definedLabelKindToText =
      \(label : DefinedLabelKind) ->
        merge
          { mail-dan = "mail-dan"
          , mail-honki = "mail-honki"
          , mail-jsys = "mail-jsys"
          , mail-kosen = "mail-kosen"
          , mail-sg = "mail-sg"
          , mail-sok = "mail-sok"
          , mail-som = "mail-som"
          , mail-ss = "mail-ss"
          , mail-stage = "mail-stage"
          , mail-zai = "mail-zai"
          , mail = "mail"
          }
          label

in  { Type = Label, convertLabels, DefinedLabelKind, definedLabelKindToText }
