let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "推進局", description = "推進局全体に関連するメール", color = Color.Ss }
        , { name = "推進局: オンライン物品販売"
          , description = "to:推進 オンライン物品販売に関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: ガス"
          , description = "to:推進 ガスに関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: テント"
          , description = "to:推進 テントに関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: レンタル"
          , description = "to:推進 レンタルに関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: 看リヤ"
          , description = "to:推進 看板・リヤカーに関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: 機材"
          , description = "to:推進 機材に関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: 調理"
          , description = "to:推進 調理に関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: 物品・会計"
          , description = "to:推進 物品・会計に関するメール"
          , color = Color.Ss
          }
        , { name = "推進局: 保健衛生"
          , description = "to:推進 保健衛生に関するメール"
          , color = Color.Ss
          }
        ]
      : List Label

in  convertLabels labels
