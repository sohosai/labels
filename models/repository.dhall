let List/map = https://prelude.dhall-lang.org/v11.1.0/List/map
in let LabelDhall = ./label.dhall
in let Label = LabelDhall.Type
in let DefinedLabelKind = LabelDhall.DefinedLabelKind
in let definedLabelKindToText = LabelDhall.definedLabelKindToText
in let Repository = {
    info-mail: List DefinedLabelKind,
    project49th-mail: List DefinedLabelKind,
}
in let convertDefinedLabelKinds = \(labels : List DefinedLabelKind) -> List/map DefinedLabelKind Text definedLabelKindToText labels
in let convertRepository = \(repository: Repository) -> {
    info-mail = convertDefinedLabelKinds repository.info-mail,
    project49th-mail = convertDefinedLabelKinds repository.project49th-mail,
}
in Repository
