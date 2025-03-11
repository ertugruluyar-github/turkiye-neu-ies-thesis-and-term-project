#import "/src/core/validation/date-validator.typ": date-validator
#import "/src/core/validation/minimum-value-validator.typ": minimum-value-validator
#import "/src/core/validation/maximum-value-validator.typ": maximum-value-validator

#let curriculum-vitae-info-validator(
  birthday: none,
  work-experiences: none,
) = {
  date-validator(
    date: birthday,
    parameter-name: "curriculum-vitae.birthday",
    parameter-description: "Öz Geçmiş sayfasındaki doğum tarihi",
  )

  for (index, work-experience) in work-experiences.enumerate(start: 1) {
    date-validator(
      date: work-experience.start-date,
      parameter-name: "curriculum-vitae parametresindeki work-experience.start-date",
      parameter-description: "Öz Geçmişteki" + str(index) + ". iş deneyiminin başlangıç tarihi",
    )
    date-validator(
      date: work-experience.end-date,
      parameter-name: "curriculum-vitae parametresindeki work-experience.end-date",
      parameter-description: "Öz Geçmişteki" + str(index) + ". iş deneyiminin bitiş tarihi",
    )
    assert(
      work-experience.start-date < datetime.today(),
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.start-date' tarihi günümüzden ileride olamaz.",
    )
    assert(
      work-experience.end-date < datetime.today(),
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.end-date' tarihi günümüzden ileride olamaz.",
    )
    assert(
      work-experience.start-date < work-experience.end-date,
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.start-date' tarihi 'curriculum-vitae parametresindeki work-experience.end-date' tarihinden ileride olamaz.",
    )
  }
}
