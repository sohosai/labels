let LabelDhall = ./models/label.dhall

let Label = LabelDhall.Type

let convertLabels = LabelDhall.convertLabels

let Color = (./models/color.dhall).Type

let labels =
        [ { name = "Type: Bug Fix"
          , description = "バグの修正"
          , color = Color.Material300-DeepOrange
          }
        , { name = "Type: Enhancement"
          , description = "新機能の実装"
          , color = Color.Material300-Blue
          }
        , { name = "Type: Improvement"
          , description = "既存機能の改善"
          , color = Color.Material300-Teal
          }
        , { name = "Type: Modification"
          , description = "既存機能の修正"
          , color = Color.Material300-Cyan
          }
        , { name = "Type: Optimization"
          , description = "既存機能への最適化"
          , color = Color.Material300-DeepPurple
          }
        , { name = "Type: Security Fix"
          , description = "セキュリティ的な問題の修正"
          , color = Color.Material300-DeepOrange
          }
        , { name = "Status: Available"
          , description = "待機中"
          , color = Color.Material300-Green
          }
        , { name = "Status: In Progress"
          , description = "作業中"
          , color = Color.Material300-Blue
          }
        , { name = "Status: Completed"
          , description = "作業完了"
          , color = Color.Material300-Teal
          }
        , { name = "Status: Canceled"
          , description = "中止済み"
          , color = Color.Material300-Red
          }
        , { name = "Status: Inactive (Abandoned)"
          , description = "作業予定なし"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Inactive (Duplicate)"
          , description = "重複しているIssue"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Inactive (Invalid)"
          , description = "不正なIssue"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Inactive (Won't Fix)"
          , description = "修正しないIssue"
          , color = Color.Material300-BlueGrey
          }
        , { name = "Status: Pending"
          , description = "保留中のIssue"
          , color = Color.Material300-Brown
          }
        , { name = "Priority: ASAP"
          , description = "最優先で取り組む必要がある（当日中）"
          , color = Color.Material300-DeepOrange
          }
        , { name = "Priority: High"
          , description = "優先度が高い（〜3日以内）"
          , color = Color.Material300-Orange
          }
        , { name = "Priority: Medium"
          , description = "通常の優先度（〜1週間以内）"
          , color = Color.Material300-Yellow
          }
        , { name = "Priority: Low"
          , description = "優先度が低い（当月中）"
          , color = Color.Material300-LightGreen
          }
        , { name = "Priority: Safe"
          , description = "余裕があれば取り組む"
          , color = Color.Material300-Green
          }
        , { name = "Effort: Painful"
          , description = "膨大な作業量が見込まれる（主力1週間程度）"
          , color = Color.Material300-DeepOrange
          }
        , { name = "Effort: Heavy"
          , description = "比較的多い作業量が見込まれる（主力3日程度）"
          , color = Color.Material300-Orange
          }
        , { name = "Effort: Normal"
          , description = "平均的な作業量が見込まれる（主力3時間、一般3日程度）"
          , color = Color.Material300-Yellow
          }
        , { name = "Effort: Light"
          , description = "少ない作業量が見込まれる（一般1日程度）"
          , color = Color.Material300-LightGreen
          }
        , { name = "Effort: Effortless"
          , description = "あまり作業量を必要としない（一般3時間程度）"
          , color = Color.Material300-Green
          }
        , { name = "Feedback: Discussion"
          , description = "機能に関する議論を扱う"
          , color = Color.Material300-Pink
          }
        , { name = "Feedback: Question"
          , description = "機能に関する質問を扱う"
          , color = Color.Material300-Pink
          }
        , { name = "Feedback: Suggestion"
          , description = "機能に関する提案を扱う"
          , color = Color.Material300-Pink
          }
        ]
      : List Label

in  convertLabels labels
