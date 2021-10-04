---
title: Minicurso de álgebra homológica
published: 2016-09-08
---

Esta es una breve introducción al álgebra homológica básica: categorías
abelianas y funtores derivados. Esta página contiene los apuntes que escribí
en agosto de 2016.


## Apuntes

* **<a href="homo-1.pdf" class="pdf-link">8/08/2016</a>**:
  hemos revisado $R$-módulos, funtores
  $\underline{\operatorname{Hom}}_R (-,-)$ y $-\otimes_R -$,
  la adjunción
  $\operatorname{Hom}_R (L \otimes_R M, N) \cong \operatorname{Hom}_R (L, \underline{\operatorname{Hom}}_R (M,N))$;
  hemos definido categorías, isomorfismos, monomorfismos, epimorfismos,
  productos y coproductos.

* **<a href="homo-2.pdf" class="pdf-link">9/08/2016</a>**:
  hemos definido funtores y transformaciones naturales y hemos demostrado
  el lema de Yoneda con sus consecuencias.

* **<a href="homo-3.pdf" class="pdf-link">10/08/2016</a>**:
  hemos definido funtores adjuntos y hemos visto sus propiedades (todas son
  consecuencias del lema de Yoneda); hemos definido núcleos y conúcleos en
  categorías con objeto cero.

* **<a href="homo-4.pdf" class="pdf-link">11/08/2016</a>**:
  hemos definido categorías aditivas y funtores aditivos entre ellas;
  hemos visto algunas propiedades curiosas: en categorías aditivas productos y
  coproductos coinciden y corresponden a biproductos; la estructura de grupos
  abelianos sobre $\operatorname{Hom}_\mathbf{A} (M,N)$ es definida de modo
  único por las propiedades universales del (co)producto; dos funtores adjuntos
  $F\colon \mathbf{A} \to \mathbf{B}$ y $G\colon \mathbf{B} \to \mathbf{A}$
  entre categorías aditivas son automáticamente aditivos (en particular,
  nuestros funtores preferidos $\underline{\operatorname{Hom}}_R (-,-)$ y
  $-\otimes_R -$ son aditivos), y las biyecciones naturales
  $\operatorname{Hom}_\mathbf{B} (F(M), N) \cong \operatorname{Hom}_\mathbf{A} (M, G(N))$
  son isomorfismos de grupos abelianos.

* **<a href="homo-5.pdf" class="pdf-link">12/08/2016</a>**: hemos definido
  categorías abelianas, sucesiones exactas, funtores exactos; hemos visto que un
  funtor adjunto por la izquierda es exacto por la derecha y un adjunto por la
  derecha es exacto por la izquierda
  (en particular, $\underline{\operatorname{Hom}}_R (M,-)$ y
  $\underline{\operatorname{Hom}}_R (-,N)$ son exactos por la izquierda;
  $M \otimes_R -$ y $- \otimes_R N$ son exactos por la derecha).

* **<a href="homo-6.pdf" class="pdf-link">15/08/2016</a>**: hemos definido
  funtores derivados como $\delta$-funtores universales y hemos demostrado
  que cada $\delta$-funtor borrable es universal.

* **<a href="homo-7.pdf" class="pdf-link">16/08/2016</a>**: hemos definido
    la categoría de complejos, homotopías entre morfismos de complejos y
    cuasi-isomorfismos de complejos; hemos formulado el lema de la serpiente.

* **<a href="homo-8.pdf" class="pdf-link">17/08/2016</a>**: hemos demostrado
  un par de consecuencias del lema de la serpiente: el lema del cinco y
  la sucesión exacta larga de cohomología; hemos definido conos de morfismos
  de complejos y hemos visto sus propiedades.

* **<a href="homo-9.pdf" class="pdf-link">18/08/2016</a>**: hemos definido
  objetos proyectivos e inyectivos y hemos visto sus propiedades básicas.

* **<a href="homo-10.pdf" class="pdf-link">19/08/2016</a>**: hemos visto que en
  una categoría abeliana con suficientes objetos proyectivos
  (resp. inyectivos) para cada objeto se puede construir su resolución
  proyectiva (resp. inyectiva) y las resoluciones son únicas salvo homotopía;
  en particular, en la categoría de R-módulos hay suficientes proyectivos e
  inyectivos.

* **<a href="homo-11.pdf" class="pdf-link">22/08/2016</a>**: hemos demostrado
  que los funtores derivados por la izquierda (resp. por la derecha) de un
  funtor exacto por la derecha (resp. por la izquierda) se calculan por la
  fórmula $L_n F (M) = H^{-n} (F (P^\bullet))$ donde
  $P^\bullet \twoheadrightarrow M$ es una
  resolución proyectiva (resp. $R^n F (M) = H^n (F (I^\bullet))$ donde
  $M \rightarrowtail I^\bullet$ es una resolución inyectiva).
  Hemos definido el funtor Ext por las fórmulas
  $\operatorname{Ext}^n (-,N) = R^n \operatorname{Hom}_\mathbf{A} (-,N)$ y
  $\operatorname{Ext}^n (M,-) = R^n \operatorname{Hom}_\mathbf{A} (M,-)$.

* **<a href="homo-12.pdf" class="pdf-link">23/08/2016</a>**:
  hemos definido el funtor Tor por las fórmulas
  $\operatorname{Tor}_n (-,N) = L_n (-\otimes_R N)$ y
  $\operatorname{Tor}_n (M,-) = L_n (M\otimes_R -)$; hemos visto algunos
  cálculos de $\operatorname{Ext}^1 (A,B)$ y $\operatorname{Tor}_1 (A,B)$ de
  grupos abelianos: los ejemplos fáciles con $A$ y $B$ finitamente generados y
  un ejemplo más complicado de $\operatorname{Ext}^1 (\mathbb{Q},\mathbb{Z})$.

* **<a href="homo-13.pdf" class="pdf-link">24/08/2016</a>**:
  hemos recordado las construcciones del álgebra tensorial $T(M)$ y el álgebra
  exterior $\Lambda (M)$ de un $R$-módulo $M$. A partir del álgebra exterior
  hemos definido el complejo de Koszul asociado a un morfismo $f\colon F \to R$.

* **<a href="homo-14.pdf" class="pdf-link">25/08/2016</a>**:
  hemos definido el producto tensorial de complejos $M_\bullet\otimes N_\bullet$
  y hemos notado que para los complejos de Koszul,
  $K_\bullet ((f_1,f_2)) \cong K_\bullet (f_1) \otimes K_\bullet (f_2)$.
  Hemos definido la cohomología de Koszul y hemos examinado el caso particular
  de complejos $K_\bullet (x_1, \ldots, x_n)$ para $x_1, \ldots, x_n \in R$.<br>
  **<a href="homo-tcu.pdf" class="pdf-link">lección especial</a>**:
  he hablado de (co)homología singular y los teoremas de coeficientes
  universales (donde aparecen los funtores Ext y Tor).

* **<a href="homo-15.pdf" class="pdf-link">26/08/2016</a>**:
  hemos recordado la construcción de la localización $S^{-1} R$ y que $S^{-1} R$
  es un $R$-módulo plano (es decir, el funtor $-\otimes_R S^{-1} R$ es
  exacto). Este material se encuentra en Atiyah–Macdonald y cualquier otro libro
  de álgebra conmutativa.

* **<a href="homo-16.pdf" class="pdf-link">29/08/2016</a>**:
  para un anillo $R$ y un ideal $\mathfrak{a} \subseteq R$ hemos definido la
  cohomología local con soporte en $\mathfrak{a}$ como los funtores derivados
  por la derecha del funtor de $\mathfrak{a}$-torsión
  $\Gamma_\mathfrak{a} (-)$. Hemos identificado el límite directo de complejos
  de Koszul $K_\bullet (x_1^\ell, \ldots, x_n^\ell)$ para $\ell > 0$ con cierto
  complejo compuesto por las localizaciones de $R$ en
  $x_{i_1} \cdots x_{i_t}$. De hecho, este complejo calcula la cohomología local
  con soporte en $\mathfrak{a} = (x_1, \ldots, x_n)$.

* **30/08/2016**: hemos relacionado los complejos de Koszul con sucesiones
  regulares.

* **01/09/2016**: hemos visto el Ext de Yoneda que clasifica las extensiones.


## Minicurso de cohomología de grupos

* **<a href="cgr-1.pdf" class="pdf-link">30/08/2016</a>**:
  hemos definido la cohomología $H^n (G,A)$ y homología $H_n (G,A)$ como
  funtores derivados y hemos visto los cálculos para $G$ cíclico.

* **<a href="cgr-2.pdf" class="pdf-link">31/08/2016</a>**:
  hemos construido la resolución barra y hemos visto algunas formulas
  específicas para calcular la (co)homología de grupos.

* **<a href="cgr-3.pdf" class="pdf-link">01/09/2016</a>**:
  hemos visto que los grupos de cohomología $H^2 (G,A)$ y $H^1 (G,A)$
  clasifican extensiones de grupos y las secciones de extensiones escindidas
  respectivamente.

* **04/09/2016**: . . . . .


## Ejercicios

* <a href="ejercicios-homo.pdf" class="pdf-link">Ejercicios de álgebra homológica</a> (actualizados el 10/09/2016)


## Referencias principales

Mi exposición está lejos de ser exhaustiva, pero espero que mis apuntes puedan
servir para el estudiante interesado en consultar otras fuentes más detalladas
sobre el tema:

* Charles A. Weibel, *An introduction to homological algebra*,
  Cambridge Studies in Advanced Mathematics, vol. 38,
  Cambridge University Press, Cambridge, 1994<br>
  — el libro de texto estándar; nos sirven solamente los primeros capítulos.<br>
  Errata:
  [http://www.math.rutgers.edu/~weibel/Hbook-corrections.html](http://www.math.rutgers.edu/~weibel/Hbook-corrections.html)

* Joseph J. Rotman, *An introduction to homological algebra*, Second ed.,
  Universitext, Springer, New York, 2009<br>
  — otro buen libro, escrito con más detalles y atención, pero no tan
  enciclopédico como Weibel.<br>
  Errata:
  <a href="https://faculty.math.illinois.edu/~rotman/errhomalg.pdf" class="pdf-link">https://faculty.math.illinois.edu/~rotman/errhomalg.pdf</a>

* P. J. Hilton and U. Stammbach, *A course in homological algebra*, Second ed.,
  Graduate Texts in Mathematics, vol. 4,
  Springer-Verlag, New York, 1997<br>
  — otro libro clásico.

* Sergei I. Gelfand and Yuri I. Manin,
  *Methods of homological algebra*, second ed.,
  Springer Monographs in Mathematics, Springer-Verlag, Berlin, 2003<br>
  — un libro que provee mucha motivación, aunque puede ser poco convencional
  para los principiantes. Para leer después de un curso básico como nuestro.

* Alexander Grothendieck, *Sur quelques points d’algèbre homologique*,
  Tôhoku Math. J. (2) 9 (1957), 119–221.
  [http://projecteuclid.org/euclid.tmj/1178244839](http://projecteuclid.org/euclid.tmj/1178244839)<br>
  — un artículo clásico (conocido como «el artículo de Tohoku») donde
  Grothendieck estableció muchos métodos básicos y la terminología moderna;
  importante sobre todo para la cohomología de haces.
  Existe una traducción en inglés con correcciones y comentarios útiles:
  <a href="https://www.math.mcgill.ca/barr/papers/gk.pdf" class="pdf-link">https://www.math.mcgill.ca/barr/papers/gk.pdf</a>

* Henri Cartan and Samuel Eilenberg, *Homological algebra*,
  Princeton University Press, Princeton, N. J., 1956<br>
  — el primer libro de texto sobre el álgebra homológica, pero allí ya se pueden
  encontrar casi todos los resultados que nos interesan
  (sin lenguaje de categorías abelianas, para $R$-módulos).

* Nicolas Bourbaki, *Éléments de mathématique*, Masson, Paris, 1980,
  *Algèbre. Chapitre 10. Algèbre homologique*.<br>
  — el libro de Bourbaki sobre el tema; históricamente, Bourbaki desprecia
  la teoría de categorías, así que todo el libro está dedicado a $R$-módulos.

Mi curso empieza por una breve discusión de conceptos de la teoría de categorías
porque estoy convencido de que cada curso de álgebra debe usar categorías para
aclarar los argumentos y construcciones. La fuente clásica es

* Saunders Mac Lane, *Categories for the working mathematician*,
  Second ed., Graduate Texts in Mathematics, vol. 5,
  Springer-Verlag, New York, 1998.

y a los lectores interesados recomiendo

* Francis Borceux, *Handbook of categorical algebra. 2*,
  Encyclopedia of Mathematics and its Applications, vol. 51,
  Cambridge University Press, Cambridge, 1994<br>
  — nos interesa el volumen II que contiene una discusión sistemática de
  categorías abelianas;

* Peter Freyd, *Abelian categories. An introduction to the theory of functors*,
  Harper’s Series in Modern Mathematics,
  Harper & Row, Publishers, New York, 1964.
  <a href="http://www.tac.mta.ca/tac/reprints/articles/3/tr3.pdf" class="pdf-link">http://www.tac.mta.ca/tac/reprints/articles/3/tr3.pdf</a><br>
  — un libro clásico, publicado en 1964;

* Masaki Kashiwara and Pierre Schapira, *Categories and sheaves*,
  Grundlehren der Mathematischen Wissenschaften, vol. 332,
  Springer-Verlag, Berlin, 2006<br>
  — un buen libro que contiene introducción a la teoría de categorías y, entre
  otras cosas, desarrolla el álgebra homológica para categorías abelianas
  (algunas partes son bastante técnicas).

Álgebra homológica no es un *objeto* de estudio sino un *instrumento*, así que
el curso termina con un par de aplicaciones de la teoría general:
una introducción básica a la cohomología local y una breve discusión de
la cohomología de grupos. Las fuentes principales para la cohomología local
que he usado son el capítulo 6 de

* Hideyuki Matsumura, *Commutative ring theory*, Second ed.,
  Cambridge Studies in Advanced Mathematics, vol. 8,
  Cambridge University Press, Cambridge, 1989

y el libro

* Winfried Bruns and Jürgen Herzog, *Cohen-Macaulay rings*,
  Cambridge Studies in Advanced Mathematics, vol. 39,
  Cambridge University Press, Cambridge, 1993

Para la cohomología de grupos, recomiendo

* Kenneth S. Brown, *Cohomology of groups*,
  Graduate Texts in Mathematics, vol. 87,
  Springer-Verlag, New York, 1994,
  Corrected reprint of the 1982 original

* Michael Francis Atiyah and C. T. C. Wall, *Cohomology of groups*,
  Algebraic Number Theory (Proc. Instructional Conf., Brighton, 1965),
  Thompson, Washington, D.C., 1967, pp. 94–115


## Participantes

Alexey Beshenov,
Luisantos Bonilla,
José Mauricio Calles Ramírez,
Gabriel Alexander Chicas Reyes,
Claudia Patricia Corcio de Beltrán,
Ernesto Américo Hidalgo, Ingrid Martínez,
Karla María Posada,
Juan José Moreno Ramírez,
Yoceman Adony Sifontes Rivas.


## Contacto

Correo: [cadadr@gmail.com](mailto:cadadr@gmail.com)


## Copyleft

Esta obra está disponible bajo la
[licencia CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
