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

// Yazı Sabitleri [String Constants]
#let STRING-TC = "T.C."
#let STRING-CITY-NAME = "Konya"
#let STRING-ORCID = "ORCID"
#let STRING-CONTENTS = "İÇİNDEKİLER"
#let STRING-LIST-OF-TABLES = "TABLOLAR LİSTESİ"
#let STRING-LIST-OF-IMAGES = "ŞEKİLLER LİSTESİ"
#let STRING-CHAPTER = "BÖLÜM"
#let STRING-ABSTRACT-TUR = "ÖZET"
#let STRING-ABSTRACT-ENG = "ABSTRACT"
#let STRING-EXPANDED-TURKISH-ABSTRACT = "GENİŞLETİLMİŞ TÜRKÇE ÖZET"
#let STRING-KEYWORDS-TUR = "Anahtar Kelimeler"
#let STRING-KEYWORDS-ENG = "Keywords"
#let STRING-APPENDICES = "EKLER"
#let STRING-APPENDIX = "EK"
#let STRING-ADVISOR = "Danışman"
#let STRING-SECOND-ADVISOR = "İkinci Danışman"
#let STRING-FIRST-REVIEWER = "1. Juri Üyesi"
#let STRING-SECOND-REVIEWER = "2. Juri Üyesi"
#let STRING-BIBLIOGRAPHY = "KAYNAKLAR"

// Organization Info
#let STRING-UNIVERSITY-NAME-TUR = (
  title-case: "Necmettin Erbakan Üniversitesi",
  upper-case: "NECMETTİN ERBAKAN ÜNİVERSİTESİ",
)
#let STRING-UNIVERSITY-NAME-ENG = (
  title-case: "Necmettin Erbakan University",
  upper-case: "NECMETTİN ERBAKAN UNİVERSITY",
)
#let STRING-INSTITUTE-NAME-TUR = (
  title-case: "Eğitim Bilimleri Enstitüsü",
  upper-case: "EĞİTİM BİLİMLERİ ENSTİTÜSÜ",
)
#let STRING-INSTITUTE-NAME-ENG = (
  title-case: "Graduate School of Educational Sciences",
  upper-case: "GRADUATE SCHOOL OF EDUCATIONAL SCIENCES",
)

// Ayraçlar [Separators]
#let APPENDIX-PREFIX-SEPERATOR = "-"
#let FIGURE-CAPTION-SEPARATOR = ". "
#let APPENDIX-HEADING-SUFFIX-SEPARATOR = ":"
#let APPENDIX-REFERENCE-SUFFIX-SEPARATOR = ": "

// Atıf Ekleri [Reference Supplements]
#let CHAPTER-REFERENCE-SUPPLEMENT = "Bölüm"
#let HEADING-REFERENCE-SUPPLEMENT = "Başlık"
#let MATH-EQUATION-REFERENCE-SUPPLEMENT = "Denklem"
#let TABLE-FIGURE-REFERENCE-SUPPLEMENT = "Tablo"
#let IMAGE-FIGURE-REFERENCE-SUPPLEMENT = "Şekil"
#let APPENDIX-REFERENCE-SUPPLEMENT = STRING-APPENDIX + APPENDIX-PREFIX-SEPERATOR

// Numaralandırma [Numbering]
#let PAGE-NUMBERING-ROMAN = "i" // Sayfalar [Pages]
#let PAGE-NUMBERING-ARABIC = "1" // Sayfalar [Pages]
#let HEADING-NUMBERING = "1.1." // Başlıklar [Headings]
#let FIGURE-NUMBERING = "1.1" // Simgeler [Figures]
#let MATH-NUMBERING = "(1.1)" // Simgeler [Figures]
#let APPENDIX-HEADING-NUMBERING(..nums) = (
  APPENDIX-REFERENCE-SUPPLEMENT + nums.pos().slice(1).map(str).join(".") + APPENDIX-HEADING-SUFFIX-SEPARATOR
) // Ekler [Appendices]
#let APPENDIX-REFERENCE-NUMBERING(..nums) = nums.pos().slice(1).map(str).join(".") // Ekler [Appendices]

// Tarih Formatı [Date Format]
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

// Çalışma Takvimi [Work Schedule]
#let STRING-WORK-SCHEDULE = "ÇALIŞMA TAKVİMİ"
#let STRING-WORK-PACKAGE = "İş Paketi"
#let STRING-SHORT-WORK-PACKAGE = "İP"
#let STRING-MONTHS = "Aylar"
#let MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT = 12
#let DOCTORAL-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT = 16

// Özgeçmiş [Curriculum Vitae]
#let STRING-CURRICULUM-VITAE = "ÖZ GEÇMİŞ"
#let STRING-GENERAL-INFO = "Genel Bilgiler"
#let STRING-FIRST-NAME-LAST-NAME = "Adı Soyadı"
#let STRING-SIGNATURE = "İmza"
#let STRING-BIRTHDAY = "Dogüm Yeri"
#let STRING-BIRTHPLACE = "Doğum Günü"
#let STRING-ADRESS = "Adres"
#let STRING-MARITAL-STATUS = "Medeni Durumu"
#let STRING-PHONE-NUMBER = "Telefon No"
#let STRING-EMAIL = "E-Posta"
#let STRING-EDUCATIONAL-BACKGROUND = "Öğrenim Hayatı"
#let STRING-SCHOOL-TYPE = "Okul Türü"
#let STRING-SCHOOL-NAME = "Okul Adı"
#let STRING-PROGRAM = "Program"
#let STRING-PLACE = "Yer"
#let STRING-YEAR = "Yıl"
#let STRING-HIGH-SCHOOL = "Lise"
#let STRING-UNDERGRADUATE = "Lisans"
#let STRING-MASTERS-DEGREE = "Yüksek Lisans"
#let STRING-WORK-BACKGROUND = "Çalışma Hayatı"
#let STRING-SKILLS = "Becerileri"
#let STRING-WORK-EXPERIENCES = "İş Deneyimleri"
#let STRING-GET-INFO-FROM-RECOMMENDED-PEOPLES = "Hakkımda bilgi\nalmak için\nönerebileceğim\nşahıslar"
