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
          }
          c

in  { Type = Color, colorToText }
