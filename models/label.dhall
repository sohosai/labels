let List/map = https://prelude.dhall-lang.org/v11.1.0/List/map
in let ColorDhall = ./color.dhall
in let Color = ColorDhall.Type
in let colorToText = ColorDhall.colorToText
in let Label = { name: Text, color: Color }
in let ConvertedLabel = { name: Text, color: Text }
in let convertLabel = \(label : Label) -> {
    name = label.name,
    color = colorToText label.color
}
in let convertLabels = \(labels : List Label) -> List/map Label ConvertedLabel convertLabel labels
in let DefinedLabelKind = <
    mail |
    mail-honki |
    mail-jsys
>
in let definedLabelKindToText = \(label: DefinedLabelKind) -> merge {
    mail = "mail",
    mail-honki = "mail-honki",
    mail-jsys = "mail-jsys",
} label
in {
    Type = Label,
    convertLabels = convertLabels,
    DefinedLabelKind = DefinedLabelKind,
    definedLabelKindToText = definedLabelKindToText,
}
