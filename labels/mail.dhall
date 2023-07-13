let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "受信", color = Color.Common }
        , { name = "赤入れ", color = Color.Emergency }
        ]
      : List Label

in  convertLabels labels
