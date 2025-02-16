
// #import "@local/turkiye-neu-ies-thesis:0.1.0": *
#import "/src/lib.typ": template-configurations
#import "/src/modules/custom-functions.typ": *

/* ---- Thesis configurations ----
  title: Tezinizin başlığı.
  author: (fullname: "", orcid: "") şeklinde adınız soyadınız ve ORCID numaranız.
  abstract: Tezinizin özeti.
  thesis-type: Tezinizin türü olarak "Yüksek Lisans" ya da "Doktora" yazınız.
  is-thesis-proposal: Tez önerisi mi? (varsayılan: true).
  reviewers: your thesis reviewers, specify in order "first-reviewer", "second-reviewer" and (if needed) "supervisor".
  date: your thesis deadline (default: datetime.today()).
  lang: the text language for smartquotes & hyphenation (specify as ISO 639-1/2/3 code, default: "en").
  header-logo: your faculty and/or organization banner (default: none).
*/

#show: template-configurations.with(
  title: "Title",
  author: (
    fullname: "Yazarın Adı Soyadı",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  thesis-type: "Doktora",
  is-thesis-proposal: false,
  date: datetime.today(),
  keywords-tur: "anahtar kelime 1, anahtar kelime 2, anahtar kelime 3",
  keywords-eng: "keyword 1, keyword 2, keyword 3",
  reviewers: ("Prof. Dr. Musterfrau", "Prof. Dr. Mustermann", "Dr. Evil"),
  header-logo: image("/template/organization-logos/university-logo.png", width: 33%),
)
