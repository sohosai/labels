let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "総務局", color = Color.Som }
        , { name = "総務局/一般企画募集管理", color = Color.Som }
        , { name = "総務局/学術企画募集管理", color = Color.Som }
        , { name = "総務局/企団連", color = Color.Som }
        ]
      : List Label

in  convertLabels labels
