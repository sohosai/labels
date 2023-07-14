let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "財務局", color = Color.Zai }
        , { name = "財務局/学分金", color = Color.Zai }
        , { name = "財務局/企団給", color = Color.Zai }
        , { name = "財務局/決算", color = Color.Zai }
        , { name = "財務局/保険", color = Color.Zai }
        , { name = "財務局/予算", color = Color.Zai }
        ]
      : List Label

in  convertLabels labels
