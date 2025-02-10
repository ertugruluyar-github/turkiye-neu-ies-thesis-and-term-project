#import "../../../src/modules/custom-functions.typ": appendix

= EKLER

// Ek eklemek için bu özel fonksiyonu kullanın.
// Numaralandırmayı baştan başlatmak için "reset: true" yapın.
#appendix(reset: true, title: "Meb İzin Kağıdı", label-text: "meb-izin-kağıdı")[
  Ek İçeriği
  #lorem(50)
  
  ...
  // 3. düzey ve sonrası başlıklarla devam edin.
  === Örnek Başlık 3
  #lorem(20)
  ==== Örnek Başlık 4
  #lorem(20)
  ===== Örnek Başlık 5
  #lorem(20)
  ====== Örnek Başlık 6
  #lorem(20)
  
  ...
]

Herhangi bir eki referans göstermek: @ek-meb-izin-kağıdı.

...

// Ek eklemek için bu özel fonksiyonu kullanın.
// Numaralandırmaya devam etmek için "reset: false" yapın.
#appendix(reset: false, title: "Rapor", label-text: "rapor")[
  Ek İçeriği
  #lorem(50)
  
  ...
  // 3. düzey ve sonrası başlıklarla devam edin.
  === Örnek Başlık 3
  #lorem(20)
  ==== Örnek Başlık 4
  #lorem(20)
  ===== Örnek Başlık 5
  #lorem(20)
  ====== Örnek Başlık 6
  #lorem(20)
  
  ...
]