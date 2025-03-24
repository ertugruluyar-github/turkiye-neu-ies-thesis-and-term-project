#import "/src/constants/drop-down-list-constants.typ": LANGUAGES

// Tez kapağında yer alan "Tez Çalışmasını Destekleyen Kuruluşun Adı" ve "Proje Numarası" metnini oluşturan bileşen fonksiyonudur. [A function that creates the text for the "Tez Çalışmasını Destekleyen Kuruluşun Adı" and "Proje Numarası" in the cover page.]
#let thesis-study-funding-organization-component(
  language: none,
  thesis-study-funding-organization: none,
) = {
  if language == LANGUAGES.TR-TR {
    [Bu tez çalışması #thesis-study-funding-organization.name tarafından #thesis-study-funding-organization.project-no numaralı proje ile desteklenmiştir.]
  } else if language == LANGUAGES.EN-US {
    [This thesis work was supported by #thesis-study-funding-organization.name under the project number #thesis-study-funding-organization.project-no.]
  }
}
