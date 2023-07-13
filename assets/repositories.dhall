let Repository = ./models/repository.dhall
in let DefinedLabelKind = (./models/label.dhall).DefinedLabelKind
in {
    info-mail = [
        DefinedLabelKind.mail,
        DefinedLabelKind.mail-honki,
        DefinedLabelKind.mail-jsys,
    ],
    project49th-mail = [
        DefinedLabelKind.mail,
        DefinedLabelKind.mail-honki,
        DefinedLabelKind.mail-jsys,
    ]
}: Repository
