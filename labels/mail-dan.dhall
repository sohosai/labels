let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "委員長団", color = Color.Dan }
        , { name = "委員長団/案内所運営部会長", color = Color.Dan }
        , { name = "委員長団/委員長", color = Color.Dan }
        , { name = "委員長団/委員長補佐", color = Color.Dan }
        , { name = "委員長団/英訳専門部会", color = Color.Dan }
        , { name = "委員長団/副委員長", color = Color.Dan }
        , { name = "委員長団/副委員長/シフト・実計", color = Color.Dan }
        , { name = "委員長団/副委員長/物品・総括", color = Color.Dan }
        , { name = "議長団", color = Color.GichoDan }
        ]
      : List Label

in  convertLabels labels
