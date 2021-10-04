---
keywords: funciones zeta, esquemas, valores especiales, Hasse-Weil, conjeturas de Weil
title: En torno de las funciones zeta aritméticas
published: 2019-10-31
---

<p style="text-align: center"><img src="/img/zeta-neg.png" style="width: 100%" alt="función zeta de Riemann" />

## Introducción

Si $X$ es un esquema de tipo finito sobre $\operatorname{Spec} \mathbb{Z}$, entonces su **función zeta** se define mediante el producto de Euler
$$\zeta (X,s) = \prod_{x \in |X|} \frac{1}{1 - N (x)^{-s}},$$
donde $|X|$ es el conjunto de puntos cerrados de $X$ y $N (x) = \# \kappa (x)$ es el tamaño del campo residual correspondiente (es un número finito, gracias a la hipótesis sobre $X$).

El producto de arriba converge para $\operatorname{Re} s > \dim X$ y *conjeturalmente* la función zeta admite una prolongación meromorfa a todo el plano complejo (esto se conoce en algunos casos importantes). Tienen interés particular los valores $\zeta (X,n)$ para $n \in \mathbb{Z}$ entero; estos se conocen como los **valores especiales**.

Las funciones zeta de esquemas son unos de los objetos más estudiados en matemáticas y a la vez más misteriosos.

Por ejemplo, si $X = \operatorname{Spec} \mathbb{Z}$, se recupera la **función zeta de Riemann** $\zeta (s) = \sum_{n \ge 1} \frac{1}{n^s}$. Aunque fue el mismo Riemann quien empezó a estudiar $\zeta (s)$ como una función de variable compleja, los valores especiales de $\zeta (s)$ ya habían sido estudiados por Euler quien descubrió, por ejemplo, la famosa fórmula $\zeta (2) = \frac{\pi^2}{6}$.

De manera más general, si $\mathcal{O}_F$ es el anillo de enteros de una extensión finita $F/\mathbb{Q}$, entonces tomando $X = \operatorname{Spec} \mathcal{O}_F$ se recupera la **función zeta de Dedekind** $\zeta_F (s)$. Esta se estudia en la teoría de números algebraicos. Notamos que $\operatorname{Spec} \mathcal{O}_F$ es un esquema unidimensional, pero aún así muchas propiedades de $\zeta_F$ no se conocen, en particular la hipótesis de Riemann y las propiedades de sus valores especiales.

Por otra parte, si el esquema $X$ vive en característica positiva, es una variedad sobre un campo finito $\mathbb{F}_q$, y en este caso la geometría nos permite saber mucho más de la función zeta. Se tiene
$$\zeta (X,s) = Z (X, q^{-s}),$$
donde
$$Z (X,t) = \exp \left(\sum_{n\ge 1} \frac{\# X (\mathbb{F}_{q^n})}{n}\,t^n \right)$$
es la **función zeta de Hasse–Weil** que codifica el número de puntos de $X$ sobre las extensiones finitas $\mathbb{F}_{q^n}/\mathbb{F}_q$. Esta función también ha sido estudiada extensivamente por los teóricos de números, empezando por Gauss. En 1949 André Weil, después de investigar exitosamente el caso de curvas $C/\mathbb{F}_q$, formuló una lista de conjeturas que describen $Z (X,t)$ cuando $X/\mathbb{F}_q$ es una variedad proyectiva lisa de cualquier dimensión. Una gran parte de la geometría algebraica grothendieckiana (la teoría de esquemas, cohomología étale y $\ell$-ádica, etc.) fue desarrollada con el propósito de resolver estas conjeturas. El punto final en las pruebas lo puso Pierre Deligne en 1973. La resolución de las conjeturas de Weil es uno de los logros más importantes de las matemáticas del siglo XX.

Entonces, el mundo de las funciones zeta de esquemas es inmenso, con muchos resultados importantes y aún más conjeturas abiertas.

## Funciones zeta de Hasse–Weil y el teorema de Dwork

Este minicurso sería accesible para los estudiantes de maestría y tal vez los últimos años de licenciatura. Primero propongo ver algunos cálculos de las funciones $Z (X,t)$ de arriba. La teoría de esquemas como tal no será relevante; esto es algo que apreciaría Gauss.

Luego, una de las conjeturas de Weil afirma que $Z (X,t)$ es una *función racional*: por ejemplo, si consideramos $Z (X,t)$ como una serie formal en $\mathbb{Q} [\![t]\!]$, resulta que en realidad es un cociente de dos polinomios $f (t) / g (t)$. Esto fue demostrado por Dwork en 1960 usando los métodos del análisis $p$-ádico. Nuestro objetivo principal es entender la prueba de Dwork. Empezaríamos por una revisión de los campos $\mathbb{Q}_p$ y $\mathbb{C}_p$ y algunos resultados necesarios del análisis $p$-ádico.

## Horarios

Martes y jueves, 9:30–11:00, salón <del>G001</del> **D607**.

La primera sesión tendrá lugar el martes 8 de octubre.

## Apuntes

<a href="en-torno-de-zeta.pdf" class="pdf-link">En torno de las funciones zeta aritméticas</a> (actualizados el 31/10/19)


* **08/10/19**. Revisamos la función zeta de Dedekind asociada a un campo de números $F/\mathbb{Q}$.

* **10/10/19**. Terminamos la revisión de la zeta de Dedekind por la fórmula de clases. Definimos la función zeta de Hasse-Weil $Z (X,t)$, vimos sus propiedades básicas y algunos cálculos.

* **15/10/19**. Nuestro próximo objetivo es entender los cálculos del artículo de Weil <a href="https://www.projecteuclid.org/euclid.bams/1183513798">"Numbers of solutions of equations in finite fields"</a> (1949). Definimos las sumas de Gauss y Jacobi y vimos algunas de sus propiedades.

* **17/10/19**. Deducimos la fórmula para $Z (X, t)$, donde $X/\mathbb{F}_q$ es una hipersuperficie proyectiva de la forma $a_0 x_0^\ell + \cdots + a_n x_n^\ell = 0$ y $\ell \mid (q-1)$.

* **22/10/19**. Deducimos la fórmula para $Z (E, t)$ para las curvas elípticas $E/\mathbb{F}_q$ de la forma $y^2z = x^3 + Dz^3$ y $y^2z = x^3 - Dxz^2$.

* **24/10/19**. No hay clase (el congreso nacional de la [Sociedad Matemática Mexicana](https://www.smm.org.mx/))

* **29/10/19**. Vimos los enunciados de las conjeturas de Weil. Probamos la racionalidad de $Z (C,t)$ (y un poco más) para las curvas proyectivas lisas $C/\mathbb{F}_q$ usando el teorema de Riemann–Roch.

* **31/10/19**. Deducimos la ecuación funcional para las curvas del teorema de Riemann–Roch. También mencionamos la cota de Hasse–Weil que implica la hipótesis de Riemann.

* **05/11/19**. Revisamos los campos $\mathbb{Q}_p$ y sus extensiones finitas.

* **07/11/19**. Revisamos los levantamientos de Teichmüller, el campo $\overline{\mathbb{Q}_p}$ y $\mathbb{C}_p$.

* **12/11/19**. Construimos la serie $\Theta$ que juega un papel importante en la prueba de Dwork.

* No hubo clases durante dos semanas (estaba visitando la Universidad Autónoma de Zacatecas y el <a href="http://www.imsa.math.org.mx/">Congreso del <abbr title="Institute of the Mathematical Sciences of the Americas">IMSA</abbr></a>)

* **03/12/19**. Probamos el siguiente criterio de racionalidad. Si una serie $Z (t) = \sum_{m \ge 0} a_m t^m \in \mathbb{Z} [\![t]\!]$ tiene coeficientes acotados como $|a_m| \le C s^m$ para algunas constantes $C,s > 0$ y $Z (t) = f (t) / g (t)$, donde $f,g \in \mathbb{C}_p [\![t]\!]$ son series $p$-ádicas de radio de convergencia infinita, entonces $Z (t) \in \mathbb{Q} (t)$.


## Algunas referencias


* Kenneth Ireland and Michael Rosen, *A classical introduction to modern number theory*, second ed., Graduate Texts in Mathematics, vol. 84, Springer-Verlag, New York, 1990.<br>
[https://link.springer.com/book/10.1007%2F978-1-4757-2103-4](https://link.springer.com/book/10.1007%2F978-1-4757-2103-4)
* Neal Koblitz, *p-adic numbers, p-adic analysis, and zeta-functions*, second ed., Graduate Texts in Mathematics, vol. 58, Springer-Verlag, New York, 1984.<br>
[https://link.springer.com/book/10.1007%2F978-1-4612-1112-9](https://link.springer.com/book/10.1007%2F978-1-4612-1112-9)
* Jean-Pierre Serre, *Zeta and L functions, Arithmetical Algebraic Geometry* (Proc. Conf. Purdue Univ., 1963), Harper & Row, New York, 1965, pp. 82–92.<br>
(Este artículo no se encuentra fácilmente, así que subí <a href="/docs/Serre-zeta-and-L-1965.pdf" class="pdf-link">una copia</a>)
* André Weil, *Numbers of solutions of equations in finite fields*, Bull. Amer. Math. Soc. 55 (1949), 497–508.<br>
[https://www.projecteuclid.org/euclid.bams/1183513798](https://www.projecteuclid.org/euclid.bams/1183513798)
* Emmanuel Kowalski, *Trying to understand Deligne's proof of the Weil conjectures (A tale in two parts)*.<br>
<a href="https://people.math.ethz.ch/~kowalski/deligne.pdf" class="pdf-link">https://people.math.ethz.ch/~kowalski/deligne.pdf</a>
* J.S. Milne, *The Riemann Hypothesis over Finite Fields: from Weil to the present day*.<br>
[https://www.jmilne.org/math/xnotes/pRH.html](https://www.jmilne.org/math/xnotes/pRH.html)
* Niranjan Ramachandran, *Zeta functions, Grothendieck groups, and the Witt ring*.<br>
[https://arxiv.org/abs/1407.1813](https://arxiv.org/abs/1407.1813)


## Contacto

Alexey Beshenov <[cadadr@gmail.com](mailto:cadadr@gmail.com)><br>
Oficina K315 en CIMAT


## Copyleft

Esta obra está disponible bajo la
[licencia CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
