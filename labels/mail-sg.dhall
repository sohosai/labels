let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "渉外局", color = Color.Sg }
        , { name = "渉外局/一般協賛", color = Color.Sg }
        , { name = "渉外局/構成員援助金", color = Color.Sg }
        , { name = "渉外局/特殊", color = Color.Sg }
        , { name = "渉外局/物品協賛", color = Color.Sg }
        ]
      : List Label

in  convertLabels labels
