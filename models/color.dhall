let Color = < Honki | Jsys | Emergency | Common >
in let colorToText = \(c: Color) -> merge {
    Emergency = "b60205",
    Common = "bfd4f2",
    Honki = "d93f0b",
    Jsys = "274482",
} c
in {
    Type = Color,
    colorToText = colorToText,
}
