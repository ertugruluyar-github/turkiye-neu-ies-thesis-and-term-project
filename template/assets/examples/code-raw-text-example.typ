*Blok kod ekleme örneği aşağıdaki gibidir:*
```r
# hello_world.r

hello_world <- function() {
  print("Hello World!")
}
```
*Satır içi kod ekleme örneği aşağıdaki gibidir:*\
R programlama dilinde yazılan ```r hello_world()``` fonksiyonu konsola `Hello World!` yazdırır.

Yukarıda da görüldüğü gibi, "\`" şeklindeki tek ters tırnak karakterleri arasında yazılan metin ham biçimde gözükecektir.

Yukarıda da görüldüğü gibi, "\`\`\`" şeklindeki üç ters tırnak karakterleri arasında yazılan metin belirtilen programlama diline göre renklendirilmiş bir kod biçimde gözükecektir. Birden fazla satır kullanıldığında kod bloğu haline alır. Tek satırda yazıldığında satır içi kod halinde olur.

*Kodlarınızı figür haline getirerek atıfda bulunabilirsiniz:*
#figure(
  caption: [R programlama dilinde fonksiyon örneği],
  ```r
  # hello_world.r

  hello_world <- function() {
    print("Hello World!")
  }
  ```,
) <figür-kod-R-programlama-dilinde-fonksiyon-örneği>

@figür-kod-R-programlama-dilinde-fonksiyon-örneği'de R programlama dilinde yazılan ```r hello_world()``` fonksiyonu konsola `Hello World!` yazdırır.
