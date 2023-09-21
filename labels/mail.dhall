let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "受信", description = "受信したメール", color = Color.Common }
        , { name = "赤入れ"
          , description = "赤入れ依頼が提出された下書き"
          , color = Color.Emergency
          }
        , { name = "つくば市×雙峰祭"
          , description = "つくば市と雙峰祭の連携イベントのメール"
          , color = Color.TsukubaCity-Sohosai
          }
        , { name = "全体", description = "全体に関連するメール", color = Color.All }
        , { name = "当日", description = "雙峰祭当日に関連するメール", color = Color.ThatDay }
        ]
      : List Label

in  convertLabels labels
