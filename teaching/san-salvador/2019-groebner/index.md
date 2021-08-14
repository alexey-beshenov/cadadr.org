---
keywords: álgebra conmutativa, base de Gröbner, algoritmo de Buchberger, variedades afines, descomposición primaria, dimensión de Krull, serie de Hilbert, polinomio de Hilbert, normalización de Noether, Macaulay2
title: Álgebra Conmutativa Computacional
published: 2019-06-18
---

<p class="epigraph">Tout ce qui est beau et noble est le résultat de la raison et du calcul.<br />
    —Charles Baudelaire, «L’Art romantique»</p>

Este es un curso introductorio que impartí en el ciclo impar de 2019 en
la Maestría en Matemática Fundamental de la Universidad de El Salvador.

El curso primero cubre el material fundamental sobre las bases de Gröbner,
y luego algunas facetas computacionales de geometría algebraica:
descomposiciones primarias, dimensión de Krull y series de Hilbert.

El enfoque es más práctico y se dan varios ejemplos de cálculos en el programa
[Macaulay2](http://macaulay2.com/).

## Horario

Martes y jueves, 5:00–7:00 PM, aula M1 o la sala de cómputo.


## Apuntes

* <a href="algebra-computacional.pdf" class="pdf-link">Apuntes completos del curso</a>
  actualizados el 22/07/2019

* <a href="https://github.com/alexey-beshenov/notas-san-salvador/tree/master/groebner" class="git-link">El código fuente LaTeX</a>


## Programa

### Primera parte: «Gröbner basics»

* Órdenes monomiales
* División con resto para polinomios en diversas variables
* Ideales monomiales
* El lema de Dickson
* Bases de Gröbner
* El criterio de Buchberger
* El algoritmo de Buchberger
* Bases de Gröbner reducidas
* Radical
* Anillos cociente
* Intersección de ideales y eliminación

### Segunda parte: Relación con geometría algebraica
  
* Conjuntos algebraicos afines
* Ideales primos y componentes irreducibles
* Descomposiciones primarias
* Dimensión de Krull
* Series de Hilbert
* Normalización de Noether
* Series de Hilbert y dimensión


## Cómo usar Macaulay2

La mejor opción para instalar Macaulay2 es primero instalar GNU/Linux... Sino,
se puede usar la
página [web.macaulay2.com](http://web.macaulay2.com/).

A los usuarios de Windows se les recomienda leer la página
[stallman.org/microsoft.html](https://stallman.org/microsoft.html) (en inglés).


## Algún código de Macaulay2

Advertencia: este código sirve solo para entender los algoritmos básicos y
aprender a programar. Normalmente todo lo necesario ya está implementado en
Macaulay2.
  
* [Division-Euclides.m2](https://raw.githubusercontent.com/alexey-beshenov/notas-san-salvador/master/groebner/Division-Euclides.m2) (12/03/2019)
* [Division.m2](https://raw.githubusercontent.com/alexey-beshenov/notas-san-salvador/master/groebner/Division.m2) (12/03/2019)
* [Buchberger.m2](https://raw.githubusercontent.com/alexey-beshenov/notas-san-salvador/master/groebner/Buchberger.m2) (21-26/03/2019)


## Tareas
  
* <a href="tarea-1.pdf" class="pdf-link">Tarea 1</a>
  (14/03/2019; fecha límite: 21/03/2019)
* <a href="tarea-2.pdf" class="pdf-link">Tarea 2</a> (27/03/2019; fecha límite: 11/04/2019)
* <a href="tarea-3.pdf" class="pdf-link">Tarea 3</a> (12/04/2019; fecha límite: 03/05/2019)
* <a href="tarea-4.pdf" class="pdf-link">Tarea 4</a> (03/05/2019; fecha límite: 21/05/2019)
* <a href="tarea-5.pdf" class="pdf-link">Tarea 5</a> (28/05/2019; fecha límite: 13/06/2019)


## Exámenes

* <a href="parcial-1-preparacion.pdf" class="pdf-link">Un ejercicio opcional</a> para prepararse al parcial del [12/04](https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Cosmon%C3%A1utica)
* <a href="parcial-1.pdf" class="pdf-link">Examen parcial 1</a> (12/04/2019)
* <a href="parcial-2.pdf" class="pdf-link">Examen parcial 2</a> (13/06/2019)


## Referencias

* David Cox, John Little, Donal O'Shea.
  *Ideals, Varieties and Algorithms*, Fourth edition
  (<a href="https://dacox.people.amherst.edu/iva/4ed.pdf" class="pdf-link">errata</a>)

* David Cox, John Little, Donal O'Shea.
  *Using Algebraic Geometry*, Second edition
  (<a href="https://dacox.people.amherst.edu/uag/2uag1.pdf" class="pdf-link">errata</a>)

* David Eisenbud,
  *Commutative Algebra with a View Toward Algebraic Geometry*
  (<a href="https://www.msri.org/people/members/de/corr2-3.pdf" class="pdf-link">errata</a>)

* M.F. Atiyah, I.G. Macdonald,
  *Introduction to Commutative Algebra*
  ([errata](https://mathoverflow.net/questions/42241/))

* Gregor Kemper, *A Course in Commutative Algebra*


## Contacto

No duden en contactarme por cualquier pregunta sobre el
curso: [cadadr@gmail.com](mailto:cadadr@gmail.com).
