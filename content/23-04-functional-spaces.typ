#import "main-defs.typ": *
#import "statements.typ": *

=== Функциональные пространства и обобщенные функции
<sec:problems-functional-spaces>

==== Пространства интегрируемых функций <ss:problems-integrable-function-spaces>

#problem[
  Доказать, что для любых измеримых функций на множестве $X$ с мерой $mu$
  справедливо неравенство Гельдера:
  $
    integral_X abs(f(x) g(x)) dif mu(x)
    <= (integral_X abs(f(x))^p dif mu(x))^(1 / p)
    (integral_X abs(g(x))^q dif mu(x))^(1 / q),
  $
  где числа $p$ и $q$ связаны соотношением $1 / p + 1 / q = 1$.
] <pr:holder-integral-inequality>

#problem[
  Доказать, что для любой измеримой функции $f$ на множестве $X$ с мерой $mu$
  справедливо равенство
  $
    (integral_X abs(f(x))^p dif mu(x))^(1 / p)
    = sup integral_X abs(f(x) g(x)) dif mu(x),
  $
  где верхняя грань берется по всем функциям $g(x)$, удовлетворяющим неравенству
  $integral_X abs(g(x))^q dif mu(x) <= 1$, а числа $p$ и $q$ связаны
  соотношением $1 / p + 1 / q = 1$.
] <pr:integral-norm-dual-supremum>

#problem[
  #idx("Интегральное неравенство Минковского")
  Доказать _интегральное неравенство Минковского_
  $
    (integral_X abs(f(x) + g(x))^p dif mu(x))^(1 / p)
    &<= (integral_X abs(f(x))^p dif mu(x))^(1 / p) \
    &quad + (integral_X abs(g(x))^p dif mu(x))^(1 / p)
  $
  для $1 < p < infinity$.
] <pr:minkowski-integral-inequality>

#problem[
  Пусть $mu(X)<infinity$. Говорят, что мера $mu$ на множестве $X$ имеет _счетную
  базу_, если существует такое счетное семейство ${A_n}$ #source(239)измеримых
  подмножеств в $X$, что для любого измеримого подмножества $B$ и любого
  $epsilon > 0$ найдется такое множество $A_n$, что $mu(A_n Delta B) < epsilon$.

  Доказать, что пространство $L_1 (X, mu)$ сепарабельно тогда и только тогда,
  когда $mu$ имеет счетную базу.
] <pr:measure-countable-base-separability>

#problem[
  Доказать, что пространство $L_p (X, mu)$ ($1 < p < infinity$) сепарабельно
  тогда и только тогда, когда сепарабельно $L_1 (X, mu)$.
] <pr:integrable-space-separability-equivalence>

#problem[
  Доказать, что пространство $L_infinity (X, mu)$ либо конечномерно, либо
  несепарабельно.
] <pr:essentially-bounded-space-nonseparability>

#problem[
  Пусть $mu(X) < infinity$. Доказать, что при $p >= q >= 1$ пространство
  $L_p (X, mu)$ содержится в пространстве $L_q (X, mu)$.
] <pr:finite-measure-integrable-space-inclusion>

#problem[
  Доказать, что при $p != q$ ни одно из пространств $L_p (RR, dif x)$,
  $L_q (RR, dif x)$ не содержится в другом.
] <pr:real-line-integrable-spaces-incomparable>

#problem[
  Пусть $0 < alpha <= beta < infinity$. При каких $p$ функция
  $f(x) = 1 / (x^alpha + x^beta)$ принадлежит пространству $L_p (RR_+, dif x)$
  (через $RR_+$ обозначена положительная полупрямая)?
] <pr:power-denominator-integrability-range>

#problem[
  Пусть числа $p$, $q$, $r$ связаны соотношением $1 / p + 1 / q + 1 / r = 1$,
  $f in L_p (X, mu)$, $g in L_q (X, mu)$, $h in L_r (X, mu)$. Доказать, что
  функция $f g h$ суммируема и что
  $norm(f g h)_1 <= norm(f)_p norm(g)_q norm(h)_r$.
] <pr:triple-holder-product-integrability>

#problem[
  В случае $p=q=r$ утверждение сводится к тождеству $norm(f)_r=norm(f)_p$. Пусть
  теперь $1 <= p <= r <= q <= infinity$, $p<q$. Доказать, что
  $L_p (X, mu) inter L_q (X, mu)$ содержится в $L_r (X, mu)$ и для всякой
  функции $f in L_p (X, mu) inter L_q (X, mu)$ справедливо неравенство
  $norm(f)_r <= norm(f)_p^alpha norm(f)_q^beta$, где
  $
    alpha = (r^(-1) - q^(-1)) / (p^(-1) - q^(-1)), quad
    beta = (p^(-1) - r^(-1)) / (p^(-1) - q^(-1)).
  $
] <pr:integrable-norm-interpolation>

#problem[
  Пусть $mu(X) < infinity$. Доказать, что
  $L_infinity (X, mu) subset L_p (X, mu)$ при всех $p >= 1$ и что
  $norm(f)_infinity = lim_(p -> infinity) norm(f)_p$.
] <pr:essential-supremum-limit-of-integral-norms>

#problem[
  Доказать, что в пространстве $L_p [a, b]$, $1<=p<infinity$, плотны следующие
  множества функций:

  а) множество $S[a, b]$ всех кусочно-постоянных функций;

  б) множество $C[a, b]$ всех непрерывных функций;

  в) множество $cal(P)$ всех многочленов;

  г) множество $cal(P)_0$ многочленов, равных нулю на концах отрезка.
] <pr:integrable-function-dense-subsets>

#problem[
  Найти норму функции $f(x) = x^alpha$ в тех пространствах $L_p [0, 1]$
  ($1 <= p <= infinity$), которым эта функция принадлежит.
] <pr:power-function-integral-norm>

#problem[
  Построить в $L_1 (RR, dif x)$:

  а) бесконечномерное замкнутое подпространство, состоящее из непрерывных
  функций;

  #source(240)
  б) бесконечномерное замкнутое подпространство, не содержащее ни одной
  ненулевой непрерывной функции.
] <pr:integrable-closed-subspaces-continuity>

#problem(difficulty: "hard")[
  Пусть $mu(X) < infinity$, $V subset L_1 (X, mu)$ — замкнутое бесконечномерное
  подпространство. Доказать, что $V$ не может содержаться в
  $L_infinity (X, mu)$.
] <pr:integrable-closed-subspace-unbounded-function>

#problem[
  Доказать, что множество $C_0 (RR)$ непрерывных финитных функций плотно в
  $L_p (RR, dif x)$ при $1 <= p < infinity$.
] <pr:compactly-supported-continuous-integrable-density>

#problem[
  #idx("Функция", "непрерывная в среднем")
  Доказать, что функция $f in L_p (RR, dif x)$ _непрерывна в среднем_, т. е. для
  всякого $epsilon > 0$ существует такое $delta > 0$, что при $abs(t) < delta$
  выполняется неравенство
  $ integral_(-infinity)^infinity abs(f(x + t) - f(x))^p dif x < epsilon. $
] <pr:integrable-function-translation-continuity>

#problem[
  Доказать утверждение @pr:integrable-function-translation-continuity для
  пространства $L_p (RR^n, dif x)$.
] <pr:multidimensional-integrable-translation-continuity>

#problem(difficulty: "hard")[
  Пусть $M subset L_p (RR^n, dif x)$ ($1 <= p < infinity$). Доказать, что для
  предкомпактности $M$ необходимо и достаточно, чтобы выполнялись условия:

  а) существует такая константа $c$, что $norm(f)_p <= c$ для всех $f in M$;

  б) для любого $epsilon > 0$ существует такое число $R(epsilon)$, что
  $ integral_(abs(x) > R(epsilon)) abs(f(x))^p dif x < epsilon, quad f in M; $

  в) для любого $epsilon > 0$ существует такое число $delta(epsilon) > 0$, что
  при $abs(t) < delta(epsilon)$ выполняется неравенство
  $ integral_(RR^n) abs(f(x + t) - f(x))^p dif x < epsilon. $
] <pr:integrable-function-precompactness-criterion>

#problem(difficulty: "hard")[
  Для $sigma$-конечных мер $mu$ и $nu$ доказать изоморфизм пространств
  $ L_1 (X, mu) hat(times.o) L_1 (Y, nu) approx L_1 (X times Y, mu times nu). $
] <pr:integrable-projective-tensor-product>

#problem[
  Найти крайние точки единичного шара в $L_p (X, mu)$:

  а) при $p = 1$;

  б) при $1 < p < infinity$;

  в) при $p = infinity$.
] <pr:integrable-unit-ball-extreme-points>

#problem(difficulty: "hard")[
  Доказать, что пространства $L_1 [0, 1]$ и $l_1$ не изоморфны.
] <pr:integrable-and-summable-sequence-nonisomorphism>

==== Пространства непрерывных функций <ss:problems-continuous-function-spaces>

#problem(difficulty: "core")[
  Доказать, что для любого компакта $X$ пространство $C(X)$ — банахово.
] <pr:continuous-function-space-completeness>

#source(241)
#problem[
  Доказать сепарабельность пространства $C(X)$, где $X$ — компакт, лежащий в
  $RR^n$.
] <pr:euclidean-compact-continuous-space-separability>

#problem[
  #idx("Положительный функционал")
  Назовем линейный функционал $F$ на $C(X)$ _положительным_, если $F(f) >= 0$
  для всех неотрицательных функций $f in C(X)$. Доказать, что всякий
  положительный линейный функционал $F$ непрерывен и его норма равна $F(1)$, где
  $1$ — функция, тождественно равная $1$ на $X$.
] <pr:positive-continuous-function-functional>

#problem[
  Доказать, что любой функционал $F in C'(X)$ можно записать в виде
  $F = F_1 - F_2$, где $F_1$ и $F_2$ — положительные функционалы (см.
  @pr:positive-continuous-function-functional).
] <pr:continuous-functional-positive-decomposition>

#problem[
  Пусть $X$ — метрический компакт, $F in C'(X)$ — положительный функционал (см.
  @pr:positive-continuous-function-functional). Положим для любого компакта
  $K subset X$ $mu(K) = inf_(chi_K <= phi <= 1) F(phi)$ и для борелевского
  множества $E subset X$ $mu(E) = sup_(K subset E) mu(K)$, где $K$ — компакт.
  Доказать, что $mu$ — счетно-аддитивная мера.
] <pr:positive-functional-representing-measure>

#problem[
  #idx("Теорема", "Хелли")
  _Первая теорема Хелли._ Доказать, что последовательность функционалов
  $F_n (f) = integral_0^1 f(x) dif g_n (x)$, где $g_n in V[0, 1]$, имеет
  $*$-слабым пределом функционал $F(f) = integral_0^1 f(x) dif g(x)$, где
  $g in V[0, 1]$, если $g_n (x) -> g(x)$ в каждой точке отрезка $[0, 1]$ и
  вариации всех функций $g_n$ ограничены в совокупности.
] <pr:helly-stieltjes-functional-convergence>

#problem(difficulty: "hard")[
  #idx("Теорема", "Хелли")
  _Вторая теорема Хелли._ Пусть $M subset V[0, 1]$. Доказать, что если все
  функции из $M$ имеют ограниченную в совокупности вариацию, то $M$ содержит
  подпоследовательность ${g_n (x)}$, сходящуюся в каждой точке отрезка $[0, 1]$.
] <pr:helly-bounded-variation-subsequence>

#problem[
  Пусть $cal(P)$ — подпространство многочленов в $C[0, 1]$. Какие из следующих
  линейных функционалов на $cal(P)$ допускают непрерывное продолжение на
  $C[0, 1]$ (через $p$ обозначается многочлен $sum_(k = 0)^(deg p) a_k x^k$):

  а) $F_1 (p) = a_0$;

  б) $F_2 (p) = sum_(k = 0)^(deg p) a_k$;

  в) $F_3 (p) = sum_(k = 0)^(deg p) (-1)^k a_k$;

  #source(242)
  г) $F_4 (p) = sum_(k = 0)^N c_k a_k$, где ${c_k}$ — фиксированный вектор из
  $RR^N$?
] <pr:polynomial-coefficient-functional-extension>

#problem[
  Пусть $X$ — связный компакт. Доказать, что единичный шар в пространстве $C(X)$
  имеет всего две крайние точки.
] <pr:connected-compact-continuous-ball-extreme-points>

#problem(difficulty: "hard")[
  Доказать, что крайними точками в единичном шаре пространства $C'(X)$ являются
  точечные заряды $plus.minus mu_x$, $x in X$, определенные формулой
  $chevron.l mu_x, f chevron.r = f(x)$.
] <pr:continuous-dual-ball-point-charge-extremes>

#problem(difficulty: "very-hard")[
  #idx("Теорема", "Стоуна — Вейерштрасса")
  _Теорема Стоуна — Вейерштрасса._ Пусть $X$ — метрический компакт,
  $A subset C(X)$ — замкнутая подалгебра в $C(X)$, разделяющая точки (т. е. для
  любых двух различных точек $x_1$ и $x_2$ из $X$ существует такая функция
  $phi in A$, что $phi(x_1) != phi(x_2)$) и содержащая функцию, тождественно
  равную $1$.

  а) Доказать, что $A = C(X)$.

  б) Верно ли утверждение для алгебр, не содержащих единицу?
] <pr:stone-weierstrass-approximation>

#problem(difficulty: "hard")[
  Пусть $X$ — непустой линейно связный и локально связный метрический компакт.
  Построить непрерывное отображение отрезка $[0, 1]$ на $X$.
] <pr:path-connected-compact-interval-surjection>

#problem[
  Построить непрерывное отображение отрезка $[0, 1]$ на единичный квадрат.
] <pr:space-filling-square-curve>

#problem[
  Построить изометрическое вложение $l_p (2, RR)$ в $C[0, 1]$ с помощью
  непрерывного отображения отрезка $[0, 1]$ на единичную сферу пространства
  $l_p (2, RR)$.
] <pr:plane-integral-norm-continuous-space-isometry>

#problem[
  Доказать изоморфизм пространств $C[0, 1] limits(times.o)_∨ C[0, 1]$ и
  $C(square.stroked)$, где $square.stroked$ — единичный квадрат в $RR^2$.
] <pr:continuous-square-injective-tensor-product>

#problem(difficulty: "hard")[
  Доказать, что для любых компактов $X$ и $Y$ в $RR^n$ имеет место изоморфизм
  $C(X) limits(times.o)_∨ C(Y) approx C(X times Y)$.
] <pr:continuous-product-injective-tensor-isomorphism>

#problem[
  Пусть $A: C(X) -> C(Y)$ — линейная сюръективная изометрия вещественных
  банаховых пространств непрерывных функций. Доказать, что $A$ имеет вид
  $(A f)(y) = a(y) times f(phi(y))$, где $a$ — непрерывная функция на $Y$,
  принимающая значения $plus.minus 1$, а $phi$ — гомеоморфизм $Y$ на $X$.
] <pr:continuous-space-isomorphism-homeomorphism>

#problem[
  Доказать, что пространство всех функций вида $f(x) + g(y)$, где
  $f, g in C[0, 1]$, замкнуто в $C(square.stroked)$, где $square.stroked$ —
  единичный квадрат в $RR^2$.
] <pr:separate-variable-continuous-closed-subspace>

#problem(difficulty: "very-hard")[
  Доказать, что пространство $C[0, 1]$ обладает _счетным топологическим базисом_
  ${f_n (x)}$, т. е. такой системой функций ${f_n (x)}$, что любая функция
  $f in C[0, 1]$ однозначно представима в виде равномерно сходящегося ряда
  $f(x) = sum_(n = 1)^infinity c_n f_n (x)$.
] <pr:continuous-interval-schauder-basis>

#source(243)
#problem(difficulty: "hard")[
  Доказать, что система функций ${e^(2 pi i n x)}$, $n in ZZ$, не является
  топологическим базисом (см. @pr:continuous-interval-schauder-basis) в
  пространстве $C P[0, 1]$ всех непрерывных функций на $[0, 1]$ с условием
  $f(0) = f(1)$.
] <pr:trigonometric-system-not-continuous-basis>

==== Пространства гладких функций <ss:problems-smooth-function-spaces>

#problem(difficulty: "hard")[
  Пусть $cal(D)(NN)$ — пространство финитных последовательностей (т. е.
  последовательностей, у которых лишь конечное число членов отлично от нуля).
  Для любой последовательности $alpha = (alpha_1, alpha_2, dots)$ положительных
  чисел определим полунорму $p_alpha$ в $cal(D)(NN)$ равенством
  $ p_alpha ({x_n}) = sum_(k = 1)^infinity alpha_k abs(x_k). $

  а) Доказать, что набор полунорм $p_alpha$ превращает $cal(D)(NN)$ в полное
  неметризуемое ЛВП.

  б) Описать сходимость в этом пространстве.

  в) Доказать, что для любой непустой области $Omega$ в $cal(D)(Omega)$ есть
  замкнутое подпространство, гомеоморфное $cal(D)(NN)$.
] <pr:finite-sequence-test-function-topology>

#problem[
  #idx("Отображение", "секвенциально непрерывное")
  #idx("Отображение", "ограниченное")
  Пусть $A$ — линейное отображение пространства $cal(D)(Omega)$ в локально
  выпуклое пространство $L$. Доказать эквивалентность следующих утверждений:

  а) $A$ — непрерывное отображение;

  б) $A$ — _ограниченное отображение_ (т. е. переводит ограниченные множества в
  ограниченные);

  в) $A$ _секвенциально непрерывно_ (т. е. из $phi_n -> 0$ при $n -> infinity$
  следует $lim_(n -> infinity) A phi_n = 0$);

  г) ограничение $A$ на любое подпространство
  $cal(D)_K (Omega) subset cal(D)(Omega)$ непрерывно.
] <pr:test-function-linear-map-continuity-equivalences>

#problem[
  Доказать, что $cal(D)_K (Omega)$ замкнуто в $cal(D)(Omega)$.
] <pr:fixed-support-test-functions-closed>

#problem[
  #idx("Разбиение единицы")
  Пусть $K$ — компакт в области $Omega subset RR^n$ и ${U_i}$ — открытое
  покрытие $K$. Доказать, что существуют такие неотрицательные функции
  $phi_i in cal(D)(Omega)$ ($i = 1, dots, N$), что выполняются условия:

  1. $upright("supp") phi_i subset U_i$ для всех $i$;
  2. $sum_(i = 1)^N phi_i (x) = 1$ для $x in K$.

  Набор ${phi_i}$ называется _разбиением единицы_ на $K$.
] <pr:smooth-partition-of-unity>

#problem[
  Доказать, что $cal(D)(Omega)$ плотно в $cal(E)(Omega)$ для любой области
  $Omega subset RR^n$.
] <pr:test-functions-dense-in-smooth-functions>

#problem(difficulty: "hard")[
  Доказать, что любое замкнутое подмножество в $RR^n$ является множеством нулей
  некоторой функции $f in cal(E)(RR^n)$.
] <pr:closed-set-smooth-zero-locus>

#source(244)
#problem(difficulty: "hard")[
  Пусть ${c_n}$ — любая числовая последовательность. Существует ли функция
  $f in cal(D)(RR)$, для которой $f^((n)) (0) = c_n$ ($n = 0, 1, 2, dots$).
] <pr:test-function-arbitrary-derivative-jet>

#problem[
  Доказать, что операции дифференцирования $partial / (partial x_i)$ и умножения
  на независимую переменную $x_i$ являются непрерывными операторами в
  пространствах $cal(D)(RR^n)$, $S(RR^n)$, $cal(E)(RR^n)$.
] <pr:smooth-space-differentiation-coordinate-continuity>

#problem[
  Доказать, что если $f in cal(D)(Omega)$, $g in cal(E)(Omega)$, то
  $f g in cal(D)(Omega)$. Является ли билинейное отображение $(f; g) |-> f g$ из
  $cal(D)(Omega) times cal(E)(Omega)$ в $cal(D)(Omega)$:

  а) непрерывным по каждому переменному;

  б) непрерывным по совокупности переменных;

  в) секвенциально непрерывным по совокупности переменных (т. е. из $f_n -> f$ в
  $cal(D)(Omega)$, $g_n -> g$ в $cal(E)(Omega)$ следует $f_n g_n -> f g$ в
  $cal(D)(Omega)$)?
] <pr:test-smooth-function-product-continuity>

#problem[
  Пусть $f$ — ограниченная бесконечно дифференцируемая функция на прямой. Будет
  ли умножение на $f$ непрерывным оператором:

  а) в $cal(D)(RR)$,

  б) в $S(RR)$,

  в) в $cal(E)(RR)$,

  г) из $cal(D)(RR)$ в $S(RR)$,

  д) из $cal(D)(RR)$ в $cal(E)(RR)$,

  е) из $S(RR)$ в $cal(E)(RR)$?
] <pr:bounded-smooth-function-multipliers>

#problem[
  Обозначим через $G(RR^2)$ подпространство в $cal(E)(RR^2)$, состоящее из
  функций $g$, обладающих свойством:
  $ g(x + m, y + n) = e^(2 pi i m y) g(x, y), quad m, n in ZZ. $
  Доказать, что оператор $A$, действующий по формуле
  $ A f(x, y) = sum_(k in ZZ) f(x + k) e^(-2 pi i k y), $
  переводит $S(RR)$ в $G(RR^2)$.
] <pr:schwartz-zak-transform-quasiperiodicity>

#problem(difficulty: "very-hard")[
  Пространство $cal(D)(bold(T)^n)$ бесконечно дифференцируемых функций на
  $n$-мерном _торе_ $bold(T)^n approx RR^n / ZZ^n$ определяется как совокупность
  тех функций $phi$ на $bold(T)^n$, для которых соответствующие функции на
  $RR^n$ $Phi(t_1, dots, t_n) = phi(
    e^(2 pi i t_1), dots,
    e^(2 pi i t_n)
  )$ принадлежат $cal(E)(RR^n)$. Доказать изоморфизмы:
  $
    cal(D)(bold(T)^m) hat(times.o) cal(D)(bold(T)^n)
    &approx cal(D)(bold(T)^m) limits(times.o)_∨ cal(D)(bold(T)^n) \
    &approx cal(D)(bold(T)^(m + n)).
  $
] <pr:smooth-torus-tensor-products>
