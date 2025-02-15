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
#let FIGURE-TITLE-TEXT-FONT-SIZE = 10pt
#let FIGURE-CONTENT-TEXT-FONT-SIZE = 10pt
#let PARAGRAPH-FIRST-LINE-INDENT = 1.25cm

// STRING CONSTANTS
#let STRING-CONTENTS = "İÇİNDEKİLER"
#let STRING-CHAPTER = "BÖLÜM"
#let STRING-SECTION = "KISIM"
#let STRING-APPENDICES = "EKLER"
#let STRING-APPENDIX = "Ek"
#let STRING-THESIS-SUFFIX = " Tezi"
#let STRING-THESIS-PROPOSAL-SUFFIX = " Tez Önerisi"

// Ekler [Supplements]
#let APPENDICES-SUPPLEMENT = none
#let APPENDICES-SUFFIX = ":"
#let MATH-EQUATION-SUPPLEMENT = "Denklem"
#let TABLE-FIGURE-SUPPLEMENT = "Tablo"
#let IMAGE-FIGURE-SUPPLEMENT = "Şekil"

// Ayraçlar [Separators]
#let APPENDIX-PREFIX-SEPERATOR = "-"
#let FIGURE-CAPTION-SEPARATOR = ". "

// Numaralandırma [Numbering]
#let PAGE-NUMBERING-ROMAN = "i" // Sayfalar [Pages]
#let PAGE-NUMBERING-ARABIC = "1" // Sayfalar [Pages]
#let HEADING-NUMBERING = "1.1." // Başlıklar [Headings]
#let FIGURE-NUMBERING = "1.1" // Simgeler [Figures]
#let MATH-NUMBERING = "(1)" // Simgeler [Figures]
#let APPENDICES-NUMBERING(.., last) = STRING-APPENDIX + APPENDIX-PREFIX-SEPERATOR + str(last) // Ekler [Appendices]

// Başlık Sayfası [Title Page]
#let STRING-FIRST-REVIEWER = "1. Juri Üyesi"
#let STRING-SECOND-REVIEWER = "2. Juri Üyesi"
#let STRING-SUPERVISOR = "Danışman"

// Kaynakça [Bibliography]
#let STRING-BIBLIOGRAPHY = "KAYNAKLAR"

// Tarih Formatı [Date Format]
#let DATE-FORMAT = "[day] [month repr:long] [year]"

// Türkçe Aylar [Months Turkish]
#let MONTHS = ("Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık")
