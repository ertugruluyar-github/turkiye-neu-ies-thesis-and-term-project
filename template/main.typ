// Şablonu çevrim içi kullanmak.
//#import "@preview/turkiye-neu-ies-thesis-and-term-project:0.1.0": *
// Şablonu çevrim dışı kullanmak.
//#import "@local/turkiye-neu-ies-thesis-and-term-project:0.1.0": *
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
  report-type: REPORT-TYPES.TERM-PROJECT,
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
    first-name: "Öğrenci Adı",
    last-name: "SOYADI",
    orcid: "1234-1234-1234-1234",
  ),
  // Danışmanın adı, soyadı ve ORCID numarası.
  advisor: (
    academic-member-title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
    first-name: "Danışman Adı",
    last-name: "SOYADI",
    orcid: "1234-1234-1234-1234",
  ),
  // İkinci danışmanın adı, soyadı ve ORCID numarası. İkinci danışman yoksa "second-advisor: none" yapınız.
  second-advisor: (
    academic-member-title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
    first-name: "İkinci Danışman Adı",
    last-name: "SOYADI",
    orcid: "1234-1234-1234-1234",
  ),
  // Tez çalışması destekleyen kuruluşun adı ve projenin numarası. Tez çalışması destekleyen herhangi bir kuruluş yoksa "thesis-study-funding-organization: none" yapınız.
  thesis-study-funding-organization: (
    name: "Tez Çalışmasını Destekleyen Kurum Adı",
    project-no: "Proje Numarası",
  ),
  // Tez çalışmasının orijinallik bilgisi. Örneğin Turnitin yazılımında tezin 78 sayfası taratıldı ve benzerlik oranı %17 çıktıysa "included-page-count: 78" ve "similarity-score: 17" şeklindedir.
  thesis-originalty: (
    included-page-count: 1,
    similarity-score: 0,
  ),
  // Tez çalışmasının Türkçe ve İngilizce anahtar kelimeleri. Anahtar kelimelerin ilk harfi büyük diğer harfleri küçük olmalıdır. En az 3 adet ve en fazla 5 adet olmalıdır.
  keywords: (
    // Tez çalışmasının Türkçe anahtar kelimeleri.
    tur: (
      "Anahtar kelime 1",
      "Anahtar kelime 2",
      "Anahtar kelime 3",
      "Anahtar kelime 4",
      "Anahtar kelime 5",
    ),
    // Tez çalışmasının İngilizce anahtar kelimeleri.
    eng: (
      "Keyword 1",
      "Keyword 2",
      "Keyword 3",
      "Keyword 4",
      "Keyword 5",
    ),
  ),
  // Tablo figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-table-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-table-figures: false" yapınız.
  show-list-of-table-figures: true,
  // Şekil figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-image-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-image-figures: false" yapınız.
  show-list-of-image-figures: true,
  // Denklem figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-equation-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-equation-figures: false" yapınız.
  show-list-of-equation-figures: true,
  // Kod figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-code-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-code-figures: false" yapınız.
  show-list-of-code-figures: true,
  // Tez çalışmasında simgeler kullandıysanız "Simgeler" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-symbols: true,
  // Tez çalışmasında kısaltmalar kullandıysanız "Kısaltmalar" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-abbreviations: true,
  // Tartışma, Sonuç ve Öneriler bölümünü alt başlıklara ayırarak yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: true", alt başlıklar olmadan ana başlık altında yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: false" yapınız.
  show-separated-sub-headings-in-discussion-conclusion-and-suggestions: true,
  // Tez Önerisinde yer alan "Çalışma Takvimi" sayfasındaki "Çalışma Paketleri" kısmını doldurmak için her bir iş paketinizin açıklamasını ve hangi aylarda yapılacağını belirtiniz. Yüksek Lisans Tez Önerisi ise 12 aylık bir süre, Doktora Tez Önerisi ise 16 aylık bir süre için doldurulmalıdır. "report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL" ya da report-type: REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL" değilse çıktıda gözükmeyecektir.
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
    birthday: datetime(day: 27, month: 11, year: 2005),
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
    skills: (
      "Beceri 1",
      "Beceri 2",
    ),
    // İş deneyimlerinizi geçmişten günümüze doğru sırayla giriniz.
    work-experiences: (
      (
        start-date: datetime(day: 1, month: 3, year: 2012),
        end-date: datetime(day: 1, month: 6, year: 2017),
        title: "Ünvan/Görev",
        organization-name: "Çalışılan Kurumun Adı",
        place: "Konya",
      ),
      (
        start-date: datetime(day: 1, month: 7, year: 2017),
        end-date: datetime(day: 1, month: 3, year: 2025),
        title: "Ünvan/Görev",
        organization-name: "Çalışılan Kurumun Adı",
        place: "Konya",
      ),
    ),
    get-info-from-recommended-peoples: (
      (
        title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: "1234-1234-1234-1234",
        email: "eposta@mail.com",
      ),
      (
        title: "Ünvanı",
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: "1234-1234-1234-1234",
        email: "eposta@mail.com",
      ),
      (
        title: none,
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: none,
        email: "eposta@mail.com",
      ),
    ),
  ),
)
