// Şablonu internetten kullanmak.
//#import "@local/turkiye-neu-ies-thesis:0.1.0": *
// Şablonu internetten kullanmak.
#import "/src/lib.typ": template-configurations

/* ---- Thesis configurations ----
  thesis-title: Tezinizin başlığı.
  thesis-title-eng: Tezinizin İngilizce Başlığı.
  author: (fullname: "", orcid: "") şeklinde adınız soyadınız ve ORCID numaranız.
  abstract: Tezinizin özeti.
  thesis-type: Tezinizin türü olarak "Yüksek Lisans" ya da "Doktora" yazınız.
  is-thesis-proposal: Tez önerisi mi? (varsayılan: true).
  date: your thesis deadline (default: datetime.today()).
  lang: the text language for smartquotes & hyphenation (specify as ISO 639-1/2/3 code, default: "en").
  have-symbols: Semboller sayfasını kaldırmak için "false" yapınız.
  have-abbreviations: Kısaltmalar sayfasını kaldırmak için "false" yapınız.
*/

#show: template-configurations.with(
  department: "Ana Bilim Dalı",
  program: "Bilim Dalı",
  thesis-type: "Yüksek Lisans/Doktora",
  is-thesis-proposal: true,
  date: datetime.today(),
  thesis-title: (
    title-case: "Tezin Başlığı",
    upper-case: "TEZİN BAŞLIĞI",
  ),
  thesis-title-eng: (
    title-case: "Tezin İnglizce Başlığı",
    upper-case: "TEZİN İNGİLİZCE BAŞLIĞI",
  ),
  author: (
    first-name: "Yazarın Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  advisor: (
    title: "Ünvan",
    first-name: "Danışman Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  // İkinci Danışman yoksa "second-advisor: none" yapınız.
  second-advisor: (
    title: "Ünvan",
    first-name: "İkinci Danışman Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  // Tez çalışması destekleyen herhangi bir kuruluş yoksa "thesis-study-funding-organization: none" yapınız.
  thesis-study-funding-organization: (
    name: "Tez Çalışmasını Destekleyen Kuruluşun Adı",
    project-no: "Proje Numarası",
  ),
  thesis-originalty: (
    included-page-count: 0,
    similarity-score: 0,
  ),
  keywords-tur: "Tez hazırlama kılavuzunda verilen açıklamaları dikkate alarak tezle ilgili en az üç, en fazla beş anahtar kelime yazılmalıdır. (Örnek: anahtar kelime 1, anahtar kelime 2, anahtar kelime 3)",
  keywords-eng: "Türkçe özetteki anahtar kelimelerin İngilizcesini yazınız. (Örnek: keyword 1, keyword 2, keyword 3)",
  have-symbols: true,
  have-abbreviations: true,
)
