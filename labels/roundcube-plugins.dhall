let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "Type: Client"
          , description = "Roundcube pluginのクライアント側の実装"
          , color = Color.Material300-LightGreen
          }
        , { name = "Type: Server"
          , description = "Roundcube pluginのサーバー側の実装"
          , color = Color.Material300-Indigo
          }
        , { name = "Type: Environment"
          , description = "開発環境の改善"
          , color = Color.Material300-Blue
          }
        , { name = "Type: CI/CD"
          , description = "CI/CDの改善"
          , color = Color.Material300-Red
          }
        , { name = "Type: Request"
          , description = "他局からのメール関連の要望"
          , color = Color.Material300-Red
          }
        ]
      : List Label

in  convertLabels labels
