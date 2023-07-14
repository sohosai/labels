let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "広報宣伝局", color = Color.Kosen }
        , { name = "広報宣伝局/SNS", color = Color.Kosen }
        , { name = "広報宣伝局/オフィシャルポスター", color = Color.Kosen }
        , { name = "広報宣伝局/オレンヂ", color = Color.Kosen }
        , { name = "広報宣伝局/グッズ", color = Color.Kosen }
        , { name = "広報宣伝局/パンフレット", color = Color.Kosen }
        , { name = "広報宣伝局/当日放送機材", color = Color.Kosen }
        , { name = "広報宣伝局/雙峰祭装飾大看板", color = Color.Kosen }
        ]
      : List Label

in  convertLabels labels
