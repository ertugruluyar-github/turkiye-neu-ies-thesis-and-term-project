// Genel [General]
#let PAPER = "a4"
#let MARGIN = (
  left: 2.5cm,
  top: 2.5cm,
  right: 2.5cm,
  bottom: 2.5cm,
)
#let LANGUAGE = "tr"
#let REGION = "tr"
#let FONT-NAME = "Times New Roman"
#let FONT-SIZE = 12pt
#let ALTERNATE-FONT-SIZE = 10pt
#let ABSTRACT-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE
#let FIGURE-TITLE-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE
#let FIGURE-CONTENT-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE
#let FOOTNOTE-TEXT-FONT-SIZE = ALTERNATE-FONT-SIZE
#let PARAGRAPH-FIRST-LINE-INDENT = 1.25cm
// 1,5 satır yani 1.5em = FONT-SIZE * 1.5
#let PARAGRAPH-LEADING-SIZE = 1.5em
#let PARAGRAPH-SPACING-SIZE = 12pt

// Yazı Kalınlıkları [Font Weights]
#let DEFAULT-TEXT-FONT-WEIGHT = 400
#let FIGURE-CAPTION-TITLE-TEXT-FONT-WEIGHT = DEFAULT-TEXT-FONT-WEIGHT
#let FIGURE-CAPTION-PREFIX-TEXT-FONT-WEIGHT = 700

// Yazı Sabitleri [String Constants]
#let CITY-NAME = "Konya"
#let STRING-ORCID = "ORCID"
#let STRING-CONTENTS = "İÇİNDEKİLER"
#let STRING-CHAPTER = "BÖLÜM"
#let STRING-SECTION = "KISIM"
#let STRING-ABSTRACT-TUR = "ÖZET"
#let STRING-ABSTRACT-ENG = "ABSTRACT"
#let STRING-KEYWORDS-TUR = "Anahtar Kelimeler"
#let STRING-KEYWORDS-ENG = "Keywords"
#let STRING-APPENDICES = "EKLER"
#let STRING-APPENDIX = "Ek"
#let STRING-THESIS-SUFFIX = " Tezi"
#let STRING-THESIS-PROPOSAL-SUFFIX = " Tez Önerisi"
#let STRING-ADVISOR = "Danışman"
#let STRING-SECOND-ADVISOR = "İkinci Danışman"
#let STRING-FIRST-REVIEWER = "1. Juri Üyesi"
#let STRING-SECOND-REVIEWER = "2. Juri Üyesi"
#let STRING-BIBLIOGRAPHY = "KAYNAKLAR"
// Organization Info
#let STRING-UNIVERSITY-NAME-TUR = "Necmettin Erbakan Üniversitesi"
#let STRING-UNIVERSITY-NAME-ENG = "Necmettin Erbakan University"
#let STRING-INSTITUTE-NAME-TUR = "Eğitim Bilimleri Enstitüsü"
#let STRING-INSTITUTE-NAME-ENG = "Graduate School of Educational Sciences"

// Ayraçlar [Separators]
#let APPENDIX-PREFIX-SEPERATOR = "-"
#let FIGURE-CAPTION-SEPARATOR = ". "

// Ekler [Supplements]
#let APPENDICES-SUPPLEMENT = STRING-APPENDIX + APPENDIX-PREFIX-SEPERATOR
#let APPENDICES-SUFFIX = ":"
#let MATH-EQUATION-SUPPLEMENT = "Denklem"
#let TABLE-FIGURE-SUPPLEMENT = "Tablo"
#let IMAGE-FIGURE-SUPPLEMENT = "Şekil"

// Numaralandırma [Numbering]
#let PAGE-NUMBERING-ROMAN = "i" // Sayfalar [Pages]
#let PAGE-NUMBERING-ARABIC = "1" // Sayfalar [Pages]
#let HEADING-NUMBERING = "1.1." // Başlıklar [Headings]
#let FIGURE-NUMBERING = "1.1" // Simgeler [Figures]
#let MATH-NUMBERING = "(1.1)" // Simgeler [Figures]
#let APPENDICES-HEADING-NUMBERING(.., last) = (
  APPENDICES-SUPPLEMENT + str(last) + APPENDICES-SUFFIX
) // Ekler [Appendices]
#let APPENDICES-REFERENCE-NUMBERING(.., last) = str(last) // Ekler [Appendices]

// Tarih Formatı [Date Format]
#let FULL-DATE-WITH-LONG-MONTH-FORMAT = "[day] [month repr:long] [year]"
#let FULL-DATE-FORMAT = "[day]/[month]/[year]"
#let ONLY-YEAR-DATE-FORMAT = "[year]"
#let LONG-MONTH-YEAR-DATE-FORMAT = "[month repr:long] [year]"

// Türkçe Aylar [Months Turkish]
#let TURKISH-MONTH-NAMES = (
  "Ocak",
  "Şubat",
  "Mart",
  "Nisan",
  "Mayıs",
  "Haziran",
  "Temmuz",
  "Ağustos",
  "Eylül",
  "Ekim",
  "Kasım",
  "Aralık",
)
