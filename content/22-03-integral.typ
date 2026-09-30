#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/problems-cantor-staircase.typ": staircase

=== Интеграл <sec:problems-integral>

==== Интеграл Лебега <ss:problems-lebesgue-integral>

#problem(difficulty: "core")[
  Доказать, что если $f$ и $g$ — суммируемые простые функции, то

  а) $integral_A (f(x) + g(x)) dif mu = integral_A f(x) dif mu
  + integral_A g(x) dif mu$;

  б) $integral_A alpha f(x) dif mu = alpha integral_A f(x) dif mu$
  ($alpha = upright("const")$);

  в) если $abs(f(x)) <= M$ почти всюду на $A$ и $mu(A) < infinity$, то
  $ abs(integral_A f(x) dif mu) <= M mu(A). $
] <pr:simple-integral-linearity-bound>

#problem[
  #idx("Интегральная сумма", "Лебега")
  Пусть $mu(X) < infinity$ и $f$ — суммируемая функция на $X$. Доказать, что
  интеграл Лебега $integral_X f(x) dif mu$ может быть вычислен по формуле
  $
    integral_X f(x) dif mu = lim_(lambda(T) -> 0)
    sum_k xi_k mu({x in X: t_k <= f < t_(k + 1)}),
  $ <eq:lebesgue-integral-sums>
  где $T = {t_k}$ — разбиение вещественной оси,
  $lambda(T) = sup_k abs(t_k - t_(k + 1))$ — диаметр разбиения $T$, а ${xi_k}$ —
  любой набор точек, удовлетворяющий условию $xi_k in [t_k, t_(k + 1)]$.
  Выражение @eq:lebesgue-integral-sums называется _интегральной суммой Лебега_.
] <pr:lebesgue-integral-sums>

#problem(difficulty: "hard")[
  #idx("Интегральная сумма", "Лебега")
  Доказать, что утверждение @pr:lebesgue-integral-sums остается верным в случае
  $mu(X) = infinity$, если дополнительно потребо#source(211)вать, чтобы
  $xi_k = 0$ для тех $k$, для которых отрезок $[t_k, t_(k + 1)]$ содержит точку
  $0$.
] <pr:infinite-measure-integral-sums>

#problem[
  Пусть измеримая простая функция $f$ представлена двумя способами в виде
  линейных комбинаций характеристических функций дизъюнктных множеств:
  $ f(x) = sum_k c_k chi_(A_k) (x) = sum_l d_l chi_(B_l) (x). $
  Доказать, что $sum_k c_k mu(A_k) = sum_l d_l mu(B_l)$ в случае, если один из
  этих рядов абсолютно сходится.
] <pr:simple-integral-representation-independence>

#problem[
  Пусть $f_n$ — простая функция на $[0, 1]$, определенная формулой
  $f_n (x) = 1 / n [n x]$, где $[x]$ означает целую часть числа $x$. Доказать,
  что последовательность ${f_n}$ фундаментальна и не имеет предела в
  пространстве $S[0, 1]$ простых суммируемых функций с расстоянием
  $d_1 (f, g) = integral_0^1 abs(f - g) dif x$.
] <pr:simple-function-space-incomplete>

#problem[
  При каких значениях параметров $alpha$ и $beta$ функция
  $f(x) = x^alpha sin x^beta$, определенная на полуинтервале $(0, 1]$, а)
  интегрируема по Лебегу, б) несобственно интегрируема по Риману?
] <pr:oscillatory-power-integrability>

#problem(difficulty: "core")[
  Доказать, что интеграл от неотрицательной суммируемой функции $f$ по множеству
  $A$

  а) неотрицателен,

  б) равен нулю только тогда, когда $f(x) = 0$ почти всюду на $A$.
] <pr:nonnegative-integral-zero-criterion>

#problem[
  Пусть $phi$ — монотонно возрастающая гладкая функция на отрезке $[a, b]$,
  $psi$ — обратная к ней функция на отрезке $[phi(a), phi(b)]$. Рассматривая
  интеграл как предел суммы Лебега, доказать тождество
  $ integral_a^b phi(x) dif x = integral_(phi(a))^(phi(b)) y psi'(y) dif y. $
] <pr:monotone-substitution-integral>

#problem[
  Доказать, что интеграл Лебега от неотрицательной функции $f(x)$ по отрезку
  $[a, b]$ совпадает с мерой Лебега множества $E$ на плоскости, заданного
  неравенствами $a <= x <= b$, $0 <= y <= f(x)$.
] <pr:integral-subgraph-area>

#problem[
  Доказать, что неотрицательная измеримая функция $f$ суммируема на $A$ тогда и
  только тогда, когда для всех простых функций $g$, не превосходящих по модулю
  $f$, #source(212)интегралы $integral_A g(x) dif mu(x)$ ограничены одной и той
  же константой.
] <pr:integrability-simple-minorants>

#problem[
  Положим для любой вещественной функции $f$:
  $f_+ (x) = (f(x) + abs(f(x))) / 2$, $f_- (x) = (abs(f(x)) - f(x)) / 2$.
  Доказать, что функция $f$ суммируема тогда и только тогда, когда суммируемы
  функции $f_+$ и $f_-$.
] <pr:integrability-positive-negative-parts>

#problem[
  Доказать, что измеримая неотрицательная функция $f$ суммируема тогда и только
  тогда, когда $sup integral_A f(x) dif mu(x) < infinity$, где верхняя грань
  берется по всем множествам $A$ конечной меры, на которых функция $f$
  ограничена сверху.
] <pr:integrability-finite-measure-restrictions>

#problem[
  Пусть $mu(X) < infinity$. Доказать, что неотрицательная измеримая функция $f$
  на $X$ суммируема тогда и только тогда, когда сходится ряд
  $ sum_(n = 0)^infinity 2^n mu{x in X: f(x) >= 2^n}. $
] <pr:integrability-dyadic-large-levels>

#problem[
  Доказать, что неотрицательная ограниченная функция на множестве $X$
  бесконечной меры суммируема тогда и только тогда, когда сходится ряд
  $ sum_(n = 0)^infinity 1 / 2^n mu({x in X: f(x) > 1 / 2^n}). $
] <pr:integrability-dyadic-small-levels>

#problem(difficulty: "hard")[
  Доказать, что функция на отрезке $[a, b]$ интегрируема по Риману тогда и
  только тогда, когда она ограничена и почти всюду непрерывна.
] <pr:riemann-integrability-discontinuity-criterion>

#problem(difficulty: "hard")[
  Доказать, что интеграл Лебега от функции
  $ f(x_1, dots, x_n) = exp{-sum a_(i j) x_i x_j} $
  конечен тогда и только тогда, когда симметричная матрица $A = norm(a_(i j))$
  положительно определена. Доказать, что интеграл в этом случае равен
  $det(pi dot A^(-1))^(1 / 2)$.
] <pr:gaussian-quadratic-integral>

#problem(difficulty: "hard")[
  Вычислить интеграл по мере Винера на $C[0, 1]$ от функции
  $ F(x) = exp{-a x^2 (0) - b^2 integral_0^1 x^2 (t) dif t}. $
] <pr:wiener-quadratic-exponential-integral>

#problem(difficulty: "very-hard")[
  Обозначим через $C_0 [0, 1]$ пространство непрерывных функций $x(t)$ на
  отрезке $[0, 1]$ с дополнительным условием $x(0) = 0$. Доказать, что
  пространство $C[0, 1]$ #source(213)можно так отождествить с произведением
  $RR times C_0 [0, 1]$, что мера Винера $mu$ перейдет в $mu_1 times mu_0$, где
  $mu_1$ — обычная мера Лебега на $RR$, а $mu_0$ — некоторая мера на
  $C_0 [0, 1]$.
] <pr:wiener-measure-initial-value-product>

#problem(difficulty: "very-hard")[
  Пусть $mu_0$ — мера, построенная в @pr:wiener-measure-initial-value-product.
  Вычислить интегралы:

  а) $integral_(C_0 [0, 1]) dif mu_0 (x)$;

  б) $integral_(C_0 [0, 1]) [integral_0^1 x(t) dif t] dif mu_0 (x)$;

  в) $integral_(C_0 [0, 1]) [integral_0^1 x^2 (t) dif t] dif mu_0 (x)$.
] <pr:pinned-wiener-integral-moments>

==== Функции ограниченной вариации и интеграл Лебега — Стилтьеса
<ss:problems-stieltjes-integral>

#problem(difficulty: "core")[
  Установить следующие свойства полной вариации:

  а) для любого постоянного $alpha$ и функции $f$ ограниченной вариации
  $upright("Var")_a^b (alpha f) = abs(alpha) upright("Var")_a^b (f)$;

  б) если $f$ и $g$ — функции ограниченной вариации, то $f + g$ — также функция
  ограниченной вариации, причем
  $
    upright("Var")_a^b (f + g)
    <= upright("Var")_a^b (f) + upright("Var")_a^b (g);
  $

  в) если $a < b < c$ и $f$ — функция ограниченной вариации на отрезке $[a, c]$,
  то
  $ upright("Var")_a^b (f) + upright("Var")_b^c (f) = upright("Var")_a^c (f); $

  г) если $f$ — монотонная функция, то
  $ upright("Var")_a^b (f) = abs(f(a) - f(b)). $
] <pr:total-variation-properties>

#problem[
  Доказать, что множество точек разрыва функции ограниченной вариации на отрезке
  не более чем счетно и состоит лишь из точек разрыва первого рода.
] <pr:bounded-variation-discontinuities>

#problem[
  Доказать, что функция ограниченной вариации на отрезке измерима по Лебегу.
] <pr:bounded-variation-measurability>

#problem(difficulty: "core")[
  Доказать, что функция на отрезке, обладающая ограниченной производной,
  является функцией ограниченной вариации.
] <pr:bounded-derivative-variation>

#problem(difficulty: "hard")[
  Пусть функция $f$ обладает интегрируемой по Риману производной на отрезке
  $[a, b]$. Доказать формулу
  $ upright("Var")_a^b (f) = integral_a^b abs(f'(x)) dif x. $
] <pr:variation-integral-derivative>

#source(214)
#problem[
  #idx("Функция", "Хевисайда")
  #idx("Функция", "скачков")
  Пусть $Phi$ — непрерывная слева функция ограниченной вариации на отрезке
  $[a, b]$. Доказать, что функция $Phi$ однозначно представляется в виде суммы
  $Phi = Phi_0 + Phi_1$, где $Phi_0$ — непрерывная функция ограниченной
  вариации, а $Phi_1$ — так называемая _функция скачков_:
  $Phi_1 (x) = sum_k c_k theta(x - a_k)$, где ${a_k}$ — любое конечное или
  счетное подмножество на $[a, b]$, $theta(x)$ — _функция Хевисайда_, задаваемая
  формулой $theta(x) = cases(0 & text("при") x <= 0, 1 & text("при") x > 0)$, а
  ${c_k}$ — любая числовая последовательность, удовлетворяющая условию
  $sum_k abs(c_k) < infinity$.
] <pr:bounded-variation-jump-decomposition>

#problem[
  Доказать, что

  а) произведение двух функций ограниченной вариации есть функция ограниченной
  вариации;

  б) если $f(x) >= alpha > 0$ и $f$ — функция ограниченной вариации, то и
  вариация функции $1 / f$ ограничена.
] <pr:bounded-variation-product-reciprocal>

#problem[
  Будет ли функция $phi(f)$ иметь ограниченную вариацию на отрезке $[0, 1]$,
  если функция $f$ имеет ограниченную вариацию на отрезке $[0, 1]$, а функция
  $phi$

  а) непрерывна на всей числовой оси,

  б) имеет ограниченную вариацию на всей числовой оси?
] <pr:bounded-variation-composition>

#problem[
  Пусть $E$ — подмножество отрезка $[0, 1]$, $chi$ — характеристическая функция
  множества $E$. Доказать, что $chi$ имеет ограниченную вариацию тогда и только
  тогда, когда граница $E$ — конечное множество.
] <pr:indicator-bounded-variation-boundary>

#problem(difficulty: "hard")[
  Пусть $f$ и $g$ — две непрерывные функции с ограниченной вариацией на отрезке
  $[a, b]$. Доказать, что множество ${f(x), g(x)}$, $x in [a, b]$, не может
  заполнить квадрат. Верно ли это, если отказаться от требования ограниченности
  вариации?
] <pr:bounded-variation-curve-not-space-filling>

#problem(difficulty: "core")[
  Докажите следующие свойства интеграла Римана — Стилтьеса:

  а) если $Phi$ — функция ограниченной вариации, а функция $f$ интегрируема по
  $Phi$, то
  $
    abs(integral_a^b f(x) dif Phi(x)) <= sup abs(f(x)) upright("Var")_a^b (Phi);
  $

  б) если $Phi_1$ и $Phi_2$ — функции ограниченной вариации, а функция $f$
  интегрируема по $Phi_1$ и по $Phi_2$, то она интег#source(215)рируема и по
  $Phi$, где $Phi = Phi_1 + Phi_2$, и
  $
    integral_a^b f(x) dif Phi(x) = integral_a^b f(x) dif Phi_1 (x)
    + integral_a^b f(x) dif Phi_2 (x).
  $
] <pr:stieltjes-integral-bound-additivity>

#problem[
  Пусть функция $Phi$ имеет ограниченную вариацию на отрезке $[a, b]$ и разрывна
  в точке $c in (a, b)$, а функция $f$ интегрируема по $Phi$ в смысле Римана —
  Стилтьеса. Доказать, что функция $f$ непрерывна в точке $c$.
] <pr:stieltjes-common-discontinuity-obstruction>

#problem[
  Доказать, что если $Phi$ — функция ограниченной вариации на отрезке $[a, b]$,
  отличная от нуля в конечном или счетном числе точек, лежащих внутри $(a, b)$,
  то для любой функции $f$, непрерывной на отрезке $[a, b]$,
  $ integral_a^b f(x) dif Phi(x) = 0. $
] <pr:stieltjes-countable-point-integrator>

#problem[
  Доказать, что если функция $f$ непрерывна, то интеграл Римана — Стилтьеса
  $integral_a^b f(x) dif Phi(x)$ не зависит от значений, принимаемых функцией
  $Phi$ в точках разрыва, лежащих внутри $(a, b)$.
] <pr:stieltjes-jump-values-independence>

#problem[
  #idx(
    "Формула",
    "интегрирования по частям для интеграла",
    "Римана — Стилтьеса",
  )
  Доказать формулу интегрирования по частям для интеграла Стилтьеса:
  $
    integral_a^b f(x) dif g(x) = [f(x) g(x)]_a^b
    - integral_a^b g(x) dif f(x).
  $
] <pr:stieltjes-integration-by-parts>

#problem[
  Пусть функция $f(x)$ непрерывна на отрезке $[a, b]$, а функция $g(x)$ имеет на
  $[a, b]$ всюду, кроме конечного числа точек $c_1, dots, c_k$, суммируемую по
  Риману производную $g'(x)$. Доказать, что при этих условиях существует
  интеграл Римана — Стилтьеса $integral_a^b f dif g$ и что он выражается
  формулой
  $
    integral_a^b f dif g & = integral_a^b f g' dif x + f(a)[g(a + 0) - g(a)] \
                         & quad + f(b)[g(b) - g(b - 0)] \
                         & quad + sum_(m = 1)^k f(c_m)[g(c_m + 0) - g(c_m - 0)].
  $
] <pr:stieltjes-piecewise-smooth-integrator>

#problem(difficulty: "core")[
  Пусть $mu_phi$ — мера, порожденная монотонной непрерывной функцией $phi$.
  Доказать, что интеграл Лебега #source(216)$integral_([a, b]) x dif mu_phi$
  равен интегралу Стилтьеса $integral_a^b x dif phi(x)$, и вычислить его.
] <pr:lebesgue-stieltjes-first-moment>

#problem(difficulty: "hard")[
  #idx("Индикатриса Банаха")
  Пусть $f(x)$ — непрерывная функция на отрезке $[0, 1]$. _Индикатрисой Банаха_
  $N_f (y)$ функции $f$ называется число корней уравнения $f(x) = y$ (если оно
  бесконечно, то полагаем $N_f (y) = infinity$). Доказать, что $N_f (y)$ —
  измеримая по Лебегу функция от $y$ и
  $integral_(-infinity)^infinity N_f (y) dif y
  = upright("Var")_0^1 (f)$, если хотя бы одна из частей последнего равенства
  имеет смысл.
] <pr:banach-indicatrix-variation>

#problem(difficulty: "hard")[
  #idx("Канторова лестница")
  Пусть $phi(x)$ — _канторова лестница_, т. е. непрерывная монотонная функция на
  отрезке $[0, 1]$, постоянная на каждом интервале, дополнительном к канторову
  совершенному множеству, и принимающая на интервалах $k$-го ранга значения
  $1 / 2^k$, $3 / 2^k$, $5 / 2^k$, $dots$, $(2^k - 1) / 2^k$.

  #figure(staircase())

  Вычислить интегралы:

  а) $integral_0^1 x^k dif phi(x)$;

  б) $integral_0^1 e^x dif phi(x)$;

  в) $integral_0^1 sin pi x dif phi(x)$.
] <pr:cantor-staircase-stieltjes-integrals>

==== Свойства интеграла Лебега <ss:problems-integral-properties>

#problem(difficulty: "core")[
  Доказать, что множество $L_1 (X, mu)$ является метрическим пространством
  относительно расстояния
  $ rho(f, g) = integral_X abs(f - g) dif mu. $
] <pr:integrable-functions-metric>

#source(217)
#problem(difficulty: "core")[
  Пусть последовательность $f_n in L_1 (X, mu)$ сходится равномерно к функции
  $f(x)$. Доказать, что если $mu(X) < infinity$, то $f_n -> f$ в пространстве
  $L_1 (X, mu)$. Верно ли это в случае $mu(X) = infinity$?
] <pr:uniform-convergence-implies-integral-convergence>

#problem[
  Построить последовательность функций $f_n in L_1 [0, 1]$, обладающую
  свойствами:

  а) $f_n (x) -> 0$ для всех $x in [0, 1]$;

  б) $integral_0^1 abs(f_n (x)) dif x >= c > 0$ для всех $n$;

  в) последовательность ${f_n}$ не имеет предела в $L_1 [0, 1]$.
] <pr:pointwise-zero-nonvanishing-integral>

#problem[
  Пусть $X$ — множество конечной меры $mu$. Для любых измеримых функций $f$ и
  $g$ положим
  $
    d(f, g) = integral_X frac(abs(f(x) - g(x)), 1 + abs(f(x) - g(x))) dif mu(x).
  $

  а) Доказать, что функция $d$ обладает всеми свойствами расстояния, кроме
  отделимости, и что соответствующее метрическое пространство $M[0, 1]$ состоит
  из классов эквивалентных функций.

  б) Доказать, что сходимость в пространстве $M[0, 1]$ совпадает со сходимостью
  по мере и что пространство $M[0, 1]$ полно по метрике $d(f, g)$.

  в) Доказать, что функция
  $ d_1 (f, g) = integral_X upright("arctg") abs(f(x) - g(x)) dif mu(x) $
  определяет метрику в пространстве $M[0, 1]$ и что сходимость по этой метрике
  совпадает со сходимостью по мере.
] <pr:convergence-in-measure-complete-metric>

#problem[
  Пусть ${f_n}$ — последовательность неотрицательных суммируемых функций,
  сходящаяся почти всюду к суммируемой функции $f$. Доказать, что если при
  $n -> infinity$ $integral_X f_n dif mu -> integral_X f dif mu$, то $f_n -> f$
  в смысле сходимости в пространстве $L_1 (X, mu)$.
] <pr:scheffe-integral-convergence>

#problem(difficulty: "hard")[
  Пусть $f in L_1 (X, mu)$ и $mu(X) = 1$. Доказать, что существует такая
  монотонная функция $g(t) in L_1 [0, 1]$, что для любого
  $t in [0, 1]$
  $ inf_(mu(A) = t) integral_A f(x) dif mu(x) = integral_0^t g(tau) dif tau, $
  $
    sup_(mu(A) = t) integral_A f(x) dif mu(x)
    = integral_(1 - t)^1 g(tau) dif tau.
  $
] <pr:monotone-rearrangement-integral-extrema>

#source(218)
#problem(difficulty: "very-hard")[
  Пусть $mu$ — ненулевая борелевская мера на множестве вещественных чисел,
  обладающая следующим свойством: для любого $t in RR$ мера $mu_t$, определенная
  формулой $mu_t (A) = mu(A + t)$, эквивалентна мере $mu$. (Такие меры называют
  _квазиинвариантными относительно сдвигов_.) Доказать, что мера $mu$
  эквивалентна мере Лебега.
] <pr:translation-quasiinvariant-measure>

#problem(difficulty: "hard")[
  Пусть $mu$ — мера на $X$ и $f_1$, $f_2$ — две $mu$-суммируемые вещественные
  функции на $X$. Определим заряды $nu_i = f_i mu$ формулой
  $nu_i (A) = integral_A f_i dif mu$ ($i = 1, 2$). Доказать, что $nu_1$ и $nu_2$
  эквивалентны тогда и только тогда, когда $mu(N_1 triangle N_2) = 0$, где
  $N_i = {x in X: f_i (x) != 0}$.
] <pr:density-charge-equivalence>

#problem(difficulty: "hard")[
  Пусть $mu$ — $sigma$-конечная мера на $X$, $nu$ — мера, определенная на той же
  $sigma$-алгебре и абсолютно непрерывная относительно $mu$ (т. е.
  $mu(A) = 0 => nu(A) = 0$). Доказать, что существует неотрицательная
  $mu$-измеримая функция $rho$, обладающая свойством
  $nu(A) = integral_A rho(x) dif mu(x)$ для любого измеримого множества $A$ (обе
  части равенства могут одновременно принимать значение $+infinity$).
] <pr:radon-nikodym-density>

#problem(difficulty: "hard")[
  Доказать, что на вещественной прямой $RR$ не существует измеримого по Лебегу
  множества $A$, обладающего свойством: для любого интервала
  $Delta$
  $ mu(A inter Delta) = 1 / 2 mu(Delta). $
] <pr:no-uniform-half-density-set>

#problem(difficulty: "very-hard")[
  Пусть $f in L_1 [a, b]$. Доказать, что функция
  $F(x) = integral_a^x f(x) dif mu(x)$ почти всюду дифференцируема и
  $F'(x) = f(x)$ для почти всех $x in [a, b]$.
] <pr:indefinite-integral-derivative>

#problem(difficulty: "very-hard")[
  #idx("Функция", "абсолютно непрерывная")
  Вещественная функция $F$ на отрезке $[a, b]$ называется _абсолютно
  непрерывной_, если для любого $epsilon > 0$ существует такое $delta > 0$, что
  для любого семейства интервалов ${Delta_i}$, $Delta_i = (a_i, b_i)$
  ($1 <= i <= n$) с суммой длин $< delta$ справедлива оценка
  $sum_(i = 1)^n abs(F(a_i) - F(b_i)) < epsilon$. Доказать, что

  а) абсолютно непрерывная функция $F$ почти всюду дифференцируема;

  б) производная $f(x) = F'(x)$ суммируема на отрезке $[a, b]$;

  в) справедлива формула Ньютона — Лейбница
  $ F(b) - F(a) = integral_a^b f(x) dif mu(x). $
] <pr:absolute-continuity-fundamental-theorem>

#source(219)
#problem(difficulty: "core")[
  Доказать, что следующие множества плотны в пространстве $L_1 [0, 1]$:

  а) множество $S(0, 1)$ кусочно-постоянных функций с конечным числом точек
  разрыва;

  б) множество непрерывных кусочно-линейных функций с конечным числом точек
  излома;

  в) множество многочленов $P(x) = sum_(k = 0)^N a_k x^k$;

  г) множество тригонометрических многочленов
  $ T(x) = sum_(k = -N)^N c_k e^(2 pi i k x). $
] <pr:integrable-functions-dense-approximants>

#problem[
  Доказать, что в пространстве $L_1 (RR)$ плотны следующие множества:

  а) кусочно-постоянных финитных функций;

  б) непрерывных финитных функций;

  в) #difficulty("hard") множество функций вида $P(x) e^(-x^2)$, где $P$ —
  многочлен.
] <pr:real-line-integrable-dense-approximants>

#problem[
  Пусть $f in L_1 (RR)$. Доказать, что
  $integral_RR abs(f(x + epsilon) - f(x)) dif x -> 0$ при $epsilon -> 0$.
  Другими словами, сдвиг является непрерывной операцией в $L_1 (RR)$.
] <pr:integrable-translation-continuity>

#problem[
  #idx("Свертка", "функций на группе")
  _Сверткой_ функций $f_1$ и $f_2$ на прямой называется функция $f$, задаваемая
  формулой
  $ f(x) = integral_(-infinity)^infinity f_1 (t) f_2 (x - t) dif t. $

  а) Доказать, что если $f_1$ и $f_2$ принадлежат $L_1 (RR)$, то подынтегральная
  функция суммируема для почти всех $x$ и свертка $f$ также принадлежит
  пространству $L_1 (RR)$.

  б) Доказать, что если одна из функций $f_1$ или $f_2$ ограничена, то свертка
  $f$ непрерывна.
] <pr:integrable-convolution-continuity>
