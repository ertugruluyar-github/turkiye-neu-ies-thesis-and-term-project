/* ---- ŞABLONU ÇEVRİM İÇİ KULLANMAK ---- */

/* --- Şablonu [Typst.app](https://typst.app/) Web Sitesinden Kullanmak --- */

// Bu durumda internete her zaman bağlı olmanız gerekmektedir.

/* --- Şablonu [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) Visual Studio Code Uzantısıyla Kullanmak --- */

// Bu durumda, ilk defa şablonu indirirken internete ihtiyaç vardır. İlk indirme işleminden sonra internete bağlı olmadan kullanılabilir ve şablonun farklı bir sürümünü indirmek veya yeni bir sürümüne geçmek istediğinizde anlık olarak internete ihtiyaç vardır. Sonrasında internete bağlı olmadan kullanmaya devam edilebilir.

// Şablonu yukarıda bahsedilen araçlarla çevrim içi kullanmak için aşağıdaki gibi içe aktarma yapabilirsiniz:
// NOT: Tinymist Typst uzantısının 'Template Gallery'si üzerinden bir şablonu seçerek proje oluşturduğunuzda bu şekilde içe aktarma yapabilirsiniz.
/*
#import "@preview/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)
*/

/* ---- ŞABLONU ÇEVRİM DIŞI KULLANMAK ---- */

// Şablonu çevrim dışı kullanmak için [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) Visual Studio Code uzantısını kullanabilirsiniz.

// Şablonu [adresindeki](https://github.com/typst/packages/?tab=readme-ov-file#local-packages) bahsedilen konuma indirerek kullanıyorsanız aşağıdaki gibi içe aktarma yapabilirsiniz:
/*
#import "@local/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)
*/

// Şablonu, şablonun bütün dosyalarının bulunduğu [Geliştirici GitHub Reposu](https://github.com/ertugruluyar-github/turkiye-neu-ies-thesis-and-term-project) üzerinden manuel olarak bilgisayarınızda istediğiniz herhangi bir konuma indirerek kullanıyorsanız aşağıdaki gibi içe aktarma yapabilirsiniz:
#import "/src/lib.typ": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)

/* Dikkat!
  - Tezi yazmaya başlamadan önce Hazırlama Kılavuzu ve Şablon Kullanım Kılavuzu mutlaka okunmalıdır.
  - İç kapaktaki gerekli bilgiler sayfa düzenini bozmadan ve bir sayfayı geçmeyecek biçimde yazılmalıdır.
  - YÖK tarafından yapılan son düzenlemede eski ve yeni Anabilim Dalı ve Bilim Dalı adlarında benzerlik olduğundan hata yapmamanız için öğrenci bilgi sisteminizde görünen Anabilim Dalını ve Bilim Dalını seçiniz.
  - Tez başlığı öğrenci bilgi sisteminde onaylanmış başlık ile aynı olmalıdır.
  - Öğrenciye, danışmana ve ikinci danışmana ait ORCID numaralarını XXXX-XXXX-XXXX-XXXX düzeninde yazınız.
  - ORIC numarası almak içim gerekli bilgilere web sayfamızdan ulaşabilirsiniz. https://www.erbakan.edu.tr/egitimbilimlerienstitusu/sayfa/10001
  - İkinci danışman yok ise silinmelidir.
  - Tez çalışması bir proje ile desteklenmiş ise yazılmalı, destek alınmamış ise silinmelidir.
  - Birini kullanınız, diğerini siliniz. (ÖN SÖZ ya da TEŞEKKÜR)
  - İçindekiler, hiçbir değişiklik yapılmaksızın tez metninde yer alan birinci, ikinci ve üçüncü düzey başlıkların tamamını içermeli, diğer başlıkları içermemelidir.
  - Simgeler bulunmuyor ise bu sayfayı siliniz.
  - Kısaltmalar bulunmuyor ise bu sayfayı siliniz.
  - Özet metni ve anahtar kelimeler bir sayfayı aşmayacak şekilde 300-500 kelime içerecek şekilde yazılmalıdır.
  - Tez hazırlama kılavuzunda verilen açıklamaları dikkate alarak tezle ilgili en az üç, en fazla beş anahtar kelime yazılmalıdır.
  - Birini kullanınız, diğerini siliniz (Sayıltılar ya da Varsayımlar).
  - Birini kullanınız, diğerini siliniz. (ALAN YAZIN ya da İLGİLİ ARAŞTIRMALAR)
  - İkinci, üçüncü ve dördüncü düzey başlıklar örnek olarak verilmiştir. Bu başlıkları tez yazımına başlamadan önce siliniz.
  - Tablolarda mümkün olduğunca dikey çizgi kullanılmamalıdır.
  - Birini kullanınız, diğerlerini siliniz. (Araştırmanın Evreni ve Örneklemi ya da Araştırmanın Çalışma Grubu ya da Katılımcılar)
  - Birini kullanınız, diğerini siliniz. Verilerin Çözümlenmesi ya da Verilerin Analizi)
  - Tartışma, sonuç ve öneriler ayrı ayrı alt başlıklar altında verilebileceği gibi ana başlık altında ayrım yapılmadan da yazılabilir.
  - Genişletilmiş Türkçe Özet, yabancı dilde öğretim yapılan ve yabancı diller anabilim dalına bağlı programlarda, sadece yabancı dilde yazılması kabul edilmiş tezler için yazılacak olup, Türkçe yazılan tezlerde bu bölümü siliniz.
  - İş paketi sayısı, iş paketi tanımları ve tablodaki iş paketlerinin süreleri örnek olarak verilmiş olup, çalışmanıza uygun iş paketi adları ve süreleri yazılmalıdır.
  - Dönem projesinin hazırlanması teze benzemekle birlikte, ele alınan konunun gerekleri doğrultusunda Bölüm 1, 2, 3, 4 ve 5’ten hangilerini içereceği ve bunların içeriği danışmanın yapacağı yönlendirmeye göre belirlenir.
*/
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
  // Öğrencinin adı, soyadı ve ORCID numarası.
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
  // Matematiksel Denklemler listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-equations: true" yapınız. Yer almasını istemiyorsanız "show-list-of-equations: false" yapınız.
  show-list-of-equations: true,
  // Kod figürleri listesinin yer aldığı sayfanın çıktıda yer alması için "show-list-of-code-figures: true" yapınız. Yer almasını istemiyorsanız "show-list-of-code-figures: false" yapınız.
  show-list-of-code-figures: true,
  // Tez çalışmasında simgeler kullandıysanız "Simgeler" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-symbols: true,
  // Tez çalışmasında kısaltmalar kullandıysanız "Kısaltmalar" başlığındaki içeriğin teze dahil edilmesi için "have-symbols: true" yapınız. Ancak, tez önerisi ise "true" ya da "false" olsa bile "Simgeler ve Kısaltmalar" başlığındaki içerik teze dahil edilmeyecektir.
  have-abbreviations: true,
  // Dönem projesinde "Giriş" başlığının teze dahil edilmesi için "have-introduction-in-term-project: true", dahil edilmemesi için "have-introduction-in-term-project: false" yapınız.
  have-introduction-in-term-project: true,
  // Dönem projesinde "Alan Yazın (İlgili Araştırmalar)" başlığının teze dahil edilmesi için "have-literature-review-in-term-project: true", dahil edilmemesi için "have-literature-review-in-term-project: false" yapınız.
  have-literature-review-in-term-project: true,
  // Dönem projesinde "Yöntem" başlığının teze dahil edilmesi için "have-methodology-in-term-project: true", dahil edilmemesi için "have-methodology-in-term-project: false" yapınız.
  have-methodology-in-term-project: true,
  // Dönem projesinde "Bulgular" başlığının teze dahil edilmesi için "have-findings-in-term-project: true", dahil edilmemesi için "have-findings-in-term-project: false" yapınız.
  have-findings-in-term-project: true,
  // Dönem projesinde "Tartışma, Sonuç ve Öneriler" başlığının teze dahil edilmesi için "have-discussion-conclusion-and-suggestions-in-term-project: true", dahil edilmemesi için "have-discussion-conclusion-and-suggestions-in-term-project: false" yapınız.
  have-discussion-conclusion-and-suggestions-in-term-project: true,
  // Tartışma, Sonuç ve Öneriler bölümünü alt başlıklara ayırarak yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: true", alt başlıklar olmadan ana başlık altında yazmak istiyorsanız "show-separate-sub-headings-in-discussion-conclusion-and-suggestions: false" yapınız.
  show-separated-sub-headings-in-discussion-conclusion-and-suggestions: true,
  // Tez Önerisinde yer alan "Çalışma Takvimi" sayfasındaki "Çalışma Paketleri" kısmını doldurmak için her bir iş paketinizin açıklamasını ve hangi aylarda yapılacağını belirtiniz. Yüksek Lisans Tez Önerisi ise 12 aylık bir süre, Doktora Tez Önerisi ise 16 aylık bir süre için doldurulmalıdır. Yalnızca "report-type: REPORT-TYPES.MASTER-THESIS-PROPOSAL" ya da report-type: REPORT-TYPES.DOCTORAL-THESIS-PROPOSAL" olduğunda çıktıda gözükecektir.
  work-packages: (
    (
      // İş paketinin açıklaması.
      description: "Alan Yazın taranması",
      // İş paketinin yapılacağı aylar.
      months: (1, 2),
    ),
    (
      // İş paketinin açıklaması.
      description: "Ölçme aracının geliştirilmesi",
      // İş paketinin yapılacağı aylar.
      months: (2, 3, 4, 5),
    ),
    (
      // İş paketinin açıklaması.
      description: "Ölçme aracının uygulanması",
      // İş paketinin yapılacağı aylar.
      months: (5, 6, 7),
    ),
    (
      // İş paketinin açıklaması.
      description: "Verilerin çözümlenmesi ve yorumlanması",
      // İş paketinin yapılacağı aylar.
      months: (7, 8, 9),
    ),
    (
      // İş paketinin açıklaması.
      description: "Raporun (tezin) yazılması",
      // İş paketinin yapılacağı aylar.
      months: (9, 10, 11, 12),
    ),
  ),
  // Dönem Projesinin sonunda yer alan "Öz Geçmiş" sayfasında yer alan bilgilerdir. Yalnızca "report-type: REPORT-TYPES.TERM-PROJECT" olduğunda gözükecektir, diğer durumlarda doldurulmasına gerek yoktur.
  curriculum-vitae-info: (
    birthplace: "Konya",
    birthday: datetime(day: 27, month: 11, year: 2005),
    address: "Adres",
    marital-status: "Bekar/Evli",
    phone-number: "+90 555 55 55",
    email: "e-posta@mail.com",
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
    // İş deneyimlerinizi geçmişten günümüze doğru sırayla giriniz. Otomatik olarak sıralanıyor ancak kod ile çıktı arasındaki uyumu sağlayarak daha okunur bir kod yazabilirsiniz.
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
    // Hakkınızda bilgi alabilecekleri önerebileceğiniz şahısların bilgilerini giriniz.
    get-info-from-recommended-peoples: (
      (
        title: ACADEMIC-MEMBER-TITLES.ASSISTANT-PROFESSOR-DR,
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: "1234-1234-1234-1234",
        email: "e-posta@mail.com",
      ),
      (
        title: "Ünvanı",
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: "1234-1234-1234-1234",
        email: "e-posta@mail.com",
      ),
      (
        title: none,
        first-name: "Adı",
        last-name: "SOYADI",
        orcid: none,
        email: "e-posta@mail.com",
      ),
    ),
  ),
)
