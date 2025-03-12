#import "/src/constants.typ": REPORT-TYPES
#import "/src/core/validation-manager/validators/boolean-type-validator.typ": boolean-type-validator
#import "/src/core/validation-manager/validators/array-type-validator.typ": array-type-validator
#import "/src/core/validation-manager/validators/dictionary-type-validator.typ": dictionary-type-validator
#import "/src/core/validation-manager/validators/date-type-validator.typ": date-type-validator
#import "/src/core/validation-manager/validators/language-validator.typ": language-validator
#import "/src/core/validation-manager/validators/department-validator.typ": department-validator
#import "/src/core/validation-manager/validators/program-validator.typ": program-validator
#import "/src/core/validation-manager/validators/report-type-validator.typ": report-type-validator
#import "/src/core/validation-manager/validators/thesis-title-validator.typ": thesis-title-validator
#import "/src/core/validation-manager/validators/author-validator.typ": author-validator
#import "/src/core/validation-manager/validators/advisor-validator.typ": advisor-validator
#import "/src/core/validation-manager/validators/second-advisor-validator.typ": second-advisor-validator
#import "/src/core/validation-manager/validators/orcid-validator.typ": orcid-validator
#import "/src/core/validation-manager/validators/academic-member-title-validator.typ": academic-member-title-validator
#import "/src/core/validation-manager/validators/thesis-originalty-validator.typ": thesis-originalty-validator
#import "/src/core/validation-manager/validators/keywords-validator.typ": keywords-validator
#import "/src/core/validation-manager/validators/work-packages-validator.typ": work-packages-validator
#import "/src/core/validation-manager/validators/curriculum-vitae-info-validator.typ": curriculum-vitae-info-validator

#let validation-manager(
  language: none,
  department: none,
  program: none,
  report-type: none,
  date: none,
  thesis-title: none,
  author: none,
  advisor: none,
  second-advisor: none,
  thesis-study-funding-organization: none,
  thesis-originalty: none,
  keywords: none,
  show-list-of-tables: none,
  show-list-of-images: none,
  have-symbols: none,
  have-abbreviations: none,
  show-separated-sub-headings-in-discussion-conclusion-and-suggestions: none,
  work-packages: none,
  curriculum-vitae-info: none,
) = {
  /* ---- Doğrulama İşlemleri [Validation Process] ---- */

  // Dil parametresini doğrula. [Validate the language parameter.]
  language-validator(value: language)

  // Ana Bilim Dalı parametresini doğrula. [Validate the department parameter.]
  department-validator(value: department)

  // Bilim Dalı parametresini doğrula. [Validate the program parameter.]
  program-validator(value: program)

  // Rapor türü parametresini doğrula. [Validate the report type parameter.]
  report-type-validator(value: report-type)

  // Tarih parametresini doğrula. [Validate the date parameter.]
  date-type-validator(
    value: date,
    value-name: "template-configurations.date",
    value-description: "Şablon ayarlarındaki tarih",
  )

  // Tez Başlığı parametresini doğrula. [Validate the thesis-title parameter.]
  thesis-title-validator(value: thesis-title)

  // Yazar parametresini doğrula. [Validate the author parameter.]
  author-validator(value: author)

  // Danışmanın ORCID parametresini doğrula. [Validate the advisor's ORCID parameter.]
  advisor-validator(value: advisor)

  // İkinci Danışmanın ORCID parametresini doğrula. [Validate the second advisor's ORCID parameter.]
  if second-advisor != none {
    second-advisor-validator(value: second-advisor)
  }

  // Tez Çalışmasını Destekleyen Kuruluş parametresini doğrula. [Validate thesis-study-funding-organization parameter.]
  dictionary-type-validator(
    value: thesis-study-funding-organization,
    value-name: "template-configurations.thesis-study-funding-organization",
    value-description: "Şablon ayarlarındaki Tez Çalışmasını Destekleyen Kuruluş",
  )

  // Orijinallik parametresini doğrula. [Verify the authenticity parameter.]
  if (
    report-type == REPORT-TYPES.MASTER-THESIS or report-type == REPORT-TYPES.DOCTORAL-THESIS
  ) {
    thesis-originalty-validator(value: thesis-originalty)
  }

  // Anahtar Kelimeler parametresini doğrula. [Validate keywords parameter.]
  keywords-validator(value: keywords)

  // Tablolar listesini göster parametresini doğrula. [Validate show-list-of-tables parameter.]
  boolean-type-validator(
    value: show-list-of-tables,
    value-name: "template-configurations.show-list-of-tables",
    value-description: "Şablon ayarlarındaki tablolar listesini göster seçeneği",
  )

  // Şekiller listesini göster parametresini doğrula. [Validate show-list-of-images parameter.]
  boolean-type-validator(
    value: show-list-of-images,
    value-name: "template-configurations.show-list-of-images",
    value-description: "Şablon ayarlarındaki şekiller listesini göster seçeneği",
  )

  // Simgelerim var parametresini doğrula. [Validate have-symbols parameter.]
  boolean-type-validator(
    value: have-symbols,
    value-name: "template-configurations.have-symbols",
    value-description: "Şablon ayarlarındaki simgelerim var seçeneği",
  )

  // Kısaltmalarım var parametresini doğrula. [Validate have-abbreviations parameter.]
  boolean-type-validator(
    value: have-abbreviations,
    value-name: "template-configurations.have-abbreviations",
    value-description: "Şablon ayarlarındaki kısaltmalarım var seçeneği",
  )

  // 'TARTIŞMA, SONUÇ VE ÖNERİLER' bölümündeki alt başlıkları göster parametresini doğrula. [Validate show-separated-sub-headings-in-discussion-conclusion-and-suggestions parameter.]
  boolean-type-validator(
    value: show-separated-sub-headings-in-discussion-conclusion-and-suggestions,
    value-name: "template-configurations.show-separated-sub-headings-in-discussion-conclusion-and-suggestions",
    value-description: "Şablon ayarlarındaki 'TARTIŞMA, SONUÇ VE ÖNERİLER' bölümündeki alt başlıkları göster seçeneği",
  )

  // Çalışma Takvimindeki iş paketlerinin aylarının toplamını doğrula. [Validate the sum of the months of work packages in the Work Schedule.]
  if (
    report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL or report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL
  ) {
    work-packages-validator(value: work-packages, report-type: report-type)
  }

  // Öz Geçmişi doğrula. [Validate the Curriculum Vitae.]
  if report-type == REPORT-TYPES.TERM-PROJECT {
    curriculum-vitae-info-validator(value: curriculum-vitae-info)
  }
}
