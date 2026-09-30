#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/problems-triangles.typ": triangle

== Преобразование Фурье и элементы гармонического анализа
<ch:problems-fourier-harmonic-analysis>

=== Свертки на коммутативной группе
<sec:problems-commutative-group-convolutions>

==== Свертки основных функций <ss:problems-basic-function-convolutions>

#problem[
  Пусть $G$ — конечная группа, $K$ — некоторое поле.

  а) Доказать, что центр $K[G]$ состоит из функций $a in K[G]$, обладающих
  свойством $a(g h) = a(h g)$ для любых $h, g in G$.

  б) Классом сопряженных элементов в $G$ называется множество вида
  $C_h = {g h g^(-1), g in G}$. Доказать, что число различных классов
  сопряженных элементов в $G$ равно размерности центра $K(G)$.

  в) Известно, что алгебра $K(G)$ коммутативна. Верно ли, что коммутативна
  группа $G$?
] <pr:finite-group-algebra-center-conjugacy-classes>

#problem[
  Пусть $upright("Ц")_n$ означает циклическую группу порядка $n$.

  а) Доказать, что $CC(upright("Ц")_n)$ изоморфна прямой сумме $n$ экземпляров
  поля $CC$.

  б) Верно ли аналогичное утверждение для поля $RR$?
] <pr:cyclic-group-algebra-decomposition>

#problem[
  Доказать изоморфизм $RR(S_3)$ и $RR + RR + upright("Mat")_2 RR$.
] <pr:symmetric-group-real-algebra-decomposition>

#problem[
  Доказать, что естественное вложение $G$ в $K(G)$ является универсальным
  объектом для категории отображений $phi$ группы $G$ в ассоциативные
  $K$-алгебры с единицей, обладающих свойствами
  $phi(g_1 g_2) = phi(g_1) phi(g_2)$, $phi(1) = 1$ (морфизм объекта
  $phi: G -> A$ в объект $psi: G -> B$ определен как гомоморфизм $chi: A -> B$
  такой, что диаграмма

  #figure(triangle($G$, $A$, $B$, $phi$, $psi$, $chi$))

  коммутативна). Останется ли утверждение в силе, если отказаться от условия
  $phi(1) = 1$?
] <pr:group-algebra-universal-object>

#source(258)
#problem[
  Пусть $G = RR^n$ или $bold(T)^n$. Доказать, что свертка двух ограниченных
  функций из $L_1 (G, mu)$ является непрерывной функцией.
] <pr:bounded-integrable-convolution-continuity>

#problem[
  Пусть функция $phi$ в $RR^n$ финитна и $k$ раз непрерывно дифференцируема, а
  функция $f$ принадлежит $L_1 (RR^n, dif x)$. Доказать, что свертка $phi * f$
  имеет непрерывные производные до $k$-го порядка.
] <pr:compact-smooth-convolution-differentiability>

#problem[
  Пусть $L$ — некоторое банахово пространство функций на группе $G$ с нормой
  $norm(dot.op)_L$, обладающей свойствами:

  1. $norm(T(a) f)_L = norm(f)_L$, где $T(a)$ — оператор сдвига:
    $T(a) f(x) = f(x + a)$;
  2. $norm(T(a) f - f)_L -> 0$ при $a -> 0$ в $G$.

  Доказать, что оператор $S(phi)$, $phi in L_1 (G, mu)$, переводит пространство
  $L$ в себя и имеет в этом пространстве норму, не превосходящую
  $norm(phi)_(L_1)$.
] <pr:translation-invariant-space-convolution-bound>

#problem[
  #idx("Последовательность", "δ-образная")
  Говорят, что последовательность функций ${f_k}$ на топологическом пространстве
  $X$ с борелевской мерой $mu$ является _дельтообразной_ для точки $a in X$,
  если выполняются условия:

  1. $f_k (x) >= 0$ на $X$;
  2. $integral_X f_k (x) dif mu(x) = 1$;
  3. для любой окрестности $U$ точки $a$ при $k -> infinity$
    $integral_(X without U) f_k (x) dif mu(x) -> 0$.

  Доказать, что следующие последовательности дельтообразны для точки
  $0 in RR^n$:

  а)#difficulty("hard") $f_n (x) = k^n phi(k x)$, где $phi$ — любая борелевская
  функция на $RR^n$, обладающая свойствами 1), 2);

  б) $f_n (x) = cases(
    c_k (1 - norm(x)^2)^k & norm(x) <= 1,
    0 & norm(x) > 1,
  )$,

  где ${c_k}$ — подходящая последовательность констант.
] <pr:delta-like-sequence-constructions>

#problem[
  Пусть $G$ — коммутативная топологическая группа с инвариантной мерой $mu$,
  ${f_k}$ — дельтообразная последовательность для точки $a in G$ (см.
  @pr:delta-like-sequence-constructions), $L$ — банахово пространство функций на
  $G$, удовлетворяющее условиям
  @pr:translation-invariant-space-convolution-bound.

  Доказать, что $S(f_k) -> T(-a)$ при $k -> infinity$.
] <pr:delta-like-convolution-translation-limit>

#problem[
  Пусть функция $phi$ на $RR^n$ внутри шара радиуса $R$ совпадает с некоторым
  многочленом, а вне этого шара равна нулю; функция $psi in L_1 (RR^n, dif x)$
  имеет носитель в шаре радиуса $r < R$.

  #source(259)
  Доказать, что свертка $phi * psi$ имеет носитель в шаре радиуса $R + r$ и
  совпадает с некоторым многочленом в шаре радиуса $R - r$. (Все шары имеют
  центром точку $0$.)
] <pr:polynomial-cutoff-convolution-support>

#problem[
  _Теорема Вейерштрасса._ Доказать, что всякая непрерывная функция в $RR^n$
  может быть на любом компакте равномерно аппроксимирована многочленом.
] <pr:multidimensional-weierstrass-polynomial-approximation>

#problem[
  Пусть $f in L_1 (G, mu)$. Доказать, что $S(f)$ — ограниченный оператор в
  гильбертовом пространстве $L_2 (G, mu)$. Вычислить сопряженный оператор
  $S(f)^*$.
] <pr:integrable-convolution-hilbert-adjoint>

#problem[
  Пусть $f_1$ и $f_2$ принадлежат $L_2 (G, mu)$. Доказать, что свертка
  $f_1 * f_2$ определена и принадлежит $L_infinity (G, mu)$.
] <pr:square-integrable-convolution-boundedness>

#problem[
  Определим операцию $*$ в пространстве функций на группе $G$ равенством
  $f^* (x) = overline(f(-x))$.

  Доказать, что

  а) $f_1^* * f_2^* = (f_1 * f_2)^*$ для $f_1, f_2 in L_1 (G, mu)$;

  б) $(f_1 * f_2^*)(0) = (f_1, f_2)$ для $f_1, f_2 in L_2 (G, mu)$.
] <pr:convolution-involution-inner-product>

#problem[
  Определим функцию $e_k$ на $bold(T)^n$ формулой $e_k (t) = e^(2 pi i k t)$
  (здесь $k in ZZ^n$ — мультииндекс, $k t = k_1 t_1 + dots + k_n t_n$).

  Доказать тождества
  $ e_k * e_k = e_k, quad e_k * e_j = 0 "при" k != j. $
] <pr:torus-character-convolution-idempotents>

#problem[
  #idx("Тригонометрический многочлен")
  _Тригонометрическим многочленом_ на $bold(T)^n$ называется линейная комбинация
  функций $e_k$, определенных в @pr:torus-character-convolution-idempotents.
  Доказать, что совокупность тригонометрических многочленов образует идеал в
  алгебре $L_1 (bold(T)^n, dif t)$.
] <pr:trigonometric-polynomials-convolution-ideal>

#problem(difficulty: "hard")[
  Построить на торе $bold(T)^n$ дельтообразную последовательность, состоящую из
  тригонометрических многочленов.
] <pr:torus-trigonometric-approximate-identity>

#problem[
  Доказать, что тригонометрические многочлены образуют плотное множество в
  $C^k (bold(T)^n)$ при любом $k$.
] <pr:trigonometric-smooth-function-density>

#problem(difficulty: "hard")[
  Пусть $f_1$ и $f_2$ — локально суммируемые функции, носители которых
  ограничены слева. Тогда можно определить свертку $f_1 * f_2$, которая обладает
  тем же свойством. Вычислить явно свертки:

  а) $[theta(x) x^alpha] * [theta(x) x^beta]$;

  б) $[e^(a x) theta(x)] * [e^(b x) theta(x)]$.
] <pr:half-line-power-exponential-convolutions>

#problem(difficulty: "very-hard")[
  Пусть числа $p >= 1$, $q >= 1$, $r >= 1$ связаны равенством
  $1 / p + 1 / q - 1 / r = 1$. Доказать, что
  $ L_p (G, mu) * L_q (G, mu) subset L_r (G, mu). $
] <pr:young-convolution-integrability>

#source(260)
==== Свертки обобщенных функций <ss:problems-distribution-convolutions>

#problem[
  Записать в виде свертки дифференциальный оператор с постоянными коэффициентами
  $L: f |-> sum_(k = 0)^n c_k f^((k))$.
] <pr:constant-coefficient-differential-convolution>

#problem(difficulty: "core")[
  Доказать тождество $f * 1 = chevron.l f, 1 chevron.r dot 1$ для любой
  обобщенной функции $f in cal(E)'(RR)$.
] <pr:compact-distribution-constant-convolution>

#problem[
  Положим $breve(f)(x) = f(-x)$. Доказать тождество
  $breve(f_1 * f_2) = breve(f)_1 * breve(f)_2$, где $f_1$ и $f_2$ — обобщенные
  функции, одна из которых имеет компактный носитель.
] <pr:distribution-convolution-reflection>

#problem(difficulty: "hard")[
  Пусть $f in S'(RR^n)$, $phi in S(RR^n)$. Свертка $f * phi$ определяется
  формулой $f * phi = S(breve(phi))' f$, т. е.
  $chevron.l f * phi, psi chevron.r = chevron.l f, breve(phi) * psi chevron.r$.
  Доказать, что

  а) $f * phi$ — регулярная обобщенная функция;

  б) $(f * phi)(x) = chevron.l f, T(-x) breve(phi) chevron.r$;

  в) $(f * phi)(x)$ растет на бесконечности не быстрее многочлена от $abs(x)$.
] <pr:tempered-schwartz-convolution-regularity>

#problem(difficulty: "hard")[
  Пусть $f in cal(E)'(RR^n)$, $phi in cal(E)(RR^n)$. Свертка $f * phi$
  определяется формулой $f * phi = S(breve(phi))' f$ (ср. с
  @pr:tempered-schwartz-convolution-regularity). Доказать, что:

  а) $f * phi$ — регулярная обобщенная функция;

  б) $f * phi(x) = chevron.l f, T(-x) breve(phi) chevron.r$;

  в) $f * phi in cal(E)(RR^n)$;

  г) оператор $S(f): cal(E)(RR^n) -> cal(E)(RR^n)$ непрерывен.
] <pr:compact-distribution-smooth-convolution>

#problem[
  Пусть $f in cal(D)'(RR^n)$. Доказать непрерывность оператора
  $S(f): cal(D)(RR^n) -> cal(E)(RR^n)$.
] <pr:distribution-test-convolution-continuity>

#problem[
  Пусть $cal(E)(bold(T)^n)$ — пространство бесконечно дифференцируемых функций
  на торе $bold(T)^n$ (с топологией равномерной сходимости всех производных),
  $cal(E)'(bold(T)^n)$ — сопряженное пространство обобщенных функций. Определить
  операцию свертки в $cal(E)'(bold(T)^n)$ и доказать, что
  $cal(E)'(bold(T)^n) * cal(E)(bold(T)^n) subset cal(E)(bold(T)^n)$.
] <pr:torus-distribution-smooth-convolution>

#problem[
  Доказать, что пространство тригонометрических многочленов плотно в
  $cal(E)(bold(T))$.
] <pr:trigonometric-polynomials-torus-distribution-density>

#problem[
  Доказать утверждение @pr:trigonometric-polynomials-torus-distribution-density
  для $cal(E)'(bold(T)^n)$.
] <pr:multidimensional-torus-polynomial-distribution-density>

#problem(difficulty: "hard")[
  Пусть $f_1$ и $f_2$ — финитные непрерывные функции на полупрямой
  $[0, infinity)$. Положим $F_i = f_i (sqrt(x^2 + y^2))$.

  Доказать, что свертка $F = F_1 * F_2$ также имеет вид
  $F(x, y) = f(sqrt(x^2 + y^2))$, где $f$ — некоторая финитная непрерывная
  функция на $[0, infinity)$, и дать явное выражение $f$ через $f_1$ и $f_2$.
] <pr:radial-planar-convolution-formula>

#problem(difficulty: "hard")[
  Пусть $cal(E)_(plus.minus)[RR]$ — подпространства в $cal(E)(RR)$, состоящие из
  функций с носителем, ограниченным слева или справа, $cal(D)'_(plus.minus)
  (RR)$ — аналогичные подпространства в $cal(D)'(RR)$.

  #source(261)
  а) Доказать изоморфизм $(cal(E)_(plus.minus)(RR))' = cal(D)'_(minus.plus)
  (RR)$ (сходимость $phi_n -> phi$ в $cal(E)_(plus.minus)(RR)$ определяется
  условиями: $upright("supp") phi_n$ ограничены с одной стороны общей
  константой; $phi_n -> phi$ в смысле $cal(E)(RR)$).

  б) Определить операцию свертки в $cal(D)'_(plus.minus)(RR)$.

  в) Доказать, что $cal(E)_(plus.minus)(RR) * cal(D)'_(plus.minus)(RR)
  subset cal(E)_(plus.minus)(RR)$.
] <pr:one-sided-support-distribution-convolution>

#problem(difficulty: "hard")[
  Положим при $alpha > 0$ $f_alpha (x) = 1 / Gamma(alpha) x^(alpha - 1)
  theta(x)$.

  а) Проверить, что $f_alpha in cal(D)'_+ (RR)$ при $alpha > 0$.

  б) Доказать тождество $f_alpha * f_beta = f_(alpha + beta)$.

  в) Доказать тождество $dif / (dif x) f_alpha = f_(alpha - 1)$ при $alpha > 1$.

  г) Найти предел $f_alpha$ при $alpha -> 0$ в $cal(D)'_+ (RR)$.
] <pr:normalized-half-line-power-convolution-semigroup>

#problem(difficulty: "hard")[
  #idx("Оператор", "дробного интегрирования (дифференцирования)")
  Построить в $cal(D)'_+ (RR)$ семейство операторов $I(alpha)$, $alpha in RR$,
  обладающее свойствами:

  а) $I(alpha) I(beta) = I(alpha + beta)$, $I(0) = 1$;

  б) $I(1) phi = theta * phi$ для $phi in cal(D)'_+ (RR)$; для регулярной
  локально суммируемой функции это $integral_(-infinity)^x phi(t) dif t$;

  в) $I(-1) phi(x) = phi'(x)$ для $phi in cal(D)'_+ (RR)$;

  г) $I(alpha) f_beta = f_(alpha + beta)$ при $beta > 0$, $alpha + beta > 0$
  ($f_alpha$ определены в @pr:normalized-half-line-power-convolution-semigroup).

  Оператор $I(alpha)$ называется _оператором дробного интегрирования_ порядка
  $alpha$ (или _дробного дифференцирования_ порядка $-alpha$) и обозначается
  иногда через $(dif / (dif x))^(-alpha)$.
] <pr:fractional-integration-differentiation-operators>

#problem(difficulty: "hard")[
  Пусть обобщенная функция $f$ на $RR^2$ имеет вид
  $
    chevron.l f, phi chevron.r = 1 / (2 pi) integral_0^(2 pi)
    phi(cos t, sin t) dif t.
  $
  Доказать, что $f * f$ — регулярная обобщенная функция, и вычислить ее.
] <pr:circle-measure-self-convolution>

#problem(difficulty: "hard")[
  Вычислить свертку $f * f$, где $f$ — обобщенная функция на $RR^3$, задаваемая
  формулой
  $chevron.l f, phi chevron.r = 1 / (4 pi) integral_S phi(x_1, x_2, x_3)
  dif sigma$, где $S$ — сфера $norm(x) = 1$, $dif sigma$ — элемент площади
  сферы.
] <pr:sphere-measure-self-convolution>
