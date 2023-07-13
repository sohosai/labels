let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "情報メディアシステム局", color = Color.Jsys }
        , { name = "情報メディアシステム局/SOS", color = Color.Jsys }
        , { name = "情報メディアシステム局/生中継", color = Color.Jsys }
        , { name = "情報メディアシステム局/著作権", color = Color.Jsys }
        , { name = "情報メディアシステム局/通知", color = Color.Jsys }
        ]
      : List Label

in  convertLabels labels
