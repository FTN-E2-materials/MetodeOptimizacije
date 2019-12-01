<h1 align='center'> Powell-ova metoda </h1>

<p>

###### Jedna od metoda direktnog pretazivanja kojima je cilj da odrede tacku/e  u kojima funckija ima optimalnu vrednost bez koriscenja izvoda funkcije.

## Algoritam

Na početku su poznati:
- Početno pogađanje x^0 <br>
- i početni pravci: ui^(0), i=1,2,…n koji se obično poklapaju sa osama
- kriterijum zaustavljanja

U svakoj iteraciji se vrši:
- n+1 pretraga po pravcima (konjugovanim vektorima) i
- jedan od konjugovanih vektora se zamenjuje novim


<h1 align='center'> Objasnjenje algoritma [slikovito] </h1>

Pocinjemo za pretpostavkom x0 i sa 2 razlicita pravca
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/5s7R7xC/1.png">
</p>

Potom radimo jednodimenzionu optimizaciju po prvom pravcu ( pozeljno je npr iskoristiti neki od onih metoda koje smo vec koristili ,voditi racuna da budu neke koje ne koriste izvode! )
Sto nas dovodi do x1.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/yfkcJhG/2.png">
</p>

Odatle radimo jednodimenzionu optimizaciju po **drugom** pravcu.Sto nas dovodi do x2.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/gys40nd/3.png">
</p>

Povucemo liniju koja spaja x0 i x2 i to je nas novi pravac po kom cemo vrstiti 1D optimizaciju.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/QCVjRmH/4.png">
</p>

Po nasem novom pravcu vrsimo 1D optimizaciju i dobijamo tacku x3.Kada smo ovde stigli,sada glumimo da je nase x3 ustvari pocetno x0 i pocinjemo algoritam iznova.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/dPywvDN/5.png">
</p>

Po nasem pravcu h2 uradimo 1D optimizaciju i dobijemo tacku x4.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/BZCqDvv/11.png">
</p>

Onda uradimo 1D optimizaciju po **drugom** pravcu i dobijemo tacku x5.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/gvB9HSb/13.png">
</p>

Povucemo liniju koja spaja x3 i x5 i to je nas novi pravac po kom cemo vrstiti 1D optimizaciju( u nasem slucaju dobiti trazeno resenje)
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/GQQWKPk/14.png">
</p>


Kada uradimo 1D optimizaciju dobicemo resenje.
<p align="center">
  <img width="600" height="400" src="https://i.ibb.co/4Zr4bWv/15.png">
</p>






</p>
