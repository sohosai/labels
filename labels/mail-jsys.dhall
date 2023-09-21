let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "情報メディアシステム局"
          , description = "情報メディアシステム局全体に関連するメール"
          , color = Color.Jsys
          }
        , { name = "情報メディアシステム局: SOS"
          , description = "to:jsys SOSに関連するメール"
          , color = Color.Jsys
          }
        , { name = "情報メディアシステム局: 生中継"
          , description = "to:jsys 生中継に関連するメール"
          , color = Color.Jsys
          }
        , { name = "情報メディアシステム局: 著作権"
          , description = "to:jsys 著作権に関連するメール"
          , color = Color.Jsys
          }
        , { name = "情報メディアシステム局: 通知"
          , description = "to:jsys 通知に関連するメール"
          , color = Color.Jsys
          }
        ]
      : List Label

in  convertLabels labels
