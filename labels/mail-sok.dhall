let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "総合計画局", description = "総合計画局全体に関連するメール", color = Color.Sok }
        , { name = "総合計画局: 会場配置計画"
          , description = "to:総計 会場配置計画に関するメール"
          , color = Color.Sok
          }
        , { name = "総合計画局: 会場配置計画/屋外"
          , description = "to:総計 会場配置計画（屋外）に関するメール"
          , color = Color.Sok
          }
        , { name = "総合計画局: 会場配置計画/屋内"
          , description = "to:総計 会場配置計画（屋内）に関するメール"
          , color = Color.Sok
          }
        , { name = "総合計画局: 机･椅子移動計画"
          , description = "to:総計 机･椅子移動計画に関するメール"
          , color = Color.Sok
          }
        , { name = "総合計画局: 総合交通計画"
          , description = "to:総計 総合交通計画に関するメール"
          , color = Color.Sok
          }
        , { name = "総合計画局: 電気計画"
          , description = "to:総計 電気計画に関するメール"
          , color = Color.Sok
          }
        , { name = "総合計画局: 美化計画"
          , description = "to:総計 美化計画に関するメール"
          , color = Color.Sok
          }
        ]
      : List Label

in  convertLabels labels
