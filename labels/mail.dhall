let LabelDhall = ./models/label.dhall
in let Label = LabelDhall.Type
in let convertLabels = LabelDhall.convertLabels
in let Color = (./models/color.dhall).Type
in let labels = [
    {
        name = "受信",
        color = Color.Common
    },
    {
        name = "赤入れ",
        color = Color.Emergency
    }
]: List Label
in
    convertLabels labels
