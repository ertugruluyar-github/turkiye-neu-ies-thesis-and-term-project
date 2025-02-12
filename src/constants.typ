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
#let STRING-CONTENTS = "İÇİNDEKİLER"
#let STRING-CHAPTER = "BÖLÜM"
#let STRING-SECTION = "KISIM"
#let STRING-APPANDIX = "Ek"
#let APPANDIX-PREFIX-SEPERATOR = "-"
#let STRING-THESIS-SUFFIX = " Tezi"
#let STRING-THESIS-PROPOSAL-SUFFIX = " Tez Önerisi"

// Numaralandırma [Numbering]
#let PAGE_NUMBERING_ROMAN = "i" // Sayfalar [Pages]
#let PAGE_NUMBERING_ARABIC = "1" // Sayfalar [Pages]
#let HEADING-NUMBERING = "1.1." // Başlıklar [Headings]
#let FIGURE-NUMBERING = "1.1." // Simgeler [Figures]
#let MATH-NUMBERING = "(1)" // Simgeler [Figures]
#let APPENDICES-NUMBERING(.., last) = STRING-APPANDIX + APPANDIX-PREFIX-SEPERATOR + str(last) + ":" // Ekler [Appendices]

// Ekler [Supplements]
#let STRING-APPENDICES = "EKLER"
#let APPENDICES_SUPPLEMENT = none

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
