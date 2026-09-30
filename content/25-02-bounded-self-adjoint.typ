#import "main-defs.typ": *
#import "statements.typ": *

==== Функции ограниченных самосопряженных операторов
<ss:problems-bounded-self-adjoint-calculus>

#problem(difficulty: "core")[
  Пусть $A$ — оператор умножения на непрерывную вещественную функцию $a(x)$ в
  пространстве $L_2 (0, 1)$. Доказать, что $A$ — самосопряженный оператор, и
  найти $sigma(A)$.
] <pr:continuous-real-multiplier-spectrum>

#problem(difficulty: "core")[
  Найти спектр оператора $A$, действующего в $L_2 (0, 1)$ по формуле
  $A f(x) = a(x) f(x)$, где $a in L_infinity (0, 1)$.
] <pr:bounded-measurable-multiplier-spectrum>

#problem(difficulty: "core")[
  Пусть $f in L_1 (RR, dif x)$. Найти спектр оператора свертки $S(f)$ в
  пространстве $L_2 (RR, dif x)$.
] <pr:line-convolution-operator-spectrum>

#source(274)
#problem(difficulty: "core")[
  Пусть $f in L_1 (bold(T), dif t)$. Найти спектр оператора $S(f)$ свертки с $f$
  в пространстве $L_2 (bold(T), dif t)$.
] <pr:circle-convolution-operator-spectrum>

#problem(difficulty: "core")[
  Доказать, что спектр унитарного оператора $U$ лежит на единичной окружности.
] <pr:unitary-operator-spectrum-unit-circle>

#problem[
  Пусть $A$ — самосопряженный оператор. Доказать унитарность оператора
  $(A + lambda 1) (A + overline(lambda) 1)^(-1)$ для невещественных $lambda$.
] <pr:self-adjoint-cayley-transform-unitarity>

#problem[
  Известно, что оператор $(A - i 1)$ обратим, а оператор
  $(A + i 1) (A - i 1)^(-1)$ унитарен. Доказать, что $A$ самосопряжен.
] <pr:cayley-transform-unitarity-self-adjoint-criterion>

#problem[
  Известно, что оператор $U$ унитарен, а $U - 1$ обратим. Доказать, что оператор
  $A = i (U + 1) (U - 1)^(-1)$ самосопряжен.
] <pr:inverse-cayley-transform-self-adjointness>

#problem[
  #idx("Оператор", "Вольтерра")
  Вычислить спектральный радиус _оператора Вольтерра_ $A$ в $L_2 (0, 1)$,
  задаваемого формулой
  $ A f(x) = integral_0^x f(t) dif t. $
] <pr:volterra-operator-spectral-radius>

#problem[
  Вычислить явно резольвенту оператора Вольтерра (из задачи
  @pr:volterra-operator-spectral-radius).
] <pr:volterra-operator-explicit-resolvent>

#problem[
  #idx("Оператор", "положительный")
  Оператор $A$ в гильбертовом пространстве $H$ называется _положительным_, если
  $(A x, x) >= 0$ для всех $x in H$, $x != 0$. Мы будем писать в этом случае
  $A gt.double 0$. Доказать, что для положительного оператора $A$ справедлива
  формула
  $ norm(A) = sup_(x != 0) ((A x, x)) / ((x, x)). $
] <pr:positive-operator-basic-properties>

#problem(difficulty: "hard")[
  Пусть $A$ — самосопряженный оператор, удовлетворяющий условию
  $a dot 1 lt.double A lt.double b dot 1$, а многочлен $p(x)$ неотрицателен на
  отрезке $[a, b]$. Доказать, что $p(A) gt.double 0$.
] <pr:positive-polynomial-self-adjoint-functional-calculus>

#problem[
  Доказать, что отображение $p mapsto p(A)$ непрерывно относительно нормы
  $C[a, b]$, если $a dot 1 lt.double A lt.double b dot 1$.
] <pr:polynomial-functional-calculus-sup-norm-continuity>

#problem[
  Пусть $A$ — ограниченный самосопряженный оператор. Доказать, что оператор
  $U(t) = e^(i t A)$ при всех $t in RR$ является унитарным оператором и что
  справедливы равенства $U(t) U(s) = U(t + s)$, $U(t)^* = U(-t)$.
] <pr:bounded-self-adjoint-exponential-unitary-group>

#problem[
  Доказать, что в условиях задачи
  @pr:bounded-self-adjoint-exponential-unitary-group операторная функция $U(t)$
  дифференцируема и $U'(t) = i A U(t) = i U(t) A$.
] <pr:bounded-unitary-group-exponential-derivative>

#problem(difficulty: "hard")[
  Доказать, что всякая непрерывная в топологии нормы операторная функция $U(t)$,
  удовлетворяющая функциональным уравнениям $U(t) U(s) = U(t + s)$,
  $U(t)^* = U(-t)$, $U(0)=1$, имеет вид, указанный в задаче
  @pr:bounded-self-adjoint-exponential-unitary-group.
] <pr:norm-continuous-unitary-group-bounded-generator>

#source(275)
#problem[
  Найти полярное разложение оператора $A$ умножения на функцию
  $a in L_infinity (X, mu)$ в пространстве $L_2 (X, mu)$.
] <pr:multiplication-operator-polar-decomposition>

#problem[
  Найти полярное разложение оператора одностороннего сдвига в $l_2 (CC)$:
  $T(x_n) = x_(n - 1)$.
] <pr:unilateral-shift-polar-decomposition>

#problem[
  Пусть $A$ и $B$ — перестановочные операторы, $A = R U$ — полярное разложение
  $A$.

  а) Доказать, что $R$ и $U$ перестановочны с $B$, если $B$ — унитарный
  оператор.

  б) Верно ли это в общем случае?
] <pr:polar-decomposition-unitary-commutant>

#problem[
  Пусть $A gt.double B gt.double 0$ и $B$ обратим. Доказать, что $A$ обратим и
  $A^(-1) lt.double B^(-1)$.
] <pr:positive-operator-inverse-order-reversal>

#problem(difficulty: "hard")[
  Пусть $T$ — оператор сдвига в $l_2 (ZZ)$ ($T {x_n} = {x_(n + 1)}$). Доказать,
  что существует единственный самосопряженный оператор $A$, обладающий
  свойствами:

  + $T = e^(i A)$;
  + $norm(A) <= pi$.
] <pr:bilateral-shift-bounded-self-adjoint-logarithm>

#problem[
  Пусть $H_1$ и $H_2$ — подпространства в $H$, $P_1$ и $P_2$ — соответствующие
  им ортопроекторы. Доказать, что сильный предел $lim_(n -> infinity)
  (P_1 P_2)^n$ существует и равен ортопроектору на $H_1 inter H_2$.
] <pr:alternating-orthogonal-projection-limit>

#problem[
  Пусть $A$ — оператор в $L_2 ([0, infinity), dif x)$, заданный формулой
  $A f(x) = integral_0^infinity f(y) / (x + y) dif y$. Доказать, что $A$
  перестановочен с операторами растяжения $L(a): f(x) mapsto f(a x)$.
] <pr:carleman-operator-dilation-commutation>
