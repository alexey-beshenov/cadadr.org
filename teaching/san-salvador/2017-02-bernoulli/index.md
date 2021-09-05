---
title: Minicurso sobre los números de Bernoulli
published: 2017-03-07
---

<p><img src="/img/bernoulli-euler.jpg" alt="Jacob Bernoulli y Leonhard Euler" style="width: 100%" /></p>

Los números de Bernoulli son ciertos números racionales<br>
$$B_0 = 1, ~ B_1 = \frac{1}{2}, ~ B_2 = \frac{1}{6}, ~ B_3 = 0, ~ B_4 = -\frac{1}{30}, ~ B_5 = 0, ~ B_6 = \frac{1}{42}, ~ B_7 = 0, ~ B_8 = -\frac{1}{30}, ~ \ldots$$
que surgen en varios contextos de la teoría de números, combinatoria y
análisis. Por ejemplo, la suma de potencias de números naturales se expresa como
un polinomio con coeficientes $B_i$:<br>
$$1^k + 2^k + \cdots + n^k = \frac{1}{k+1}\,\sum_{0 \le i \le k} {k+1\choose i}\,B_i\,n^{k+1-i}.$$ <br>
También los números de Bernoulli aparecen en las series de Taylor de varias
funciones:
$$\frac{t\,e^t}{e^t - 1} = \sum_{k \ge 0} B_k \, \frac{t^k}{k!}, \quad t\,\cot (t) = 1 + \sum_{k \ge 1} (-1)^k \, 2^{2k}\,\frac{B_{2k}}{(2k)!}\,t^{2k}, \quad \text{etc}.$$

Los mismos números surgen cuando se consideran sumas de potencias infinitas,
en los valores de la función zeta de Riemann:
$$\zeta (2k) = 1 + \frac{1}{2^{2k}} + \frac{1}{3^{2k}} + \frac{1}{4^{2k}} + \cdots = (-1)^{k+1} \, B_{2k}\,\frac{2^{2k-1}}{(2k)!}\,\pi^{2k}.$$

En este minicurso vamos a explorar las diversas definiciones de los números
de Bernoulli, sus propiedades aritméticas (teorema de Clausen–von Staudt,
números primos irregulares), y algunos resultados sobre la función zeta.

## Apuntes

* Mis apuntes, un poco más detallados de lo que hicimos en clase:
  [bernoulli.pdf](bernoulli.pdf) (47&#x00a0;pp.)

* <a href="https://github.com/alexey-beshenov/notas-san-salvador/tree/master/bernoulli" class="git-link">El código fuente LaTeX</a>


Algunos resultados están ilustrados con cálculos en el programa PARI/GP.
El lector puede descargarlo de la página
[http://pari.math.u-bordeaux.fr/](http://pari.math.u-bordeaux.fr/)

Apuntes diarios de la clase:


* 24.02.2017: <a href="2017-02-24.pdf" class="pdf-link">Sumas de potencias de números naturales y los números de Bernoulli</a> (5&#x00a0;pp.)
* 27.02.2017: <a href="2017-02-27.pdf" class="pdf-link">Series formales de potencias</a> (9&#x00a0;pp.)
* 28.02.2017: <a href="2017-02-28.pdf" class="pdf-link">La función generatriz para $B_k$. Polinomios de Bernoulli</a> (8&#x00a0;pp.)
* 01.03.2017: <a href="2017-03-01.pdf" class="pdf-link">Valores especiales de la función zeta</a> (9&#x00a0;pp.)
* 02.03.2017: <a href="2017-03-02.pdf" class="pdf-link">Números de Bernoulli y números de Stirling</a> (6&#x00a0;pp.)
* 02.03.2017: <a href="2017-03-07.pdf" class="pdf-link">Teorema de Clausen–von Staudt. Congruencias de Kummer. Primos irregulares</a> (7&#x00a0;pp.)



* <a href="polinomios-de-bernoulli.pdf" class="pdf-link">Folleto sobre números y polinomios de Bernoulli</a>
* <a href="stirling.pdf" class="pdf-link">Folleto sobre números de Stirling</a>
* <a href="congruencias.pdf" class="pdf-link">Ejercicios sobre congruencias</a> y [las soluciones](congruencias-corr.pdf)
* <a href="ejercicios-bernoulli.pdf" class="pdf-link">Examen</a>


### 24.02.2017: Sumas de potencias de números naturales y los números de Bernoulli (sesión introductoria)

Para las funciones<br>
$$S_k (n) \mathrel{\mathop:}= \sum_{1 \le i \le n} i^k = 1^k + 2^k + \cdots + n^k$$
hemos demostrado la recurrencia<br>
$$S_k (n) = \frac{1}{k+1} \, \left((n+1)^{k+1} - 1 - \sum_{0 \le i \le k-1} {k+1\choose i} \, S_i (n)\right).$$

Por inducción se sigue que $S_k (n)$ es un polunomio en $n$ de grado $k+1$. Luego, por la definición, el $k$-ésimo **número de Bernoulli** $B_k$ es el coeficiente de $n$ en el polinomio $S_k (n)$. En otras palabras, $B_k \mathrel{\mathop:}= S_k' (0)$.


\begin{align*}
S_0 (n) & = n,\\
S_1 (n) & = \frac{1}{2}\,n^2\,+\boxed{\frac{1}{2}}\,n,\\
S_2 (n) & = \frac{1}{3}\,n^3+\frac{1}{2}\,n^2+\boxed{\frac{1}{6}}\,n,\\
S_3 (n) & = \frac{1}{4}\,n^4+\frac{1}{2}\,n^3+\frac{1}{4}\,n^2,\\
S_4 (n) & = \frac{1}{5}\,n^5+\frac{1}{2}\,n^4+\frac{1}{3}\,n^3\boxed{-\frac{1}{30}}\,n,\\
S_5 (n) & = \frac{1}{6}\,n^6+\frac{1}{2}\,n^5+\frac{5}{12}\,n^4-\frac{1}{12}\,n^2,\\
S_6 (n) & = \frac{1}{7}\,n^7+\frac{1}{2}\,n^6+\frac{1}{2}\,n^5-\frac{1}{6}\,n^3+\boxed{\frac{1}{42}}\,n,\\
S_7 (n) & = \frac{1}{8}\,n^8+\frac{1}{2}\,n^7+\frac{7}{12}\,n^6-\frac{7}{24}\,n^4+\frac{1}{12}\,n^2,\\
S_8 (n) & = \frac{1}{9}\,n^9+\frac{1}{2}\,n^8+\frac{2}{3}\,n^7-\frac{7}{15}\,n^5+\frac{2}{9}\,n^3\boxed{-\frac{1}{30}}\,n,\\
S_9 (n) & = \frac{1}{10}\,n^{10}+\frac{1}{2}\,n^9+\frac{3}{4}\,n^8-\frac{7}{10}\,n^6+\frac{1}{2}\,n^4-\frac{3}{20}\,n^2,\\
S_{10} (n) & = \frac{1}{11}\,n^{11}+\frac{1}{2}\,n^{10}+\frac{5}{6}\,n^9-n^7+n^5-\frac{1}{2}\,n^3+\boxed{\frac{5}{66}}\,n.
\end{align*}

Los primeros números de Bernoulli son
$$\begin{array}{rcccccccccccc}
k\colon & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & \cdots \\
\hline
B_k\colon & 1 & \frac{1}{2} & \frac{1}{6} & 0 & -\frac{1}{30} & 0 & \frac{1}{42} & 0 & -\frac{1}{30} & 0 & \frac{5}{66} & \cdots
\end{array}$$

De la recurrencia para $S_k (n)$ se sigue que los números $B_k$ satisfacen<br>
$$\sum_{0 \le i \le k} {k+1 \choose i}\,B_i = k+1.$$<br>
Esto nos da una definición alternativa de $B_k$.

### 27.02.2017: Series formales de potencias

Hemos revisado las **series formales de potencias**. Son expresiones de la forma $f (t) = \sum_{k\ge 0} a_k\,t^k$ con coeficientes racionales $a_k\in \mathbb{Q}$.

El ejemplo más importante para nosotros va a ser<br>
$$e^t \mathrel{\mathop:}= \sum_{k\ge 0} \frac{t^k}{k!}.$$

Tenemos la suma y el producto

\begin{align*}
\left(\sum_k a_k\,t^k\right) + \left(\sum_k a_k\,t^k\right) & \mathrel{\mathop:}= \sum_k (a_k+b_k)\,t^k,\\
\left(\sum_k a_k\,t^k\right)\cdot \left(\sum_k a_k\,t^k\right) & \mathrel{\mathop:}= \sum_k \left(\sum_{i+j = k} a_i\,b_j\right)\,t^k
\end{align*}

que satisfacen las propiedades habituales.

Una serie $f (t) = \sum_k a_k\,t^k$ es invertible (es decir, existe $g (t)$ tal que $f (t)\cdot g (t) = 1$) si y solamente si $a_0\ne 0$. Una **serie formal de Laurent** es una serie formal $\sum_{k\ge -N} a_k\,t^k$ con un número finito de potencias negativas. Toda serie de Laurent no nula es invertible.

Hemos definido las derivadas formales por<br>
$$\left(\sum_{k\ge 0} a_k\,t^k\right)' \mathrel{\mathop:}= \sum_{k \ge 1} k\,a_k\,t^{k-1}.$$<br>
Las derivadas satisfacen las propiedades habituales:


* Tenemos $f (t) = \sum_{k \ge 0} \frac{f^{(k)} (0)}{k!}\,t^k$ (en efecto, se ve que $f^{(k)} (0) = k! \, a_k$).
* Regla de Leibniz $(f (t)\cdot g (t))' = f' (t)\cdot g (t) + f (t)\cdot g' (t)$.
* Regla de la cadena $(f (g (t)))' = f' (g (t)) \cdot g' (t)$ para $g (0) = 0$, donde la composición $f (g (t))$ está definida por<br>
$$f (g (t)) \mathrel{\mathop:}= \sum_{k \ge 0} a_k \, g (t)^k$$<br>
(esto tiene sentido como una serie en $t$ cuando $g (0) = 0$).


### 28.02.2017: Logaritmo formal. La función generatriz para $B_k$. Polinomios de Bernoulli

Hemos demostrado que el logaritmo formal<br>
$$\operatorname{ln} (1 + t) \mathrel{\mathop:}= \sum_{k\ge 1} (-1)^{k+1}\,\frac{t^k}{k}$$<br>
es inverso a la serie exponencial:<br>
$$\operatorname{ln} (1 + (e^t - 1)) = t, \quad e^{\ln (1 + t)} = 1+t.$$

Luego hemos visto que los números de Bernoulli pueden ser definidos mediante la función generatriz<br>
$$\frac{t\,e^t}{e^t - 1} = \sum_{k \ge 0} B_k \, \frac{t^k}{k!}.$$

Usando la función generatriz, es fácil demostrar que $B_k = 0$ para $k \ge 3$ impar, y también fórmulas como<br>
$$t\,\cot (t) = 1 + \sum_{k \ge 1} (-1)^k \, 2^{2k}\,\frac{B_{2k}}{(2k)!}\,t^{2k}$$<br>
(¡esta serie nos va a servir más adelante!)

Finalmente, hemos definido los polinomios de Bernoulli mediante la función generatriz<br>
$$\frac{t\,e^{tx}}{e^t-1} \mathrel{\mathop:}= \sum_{k \ge 0} B_k (x)\,\frac{t^k}{k!}$$<br>
y hemos visto algunas de sus propiedades:


* $B_k (1) = B_k$,
* $B_k (x+1) - B_k (x) = k\,x^{k-1}$,
* $B_k (0) = B_k$ para $k \ne 1$,
* $B_k (1-x) = (-1)^k\,B_k (x)$,
* $B_k (x) = \sum_{0 \le i \le k} (-1)^i \, {k \choose i}\,B_i\,x^{k-i}$.


### 01.03.2017: Valores de la función zeta y números de Bernoulli

Hemos demostrado que los polinomios de Bernoulli satisfacen $B_k' (x) = k\,B_{k-1} (x)$ y $\int_0^1 B_k (x)\,dx = 0$. Hemos notado que $B_k (x) = S_k' (x)$ para $k \ne 1$.

\begin{align*}
B_0 (x) & = 1, \\
B_1 (x) & = x - \frac{1}{2}, \\
B_2 (x) & = x^2 - x + \frac{1}{6}, \\
B_3 (x) & = x^3 - \frac{3}{2}\,x^2 + \frac{1}{2}\,x,\\
B_4 (x) & = x^4 - 2\,x^3 + x^2 - \frac{1}{30}, \\
B_5 (x) & = x^5 - \frac{5}{2}\,x^4 + \frac{5}{3}\,x^3 - \frac{1}{6}\,x, \\
B_6 (x) & = x^6 - 3\,x^5 + \frac{5}{2}\,x^4 - \frac{1}{2}\,x^2 + \frac{1}{42},\\
B_7 (x) & = x^7 - \frac{7}{2}\,x^6 + \frac{7}{2}\,x^5 - \frac{7}{6}\,x^3 + \frac{1}{6}\,x, \\
B_8 (x) & = x^8 - 4\,x^7 + \frac{14}{3}\,x^6 - \frac{7}{3}\,x^4 + \frac{2}{3}\,x^2 - \frac{1}{30},\\
B_9 (x) & = x^9 - \frac{9}{2}\,x^8 + 6\,x^7 - \frac{21}{5}\,x^5 + 2\,x^3 - \frac{3}{10}\,x, \\
B_{10} (x) & = x^{10} - 5\,x^9 + \frac{15}{2}\,x^8 - 7\,x^6 + 5\,x^4 - \frac{3}{2}\,x^2 + \frac{5}{66}.
\end{align*}

Luego, hemos visto un par de demostraciones de la famosa fórmula de Euler<br>
$$\zeta (2k) = 1 + \frac{1}{2^{2k}} + \frac{1}{3^{2k}} + \frac{1}{4^{2k}} + \cdots = (-1)^{k+1} \, B_{2k}\,\frac{2^{2k-1}}{(2k)!}\,\pi^{2k}.$$

La primera demostración está basada en comparación de dos series:<br>
$$t\,\cot (t) = 1 + \sum_{k \ge 1} (-1)^k \, 2^{2k}\,\frac{B_{2k}}{(2k)!}\,t^{2k}$$<br>
y<br>
$$t\,\cot (t) = t\,\sum_{n\in \mathbb{Z}} \frac{1}{t - \pi n}.$$

La segunda demostración calcula la serie de Fourier<br>
$$B_k (x - \lfloor x\rfloor) = -\frac{k!}{(2\pi i)^k}\sum_{\substack{n\in \mathbb{Z} \\ n \ne 0}} \frac{e^{2\pi i n x}}{n^k}.$$

### 02.03.2017: Valores de la función zeta en los enteros negativos. Números de Stirling

Primero, hemos visto que la ecuación funcional<br>
$$\zeta (s) = 2^s \, \pi^{s-1} \, \operatorname{sen} \left(\frac{\pi s}{2}\right)\,\Gamma (1-s)\,\zeta (1-s)$$
junto con la fórmula de Euler<br>
$$\zeta (2k) = (-1)^{k+1} \, B_{2k}\,\frac{2^{2k-1}}{(2k)!}\,\pi^{2k}$$
nos dan para los enteros negativos
$$\zeta (-n) = -\frac{B_{n+1}}{n+1}.$$

$$\begin{array}{rcccccccccccc}
n\colon & 0 & -1 & -2 & -3 & -4 & -5 & -6 & -7 & -8 & -9 & -10 & \cdots \\
\hline
\zeta(n)\colon & -\frac{1}{2} & -\frac{1}{12} & 0 & \frac{1}{120} & 0 & -\frac{1}{252} & 0 & \frac{1}{240} & 0 & -\frac{1}{132} & 0 & \cdots
\end{array}$$

Luego, hemos revisado los números de Stirling sus propiedades básicas

\begin{align*}
\genfrac[]{0pt}{}{k}{\ell} & = 0 \quad\text{para }\ell > k,\\
\genfrac[]{0pt}{}{k}{k} & = 1,\\
\genfrac[]{0pt}{}{k}{1} & = (k-1)!,\\
\sum_{1 \le \ell \le k} \genfrac[]{0pt}{}{k}{\ell} & = k!,\\
\genfrac[]{0pt}{}{k+1}{\ell} & = \genfrac[]{0pt}{}{k}{\ell-1} + k\,\genfrac[]{0pt}{}{k}{\ell};
\end{align*}

\begin{align*}
\genfrac\{\}{0pt}{}{k}{\ell} & = 0 \quad\text{para }\ell > k,\\
\genfrac\{\}{0pt}{}{k}{k} & = 1,\\
\genfrac\{\}{0pt}{}{k}{1} & = 1,\\
\sum_{1 \le \ell \le k} \genfrac\{\}{0pt}{}{k}{\ell} & = b (k),\\
\genfrac\{\}{0pt}{}{k+1}{\ell} & = \genfrac\{\}{0pt}{}{k}{\ell-1} + \ell\,\genfrac\{\}{0pt}{}{k}{\ell}.
\end{align*}

Hemos obtenido la función generatriz para $\genfrac\{\}{0pt}{}{k}{\ell}$:<br>
$$\frac{(e^t - 1)^\ell}{\ell!} = \sum_{k \ge \ell} \genfrac\{\}{0pt}{}{k}{\ell}\,\frac{t^k}{k!}.$$

### 03.03.2017: Una expresión para los números de Bernoulli. Introducción a PARI/GP

Hemos demostrado las identidades

$$\genfrac\{\}{0pt}{}{k}{\ell} = \frac{(-1)^\ell}{\ell!}\,\sum_{0 \le i \le \ell} (-1)^i \, {\ell \choose i} \, i^k$$<br>
y<br>
$$B_k = (-1)^k \, \sum_{0 \le \ell \le k} \frac{(-1)^\ell \, \ell! \, \genfrac\{\}{0pt}{}{k}{\ell}}{\ell+1} = (-1)^k \, \sum_{0 \le \ell \le k} \frac{1}{\ell+1}\,\sum_{0 \le i \le \ell} (-1)^i \, {\ell \choose i} \, i^k.$$

Esto quiere decir que los números de Bernoulli pueden ser expresados por una fórmula sin recurrencias.

Luego, hemos visto <!--<a href="pari.html">-->cómo trabajar con el programa PARI/GP<!--</a>-->.

### 06.03.2017: Sesión de ejercicios

Vamos a hacer <a href="congruencias.pdf" class="pdf-link">ejercicios sobre congruencias</a> en la clase.

### 07.03.2017: Teorema de Clausen–von Staudt. Congruencias de Kummer. Primos irregulares

Hemos demostrado el **teorema de Clausen–von Staudt**: para todo $k \ge 2$ par se tiene<br>
$$B_k = -\sum_{\substack{p\text{ primo} \\ p-1 \, \mid \, k}} \frac{1}{p} + C_k,$$<br>
donde $C_k \in \mathbb{Z}$ y la suma es sobre todos los $p$ tales que $p-1$ divide a $k$.

También hemos demostrado las **congruencias de Kummer**: si $p$ es un número primo y $k$ un entero positivo tal que $p-1 \nmid k$, entonces


* $p$ no aparece en el denominador del número $B_k/k$.
* Para todo $k'$ tal que $k' \equiv k \pmod{p-1}$ se cumple $\frac{B_{k'}}{k'} \equiv \frac{B_k}{k} \pmod{p}$.


Usando el teorema de Clausen–von Staudt y las congruencias de Kummer, hemos demostrado que hay un número infinito de primos irregulares ($p$ es irregular si y solamente si $p$ divide al numerador de algún número de Bernoulli $B_{2k}$ para $2k \le p-3$).

## El examen final

<a href="ejercicios-bernoulli.pdf" class="pdf-link">El examen consiste en 10 ejercicios</a> de 1 punto cada uno. Favor enviar las soluciones por correo electrónico.

## Referencias

El material que vamos a cubrir está en los primeros capítulos del libro

* Tsuneo Arakawa, Tomoyoshi Ibukiyama, Masanobu Kaneko,
  *Bernoulli numbers and zeta functions*,
  Springer Monographs in Mathematics, 2014.
