#import "/src/core/validation/date-type-validator.typ": date-type-validator
#import "/src/core/validation/orcid-validator.typ": orcid-validator
#import "/src/core/validation/email-validator.typ": email-validator

#let curriculum-vitae-info-validator(
  birthday: none,
  email: none,
  work-experiences: none,
  get-info-from-recommended-peoples: none,
) = {
  date-type-validator(
    value: birthday,
    value-name: "curriculum-vitae.birthday",
    value-description: "Öz Geçmiş sayfasındaki doğum tarihi",
  )

  email-validator(
    value: email,
    value-name: "curriculum-vitae.email",
    value-description: "Öz Geçmiş sayfasındaki e-posta adresi",
  )

  for (index, work-experience) in work-experiences.enumerate(start: 1) {
    date-type-validator(
      date: work-experience.start-date,
      value-name: "curriculum-vitae parametresindeki work-experience.start-date",
      value-description: "Öz Geçmişteki" + str(index) + ". iş deneyiminin başlangıç tarihi",
    )
    date-type-validator(
      date: work-experience.end-date,
      value-name: "curriculum-vitae parametresindeki work-experience.end-date",
      value-description: "Öz Geçmişteki" + str(index) + ". iş deneyiminin bitiş tarihi",
    )
    assert(
      work-experience.start-date < datetime.today(),
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.start-date' tarihi bugünün tarihinden ileride olamaz.",
    )
    assert(
      work-experience.end-date < datetime.today(),
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.end-date' tarihi bugünün tarihinden ileride olamaz.",
    )
    assert(
      work-experience.start-date < work-experience.end-date,
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.start-date' tarihi 'curriculum-vitae parametresindeki work-experience.end-date' tarihinden ileride olamaz.",
    )
    assert(
      work-experience.start-date > birthday,
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.start-date' tarihi doğum günü tarihinden geride olamaz.",
    )
    assert(
      work-experience.end-date > birthday,
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.end-date' tarihi doğum günü tarihinden geride olamaz.",
    )
  }

  for (index, get-info-from-recommended-people) in get-info-from-recommended-peoples.enumerate(start: 1) {
    if get-info-from-recommended-people.orcid != none {
      orcid-validator(
        value: get-info-from-recommended-people.orcid,
        value-name: "curriculum-vitae parametresindeki get-info-from-recommended-people.orcid",
        value-description: "Öz Geçmişteki " + str(index) + ". bilgi almak için önerebileceğim şahsın ORCID'i",
      )
    }
    email-validator(
      value: get-info-from-recommended-people.email,
      value-name: "curriculum-vitae parametresindeki get-info-from-recommended-people.email",
      value-description: "Öz Geçmişteki " + str(index) + ". bilgi almak için önerebileceğim şahsın e-posta adresi",
    )
  }
}
