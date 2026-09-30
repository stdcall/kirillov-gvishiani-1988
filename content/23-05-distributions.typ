#import "main-defs.typ": *
#import "statements.typ": *

#problem[
  а) Пусть $f in cal(D)(RR^n)$. Доказать, что для любого $y in RR^n$
  направленность $f_t (x) = (f(x + t y) - f(x)) / t$ имеет предел в
  $cal(D)(RR^n)$ при $t -> 0$.

  #source(245)
  б) Пусть $f in cal(E)(RR^n)$. Доказать, что для любого $y in RR^n$
  направленность $f_t (x) = (f(x + t y) - f(x)) / t$ имеет предел в
  $cal(E)(RR^n)$ при $t -> 0$.
] <pr:smooth-directional-difference-quotient-limit>

#problem(difficulty: "hard")[
  Пусть ${delta_k}$ — последовательность положительных чисел, для которой
  сходится ряд $sum_(k = 1)^infinity delta_k$. Определим последовательность
  функций ${f_n}$ на прямой, полагая
  $
    f_0 (x) = upright("sgn") x, quad
    f_n (x) = 1 / delta_n integral_(x - delta_n)^x f_(n - 1) (x) dif x
  $
  при $n >= 1$. Доказать, что последовательность $f_n$ равномерно сходится к
  функции $f in cal(E)(RR)$, обладающей свойствами:

  а) $f(x) = -1$ при $x < 0$, $f(x) = +1$ при
  $x > sum_(k = 1)^infinity delta_k$;

  б) $abs(f^((n)) (x)) <= 2^n (delta_1 dots delta_n)^(-1)$ для всех $x in RR$.
] <pr:iterated-average-smooth-transition>

#problem(difficulty: "hard")[
  Пусть счетно-нормированное пространство $L$ с системой полунорм ${p_k}$
  обладает тем свойством, что всякое ограниченное по полунорме $p_(k + 1)$
  множество предкомпактно по полунорме $p_k$.

  а) Доказать, что $L$ обладает свойством Гейне — Бореля.

  в) Вывести отсюда, что пространства $cal(D)_K (Omega)$, $cal(E)(Omega)$,
  $S(RR^n)$ обладают свойством Гейне — Бореля.
] <pr:countably-normed-heine-borel-property>

#problem(difficulty: "hard")[
  Пусть $L$ — полное ЛВП, $Omega$ — область в $RR^n$. Через $cal(E)(Omega, L)$
  обозначим пространство бесконечно дифференцируемых вектор-функций в области
  $Omega$ со значениями в $L$. Если ${p_alpha}_(alpha in A)$ — набор полунорм,
  определяющий топологию в $L$, то в $cal(E)(Omega, L)$ топология определяется
  семейством полунорм $p_(K l alpha)$, где $K$ — компакт в $Omega$,
  $l = (l_1, dots, l_n)$ — мультииндекс, $alpha in A$:
  $ p_(K l alpha) (phi) = sup_(x in K) p_alpha (partial^l phi(x)). $
  Доказать, что $cal(E)(Omega, L)$ — полное ЛВП, метризуемое, если метризуемо
  $L$.
] <pr:vector-valued-smooth-function-space-completeness>

#problem(difficulty: "hard")[
  Пусть $Omega_1$ — область в $RR^m$, $Omega_2$ — область в $RR^n$,
  $Omega_1 times Omega_2 subset RR^(m + n)$ — их прямое произведение. В
  обозначениях @pr:vector-valued-smooth-function-space-completeness доказать
  изоморфизмы:
  $
    cal(E)(Omega_1, cal(E)(Omega_2)) & approx cal(E)(Omega_1 times Omega_2) \
                                     & approx cal(E)(Omega_2, cal(E)(Omega_1)).
  $
] <pr:smooth-functions-exponential-law>

#problem(difficulty: "hard")[
  Доказать изоморфизмы:
  $
    cal(E)(Omega_1) hat(times.o) cal(E)(Omega_2)
    &approx cal(E)(Omega_1 times Omega_2) \
    &approx cal(E)(Omega_1) limits(times.o)_∨ cal(E)(Omega_2).
  $
] <pr:smooth-function-tensor-products>

#source(246)
#problem(difficulty: "very-hard")[
  Сформулировать и доказать аналоги утверждений
  @pr:vector-valued-smooth-function-space-completeness–@pr:smooth-function-tensor-products
  для пространств $cal(D)(Omega)$ и $S(RR^n)$.
] <pr:test-schwartz-space-tensor-analogues>

==== Обобщенные функции <ss:problems-generalized-functions>

#problem[
  Доказать, что пространство основных функций $cal(D)(RR)$ вкладывается в
  пространство обобщенных функций $cal(D)'(RR)$.
] <pr:test-functions-embed-into-distributions>

#problem[
  Существует ли $lim_(epsilon ↘ 0) sin(x / epsilon)$ в пространстве
  $cal(D)'(RR)$?
] <pr:rapid-sine-distribution-limit>

#problem[
  Пусть две локально суммируемые функции $f$ и $g$ в области $Omega subset RR^n$
  определяют одну и ту же регулярную обобщенную функцию (т. е.
  $integral_Omega f(x) phi(x) dif x = integral_Omega g(x) phi(x) dif x$ для всех
  $phi in cal(D)(Omega)$).

  Доказать, что $f$ и $g$ совпадают почти всюду в $Omega$.
] <pr:regular-distribution-almost-everywhere-uniqueness>

#problem[
  Доказать, что $delta$-функция Дирака, определенная формулой
  $integral_(-infinity)^infinity delta(x) phi(x) dif x = phi(0)$, не является
  регулярной.
] <pr:dirac-distribution-nonregularity>

#problem[
  Обобщенные функции на $n$-мерном торе $T^n$ определяются как линейные
  непрерывные функционалы на пространстве $cal(D)(T^n)$ (см.
  @pr:smooth-torus-tensor-products). Доказать, что ряд из регулярных обобщенных
  функций $sum exp{2 pi i k t}$ (здесь $t in RR^n$,
  $k t = k_1 t_1 + dots + k_n t_n$; суммирование ведется по всем $k in ZZ^n$)
  сходится в смысле $cal(D)'(T^n)$ к обобщенной функции $delta(t)$, определенной
  равенством $integral_(T^n) delta(t) phi(t) dif t = phi(0)$.
] <pr:torus-exponential-series-dirac-distribution>

#problem[
  Доказать, что каждая обобщенная функция на торе $T^n$ (см.
  @pr:torus-exponential-series-dirac-distribution) имеет конечный порядок (т. е.
  продолжается до непрерывного линейного функционала на пространстве $C^k (T^n)$
  $k$-гладких функций на $T^n$ при некотором $k$).
] <pr:torus-distribution-finite-order>

#problem[
  Доказать, что обобщенная функция $F$ на прямой, заданная формулой
  $chevron.l F, phi chevron.r = sum_(k = 0)^infinity phi^((k)) (k)$, не имеет
  конечного порядка.
] <pr:distribution-unbounded-derivative-order>

#problem[
  #idx("Тождество", "Сохоцкого")
  Доказать _тождество Сохоцкого_
  $1 / (x plus.minus i 0) = cal(P) 1 / x minus.plus pi i delta(x)$.
] <pr:sokhotski-distribution-identity>

#problem[
  Доказать, что функции $1 / (x plus.minus i 0)$ имеют порядок $1$ в любой
  ограниченной области на прямой, содержащей $0$.
] <pr:boundary-value-distribution-first-order>

#source(247)
#problem[
  а) Пусть $L$ — ЛВП, $L'$ — сопряженное к $L$ пространство, снабженное
  $*$-слабой топологией. Доказать, что всякий линейный непрерывный функционал
  $F in (L')'$ имеет вид $F(f) = f(phi)$, где $phi in L$.

  б) Доказать, что регулярные обобщенные функции $*$-слабо плотны в
  пространствах $cal(E)'(Omega)$, $cal(D)'(Omega)$, $S'(RR^n)$.
] <pr:weak-star-dual-evaluation-regular-density>

#problem(difficulty: "hard")[
  #idx("Γ-функция")
  Пусть $phi in cal(D)(RR)$.

  а) Доказать, что функция
  $
    f_phi (lambda) = Gamma(lambda)^(-1) integral_0^infinity x^(lambda - 1)
    phi(x) dif x,
  $
  определенная при $upright("Re") lambda > 0$, допускает аналитическое
  продолжение на левую полуплоскость.

  б) Доказать, что при фиксированном $lambda in CC$ соответствие
  $phi |-> f_phi (lambda)$ является обобщенной функцией (которую обычно
  обозначают $x_+^(lambda - 1) / Gamma(lambda)$).

  в) Вычислить определенную выше обобщенную функцию для значений параметра
  $lambda = -n$ ($n = 0, 1, 2, dots$).
] <pr:normalized-positive-power-distribution-continuation>

#problem[
  #idx("Теорема", "о ядре")
  _Теорема о ядре._ Доказать, что всякое непрерывное линейное отображение
  $A: cal(D)(Omega_1) -> cal(D)'(Omega_2)$ имеет вид
  $
    chevron.l A phi_1, phi_2 chevron.r
    = integral_(Omega_1 times Omega_2) K(x, y) phi_1 (x) phi_2 (y) dif x dif y,
  $
  где $K in cal(D)'(Omega_1 times Omega_2)$.
] <pr:schwartz-distribution-kernel-theorem>

#problem[
  В условиях @pr:schwartz-distribution-kernel-theorem пусть
  $Omega_1 = Omega_2 = RR$. Найти явно обобщенную функцию $K in cal(D)'(RR^2)$,
  если отображение $A$:

  а) является естественным вложением $cal(D)(RR)$ в $cal(D)'(RR)$;

  б) имеет вид $phi |-> phi(a) delta_b$.
] <pr:identity-point-evaluation-distribution-kernels>

==== Действия над обобщенными функциями <ss:problems-distribution-operations>

#problem[
  Доказать равенства:

  а) $delta(x) times delta(y) = delta(x, y)$;

  б) $delta^((k)) (x) times delta^((i)) (y)
  = partial^(k + i) / (partial x^k partial y^i) delta(x, y)$;

  в) $partial / (partial x) (partial / (partial y) f)
  = partial / (partial y) (partial / (partial x) f)$ для $f in cal(D)'(RR^2)$;

  г) $partial / (partial x) integral_(-infinity)^infinity phi(x, y) dif y
  = integral_(-infinity)^infinity partial phi / (partial x) (x, y) dif y$,
  $phi in cal(D)(RR^2)$.
] <pr:distribution-product-derivative-identities>

#problem(difficulty: "core")[
  Доказать, что обобщенная функция $F in cal(D)'(RR)$, обладающая свойством
  $F' = 0$, есть константа.
] <pr:zero-derivative-distribution-constant>

#source(248)
#problem[
  Доказать, что все решения уравнения $x F = 0$ в обобщенных функциях
  $F in cal(D)'(RR)$ пропорциональны $delta$-функции.
] <pr:coordinate-annihilated-distribution-dirac>

#problem(difficulty: "hard")[
  Доказать, что всякая обобщенная функция на прямой с носителем в точке
  $a in RR$ имеет вид $P(dif / (dif x)) delta_a (x)$, где $P$ — многочлен.
] <pr:point-supported-distribution-derivatives>

#problem[
  Пусть $g in cal(E)(RR)$ задает взаимно-однозначное отображение прямой на себя
  и $h in cal(E)(RR)$ — обратное отображение. Выразить явно через $delta(x)$ и
  ее производные функцию $delta'(g(x))$.
] <pr:dirac-derivative-diffeomorphism-pullback>

#problem[
  #idx("Функция", "обобщенная", "однородная")
  Обобщенная функция $F$ на прямой называется _однородной_ степени
  $(lambda, epsilon)$, где $lambda in CC$, $epsilon = 0$ или $1$, если для
  любого $t != 0$ справедливо равенство
  $F(t x) = abs(t)^lambda (upright("sgn") t)^epsilon F(x)$. Доказать, что
  однородная функция степени $(lambda, epsilon)$ на прямой удовлетворяет
  дифференциальному уравнению $x F' = lambda F$.
] <pr:homogeneous-distribution-euler-equation>

#problem[
  Доказать, что для всех $lambda in CC$, $epsilon = 0, 1$ существует ровно одна
  с точностью до числового множителя однородная обобщенная функция на прямой
  степени $(lambda, epsilon)$.
] <pr:homogeneous-line-distribution-uniqueness>

#problem(difficulty: "hard")[
  Доказать, что единственными обобщенными функциями на прямой, инвариантными
  относительно сдвигов, являются константы.
] <pr:translation-invariant-distributions-constant>

#problem(difficulty: "hard")[
  Пусть $F$ — обобщенная функция на плоскости, инвариантная относительно сдвигов
  вдоль оси $O x$.

  а) Доказать, что существует такая обобщенная функция $f$ на прямой, что
  $
    chevron.l F, phi chevron.r
    = chevron.l f, integral_RR phi(x, y) dif x chevron.r.
  $

  б) Выразить $F$ в виде прямого произведения.
] <pr:one-direction-translation-invariant-distribution>

#problem(difficulty: "hard")[
  Пусть $F$ — обобщенная функция на плоскости с носителем — отрезком $[0, 1]$ на
  оси $O x$.

  а) Доказать, что существуют такое число $N$ и такие обобщенные функции на
  прямой $f_0$, $f_1$, …, $f_N$, что
  $
    chevron.l F, phi chevron.r
    = sum_(i = 0)^N chevron.l f_i,
    (partial^i phi / (partial y^i)) bar.v_(y = 0) chevron.r.
  $

  б) Сформулировать это утверждение в терминах прямого произведения обобщенных
  функций.
] <pr:segment-supported-distribution-normal-derivatives>

#problem(difficulty: "hard")[
  Доказать, что регулярная обобщенная функция $f(x) = exp{i e^x}$ принадлежит
  $S'(RR)$, а ее производная совпадает с классической производной
  $f'(x) = i e^x e^(i e^x)$ в $cal(D)'(RR)$. Показать, что эта функция не задает
  функционал на $S(RR)$ обычным интегралом Лебега для всех пробных функций.
] <pr:oscillatory-tempered-distribution-derivative>

#source(249)
#problem[
  Решить уравнение $sin x dot f(x) = 0$ в обобщенных функциях на прямой.
] <pr:sine-annihilated-distributions>

#problem(difficulty: "hard")[
  Пусть обобщенная функция $F$ в $RR^n$ удовлетворяет соотношению
  $(sum_i x_i^2 - R^2) F(x) = 0$, $R>0$, и инвариантна относительно вращений
  $RR^n$. Доказать, что
  $chevron.l F, phi chevron.r = c integral_(S_R) phi(x) dif sigma(x)$, где $c$ —
  константа, а $sigma$ — стандартный элемент объема на сфере $S_R$ радиуса $R$ в
  $RR^n$.
] <pr:rotation-invariant-sphere-supported-distribution>

#problem[
  Пусть обобщенная функция $F$ на прямой обладает свойствами:

  а) $F(x + 1) = F(x)$;

  б) $e^(2 pi i x) F(x) = F(x)$.

  Доказать, что $F(x) = c sum_(k in ZZ) delta(x - k)$.
] <pr:periodic-modulation-invariant-dirac-comb>

#problem[
  Доказать, что всякая обобщенная функция $F$ на прямой, удовлетворяющая
  уравнению $F'(x) = a(x) F(x) + b(x)$, $a, b in cal(E)(RR)$, является
  регулярной (и, значит, совпадает с обычным решением этого уравнения).
] <pr:distribution-first-order-equation-regularity>

#problem(difficulty: "very-hard")[
  Пусть $F$ — обобщенная функция в $RR^n$, у которой все частные производные
  вида $partial^k F / (partial x_i^k)$, $1 <= i <= n$; $0 <= k <= r$,
  принадлежат $L_2 (RR^n, dif x)$. Доказать, что при $r > n / 2 + l$ функция $F$
  совпадает почти всюду с функцией класса $C^l (RR^n)$.
] <pr:square-integrable-derivative-sobolev-embedding>

#problem(difficulty: "hard")[
  При каком условии на коэффициенты ${c_n}$ ряд
  $sum_(n in ZZ) c_n e^(2 pi i n x)$ сходится в $cal(D)'(RR)$?
] <pr:fourier-series-distribution-convergence>

#problem[
  Можно ли определить операцию умножения в $cal(D)'(RR)$ так, чтобы она была
  непрерывна по каждому переменному и совпадала с обычным умножением на
  регулярных функциях?
] <pr:distribution-multiplication-impossibility>
