let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "ステージ管理局", color = Color.Stage }
        , { name = "ステージ管理局/1Aステージ", color = Color.Stage }
        , { name = "ステージ管理局/UNITEDステージ", color = Color.Stage }
        , { name = "ステージ管理局/オンラインステージ", color = Color.Stage }
        , { name = "ステージ管理局/花火", color = Color.Stage }
        , { name = "ステージ管理局/後夜祭", color = Color.Stage }
        , { name = "ステージ管理局/松美芝生", color = Color.Stage }
        , { name = "ステージ管理局/前夜祭", color = Color.Stage }
        , { name = "ステージ管理局/大学会館", color = Color.Stage }
        ]
      : List Label

in  convertLabels labels
