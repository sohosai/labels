let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "ステージ管理局"
          , description = "ステージ管理局全体に関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: 1Aステージ"
          , description = "to:ステ管 1Aステージに関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: UNITEDステージ"
          , description = "to:ステ管 UNITEDステージに関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: オンラインステージ"
          , description = "to:ステ管 オンラインステージに関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: 花火"
          , description = "to:ステ管 花火に関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: 後夜祭"
          , description = "to:ステ管 後夜祭に関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: 松美芝生"
          , description = "to:ステ管 松美芝生に関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: 前夜祭"
          , description = "to:ステ管 前夜祭に関連するメール"
          , color = Color.Stage
          }
        , { name = "ステージ管理局: 大学会館"
          , description = "to:ステ管 大学会館に関連するメール"
          , color = Color.Stage
          }
        ]
      : List Label

in  convertLabels labels
