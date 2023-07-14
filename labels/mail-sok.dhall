let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "総合計画局", color = Color.Sok }
        , { name = "総合計画局/会場配置計画", color = Color.Sok }
        , { name = "総合計画局/会場配置計画/屋外", color = Color.Sok }
        , { name = "総合計画局/会場配置計画/屋内", color = Color.Sok }
        , { name = "総合計画局/机･椅子移動計画", color = Color.Sok }
        , { name = "総合計画局/総合交通計画", color = Color.Sok }
        , { name = "総合計画局/電気計画", color = Color.Sok }
        , { name = "総合計画局/美化計画", color = Color.Sok }
        ]
      : List Label

in  convertLabels labels
