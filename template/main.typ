// Şablonu çevrim içi kullanmak.
//#import "@preview/turkiye-neu-ies-thesis:0.1.0": *
// Şablonu çevrim dışı kullanmak.
//#import "@local/turkiye-neu-ies-thesis:0.1.0": *
#import "/src/lib.typ": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)

#show: template-configurations.with(
  // Raporun dilini seçiniz.
  language: LANGUAGES.EN-US,
  // Ana Bilim Dalı seçiniz.
  department: DEPARTMENTS.DEPARTMENT-OF-MATHEMATICS-AND-SCIENCES-EDUCATION,
  // Bilim Dalı seçiniz.
  program: PROGRAMS.MATHEMATICS-EDUCATION-PROGRAM,
  // Raporun türünü seçiniz.
  report-type: REPORT-TYPES.DOCTORAL-THESIS,
  // Tez önerisi ya da tezin teslim edildiği tarih. Varsayılan olarak bugünün tarihidir. Elle bir tarih girmek için "datetime(day: 20, month: 3, year: 2025)" yapınız.
  date: datetime.today(),
  // Tezinizin Türkçe ve İngilizce başlığı (başlık ve hepsi büyük harf biçiminde).
  thesis-title: (
    tur: (
      title-case: "Tezin Başlığı",
      upper-case: "TEZİN BAŞLIĞI",
    ),
    eng: (
      title-case: "Tezin İngilizce Başlığı",
      upper-case: "TEZİN İNGİLİZCE BAŞLIĞI",
    ),
  ),
  // Yazarın adı, soyadı ve ORCID numarası.
  author: (
    first-name: "Yazarın Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX", // TODO: ORCID'e sadece sayı kabulu kontolü ekle.
  ),
  // Danışmanın adı, soyadı ve ORCID numarası.
  advisor: (
    title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
    first-name: "Danışman Adı",
    last-name: "SOYADI",
    orcid: "XXXX-XXXX-XXXX-XXXX",
  ),
  // İkinci danışmanın adı, soyadı ve ORCID numarası. İkinci danışman yoksa "second-advisor: none" yapınız.
  second-advisor: (
    title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
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
  // Tablolar listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-tables: true" yapınız. Yer almasını istemiyorsanız "show-list-of-tables: false" yapınız.
  show-list-of-tables: true,
  // Şekiller listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-images: true" yapınız. Yer almasını istemiyorsanız "show-list-of-images: false" yapınız.
  show-list-of-images: true,
  // Tez çalışmasında simgeler kullandıysanız "Simgeler" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-symbols: true,
  // Tez çalışmasında kısaltmalar kullandıysanız "Kısaltmalar" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-abbreviations: true,
  // Tez Önerisinde yer alan "Çalışma Takvimi" sayfasındaki "Çalışma Paketleri" kısmını doldurmak için her bir iş paketinizin açıklamasını ve hangi aylarda yapılacağını belirtiniz. Yüksek Lisans Tez Önerisi ise 12 aylık bir süre, Doktora Tez Önerisi ise 16 aylık bir süre için doldurulmalıdır. "report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL" ya da report-type: REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL" değilse çıktıda gözükmeyecektir.
  // Tartışma, Sonuç ve Öneriler bölümünü alt başlıklara ayırarak yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: true", alt başlıklar olmadan ana başlık altında yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: false" yapınız.
  show-separated-sub-headings-in-discussion-conclusion-and-suggestions: true,
  work-packages: (
    (
      description: "Alan Yazın taranması",
      months: (1, 2),
    ),
    (
      description: "Ölçme aracının geliştirilmesi",
      months: (2, 3, 4, 5),
    ),
    (
      description: "Ölçme aracının uygulanması",
      months: (5, 6, 7),
    ),
    (
      description: "Verilerin çözümlenmesi ve yorumlanması",
      months: (7, 8, 9),
    ),
    (
      description: "Raporun (tezin) yazılması",
      months: (9, 10, 11, 12),
    ),
  ),
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
        title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: "xxxx-xxxx-xxxx-xxxx",
        email: "eposta@mail.com",
      ),
      (
        title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: "xxxx-xxxx-xxxx-xxxx",
        email: "eposta@mail.com",
      ),
    ),
  ),
)
