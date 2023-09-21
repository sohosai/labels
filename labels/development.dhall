let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Label

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "Type: Bug Fix", color = Color.Material300-DeepOrange }
        , { name = "Type: Enhancement", color = Color.Material300-Blue }
        , { name = "Type: Improvement", color = Color.Material300-Teal }
        , { name = "Type: Modification", color = Color.Material300-Cyan }
        , { name = "Type: Optimization", color = Color.Material300-DeepPurple }
        , { name = "Type: Security Fix", color = Color.Material300-DeepOrange }
        , { name = "Status: Available", color = Color.Material300-Green }
        , { name = "Status: In Progress", color = Color.Material300-Blue }
        , { name = "Status: Completed", color = Color.Material300-Teal }
        , { name = "Status: Canceled", color = Color.Material300-Red }
        , { name = "Status: Inactive (Abandoned)"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Inactive (Duplicate)"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Inactive (Invalid)"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Inactive (Won't Fix)"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Pending", color = Color.Material300-Brown }
        , { name = "Priority: ASAP", color = Color.Material300-DeepOrange }
        , { name = "Priority: High", color = Color.Material300-Orange }
        , { name = "Priority: Medium", color = Color.Material300-Yellow }
        , { name = "Priority: Low", color = Color.Material300-LightGreen }
        , { name = "Priority: Safe", color = Color.Material300-Green }
        , { name = "Effort: Painful", color = Color.Material300-DeepOrange }
        , { name = "Effort: Heavy", color = Color.Material300-Orange }
        , { name = "Effort: Normal", color = Color.Material300-Yellow }
        , { name = "Effort: Light", color = Color.Material300-LightGreen }
        , { name = "Effort: Effortless", color = Color.Material300-Green }
        , { name = "Feedback: Discussion", color = Color.Material300-Pink }
        , { name = "Feedback: Question", color = Color.Material300-Pink }
        , { name = "Feedback: Suggestion", color = Color.Material300-Pink }
        ]
      : List Label

in  convertLabels labels
