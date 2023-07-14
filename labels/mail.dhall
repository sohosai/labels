let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "受信", color = Color.Common }
        , { name = "赤入れ", color = Color.Emergency }
        , { name = "つくば市×雙峰祭", color = Color.TsukubaCity-Sohosai }
        , { name = "全体", color = Color.All }
        , { name = "当日", color = Color.ThatDay }
        ]
      : List Label

in  convertLabels labels
