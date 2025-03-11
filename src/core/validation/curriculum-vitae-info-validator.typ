#import "/src/core/validation/date-validator.typ": date-validator
#import "/src/core/validation/orcid-validator.typ": orcid-validator

#let curriculum-vitae-info-validator(
  birthday: none,
  work-experiences: none,
  get-info-from-recommended-peoples: none,
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
        orcid: get-info-from-recommended-people.orcid,
        parameter-name: "curriculum-vitae parametresindeki get-info-from-recommended-people.orcid",
        parameter-description: "Öz Geçmişteki " + str(index) + ". bilgi almak için önerebileceğim şahsın ORCID'i",
      )
    }
  }
}
