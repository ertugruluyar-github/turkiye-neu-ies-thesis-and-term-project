#import "/src/core/validation/date-type-validator.typ": date-type-validator
#import "/src/core/validation/array-type-validator.typ": array-type-validator
#import "/src/core/validation/orcid-validator.typ": orcid-validator
#import "/src/core/validation/email-validator.typ": email-validator

#let curriculum-vitae-info-validator(value: none) = {
  // Doğum günü parametresini doğrula. [Validate the birthday parameter.]
  date-type-validator(
    value: value.birthday,
    value-name: "curriculum-vitae.birthday",
    value-description: "Öz Geçmiş sayfasındaki doğum tarihi",
  )

  // Dizi parametre türünü doğrula. [Validate array parameter type.]
  array-type-validator(
    value: value.skills,
    value-name: "curriculum-vitae-info.skills",
    value-description: "Öz Geçmişdeki beceriler",
  )

  // Dizi parametre türünü doğrula. [Validate array parameter type.]
  array-type-validator(
    value: value.work-experiences,
    value-name: "curriculum-vitae-info.work-experiences",
    value-description: "Öz Geçmişdeki iş deneyimleri",
  )

  // Dizi parametre türünü doğrula. [Validate array parameter type.]
  array-type-validator(
    value: value.get-info-from-recommended-peoples,
    value-name: "curriculum-vitae-info.get-info-from-recommended-peoples",
    value-description: "Öz Geçmişdeki bilgi almak için önerebileceğim şahıs",
  )

  // E-Posta parametresini doğrula. [Validate the email parameter.]
  email-validator(
    value: value.email,
    value-name: "curriculum-vitae.email",
    value-description: "Öz Geçmiş sayfasındaki e-posta adresi",
  )

  // İş Deneyimleri parametresini doğrula. [Validate the work-experiences parameter.]
  for (index, work-experience) in value.work-experiences.enumerate(start: 1) {
    date-type-validator(
      value: work-experience.start-date,
      value-name: "curriculum-vitae parametresindeki work-experience.start-date",
      value-description: "Öz Geçmişteki" + str(index) + ". iş deneyiminin başlangıç tarihi",
    )
    date-type-validator(
      value: work-experience.end-date,
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
      work-experience.start-date > value.birthday,
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.start-date' tarihi doğum günü tarihinden geride olamaz.",
    )
    assert(
      work-experience.end-date > value.birthday,
      message: "Öz Geçmişteki "
        + str(index)
        + ". iş deneyiminde hata var. 'curriculum-vitae parametresindeki work-experience.end-date' tarihi doğum günü tarihinden geride olamaz.",
    )
  }

  // Bilgi Almak İçin Önerebileceğim Şahıslar parametresini doğrula. [Validate the get-info-from-recommended-people parameter.]
  for (index, get-info-from-recommended-people) in value.get-info-from-recommended-peoples.enumerate(start: 1) {
    if get-info-from-recommended-people.orcid != none {
      // ORCID parametresini doğrula. [Validate the ORCID parameter.]
      orcid-validator(
        value: get-info-from-recommended-people.orcid,
        value-name: "curriculum-vitae parametresindeki get-info-from-recommended-people.orcid",
        value-description: "Öz Geçmişteki " + str(index) + ". bilgi almak için önerebileceğim şahsın ORCID'i",
      )
    }

    // E-Posta parametresini doğrula. [Validate the email parameter.]
    email-validator(
      value: get-info-from-recommended-people.email,
      value-name: "curriculum-vitae parametresindeki get-info-from-recommended-people.email",
      value-description: "Öz Geçmişteki " + str(index) + ". bilgi almak için önerebileceğim şahsın e-posta adresi",
    )
  }
}
