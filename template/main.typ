// Şablonu internetten kullanmak.
//#import "@local/turkiye-neu-ies-thesis:0.1.0": *
// Şablonu internetten kullanmak.
#import "/src/lib.typ": template-configurations, LANGUAGES

/* ---- Thesis configurations ----
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
  // Tezi hangi dilde yazdığınızı seçiniz.
  language: LANGUAGES.TR-TR,
  // Ana Bilim Dalı seçiniz.
  department: "Ana Bilim Dalı",
  // Bilim Dalı seçiniz.
  program: "Bilim Dalı",
  // Yüksek Lisans mı Doktora tezi mi?
  thesis-type: "Yüksek Lisans/Doktora",
  // "Tez Önerisi" ise "is-thesis-proposal: true" yapınız. Tez önerisi ise sadece tez önerisinde bulunması gereken içerik çıktıya dahil edilir.
  is-thesis-proposal: true,
  // Tez önerisi ya da tezin teslim edildiği tarih. Varsayılan olarak bugünün tarihidir. Elle bir tarih girmek için "datetime(day: 20, month: 3, year: 2025)" yapınız.
  date: datetime.today(),
  // Tezinizin başlığı (başlık ve hepsi büyük harf biçiminde).
  thesis-title: (
    title-case: "Tezin Başlığı",
    upper-case: "TEZİN BAŞLIĞI",
  ),
  // Tezinizin İngilizce Başlığı (başlık ve hepsi büyük harf biçiminde).
  thesis-title-eng: (
    title-case: "Tezin İnglizce Başlığı",
    upper-case: "TEZİN İNGİLİZCE BAŞLIĞI",
  ),
  // Yazarın adı, soyadı ve ORCID numarası.
  author: (
    first-name: "Yazarın Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  // Danışmanın adı, soyadı ve ORCID numarası.
  advisor: (
    title: "Ünvan",
    first-name: "Danışman Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  // İkinci danışmanın adı, soyadı ve ORCID numarası. İkinci danışman yoksa "second-advisor: none" yapınız.
  second-advisor: (
    title: "Ünvan",
    first-name: "İkinci Danışman Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  // Tez çalışması destekleyen kuruluşun adı ve projenin numarası. Tez çalışması destekleyen herhangi bir kuruluş yoksa "thesis-study-funding-organization: none" yapınız.
  thesis-study-funding-organization: (
    name: "Tez Çalışmasını Destekleyen Kuruluşun Adı",
    project-no: "Proje Numarası",
  ),
  // Tez çalışmasının orijinallik bilgisi. Örneğin Turnitin yazılımında tezin 78 sayfası taratıldı ve benzerlik oranı %17 çıktıysa "included-page-count: 78" ve "similarity-score: 17" şeklindedir.
  thesis-originalty: (
    included-page-count: 0,
    similarity-score: 0,
  ),
  // Tez çalışmasının Türkçe anahtar kelimeleri.
  keywords-tur: "Tez hazırlama kılavuzunda verilen açıklamaları dikkate alarak tezle ilgili en az üç, en fazla beş anahtar kelime yazılmalıdır. (Örnek: anahtar kelime 1, anahtar kelime 2, anahtar kelime 3)",
  // Tez çalışmasının İngilizce anahtar kelimeleri.
  keywords-eng: "Türkçe özetteki anahtar kelimelerin İngilizcesini yazınız. (Örnek: keyword 1, keyword 2, keyword 3)",
  // Tez çalışmasında simgeler kullandıysanız "Simgeler" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-symbols: true,
  // Tez çalışmasında kısaltmalar kullandıysanız "Kısaltmalar" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-abbreviations: true,
)
