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
#let STRING-APPANDIX = "Ek-"
#let STRING-THESIS-SUFFIX = " Tezi"
#let STRING-THESIS-PROPOSAL-SUFFIX = " Tez Önerisi"

// Numaralandırma [Numbering]
#let PAGE_NUMBERING_ROMAN = "i" // Sayfalar [Pages]
#let PAGE_NUMBERING_ARABIC = "1" // Sayfalar [Pages]
#let HEADING-NUMBERING = "1.1." // Başlıklar [Headings]
#let FIGURE-NUMBERING = "1.1." // Simgeler [Figures]
#let MATH-NUMBERING = "(1)" // Simgeler [Figures]
#let TABLE-OF-CONTENTS-NUMBERING = "1.1." // İçindekiler [Table of Contents]
#let APPENDICES_NUMBERING = upper(STRING-APPANDIX) + "111" // Ekler [Appendices]

// Ekler [Supplements]
#let APPENDICES_SUPPLEMENT = STRING-APPANDIX

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
