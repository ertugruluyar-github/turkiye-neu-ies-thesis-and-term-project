= EKLER <bölüm-ekler>
Herhangi bir eki referans göstermek: @ek-meb-izin-kağıdı.

@ek-görüşme-örneği

@ek-ilk-sıradaki-ek

@ek-ikinci-sıradaki-ek
// İsterseniz tek bir dosyada bütün ekleri ekleyebilirsiniz.
== İlk Sıradaki Ek <ek-ilk-sıradaki-ek>
#lorem(50)

Bölüme atıf yapma örneği: @bölüm-ekler

...
// 3. düzey ve sonrası başlıklarla devam edin.
=== Örnek üçüncü düzey başlık 1 <başlık-üçüncü-düzey-başlık-1>
#lorem(20)

Örnek üçüncü düzey başlık 1'e atıf: @başlık-üçüncü-düzey-başlık-1
=== Örnek üçüncü düzey başlık 2 <başlık-üçüncü-düzey-başlık-2>
#lorem(20)

Örnek üçüncü düzey başlık 2'ye atıf: @başlık-üçüncü-düzey-başlık-2
==== Örnek dördüncü düzey başlık <başlık-dördüncü-düzey-başlık>
#lorem(20)

Örnek üçüncü düzey başlık'a atıf: @başlık-dördüncü-düzey-başlık
===== Örnek beşinci düzey başlık
#lorem(20)
====== Örnek altıncı düzey başlık
#lorem(20)

...

== İkinci Sıradaki Ek <ek-ikinci-sıradaki-ek>
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
