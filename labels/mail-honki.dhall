let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "本部企画局"
          , description = "本部企画局全体に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: RS"
          , description = "to:本企 委員会開催企画に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: RS/ぺったんこラリー"
          , description = "to:本企 ぺったんこラリーに関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: RS/ゆるキャラ企画"
          , description = "to:本企 ゆるキャラ企画に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: RS/樽酒振る舞い"
          , description = "to:本企 樽酒に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: RS/絵を動かしてみよう"
          , description = "to:本企 絵を動かしてみように関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 前夜祭"
          , description = "to:本企 前夜祭に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 前夜祭/つくコレ"
          , description = "to:本企 つくばコレクションに関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 学術"
          , description = "to:本企 学術企画に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 学術/つくばイチ受けたい授業"
          , description = "to:本企 つくばイチ受けたい授業に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 学術/つくば研究紹介"
          , description = "to:本企 つくば研究紹介に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 学術/受験応援"
          , description = "to:本企 受験応援に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 学術/実験教室"
          , description = "to:本企 実験教室に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 後夜祭"
          , description = "to:本企 後夜祭に関連するメール"
          , color = Color.Honki
          }
        , { name = "本部企画局: 装飾"
          , description = "to:本企 装飾に関連するメール"
          , color = Color.Honki
          }
        ]
      : List Label

in  convertLabels labels
