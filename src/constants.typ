#import "/src/core/language-manager/language-manager.typ": translator
#import "/src/constants/language-keys.typ": language-keys

#let UNIVERSITY-LOGO-PATH = (
  TR-TR: "/src/organization-logos/university-logo-tr.png",
  EN-US: "/src/organization-logos/university-logo-en.png",
)
#let INSTITUTE-LOGO-PATH = (
  TR-TR: "/src/organization-logos/institute-logo-tr.png",
  EN-US: "/src/organization-logos/institute-logo-en.png",
)

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
  MASTER-THESIS-PROPOSAL: translator(key: language-keys.MASTER-THESIS-PROPOSAL),
  MASTER-THESIS: translator(key: language-keys.MASTER-THESIS),
  DOCTORAL-THESIS-PROPOSAL: translator(key: language-keys.DOCTORAL-THESIS-PROPOSAL),
  DOCTORAL-THESIS: translator(key: language-keys.DOCTORAL-THESIS),
  TERM-PROJECT: translator(key: language-keys.TERM-PROJECT),
)

#let ACADEMIC-MEMBER-TITLES = (
  __ACADEMIC-MEMBER-TITLE-PLACE-HOLDER: translator(key: language-keys.ACADEMIC-MEMBER-TITLE-PLACE-HOLDER),
  ASSISTANT-PROFESSOR-DR: translator(key: language-keys.ASSISTANT-PROFESSOR-DR),
  ASSOCIATE-PROFESSOR-DR: translator(key: language-keys.ASSOCIATE-PROFESSOR-DR),
  PROFESSOR: translator(key: language-keys.PROFESSOR),
  PROFESSOR-DR: translator(key: language-keys.PROFESSOR-DR),
)

#let FONT-NAME = "Times New Roman"
#let FONT-SIZE = 12pt
#let ALTERNATE-FONT-SIZE = 10pt
#let ALTERNATE-FONT-SIZE-2 = 10pt
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
#let MONTH-YEAR-DATE-FORMAT = "[month]/[year]"
#let LONG-MONTH-YEAR-DATE-FORMAT = "[month repr:long] [year]"

// Doğrulama [Validation]
#let STRING-ERROR-INLINE-TITLE = "HATA: "
#let STRING-RELATED-DOCUMENTATION-INLINE-TITLE = "İlgili Dökümantasyon: "
#let STRING-TYPST-DICTIONARY-DOCUMENTATION-LINK = "https://typst.app/docs/reference/foundations/dictionary/"
#let STRING-TYPST-DATETIME-DOCUMENTATION-LINK = "https://typst.app/docs/reference/foundations/datetime/"
#let STRING-TYPST-INT-DOCUMENTATION-LINK = "https://typst.app/docs/reference/foundations/int/"
#let STRING-TYPST-ARRAY-DOCUMENTATION-LINK = "https://typst.app/docs/reference/foundations/array/"
#let STRING-TYPST-STR-DOCUMENTATION-LINK = "https://typst.app/docs/reference/foundations/str/"
#let STRING-TYPST-BOOLEAN-DOCUMENTATION-LINK = "https://typst.app/docs/reference/foundations/bool/"
#let WHAT-IS-MY-ORCID-ID-LINK = "https://info.orcid.org/what-is-my-id/"


// Anahtar Kelime Sayısı Kuralı [Keyword Count Rules]
#let MIN-KEYWORD-COUNT = 3
#let MAX-KEYWORD-COUNT = 5

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

// Ana Bilim Dalları [Departments]
#let DEPARTMENTS = (
  __DEPARTMENT-PLACE-HOLDER: translator(key: language-keys.DEPARTMENT-PLACE-HOLDER),
  DEPARTMENT-OF-PHYSICAL-EDUCATION-AND-SPORTS: translator(
    key: language-keys.DEPARTMENT-OF-PHYSICAL-EDUCATION-AND-SPORTS,
  ),
  DEPARTMENT-OF-COMPUTER-EDUCATION-AND-INSTRUCTIONAL-TECHNOLOGY: translator(
    key: language-keys.DEPARTMENT-OF-COMPUTER-EDUCATION-AND-INSTRUCTIONAL-TECHNOLOGY,
  ),
  DEPARTMENT-OF-EDUCATIONAL-SCIENCES: translator(key: language-keys.DEPARTMENT-OF-EDUCATIONAL-SCIENCES),
  DEPARTMENT-OF-CURRICULUM-AND-INSTRUCTION: translator(key: language-keys.DEPARTMENT-OF-CURRICULUM-AND-INSTRUCTION),
  DEPARTMENT-OF-FINE-ARTS-EDUCATION: translator(key: language-keys.DEPARTMENT-OF-FINE-ARTS-EDUCATION),
  DEPARTMENT-OF-ELEMENTARY-EDUCATION: translator(key: language-keys.DEPARTMENT-OF-ELEMENTARY-EDUCATION),
  DEPARTMENT-OF-ELEMENTARY-RELIGIOUS-CULTURE-AND-ETHICS-EDUCATION: translator(
    key: language-keys.DEPARTMENT-OF-ELEMENTARY-RELIGIOUS-CULTURE-AND-ETHICS-EDUCATION,
  ),
  DEPARTMENT-OF-MATHEMATICS-AND-SCIENCES-EDUCATION: translator(
    key: language-keys.DEPARTMENT-OF-MATHEMATICS-AND-SCIENCES-EDUCATION,
  ),
  DEPARTMENT-OF-SECONDARY-SCIENCE-AND-MATHEMATICS-EDUCATION: translator(
    key: language-keys.DEPARTMENT-OF-SECONDARY-SCIENCE-AND-MATHEMATICS-EDUCATION,
  ),
  DEPARTMENT-OF-SECONDARY-SOCIAL-SCIENCES-EDUCATION: translator(
    key: language-keys.DEPARTMENT-OF-SECONDARY-SOCIAL-SCIENCES-EDUCATION,
  ),
  DEPARTMENT-OF-SPECIAL-EDUCATION: translator(key: language-keys.DEPARTMENT-OF-SPECIAL-EDUCATION),
  DEPARTMENT-OF-BASIC-EDUCATION: translator(key: language-keys.DEPARTMENT-OF-BASIC-EDUCATION),
  DEPARTMENT-OF-TURKISH-EDUCATION: translator(key: language-keys.DEPARTMENT-OF-TURKISH-EDUCATION),
  DEPARTMENT-OF-TURKISH-AND-SOCIAL-SCIENCES-EDUCATION: translator(
    key: language-keys.DEPARTMENT-OF-TURKISH-AND-SOCIAL-SCIENCES-EDUCATION,
  ),
  DEPARTMENT-OF-FOREIGN-LANGUAGE-EDUCATION: translator(key: language-keys.DEPARTMENT-OF-FOREIGN-LANGUAGE-EDUCATION),
)

// Programs
#let PROGRAMS = (
  __PROGRAM-PLACE-HOLDER: translator(key: language-keys.PROGRAM-PLACE-HOLDER),
  GERMAN-LANGUAGE-EDUCATION-PROGRAM: translator(key: language-keys.GERMAN-LANGUAGE-EDUCATION-PROGRAM),
  PHYSICAL-EDUCATION-AND-SPORTS-PROGRAM: translator(key: language-keys.PHYSICAL-EDUCATION-AND-SPORTS-PROGRAM),
  COMPUTER-EDUCATION-AND-INSTRUCTIONAL-TECHNOLOGY-PROGRAM: translator(
    key: language-keys.COMPUTER-EDUCATION-AND-INSTRUCTIONAL-TECHNOLOGY-PROGRAM,
  ),
  BIOLOGY-EDUCATION-PROGRAM: translator(key: language-keys.BIOLOGY-EDUCATION-PROGRAM),
  GEOGRAPHY-EDUCATION-PROGRAM: translator(key: language-keys.GEOGRAPHY-EDUCATION-PROGRAM),
  CURRICULUM-AND-INSTRUCTION-PROGRAM: translator(key: language-keys.CURRICULUM-AND-INSTRUCTION-PROGRAM),
  EDUCATION-MANAGEMENT-PROGRAM: translator(key: language-keys.EDUCATION-MANAGEMENT-PROGRAM),
  EDUCATIONAL-ADMINISTRATION-SUPERVISION-PLANNING-AND-ECONOMICS-PROGRAM: translator(
    key: language-keys.EDUCATIONAL-ADMINISTRATION-SUPERVISION-PLANNING-AND-ECONOMICS-PROGRAM,
  ),
  PHILOSOPHY-EDUCATION-PROGRAM: translator(key: language-keys.PHILOSOPHY-EDUCATION-PROGRAM),
  SCIENCE-EDUCATION-PROGRAM: translator(key: language-keys.SCIENCE-EDUCATION-PROGRAM),
  PHYSICS-EDUCATION-PROGRAM: translator(key: language-keys.PHYSICS-EDUCATION-PROGRAM),
  ELEMENTARY-RELIGIOUS-CULTURE-AND-ETHICS-EDUCATION-PROGRAM: translator(
    key: language-keys.ELEMENTARY-RELIGIOUS-CULTURE-AND-ETHICS-EDUCATION-PROGRAM,
  ),
  ELEMENTARY-MATHEMATICS-EDUCATION-PROGRAM: translator(key: language-keys.ELEMENTARY-MATHEMATICS-EDUCATION-PROGRAM),
  ENGLISH-LANGUAGE-EDUCATION-PROGRAM: translator(key: language-keys.ENGLISH-LANGUAGE-EDUCATION-PROGRAM),
  CHEMISTRY-EDUCATION-PROGRAM: translator(key: language-keys.CHEMISTRY-EDUCATION-PROGRAM),
  MATHEMATICS-EDUCATION-PROGRAM: translator(key: language-keys.MATHEMATICS-EDUCATION-PROGRAM),
  MUSIC-EDUCATION-PROGRAM: translator(key: language-keys.MUSIC-EDUCATION-PROGRAM),
  PRESCHOOL-EDUCATION-PROGRAM: translator(key: language-keys.PRESCHOOL-EDUCATION-PROGRAM),
  SPECIAL-EDUCATION-PROGRAM: translator(key: language-keys.SPECIAL-EDUCATION-PROGRAM),
  LEADERSHIP-AND-MANAGEMENT-IN-SPECIAL-TEACHING-INSTITUTIONS-PROGRAM: translator(
    key: language-keys.LEADERSHIP-AND-MANAGEMENT-IN-SPECIAL-TEACHING-INSTITUTIONS-PROGRAM,
  ),
  GUIDANCE-AND-PSYCHOLOGICAL-COUNSELING-PROGRAM: translator(
    key: language-keys.GUIDANCE-AND-PSYCHOLOGICAL-COUNSELING-PROGRAM,
  ),
  ART-EDUCATION-PROGRAM: translator(key: language-keys.ART-EDUCATION-PROGRAM),
  PRIMARY-EDUCATION-PROGRAM: translator(key: language-keys.PRIMARY-EDUCATION-PROGRAM),
  SOCIAL-STUDIES-EDUCATION-PROGRAM: translator(key: language-keys.SOCIAL-STUDIES-EDUCATION-PROGRAM),
  HISTORY-EDUCATION-PROGRAM: translator(key: language-keys.HISTORY-EDUCATION-PROGRAM),
  TURKISH-LANGUAGE-AND-LITERATURE-EDUCATION-PROGRAM: translator(
    key: language-keys.TURKISH-LANGUAGE-AND-LITERATURE-EDUCATION-PROGRAM,
  ),
  TURKISH-EDUCATION-PROGRAM: translator(key: language-keys.TURKISH-EDUCATION-PROGRAM),
  TEACHING-TURKISH-TO-FOREIGNERS-PROGRAM: translator(key: language-keys.TEACHING-TURKISH-TO-FOREIGNERS-PROGRAM),
  TURKISH-TEACHING-TO-TURKISH-CHILDREN-ABROAD-PROGRAM: translator(
    key: language-keys.TURKISH-TEACHING-TO-TURKISH-CHILDREN-ABROAD-PROGRAM,
  ),
  MENTALLY-DISABLED-EDUCATION-PROGRAM: translator(key: language-keys.MENTALLY-DISABLED-EDUCATION-PROGRAM),
)

