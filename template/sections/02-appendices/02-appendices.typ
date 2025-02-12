= EKLER

Herhangi bir eki referans göstermek: @ek-meb-izin-kağıdı.

...

// İsterseniz tek bir dosyada bütün ekleri ekleyebilirsiniz.
== Başka bir ek daha
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

// İsterseniz ayrı ayrı dosyalardaki ekleri "02-appendices" klasörüne koyarak da ekleyebilirsiniz.
#include "/template/sections/02-appendices/appendix-1.typ"// Mutlak yol belirletek ekleyebilirsiniz.
#include "appendix-2.typ" // Göreceli yol belirterek "bu (02-appendices.typ) dosyayla aynı konumdaki" şeklinde de ekleyebilirsiniz.
