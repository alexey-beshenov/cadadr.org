---
title: Teoría de números algebraicos
published: 2020-12-09
keywords: teoría de números algebraicos, campos de números, grupo de clases, anillo de enteros
lang: es
---

<p class="epigraph">I attended a course in algebraic number theory from Artin
  which was extremely elegant, although perhaps too advanced for me. However,
  it wasn’t until a few years later that I learned what an algebraic number
  was. The course was so streamlined that algebraic numbers were never actually
  mentioned.<br>
    —John Milnor, citado por Steven Krantz</p>

Esta es la página del curso de maestría de la teoría de números algebraicos que
impartí en [CIMAT](https://cimat.mx/), Guanajuato en el otoño de
2020.

## Materiales del curso

* Libro de texto improvisado:
  **<a href="tna.pdf" class="pdf-link">Teoría de números algebraicos</a>**<br>
  Última actualización 09/12/20, 315 p., ¡comentarios bienvenidos!<br>
  <a href="https://github.com/alexey-beshenov/cimat-tna" class="git-link">El código fuente</a>

* Los videos de clases [se encuentran en una página separada](apuntes.html)


## Introducción

La teoría de números algebraicos estudia... los **números algebraicos**,
es decir, los números complejos $\alpha \in \mathbb{C}$ que satisfacen una
relación algebraica no trivial
$$a_n \alpha^n + a_{n-1} \alpha^{n-1} + \cdots + a_1 \alpha + a_0 = 0,$$
donde $a_i \in \mathbb{Q}$ y $a_n \ne 0$. Estos números viven en los
**campos de números** que son extensiones finitas $K/\mathbb{Q}$. A saber,
los campos de números son de la forma
$K = \mathbb{Q} (\alpha_1,\ldots,\alpha_s)$, donde los $\alpha_i$ son números
algebraicos.

Un ejemplo sencillo de campo de números es
$$\mathbb{Q} (\sqrt{-5}) = \{ a + b\sqrt{-5} \mid a,b \in \mathbb{Q} \},$$
la extensión cuadrática de los números racionales que se obtiene añadiendo
la raíz cuadrada $\sqrt{-5}$.

La teoría de números surge al considerar subanillos en los campos de números
$R \subset K$, que sería lógico denominar los **anillos de números**.
(No es un término muy común, pero lo adoptaremos en nuestro curso.)
Por ejemplo
$$\mathbb{Z} [\sqrt{-5}] = \{ a + b\sqrt{-5} \mid a,b \in \mathbb{Z} \}$$
es un anillo de números dentro del campo de números $\mathbb{Q} (\sqrt{-5})$.

Los anillos de números son objetos unidimensionales. Específicamente,
a cualquier anillo conmutativo $R$ se puede asociar su *dimensión de Krull*
$\dim R$, y para cualquier anillo de números se cumple $\dim R = 1$. En este
sentido la teoría de anillos de números se parece mucho a la teoría de curvas
algebraicas.

Los anillos de números son generalizaciones bastante sencillas del anillo de
los números enteros $\mathbb{Z}$, pero en los anillos de números, entre otras
cosas, ya no necesariamente se cumple el *teorema fundamental de la aritmética*
(que afirma que todo número se expresa esencialmente de manera única como un
producto de números primos). Por ejemplo, en el anillo $\mathbb{Z} [\sqrt{-5}]$
$$2\cdot 3 = (1 + \sqrt{-5})\,(1 - \sqrt{-5})$$
son dos factorizaciones distintas del número $6$. La idea de Richard Dedekind
consistía en remplazar las factorizaciones en números primos por factorizaciones
de *ideales* en *ideales primos* del anillo. En el ejemplo de arriba,
$$(2) = \mathfrak{p}^2, \quad
(3) = \mathfrak{q}_1 \mathfrak{q}_2, \quad
(1 + \sqrt{-5}) = \mathfrak{p} \mathfrak{q}_1, \quad
(1 - \sqrt{-5}) = \mathfrak{p} \mathfrak{q}_2,$$
donde
$$\mathfrak{p} = (2, 1 + \sqrt{-5}); \quad
\mathfrak{q}_1 = (3, 1 + \sqrt{-5}); \quad
\mathfrak{q}_2 = (3, 2 + \sqrt{-5})$$
son ideales primos en $\mathbb{Z} [\sqrt{-5}]$. Los anillos de números donde los
ideales se descomponen de manera única en ideales primos se conocen como los
**anillos de Dedekind**. Todas estas nociones serán introducidas y consideradas
en detalles en el curso.

El objetivo principal será definir algunos invariantes fundamentales de
los campos de números: el **anillo de enteros** $\mathcal{O}_K \subset K$,
**grupo de clases** $\operatorname{Cl} (K)$, y **grupo de unidades**
$\mathcal{O}_K^\times$, demostrar sus propiedades básicas y aprender
a calcularlos.


### Para qué sirve este curso

El curso podría ser interesante para los que estudian álgebra conmutativa,
ya que serán consideradas algunas nociones fundamentales de esta área
(ideales primos, anillos de valuación discreta, anillos de Dedekind, el grupo
de Picard de un anillo conmutativo, el grupo de unidades, etc.), basándose en
ejemplos muy concretos y calculables. En cierto sentido, el álgebra conmutativa
históricamente se originó en la teoría de números algebraicos.
(El mismo término «anillo» fue introducido por Hilbert en un contexto de anillos
de números, e «ideal» es la abreviación del «número ideal».)

Además, la similitud entre los anillos de números y curvas algebraicas que
mencioné arriba, haría este material útil para los que están aprendiendo
superficies de Riemann, singularidades de curvas, etc. y los interesados en
la geometría algebraica moderna (la teoría de esquemas etc.).

Por último, y no menos importante, este curso es fundamental para los
estudiantes con intención de aprender la teoría de números.


### CONOCIMIENTOS PRELIMINARES

Tendré que suponer que los oyentes conozcan las nociones como
anillo (conmutativo), ideal (primo, maximal), anillo cociente, módulo sobre
un anillo (módulo libre, rango), y campo (incluso la teoría de campos finitos).
También no estaría mal conocer la teoría de Galois básica. De todas maneras,
empezaremos por una revisión de temas importantes de álgebra, y cuando sea
necesario en el transcurso, trataremos las nociones poco conocidas. Uno de mis
objetivos es presentar diferentes herramientas algebraicas, así como ejemplos
muy concretos.


### FORMATO

Debido a la contingencia por el COVID-19, el curso será impartido en línea,
¡así que todos los interesados son bienvenidos! Además, los apuntes para cada
clase y tareas del curso serán disponibles en esta página.


## PLAN DEL CURSO

### Capítulo 1. Primer encuentro con anillos de números

* Campos y anillos de números

* Reciprocidad cuadrática mediante sumas de Gauss en $\mathbb{Z} [\zeta_p]$

* Divisibilidad y factorización en dominios (dominios de factorización única,
  dominios de ideales principales, dominios euclidianos)

* Enteros de Gauss $\mathbb{Z} [i]$ y enteros de Eisenstein
  $\mathbb{Z} [\zeta_3]$

* Reciprocidad cúbica

* Ternas pitagóricas

* Ecuación de Fermat $x^3 + y^3 = z^3$

* Puntos enteros en curvas $y^2 = x^3 + t$

* Ecuación de Pell $x^2 - dy^2 = 1$


### Capítulo 2. Aritmética de ideales

* Operaciones con ideales
* Ideales primos y maximales
* Ideales en anillos de números
* Ideales fraccionarios
* Anillo de enteros $\mathcal{O}_K$
* Dominios de Dedekind
* Teorema de Kummer–Dedekind
* Aplicación: campos cuadráticos y campos ciclotómicos $\mathbb{Q} (\zeta_p)$


### Capítulo 3. Álgebra $\mathbb{Z}$-lineal

* Norma y traza
* Recordatorio de álgebra lineal
* Apareamiento de traza y el discriminante
* Generación finita del anillo de enteros
* Cálculos del discriminante y anillo de enteros
* Versión más general de Kummer–Dedekind
* Discriminante y ramificación
* Teoremas de Brill y Stickelberger
* Campos linealmente disjuntos
* Anillo de enteros de $\mathbb{Q} (\zeta_n)$
* Cálculos en PARI/GP


### Capítulo 4. Teoría de Galois

* Breve recordatorio sobre la teoría de Galois
* Acción del grupo de Galois sobre los ideales
* Grupo de descomposición e inercia
* Otra prueba de la reciprocidad cuadrática
* El automorfismo de Frobenius
* Caso de extensiones no Galois


### Capítulo 5. Teoría de Minkowski

* Retículos y el teorema de Minkowski

* Aplicación: teorema de cuatro cuadrados y teorema de aproximación de Dirichlet

* Anillo de enteros como un retículo

* Cota de Minkowski

* Teorema de Hermite

* Finitud del grupo de clases

* Ejemplo: campos cuadráticos imaginarios

* Números de la suerte de Euler

* Ejemplo: campos cuadráticos reales

* Perspectiva: campos ciclotómicos

* Campos con número de clases 2

* Teoría de Minkowski y la ecuación de Pell

* Teorema de unidades de Dirichlet

* Aplicación: unidades en $\mathbb{Z} [\zeta_p]$

* Fracciones continuas. Fracciones continuas periódicas.

* Soluciones de la ecuación de Pell. Unidades fundamentales en campos
  cuadráticos reales

* Cálculo del grupo de clases y unidades en PARI/GP


### Capítulo 6. Función zeta de Dedekind

* Función zeta de Dedekind

* Ejemplo: la función zeta de $\mathbb{Q} (i)$

* Fórmula analítica del número de clases

* Regulador

* Ejemplos de uso de la fórmula del número de clases. Número de clases de
  $\mathbb{Q} (\sqrt{-p})$

* Demostración de la fórmula del número de clases

* Factorización de la función zeta en series L de Dirichlet

* Perspectiva: Prolongación analítica

* Perspectiva: Valores especiales. Números y polinomios de Bernoulli. Valores
  especiales de las series L de Dirichlet. Aplicación a los campos reales
  abelianos

* Equivalencia aritmética y las ternas de Gassmann


Todos los invariantes que serán considerados en el curso se pueden calcular
algorítmicamente. En particular, veremos ejemplos de cálculos en el programa
[PARI/GP](https://pari.math.u-bordeaux.fr/) y la base de datos
[LMFDB](https://lmfdb.org/). Todo el material teórico será acompañado
de problemas con pruebas y cálculos particulares.


## Referencias

Mi fuente principal de inspiración son los apuntes de Peter Stevenhagen de un
curso que se imparte en la universidad de Leiden (Países Bajos). Además, podrían
ser útiles diferentes libros de texto sobre el tema; he aquí algunas fuentes que
puedo recomendar.


### Algunos apuntes en línea

* Peter Stevenhagen,
  <a href="http://websites.math.leidenuniv.nl/algebra/ant.pdf" class="pdf-link">*Number Rings*</a>

* Andrew Sutherland,
  [*Number Theory I*](https://dspace.mit.edu/handle/1721.1/124987)

* J.S. Milne,
  [*Algebraic Number Theory*](https://www.jmilne.org/math/CourseNotes/ant.html)

* [Apuntes de Paul Garrett](http://www-users.math.umn.edu/~garrett/m/number_theory/)

* [Varios apuntes de Keith Conrad](https://kconrad.math.uconn.edu/blurbs/)

* Robert B. Ash,
  [*A Course In Algebraic Number Theory*](https://faculty.math.illinois.edu/~r-ash/ANT.html)


### Libros introductorios

* Kenneth Ireland and Michael Rosen,
  *A Classical Introduction to Modern Number Theory*,
  Chapters 12, 13, 17

* Saban Alaca and Kenneth S. Williams, *Introductory Algebraic Number Theory*

* Kazuya Kato, Nobushige Kurokawa, Takeshi Saito,
  *Introduction to Class Field Theory*

* A. Fröhlich and M. J. Taylor, *Algebraic Number Theory*

* Daniel A. Marcus, *Number Fields*

* Pierre Samuel, *Théorie algébrique des nombres*

* Z.I. Borevich and I.R. Shafarevich, *Number Theory*, Chapters 4, 5

* Fernando Rodriguez Villegas, *Experimental Number Theory*
  (para experimentos *en PARI/GP)

* David A. Cox, *Primes of the form $x^2 + ny^2$*


### Lectura avanzada

* Jürgen Neukirch, *Algebraic Number Theory*
* Serge Lang, *Algebraic Number Theory*
* J.W.S. Cassels and A. Fröhlich, *Algebraic Number Theory*


## Enlaces de interés

* [PARI/GP](https://pari.math.u-bordeaux.fr/)
  (el paquete `pari-gp` es disponible en
  [Debian](https://packages.debian.org/search?keywords=pari-gp&amp;searchon=names&amp;suite=all&amp;section=all)
  y
  [Ubuntu](https://packages.ubuntu.com/search?keywords=pari-gp&amp;searchon=names&amp;suite=all&amp;section=all))

* [LMFDB — The L-functions and Modular Forms Database](https://lmfdb.org/)


## Agradecimientos

Agradezco a CIMAT por la oportunidad de dar este curso, y en particular
al Dr. Xavier Gómez Mont y Dr. Pedro Luis del Ángel.

Pavel Solomatin y Dmitry Shvetsov han hecho varias observaciones útiles acerca
de una versión preliminar de mis notas, y hemos tenido muchas conversaciones
sobre la teoría de números y pedagogía.

También agradezco a todos los participantes del curso, y sobre todo a Marvin
Ferman Bell, José de Jesús García Ruvalcaba, William Eduardo Pena, Óscar Andrés
Ramírez Ramírez, y Alexis Zamora.
