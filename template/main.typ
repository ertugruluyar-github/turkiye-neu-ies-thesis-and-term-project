// Şablonu internetten kullanmak.
//#import "@local/turkiye-neu-ies-thesis:0.1.0": *
// Şablonu internetten kullanmak.
#import "/src/lib.typ": template-configurations, LANGUAGES, REPORT-TYPES

/* ---- Thesis configurations ----
  author: (fullname: "", orcid: "") şeklinde adınız soyadınız ve ORCID numaranız.
  abstract: Tezinizin özeti.
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
  // Raporun türünü seçiniz.
  report-type: REPORT-TYPES.TERM-PROJECT,
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
  // Dönem Projesinin sonunda yer alan "Öz Geçmiş" sayfasında yer alan bilgilerdir. "report-type: REPORT-TYPES.TERM-PROJECT" değilse gözükmeyecektir, doldurulmasına gerek yoktur.
  curriculum-vitae-info: (
    birthplace: "Konya",
    birthday: datetime(day: 27, month: 11, year: 2014),
    address: "Adres",
    marital-status: "Bekar/Evli",
    phone-number: "+90 555 55 55",
    email: "eposta@mail.com",
    high-school: (
      name: "Lise Adı",
      program: "Matematik-Fen",
      place: "Konya",
      start-year: 2025,
    ),
    undergraduate: (
      name: "Lisans - Üniversite Adı",
      program: "İlköğretim Matematik Öğretmenliği",
      place: "Konya",
      start-year: 2029,
    ),
    masters-degree: (
      name: "Yüksek Lisans - Üniversite Adı",
      program: "Matematik Eğitimi",
      place: "Konya",
      start-year: 2032,
    ),
    skills: "Beceri 1, Beceri 2, ...",
    work-experiences: (
      (
        start-date: "04/2030",
        end-date: "06/2033",
        organization-name: "Çalıştın Kurumun Adı",
        title: "Ünvanın/Görevin",
      ),
      (
        start-date: "07/2033",
        end-date: "03/2037",
        organization-name: "Çalıştın Kurumun Adı",
        title: "Ünvanın/Görevin",
      ),
    ),
    get-info-from-recommended-peoples: (
      (
        name-with-title: "Prof. Dr. Adı SOYADI",
        orcid: "xxxx-xxxx-xxxx-xxxx",
        email: "eposta@mail.com",
      ),
      (
        name-with-title: "Doç. Dr. Adı SOYADI",
        orcid: "xxxx-xxxx-xxxx-xxxx",
        email: "eposta@mail.com",
      ),
    ),
  ),
)
