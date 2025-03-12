#import "/src/constants.typ": (
  REPORT-TYPES,
  STRING-ERROR-INLINE-TITLE,
  STRING-RELATED-DOCUMENTATION-INLINE-TITLE,
  STRING-TYPST-ARRAY-DOCUMENTATION-LINK,
  MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT,
  DOCTORAL-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT,
)
#import "/src/core/validation/array-type-validator.typ": array-type-validator

#let work-packages-validator(
  value: none,
  report-type: none,
) = {
  // Dizi veri türünü doğrula. [Validate array data type.]
  array-type-validator(
    value: value,
    value-name: "template-configurations.work-packages",
    value-description: "Şablon ayarlarındaki iş paketleri",
  )

  // İş Paketlerinin toplam ay sayısını doğrula. [Validate th sum of the month count of work-packages.]
  let month-count = if report-type == REPORT-TYPES.MASTER-THESIS-PROPOSAL {
    MASTER-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT
  } else if report-type == REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL {
    DOCTORAL-THESIS-PROPOSAL-WORK-SCHEDULE-MONTH-COUNT
  }

  let work-packages-months = ()
  for work-package in value {
    for month in work-package.months {
      if not (work-packages-months.contains(month)) {
        work-packages-months.push(month)
      }
    }
  }

  let assertion-value = array.range(1, month-count + 1, step: 1)

  assert(
    work-packages-months == assertion-value,
    message: STRING-ERROR-INLINE-TITLE
      + "'work-packages' parametresi içerindeki 'months' parametresine ya da parametrelerine desteklenmeyen ya da hatalı bir giriş oldu. "
      + str(month-count)
      + " aylık çalışma takviminde eksik aylar var. Lütfen iş paketlerine karşılık gelen ayların toplamda "
      + str(month-count)
      + " ay olduğundan emin olun. "
      + STRING-RELATED-DOCUMENTATION-INLINE-TITLE
      + STRING-TYPST-ARRAY-DOCUMENTATION-LINK,
  )
}
