# turkiye-neu-ies-thesis-and-term-project
Necmettin Erbakan Üniversitesi Eğitim Bilimleri Enstitiüsü lisansüstü eğitim için **RESMÎ OLMAYAN** tez önerisi, tez ve dönem projesi şablonudur.

**UNOFFICIAL** thesis proposal, thesis and term project template for graduate education at Necmettin Erbakan University Institute of Educational Sciences.


## İçindekiler [Table of Contents]
- [turkiye-neu-ies-thesis-and-term-project](#turkiye-neu-ies-thesis-and-term-project)
  - [İçindekiler \[Table of Contents\]](#i̇çindekiler-table-of-contents)
  - [Türkçe](#türkçe)
    - [Tanıtım Videosu](#tanıtım-videosu)
    - [Teşekkür](#teşekkür)
    - [Kullanılan Paketler](#kullanılan-paketler)
    - [Kullanım](#kullanım)
    - [Kurulum](#kurulum)
      - [Gerekli Yazılımlar](#gerekli-yazılımlar)
      - [Çevrim İçi](#çevrim-i̇çi)
        - [Şablonu Typst.app Web Sitesinden Kullanmak](#şablonu-typstapp-web-sitesinden-kullanmak)
        - [Şablonu Tinymist Typst Visual Studio Code Uzantısıyla Kullanmak](#şablonu-tinymist-typst-visual-studio-code-uzantısıyla-kullanmak)
      - [Çevrim Dışı](#çevrim-dışı)
  - [English](#english)
    - [Trailer Video](#trailer-video)
    - [Acknowledgement](#acknowledgement)
    - [Packages Used](#packages-used)
    - [Usage](#usage)
    - [Installation](#installation)
      - [Required Softwares](#required-softwares)
      - [Online](#online)
        - [Using the Template from the Typst.app Website](#using-the-template-from-the-typstapp-website)
        - [Using the Template with the Tinymist Typst Visual Studio Code Extension](#using-the-template-with-the-tinymist-typst-visual-studio-code-extension)
      - [Offline](#offline)

## Türkçe

### Tanıtım Videosu
TODO

### Teşekkür
Bu proje yazılmadan önce ve sonrasında aşağıdaki projeler incelenerek bazı durumlarda fikir almak için yararlanılmıştır:
- [typst-thesis-template](https://github.com/mrtz-j/typst-thesis-template): Moritz Jörg <@mrtz-j> ve Ole Tytlandsvik <@otytlandsvik>. ([Typst Universe Bağlantısı](https://typst.app/universe/package/modern-uit-thesis))
- [parcio-typst](https://github.com/xkevio/parcio-typst): Kevin Kulot <@xkevio>. ([Typst Universe Bağlantısı](https://typst.app/universe/package/parcio-thesis))
- [aiaa-typst](https://github.com/isaacew/aiaa-typst): <@isaacew> ve Alexander Von Moll <@avonmoll>. ([Typst Universe Bağlantısı](https://typst.app/universe/package/bamdone-aiaa))
- [ThesIST](https://github.com/tfachada/thesist): Tomás Fachada <@tfachada> ve ThesIST katkıda bulunanlar. ([Typst Universe Bağlantısı](https://typst.app/universe/package/thesist))

Bu projelerde emeği geçen herkese çok büyük teşekkürlerimi sunarım.

Ve ayrıca [Typst YouTube Oynatma Listesi](https://youtube.com/playlist?list=PLCO-MGSsHcdArXIfeOGoUwjH0oz8vMr8M&si=c_kTmN4FKmwdMitE) için <@isaacew>'e büyük teşekkürlerimi sunarım.

### Kullanılan Paketler
- Çoklu dil desteği sağlamak için. -> [Linguify](https://github.com/typst-community/linguify): <@jomaway>, <@SillyFreak> ve katkıda bulunanlar. ([Typst Universe Bağlantısı](https://typst.app/universe/package/linguify/))

Bu projelerde emeği geçen herkese çok büyük teşekkürlerimi sunarım.

### Kullanım
Öncelikle, şablonu projeniz için içe aktarınız. Daha sonra, şablonun ayarlarını giriniz.

**NOT:** Şablonu [Kurulum](#kurulum) başlığında bahsedildiği gibi kullandığınızda bu kısım otomatik olarak mevcut olacaktır. Sadece şablon ayarlarındaki bilgileri projenize güncellemeniz yeterlidir.

<details>
  <summary>Kodu göstermek/gizlemek için tıklayınız</summary>

```typst
// Şablonu, Kurulum başlığında bahsedilden durumlardan size uygun olana göre içe aktarınız:
#import "@preview/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)

// Şablonun ayarlarını giriniz.
#show: template-configurations.with(
  ...
)
```

</details>

TODO: Birden fazla başlık seçeneği olan yerlerde bir başlığı seçmenin nasıl yapılacağını göster.

### Kurulum

#### Gerekli Yazılımlar
- [Typst](https://typst.app/): Typst'ın resmi kod düzenleyicisidir.

    YA DA

- [Visual Studio Code](https://code.visualstudio.com/): Typst kodlarını yazmak için kullanılabilen bir kod düzenleyicisidir.
- [Tinymist Typst Visual Studio Code Uzantısı](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist): Typst kodlarını yazarken yardımcı olan ve eş zamanlı çıktıyı görüntüleme imkanı sağlayan bir uzantıdır.

#### Çevrim İçi

##### Şablonu [Typst.app](https://typst.app/) Web Sitesinden Kullanmak
Bu durumda internete her zaman bağlı olmanız gerekmektedir.

##### Şablonu [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) [Visual Studio Code](https://code.visualstudio.com/) Uzantısıyla Kullanmak
Bu durumda, ilk defa şablonu indirirken internete ihtiyaç vardır. İlk indirme işleminden sonra internete bağlı olmadan kullanılabilir ve şablonun farklı bir sürümünü indirmek veya yeni bir sürümüne geçmek istediğinizde anlık olarak internete ihtiyaç vardır. Sonrasında internete bağlı olmadan kullanmaya devam edilebilir.

Şablonu yukarıda bahsedilen araçlarla çevrim içi kullanmak için aşağıdaki gibi içe aktarma yapabilirsiniz:

**NOT:** [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) uzantısının 'Template Gallery'si üzerinden bir şablonu seçerek proje oluşturduğunuzda bu şekilde içe aktarma yapabilirsiniz.
<details>
  <summary>Kodu göstermek/gizlemek için tıklayınız</summary>

```typst
#import "@preview/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)
```

</details>

#### Çevrim Dışı
Şablonu çevrim dışı kullanmak için [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) [Visual Studio Code](https://code.visualstudio.com/) uzantısını kullanabilirsiniz.

Şablonu [adresindeki](https://github.com/typst/packages/?tab=readme-ov-file#local-packages) bahsedilen konuma indirerek kullanıyorsanız aşağıdaki gibi içe aktarma yapabilirsiniz:

<details>
  <summary>Kodu göstermek/gizlemek için tıklayınız</summary>

  ```typst
  #import "@local/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
    template-configurations,
    LANGUAGES,
    REPORT-TYPES,
    DEPARTMENTS,
    PROGRAMS,
    ACADEMIC-MEMBER-TITLES,
  )
  ```

</details>

Şablonu, şablonun bütün dosyalarının bulunduğu [Geliştirici GitHub Reposu](https://github.com/ertugruluyar-github/turkiye-neu-ies-thesis-and-term-project) üzerinden manuel olarak bilgisayarınızda istediğiniz herhangi bir konuma indirerek kullanıyorsanız aşağıdaki gibi içe aktarma yapabilirsiniz:

<details>
  <summary>Kodu göstermek/gizlemek için tıklayınız</summary>

  ```typst
  #import "/src/lib.typ": (
    template-configurations,
    LANGUAGES,
    REPORT-TYPES,
    DEPARTMENTS,
    PROGRAMS,
    ACADEMIC-MEMBER-TITLES,
  )
  ```

</details>

## English

### Trailer Video
TODO

### Acknowledgement
Before and after writing this project, the following projects were examined and in some cases used for ideas:
- [typst-thesis-template](https://github.com/mrtz-j/typst-thesis-template): Moritz Jörg <@mrtz-j> and Ole Tytlandsvik <@otytlandsvik>. ([Typst Universe Link](https://typst.app/universe/package/modern-uit-thesis))
- [parcio-typst](https://github.com/xkevio/parcio-typst): Kevin Kulot <@xkevio>. ([Typst Universe Link](https://typst.app/universe/package/parcio-thesis))
- [aiaa-typst](https://github.com/isaacew/aiaa-typst): <@isaacew> and Alexander Von Moll <@avonmoll>. ([Typst Universe Link](https://typst.app/universe/package/bamdone-aiaa))
- [ThesIST](https://github.com/tfachada/thesist): Tomás Fachada <@tfachada> and ThesIST contributors. ([Typst Universe Link](https://typst.app/universe/package/thesist))

I sincerely thank everyone who contributed to these projects.

And also a big thank you to <@isaacew> for [Typst YouTube Playlist](https://youtube.com/playlist?list=PLCO-MGSsHcdArXIfeOGoUwjH0oz8vMr8M&si=c_kTmN4FKmwdMitE). It was very helpfull to start Typst.

### Packages Used
- To provide multi language support. -> [Linguify](https://github.com/typst-community/linguify): <@jomaway>, <@SillyFreak> and contributors. ([Typst Universe Link](https://typst.app/universe/package/linguify/))

I sincerely thank everyone who contributed to these projects.

### Usage
First, import the template for your project. Then, enter the template configurations.

**NOTE:** When you use the template as mentioned in the [Installation](#installation) section, this part will be automatically available. You only need to update the information in the template configurations to your project.

<details>
  <summary>Click to show/hide code</summary>

```typst
// Import the template according to the appropriate situation mentioned in the Installation section:
#import "@preview/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)

// Enter the template configurations.
#show: template-configurations.with(
  ...
)
```

</details>

### Installation

#### Required Softwares
- [Typst](https://typst.app/): Typst is the official code editor.

    OR

- [Visual Studio Code](https://code.visualstudio.com/): It is a code editor that can be used to write Typst codes.
- [Tinymist Typst Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist): It is an extension that helps writing Typst codes and provides simultaneous output viewing.

#### Online

##### Using the Template from the [Typst.app](https://typst.app/) Website
In this case, you need to be connected to the internet at all times.

##### Using the Template with the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) [Visual Studio Code](https://code.visualstudio.com/) Extension
In this case, you need the internet when downloading the template for the first time. After the first download, it can be used without being connected to the internet, and you need the internet momentarily when you want to download a different version of the template or switch to a new version. Afterwards, you can continue to use it without being connected to the internet.

To use the template online with the tools mentioned above, you can import it as follows:

**NOTE:** When you create a project by selecting a template from the 'Template Gallery' of the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension, you can import it in this way.
<details>
  <summary>Click to show/hide code</summary>

```typst
#import "@preview/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
  template-configurations,
  LANGUAGES,
  REPORT-TYPES,
  DEPARTMENTS,
  PROGRAMS,
  ACADEMIC-MEMBER-TITLES,
)
```

</details>

#### Offline
You can use the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) [Visual Studio Code](https://code.visualstudio.com/) extension to use the template offline.

If you are using the template by downloading it to the location mentioned [here](https://github.com/typst/packages/?tab=readme-ov-file#local-packages), you can import it as follows:

<details>
  <summary>Click to show/hide code</summary>

  ```typst
  #import "@local/turkiye-neu-ies-thesis-and-term-project:0.1.0": (
    template-configurations,
    LANGUAGES,
    REPORT-TYPES,
    DEPARTMENTS,
    PROGRAMS,
    ACADEMIC-MEMBER-TITLES,
  )
  ```

</details>

If you are using the template by manually downloading it to any location on your computer from the [Developer GitHub Repo](https://github.com/ertugruluyar-github/turkiye-neu-ies-thesis-and-term-project) where all the template files are located, you can import it as follows:

<details>
  <summary>Click to show/hide code</summary>

  ```typst
  #import "/src/lib.typ": (
    template-configurations,
    LANGUAGES,
    REPORT-TYPES,
    DEPARTMENTS,
    PROGRAMS,
    ACADEMIC-MEMBER-TITLES,
  )
  ```

</details>