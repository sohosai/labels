let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "推進局", color = Color.Ss }
        , { name = "推進局/オンライン物品販売", color = Color.Ss }
        , { name = "推進局/ガス", color = Color.Ss }
        , { name = "推進局/テント", color = Color.Ss }
        , { name = "推進局/レンタル", color = Color.Ss }
        , { name = "推進局/看リヤ", color = Color.Ss }
        , { name = "推進局/機材", color = Color.Ss }
        , { name = "推進局/調理", color = Color.Ss }
        , { name = "推進局/物品・会計", color = Color.Ss }
        , { name = "推進局/保健衛生", color = Color.Ss }
        ]
      : List Label

in  convertLabels labels
