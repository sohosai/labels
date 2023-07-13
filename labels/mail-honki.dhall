let LabelDhall = ./models/label.dhall
in let Label = LabelDhall.Type
in let convertLabels = LabelDhall.convertLabels
in let Color = (./models/color.dhall).Type
in let labels = [
    {
        name = "本部企画局",
        color = Color.Honki
    },
    {
        name = "本部企画局/RS",
        color = Color.Honki
    },
    {
        name = "本部企画局/RS/ぺったんこラリー",
        color = Color.Honki
    },
    {
        name = "本部企画局/RS/ゆるキャラ企画",
        color = Color.Honki
    },
    {
        name = "本部企画局/RS/樽酒振る舞い",
        color = Color.Honki
    },
    {
        name = "本部企画局/RS/絵を動かしてみよう",
        color = Color.Honki
    },
    {
        name = "本部企画局/前夜祭",
        color = Color.Honki
    },
    {
        name = "本部企画局/前夜祭/つくコレ",
        color = Color.Honki
    },
    {
        name = "本部企画局/学術",
        color = Color.Honki
    },
    {
        name = "本部企画局/学術/つくばイチ受けたい授業",
        color = Color.Honki
    },
    {
        name = "本部企画局/学術/つくば研究紹介",
        color = Color.Honki
    },
    {
        name = "本部企画局/学術/受験応援",
        color = Color.Honki
    },
    {
        name = "本部企画局/学術/実験教室",
        color = Color.Honki
    },
    {
        name = "本部企画局/後夜祭",
        color = Color.Honki
    },
    {
        name = "本部企画局/装飾",
        color = Color.Honki
    }
]: List Label
in
    convertLabels labels
