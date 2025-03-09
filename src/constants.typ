#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

// Genel [General]
#let PAPER = "a4"
#let MARGIN = (
  left: 2.5cm,
  top: 2.5cm,
  right: 2.5cm,
  bottom: 2.5cm,
)

/*
TR-TR: Türkçe (Türkiye) [Turkish (Türkiye)]\
EN-US: İngilizce (ABD) [English (US)]
*/
#let LANGUAGES = (
  TR-TR: (
    language-code: "tr",
    region-code: "tr",
  ),
  EN-US: (
    language-code: "en",
    region-code: "us",
  ),
)

/*
MASTER-THESIS-PROPOSAL: "Yüksek Lisans Tez Önerisi"\
MASTER-THESIS: "Yüksek Lisans Tezi"\
DOCTORAL-THESIS-PROPOSAL: "Doktora Tez Önerisi"\
DOCTORAL-THESIS: "Doktora Tezi"\
TERM-PROJECT: "Dönem Projesi"
*/
#let REPORT-TYPES = (
  MASTER-THESIS-PROPOSAL: (
    TR-TR: "Yüksek Lisans Tez Önerisi",
    EN-US: "Master Thesis Proposal",
  ),
  MASTER-THESIS: (
    TR-TR: "Yüksek Lisans Tezi",
    EN-US: "Master Thesis",
  ),
  DOCTORAL-THESIS-PROPOSAL: (
    TR-TR: "Doktora Tez Önerisi",
    EN-US: "Doctoral Thesis Proposal",
  ),
  DOCTORAL-THESIS: (
    TR-TR: "Doktora Tezi",
    EN-US: "Doctoral Thesis",
  ),
  TERM-PROJECT: (
    TR-TR: "Tezsiz Yüksek Lisans Dönem Projesi",
    EN-US: "Term Project of Non-Thesis Master",
  ),
)

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

// Ayraçlar [Separators]
#let APPENDIX-PREFIX-SEPERATOR = "-"
#let FIGURE-CAPTION-SEPARATOR = ". "
#let APPENDIX-HEADING-SUFFIX-SEPARATOR = ":"
#let APPENDIX-REFERENCE-SUFFIX-SEPARATOR = ": "

// Numaralandırma [Numbering]
#let PAGE-NUMBERING-ROMAN = "i" // Sayfalar [Pages]
#let PAGE-NUMBERING-ARABIC = "1" // Sayfalar [Pages]
#let HEADING-NUMBERING = "1.1." // Başlıklar [Headings]
#let FIGURE-NUMBERING = "1.1" // Simgeler [Figures]
#let MATH-NUMBERING = "(1.1)" // Simgeler [Figures]

// Tarih Formatı [Date Format]
#let FULL-DATE-FORMAT = "[day]/[month]/[year]"
#let ONLY-YEAR-DATE-FORMAT = "[year]"
#let LONG-MONTH-YEAR-DATE-FORMAT = "[month repr:long] [year]"

// Aylar [Months]
#let STRING-MONTH-NAMES = (
  translator(key: language-keys.JANUARY),
  translator(key: language-keys.FEBRUARY),
  translator(key: language-keys.MARCH),
  translator(key: language-keys.APRIL),
  translator(key: language-keys.MAY),
  translator(key: language-keys.JUNE),
  translator(key: language-keys.JULY),
  translator(key: language-keys.AUGUST),
  translator(key: language-keys.SEPTEMBER),
  translator(key: language-keys.OCTOBER),
  translator(key: language-keys.NOVEMBER),
  translator(key: language-keys.DECEMBER),
)

// Çalışma Takvimi [Work Schedule]
#let MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT = 12
#let DOCTORAL-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT = 16
