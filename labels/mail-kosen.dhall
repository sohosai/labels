let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "広報宣伝局"
          , description = "広報宣伝局全体に関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: SNS"
          , description = "to:広宣 SNSに関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: オフィシャルポスター"
          , description = "to:広宣 オフィシャルポスターに関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: オレンヂ"
          , description = "to:広宣 オレンヂに関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: グッズ"
          , description = "to:広宣 グッズに関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: パンフレット"
          , description = "to:広宣 パンフレットに関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: 当日放送機材"
          , description = "to:広宣 当日放送機材に関連するメール"
          , color = Color.Kosen
          }
        , { name = "広報宣伝局: 雙峰祭装飾大看板"
          , description = "to:広宣 雙峰祭装飾大看板に関連するメール"
          , color = Color.Kosen
          }
        ]
      : List Label

in  convertLabels labels
