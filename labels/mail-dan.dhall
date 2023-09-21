let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "委員長団", description = "委員長団全体に関連するメール", color = Color.Dan }
        , { name = "委員長団: 案内所運営部会長"
          , description = "to:団 あう長へのメール"
          , color = Color.Dan
          }
        , { name = "委員長団: 委員長"
          , description = "to:団 委員長へのメール"
          , color = Color.Dan
          }
        , { name = "委員長団: 委員長補佐"
          , description = "to:団 補佐へのメール"
          , color = Color.Dan
          }
        , { name = "委員長団: 英訳専門部会"
          , description = "to:団 えせ長へのメール"
          , color = Color.Dan
          }
        , { name = "委員長団: 副委員長"
          , description = "to:団 副委員長へのメール"
          , color = Color.Dan
          }
        , { name = "委員長団: 副委員長/シフト・実計"
          , description = "to:団 シフ担へのメール"
          , color = Color.Dan
          }
        , { name = "委員長団: 副委員長/物品・総括"
          , description = "to:団 ぶったんへのメール"
          , color = Color.Dan
          }
        , { name = "議長団", description = "議長団に関連するメール", color = Color.GichoDan }
        ]
      : List Label

in  convertLabels labels
