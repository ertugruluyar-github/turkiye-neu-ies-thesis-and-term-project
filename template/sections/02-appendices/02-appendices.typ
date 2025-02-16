= EKLER
Herhangi bir eki referans göstermek: @ek-meb-izin-kağıdı.
// İsterseniz tek bir dosyada bütün ekleri ekleyebilirsiniz.
== İlk Sıradaki Ek
#lorem(50)
  
...
// 3. düzey ve sonrası başlıklarla devam edin.
=== Örnek başlık 3
#lorem(20)
==== Örnek başlık 4
#lorem(20)
===== Örnek başlık 5
#lorem(20)
====== Örnek başlık 6
#lorem(20)

...

== İkinci Sıradaki Ek
#lorem(50)
  
...
// 3. düzey ve sonrası başlıklarla devam edin.
=== Örnek başlık 3
#lorem(20)
==== Örnek başlık 4
#lorem(20)
===== Örnek başlık 5
#lorem(20)
====== Örnek başlık 6
#lorem(20)

...
// Devamındaki içeriğin yeni bir sayfadan başlamasını sağlamak için "pagebreak()" fonksiyonunu kullanabilirsiniz.
#pagebreak()

// İsterseniz ayrı ayrı dosyalardaki ekleri "02-appendices" klasörüne koyarak da ekleyebilirsiniz.
#include "/template/sections/02-appendices/appendix-1.typ"// Mutlak yol belirletek ekleyebilirsiniz.

#include "appendix-2.typ" // Göreceli yol belirterek "bu (02-appendices.typ) dosyayla aynı konumdaki" şeklinde de ekleyebilirsiniz.
