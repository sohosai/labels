let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "総務局", description = "総務局全体に関連するメール", color = Color.Som }
        , { name = "総務局: 一般企画募集管理"
          , description = "to:総務 一般企画募集に関するメール"
          , color = Color.Som
          }
        , { name = "総務局: 学術企画募集管理"
          , description = "to:総務 学術企画募集に関するメール"
          , color = Color.Som
          }
        , { name = "総務局: 企団連"
          , description = "to:総務 企画団体責任者連絡集会に関するメール"
          , color = Color.Som
          }
        ]
      : List Label

in  convertLabels labels
