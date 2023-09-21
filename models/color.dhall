let Color =
      < Emergency
      | Common
      | Stage
      | TsukubaCity-Sohosai
      | Dan
      | GichoDan
      | Kosen
      | Zai
      | Sg
      | Jsys
      | Ss
      | All
      | Sok
      | Som
      | ThatDay
      | Honki
      | Material300-Red
      | Material300-Pink
      | Material300-Purple
      | Material300-DeepPurple
      | Material300-Indigo
      | Material300-Blue
      | Material300-LightBlue
      | Material300-Cyan
      | Material300-Teal
      | Material300-Green
      | Material300-LightGreen
      | Material300-Lime
      | Material300-Yellow
      | Material300-Amber
      | Material300-Orange
      | Material300-DeepOrange
      | Material300-Brown
      | Material300-Grey
      | Material300-BlueGrey
      >

let colorToText =
      \(c : Color) ->
        merge
          { Emergency = "b60205"
          , Common = "bfd4f2"
          , Stage = "8865c8"
          , TsukubaCity-Sohosai = "e1d7fc"
          , Dan = "f5d4e0"
          , GichoDan = "c2c2c2"
          , Kosen = "f5bf78"
          , Zai = "f8ea87"
          , Sg = "69c48e"
          , Jsys = "274482"
          , Ss = "397e50"
          , All = "f6cab3"
          , Sok = "000000"
          , Som = "789de5"
          , ThatDay = "fadfba"
          , Honki = "d93f0b"
          , Material300-Red = "E57373"
          , Material300-Pink = "F06292"
          , Material300-Purple = "BA68C8"
          , Material300-DeepPurple = "9575CD"
          , Material300-Indigo = "7986CB"
          , Material300-Blue = "64B5F6"
          , Material300-LightBlue = "4FC3F7"
          , Material300-Cyan = "4DD0E1"
          , Material300-Teal = "4DB6AC"
          , Material300-Green = "81C784"
          , Material300-LightGreen = "AED581"
          , Material300-Lime = "DCE775"
          , Material300-Yellow = "FFF176"
          , Material300-Amber = "FFD54F"
          , Material300-Orange = "FFB74D"
          , Material300-DeepOrange = "FF8A65"
          , Material300-Brown = "A1887F"
          , Material300-Grey = "E0E0E0"
          , Material300-BlueGrey = "90A4AE"
          }
          c

in  { Type = Color, colorToText }
