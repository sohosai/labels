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

let DefinedLabelKind = < mail | mail-honki | mail-jsys >

let definedLabelKindToText =
      \(label : DefinedLabelKind) ->
        merge
          { mail = "mail", mail-honki = "mail-honki", mail-jsys = "mail-jsys" }
          label

in  { Type = Label, convertLabels, DefinedLabelKind, definedLabelKindToText }
