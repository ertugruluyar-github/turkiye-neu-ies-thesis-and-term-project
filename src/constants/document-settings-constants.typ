/* ---- Belge Düzeni [Document Layout] ---- */

// Kağıt boyutu [Paper size]
#let PAPER = "a4"

// Kenar boşlukları [Margin]
#let MARGIN = (
  left: 2.5cm,
  top: 2.5cm,
  right: 2.5cm,
  bottom: 2.5cm,
)

/* ---- Yazı Tipi Ayarları [Font Settings] ---- */

// Yazı tipi adı [Font name]
#let FONT-NAME = "Times New Roman"

// Ana yazı tipi boyutu [Main font size]
#let FONT-SIZE = 12pt

// Alternatif yazı tipi boyutu [Alternate font size]
#let ALTERNATE-FONT-SIZE = 10pt

// 2. alternatif yazı tipi boyutu [Second alternate font size]
#let ALTERNATE-FONT-SIZE-2 = 9pt

// Özet metinlerinin yazı tipi boyutu [Font size of the Abstract texts]
#let ABSTRACT-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE

// Tablo ve Şekil figürlerinin başlığının yazı tipi boyutu [Font size of the title of table and image figures' caption]
#let FIGURE-TITLE-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE

// Tablo ve Şekil figürlerinin içerğinin yazı tipi boyutu [Font size of the title of table and figure contents]
#let FIGURE-CONTENT-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE

// Dipnotların yazı tipi boyutu [Font size of the Footnotes]
#let FOOTNOTE-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE

// Varsayılan yazı kalınlığı [Default font weight]
#let DEFAULT-TEXT-FONT-WEIGHT = "regular"

/* ---- Paragraf Ayarları [Paragraph Settings] ---- */

// Paragraf ilk satır girintisi [Paragraph first line indent]
#let PARAGRAPH-FIRST-LINE-INDENT = 1.25cm

// Paragrafdaki satırlar arası boşluk (1,5 satır yani 1.5em = FONT-SIZE * 1.5). [Space between lines in the paragraph (1.5 lines so 1.5em = FONT-SIZE * 1.5).]
#let PARAGRAPH-LEADING-SIZE = 1.5em

// Paragraflar arasındaki boşluk. [Spacing between paragraphs]
#let PARAGRAPH-SPACING-SIZE = 12pt
