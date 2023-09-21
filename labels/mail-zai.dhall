let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "財務局", description = "財務局全体に関連するメール", color = Color.Zai }
        , { name = "財務局: 学分金"
          , description = "to:財務 学生分担金に関連するメール"
          , color = Color.Zai
          }
        , { name = "財務局: 企団給"
          , description = "to:財務 企画団体物品支給制度に関連するメール"
          , color = Color.Zai
          }
        , { name = "財務局: 決算"
          , description = "to:財務 決算に関連するメール"
          , color = Color.Zai
          }
        , { name = "財務局: 保険"
          , description = "to:財務 保険に関連するメール"
          , color = Color.Zai
          }
        , { name = "財務局: 予算"
          , description = "to:財務 予算に関連するメール"
          , color = Color.Zai
          }
        ]
      : List Label

in  convertLabels labels
