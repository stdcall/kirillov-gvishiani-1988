#import "main-defs.typ": *
#import "statements.typ": *

==== Интеграл Фурье <ss:problems-fourier-integral>

#problem[
  #idx("Оператор", "рождения (уничтожения)")
  #idx("Вакуумный вектор")
  Пусть $D_k = partial / (partial x_k)$, $M_k$ — оператор умножения на $x_k$.
  Введем в пространстве $S(RR^n)$ операторы $A_k = D_k + 2 pi M_k$,
  $A_k^* = -D_k + 2 pi M_k$ ($k = 1, 2, dots, n$) (так называемые _операторы
  рождения и уничтожения_ в квантовой теории поля).

  а) Доказать, что система уравнений $A_k f = 0$ ($1 <= k <= n$) имеет в
  $S(RR^n)$ одномерное пространство решений.

  б)#difficulty("hard") Пусть $f_0 in S(RR^n)$ — базисный вектор в пространстве
  решений системы $A_k f = 0$ ($1 <= k <= n$) (так называемый _вакуумный
  вектор_). Доказать, что линейная оболочка функций
  $f_m = (A_1^*)^(m_1) dots (A_n^*)^(m_n) f_0$ ($m in ZZ_(>=0)^n$) плотна в
  $S(RR^n)$.

  #source(267)
  в) #idx("Оператор", "чисел заполнения") Положим $N_k = 1 / (4 pi) A_k^* A_k$,
  $N = sum_(k = 1)^n N_k$ (так называемые _операторы чисел заполнения и числа
  частиц_). Доказать, что функции $f_m$ ($m in ZZ_(>=0)^n$) являются
  собственными для операторов $N_k$ и $N$, и вычислить соответствующие
  собственные значения.

  г)#difficulty("hard") Нормируем $f_0$ условием $norm(f_0)_2=1$ и положим
  $psi_m = f_m / sqrt((4 pi)^(abs(m)) m!)$, где $abs(m)=sum_(k=1)^n m_k$,
  $m! = product_(k=1)^n m_k!$. Используя коэффициенты по этому нормированному
  эрмитову базису, построить изоморфизм пространства $S(RR^n)$ и пространства
  $n$-кратных последовательностей ${c_m}$ ($m in ZZ_(>=0)^n$), обладающих
  свойством $abs(c_m) = o(abs(m)^(-k))$ для всех $k in NN$.

  д) Вычислить преобразование Фурье функций $f_m$, $m in ZZ_(>=0)^n$.
  #ed-note[
    Нормировка операторов согласована с множителем $1/(4 pi)$ в $N_k$; вакуумная
    функция пропорциональна $exp(-pi norm(x)^2)$. Нормированные эрмитовы функции
    и изоморфизм с быстро убывающими последовательностями см. в § 6.4, теоремах
    6.4.2–6.4.4, с. 525–528: #cite(<Simon2015a>, form: "full").
  ]
] <pr:schwartz-creation-annihilation-hermite-basis>

#problem[
  Доказать, что всякий непрерывный оператор в пространстве $S(RR^n)$,
  перестановочный с операторами $M_k$ ($1 <= k <= n$) (см. задачу
  @pr:schwartz-creation-annihilation-hermite-basis), является оператором
  умножения на функцию.
] <pr:schwartz-coordinate-multiplication-commutant>

#problem[
  Доказать, что всякий непрерывный оператор в $S(RR^n)$, перестановочный с
  операторами $M_k$ и $D_k$ ($1 <= k <= n$) (см. задачу
  @pr:schwartz-creation-annihilation-hermite-basis), является скалярным.
] <pr:schwartz-position-derivative-scalar-commutant>

#problem[
  Доказать, что прямое и обратное преобразования Фурье сохраняют пространство
  $S(RR^n)$ и являются в нем взаимно обратными непрерывными преобразованиями.
] <pr:schwartz-fourier-transform-automorphism>

#problem(difficulty: "core")[
  Что можно сказать о преобразовании Фурье функции $f$, если известно, что
  функция $f$

  а) четна,

  б) нечетна,

  в) вещественна,

  г) удовлетворяет условию $f(x) = overline(f(-x))$?
] <pr:fourier-transform-parity-reality>

#problem[
  Функции $f$ и $g$ на $RR^n$ связаны равенством $f(x) = g(A x + b)$, где $A$ —
  линейный обратимый оператор в $RR^n$, $b in RR^n$. Как связаны преобразования
  Фурье $tilde(f)(lambda)$ и $tilde(g)(lambda)$?
] <pr:fourier-transform-affine-change-of-variables>

#problem[
  Доказать, что если $f in L_1 (RR^n, dif x)$ и $tilde(f)(lambda) = 0$, то
  $f(x) = 0$ почти всюду.
] <pr:integrable-fourier-transform-uniqueness>

#problem[
  Пространство $H_s (RR^n)$ определяется при $s >= 0$ как пространство
  преобразований Фурье всех функций из
  $L_2 (RR^n, (1 + norm(lambda)^2)^s dif lambda)$. Доказать, что при $s > n / 2$
  каждая функция $f in H_s (RR^n)$ совпадает почти всюду с некоторой непрерывной
  ограниченной функцией.
] <pr:fourier-sobolev-continuous-embedding>

#problem[
  Доказать непрерывность операторов $D_k: H_s (RR^n) -> H_(s - 1) (RR^n)$
  ($1 <= k <= n$, $s >= 1$) (см. задачи
  @pr:schwartz-creation-annihilation-hermite-basis и
  @pr:fourier-sobolev-continuous-embedding).
] <pr:fourier-sobolev-derivative-continuity>

#problem[
  Доказать, что свертка двух функций из $S(RR^n)$ также принадлежит $S(RR^n)$.
] <pr:schwartz-space-convolution-closure>

#problem[
  Доказать, что свертка двух функций $f_1 in H_(s_1) (RR^n)$ и
  $f_2 in H_(s_2) (RR^n)$ (см. задачу @pr:fourier-sobolev-continuous-embedding)
  принадлежит $B C^k (RR^n)$, если #source(268) $s_1 + s_2 >= k$. (Через
  $B C^k (RR^n)$ обозначается пространство функций на $RR^n$ с непрерывными
  ограниченными производными до порядка $k$. Норма в нем имеет вид
  $ norm(f) = sup_(x in RR^n, abs(l) <= k) abs(f^((l)) (x)) upright(".)") $
] <pr:sobolev-convolution-bounded-smoothness>

#problem[
  Пусть $P$ — многочлен на $RR$ степени $2 m$, не имеющий вещественных корней.

  а) Доказать, что преобразование Фурье функции $f(x) = 1 / P(x)$ бесконечно
  дифференцируемо всюду, кроме точки $lambda = 0$.

  б) Доказать, что $tilde(f)(lambda)$ имеет в точке $lambda = 0$ односторонние
  производные всех порядков.

  в) Каков порядок гладкости $tilde(f)(lambda)$ (число непрерывных производных)?
] <pr:reciprocal-polynomial-fourier-smoothness>

#problem[
  Пусть $f in L_1 (RR, dif x)$ — рациональная функция. Доказать, что для
  некоторых констант $c > 0$ и $epsilon > 0$ справедлива оценка
  $abs(tilde(f)(lambda)) <= c e^(-epsilon abs(lambda))$ ($lambda in RR$).
] <pr:rational-function-fourier-exponential-decay>

#problem[
  а) Известно, что $f in S(RR)$ и $integral_RR x^n f(x) dif x = 0$ для всех
  $n in NN$. Следует ли отсюда, что $f equiv 0$?

  б) Известно, что $phi in cal(D)(RR)$ и $integral_RR x^n phi(x) dif x = 0$ для
  всех $n >= n_0$. Следует ли отсюда, что $phi equiv 0$?
] <pr:vanishing-moments-schwartz-test-function-uniqueness>

#problem(difficulty: "hard")[
  Доказать, что всякая непрерывная положительно определенная функция $f$ на
  прямой имеет вид $f(x) = integral_RR e^(-2 pi i lambda x) dif mu(lambda)$, где
  $mu$ — некоторая конечная борелевская мера на $RR$.
] <pr:bochner-positive-definite-line-representation>

#problem[
  Пусть ${U(t)}$ ($t in RR$) — однопараметрическая группа унитарных операторов в
  гильбертовом пространстве $H$ (т. е. $U(t) U(s) = U(t + s)$), непрерывная по
  $t$ в сильной операторной топологии. Доказать, что для любого вектора
  $xi in H$ функция $f(t) = (U(t) xi, xi)$ положительно определена.
] <pr:unitary-group-matrix-coefficients-positive-definite>

#problem[
  В условиях задачи @pr:unitary-group-matrix-coefficients-positive-definite
  предположим, что вектор $xi$ — _циклический_ для $U(t)$ (т. е. линейная
  оболочка векторов $U(t) xi$ ($t in RR$) плотна в $H$). Построить изоморфизм
  пространств $H$ и $L_2 (RR, mu)$, при котором оператор $U(t)$ переходит в
  оператор умножения на $e^(2 pi i lambda t)$.
] <pr:cyclic-unitary-group-spectral-measure-model>

#problem(difficulty: "hard")[
  #idx("Теорема", "Пэли — Винера")
  _Теорема Пэли — Винера._ Доказать, что преобразования Фурье функций из
  $cal(D)(RR)$ образуют пространство целых аналитических функций от
  $lambda in CC$, обладающих свойством: существуют такое число $a > 0$ и такие
  константы $c_k$, что
  $abs(g(lambda)) (1 + abs(lambda))^k <= c_k e^(a abs(op("Im") lambda))$.
] <pr:paley-wiener-test-function-fourier-characterization>

#source(269)
#problem(difficulty: "hard")[
  Пусть $f$ — непрерывная функция на $RR^n$, убывающая на бесконечности как
  $O(norm(x)^(-n))$. Тогда для любого аффинного подмногообразия $L subset RR^n$
  размерности $n - 1$ ограничение $f$ на $L$ суммируемо на $L$ относительно
  естественной меры Лебега $mu_L$ на $L$.

  а) Доказать, что если $integral_L f(x) dif mu_L (x) = 0$ для всех
  $L subset RR^n$, то $f equiv 0$.

  б)#difficulty("very-hard") Выразить явно $f(x)$ через
  $phi(L) = integral_L f(x) dif mu_L (x)$ в случае $n = 3$.
] <pr:radon-hyperplane-transform-uniqueness-inversion>

#problem(difficulty: "very-hard")[
  Найти функцию $f in S(RR^3)$, если известны интегралы этой функции по всем
  прямым, пересекающим данную прямую $l subset RR^3$.
] <pr:restricted-xray-transform-line-intersection-inversion>
