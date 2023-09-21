let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "渉外局", description = "渉外局全体に関連するメール", color = Color.Sg }
        , { name = "渉外局: 一般協賛"
          , description = "to:渉外 一般協賛に関するメール"
          , color = Color.Sg
          }
        , { name = "渉外局: 構成員援助金"
          , description = "to:渉外 構成員援助金に関するメール"
          , color = Color.Sg
          }
        , { name = "渉外局: 特殊", description = "to:渉外 特殊なメール", color = Color.Sg }
        , { name = "渉外局: 物品協賛"
          , description = "to:渉外 物品協賛に関するメール"
          , color = Color.Sg
          }
        ]
      : List Label

in  convertLabels labels
