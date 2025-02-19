
// #import "@local/turkiye-neu-ies-thesis:0.1.0": *
#import "/src/lib.typ": template-configurations
#import "/src/modules/custom-functions.typ": *

/* ---- Thesis configurations ----
  thesis-title: Tezinizin başlığı.
  thesis-title-eng: Tezinizin İngilizce Başlığı.
  author: (fullname: "", orcid: "") şeklinde adınız soyadınız ve ORCID numaranız.
  abstract: Tezinizin özeti.
  thesis-type: Tezinizin türü olarak "Yüksek Lisans" ya da "Doktora" yazınız.
  is-thesis-proposal: Tez önerisi mi? (varsayılan: true).
  reviewers: your thesis reviewers, specify in order "first-reviewer", "second-reviewer" and (if needed) "supervisor".
  date: your thesis deadline (default: datetime.today()).
  lang: the text language for smartquotes & hyphenation (specify as ISO 639-1/2/3 code, default: "en").
  header-logo: your faculty and/or organization banner (default: none).
  have-symbols: Semboller sayfasını kaldırmak için "false" yapınız.
  have-abbreviations: Kısaltmalar sayfasını kaldırmak için "false" yapınız.
*/

#show: template-configurations.with(
  department: "Ana Bilim Dalı",
  program: "Bilim Dalı",
  thesis-title: "Tezin Başlığı",
  thesis-title-eng: "Tezin İngilizce Başlığı",
  author: (
    first-name: "Yazarın Adı",
    last-name: "Soyadı",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  advisor: (
    title: "Ünvan",
    first-name: "Danışman Adı",
    last-name: "Soyadı",
    orcid: "xxxx-xxxx-xxxx-xxxx",
  ),
  thesis-type: "Doktora",
  is-thesis-proposal: false,
  date: datetime.today(),
  keywords-tur: "Tez hazırlama kılavuzunda verilen açıklamaları dikkate alarak tezle ilgili en az üç, en fazla beş anahtar kelime yazılmalıdır. (Örnek: anahtar kelime 1, anahtar kelime 2, anahtar kelime 3)",
  keywords-eng: "Türkçe özetteki anahtar kelimelerin İngilizcesini yazınız. (Örnek: keyword 1, keyword 2, keyword 3)",
  reviewers: ("Prof. Dr. Musterfrau", "Prof. Dr. Mustermann", "Dr. Evil"),
  header-logo: image("/template/organization-logos/university-logo.png", width: 33%),
  have-symbols: true,
  have-abbreviations: true,
)
