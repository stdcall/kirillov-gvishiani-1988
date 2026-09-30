#import "main-defs.typ": *
#import "statements.typ": *

=== Интеграл <sec:hints-integral>

==== Интеграл Лебега <ss:hints-lebesgue-integral>

#hint[@pr:simple-integral-linearity-bound][
  Используйте свойства абсолютно сходящихся рядов.
] <hint:simple-integral-linearity-bound>

#hint[@pr:lebesgue-integral-sums][
  Для каждого разбиения $T=\{t_k\}$ определим верхнюю и нижнюю интегральные
  суммы Лебега: $overline(S)(T)=sum_k t_(k+1) mu(e_k)$,
  $underline(S)(T)=sum_k t_k mu(e_k)$, где $e_k=\{x in X:t_k<=f(x)<t_(k+1)\}$.
  Доказать, что если $f(x)$ суммируема, то $overline(S)(T)$ и $underline(S)(T)$
  сходятся, $underline(S)(T)<=integral_X f(x) dif mu <= overline(S)(T)$,
  $integral_X f(x) dif mu = lim_(lambda(T)->0) underline(S)(T) =
  lim_(lambda(T)->0) overline(S)(T)$
  (использовать оценку $overline(S)(T)-underline(S)(T)<=lambda(T) mu(X)$).
] <hint:lebesgue-integral-sums>

#hint[@pr:infinite-measure-integral-sums][
  Используя функции
  $
    f_(T)(x) = cases(
      0 & #text[если существует $k$ такое, что $f(x), 0 in [t_k,t_(k+1)]$],
      f(x) & "в противном случае",
    ),
  $
  свести к задаче @pr:lebesgue-integral-sums.
] <hint:infinite-measure-integral-sums>

#hint[@pr:simple-integral-representation-independence][
  Использовать свойства абсолютно сходящихся рядов.
] <hint:simple-integral-representation-independence>

#hint[@pr:simple-function-space-incomplete][
  $S[0,1]$ изометрически вкладывается в $L_1[0,1]$, где последовательность
  $f_n (x)$ имеет пределом функцию $f(x)=x in.not S[0,1]$.
] <hint:simple-function-space-incomplete>

#hint[@pr:oscillatory-power-integrability][
  а) При $alpha>-1-beta$ $(beta>0)$ и $alpha>-1$ $(beta<=0)$;

  б) при $alpha>-1-abs(beta)$.
] <hint:oscillatory-power-integrability>

#hint[@pr:nonnegative-integral-zero-criterion][
  #source(309)
  а) Очевидно;

  б) $mu(\{x:f(x)>0\}) <= sum_n mu(\{x:f(x)>1/n\})=0$.
] <hint:nonnegative-integral-zero-criterion>

#hint[@pr:monotone-substitution-integral][
  Имеем $mu(\{x in [a,b]:t_k<=phi(x)<t_(k+1)\})=psi(t_(k+1))-psi(t_k)$. По
  теореме Лагранжа $psi(t_(k+1))-psi(t_k)=psi'(xi_k)(t_(k+1)-t_k)$.
] <hint:monotone-substitution-integral>

#hint[@pr:integral-subgraph-area][
  В обозначениях указаний к задаче @pr:lebesgue-integral-sums определим
  измеримое множество на плоскости
  $E(T)=union.big_k \{(x,y):f(x) in [t_k,t_(k+1)),0<=y<=t_k\}$.

  Утверждение задачи следует из того, что $mu E(T)=underline(S)(T)$,
  $mu(E triangle E(T))<lambda(T)(b-a)$.
] <hint:integral-subgraph-area>

#hint[@pr:integrability-positive-negative-parts][
  Доказать, что из суммируемости $f(x)$ следует суммируемость $abs(f(x))$.
  Использовать равенство
  $
    integral_A [g(x)+h(x)] dif mu(x)=integral_A g(x) dif mu(x)+integral_A h(x)
    dif mu(x).
  $
] <hint:integrability-positive-negative-parts>

#hint[@pr:integrability-finite-measure-restrictions][
  Выберите возрастающие множества $E_n$ конечной меры с $union_n E_n=X$.
  Положите $A_n=E_n inter \{x:f(x)<=n\}$ и
  $ g_n=2^(-n) floor(2^n f) chi_(A_n). $
  Тогда $g_n$ — суммируемые простые функции, $0<=g_n<=g_(n+1)$ и $g_n->f$
  поточечно. Если интегралы из условия ограничены константой $C$, то
  $integral_X g_n dif mu<=C$. Эти интегралы возрастают к конечному пределу;
  следовательно, при $m>=n$
  $ d_1(g_m,g_n)=integral_X g_m dif mu-integral_X g_n dif mu->0. $
  Суммируемость $f$ теперь следует из @def:summable-function[определения
    суммируемой функции]. Обратное утверждение следует из монотонности
  интеграла.#ed-note[
    Добавлена $sigma$-конечность: на одном атоме бесконечной меры условие задачи
    не контролирует положительную постоянную функцию. Аргумент с простыми
    функциями избегает обращения к еще доказываемой теореме Леви. Ср. теорему
    2.14: #cite(<Folland1999>, form: "full").
  ]
] <hint:integrability-finite-measure-restrictions>

#hint[@pr:integrability-dyadic-large-levels][
  Положим $a_n=mu(\{x in X, 2^n<=f(x)<2^(n+1)\})$. Суммируемость $f$ равносильна
  сходимости каждого из рядов $sum_(n=0)^infinity a_n 2^n$ и
  $sum_(n=0)^infinity a_n 2^(n+1)$. Показать, что частичные суммы ряда,
  фигурирующего в условии задачи, заключены между соответствующими частичными
  суммами этих рядов.
] <hint:integrability-dyadic-large-levels>

#hint[@pr:integrability-dyadic-small-levels][
  Использовать метод решения задачи @pr:integrability-dyadic-large-levels.
] <hint:integrability-dyadic-small-levels>

#hint[@pr:riemann-integrability-discontinuity-criterion][
  Интеграл Римана определяется только для ограниченных функций. Введем
  последовательность разбиений отрезка $[a,b]$ $\{P_n\}$ так, что $P_(k+1)$
  измельчает $P_k$ и диаметры разбиений стремятся к $0$. Пусть $m_n (x)$ и
  $M_n (x)$ — функции, соответствующие нижней и верхней суммам Дарбу для $P_n$,
  $m_n (x)<=f(x)<=M_n (x)$. Положим $m(x)=lim_(n -> infinity) m_n (x)$,
  $M(x)=lim_(n -> infinity) M_n (x)$. Доказать, что $f(x)$ интегрируема по
  Риману тогда и только тогда, когда
  $ integral_a^b m(x) dif x = integral_a^b M(x) dif x. $
  Последнее условие эквивалентно условию $m(x)=M(x)$ почти всюду, что
  эквивалентно условию непрерывности $f(x)$ почти всюду.
] <hint:riemann-integrability-discontinuity-criterion>

#hint[@pr:gaussian-quadratic-integral][
  #source(310)
  Линейной ортогональной заменой переменных задача сводится к условию, когда
  матрица $A$ диагональна.
] <hint:gaussian-quadratic-integral>

#hint[@pr:wiener-quadratic-exponential-integral][
  При $b = 0$ интеграл равен $sqrt(pi/a)$: достаточно проинтегрировать
  $exp(-a x(0)^2)$ по начальному значению $x(0)$, пользуясь
  @pr:wiener-measure-initial-value-product. Далее считаем $b > 0$.

  Заменим интеграл $integral_0^1 x^2 (t) dif t$ интегральной суммой
  $1/n sum_(k=1)^n x^2 (k/n)$. Тогда подынтегральная функция $phi_(a b n) (x)$
  будет цилиндрической и ее интеграл вычисляется по формуле
  $
    I_n = pi^(-n/2) n^(n/2) integral_(-infinity)^infinity dots
    integral_(-infinity)^infinity exp\{-n sum_(k=0)^(n-1)(tau_(k+1)-tau_k)^2-a
    tau_0^2-b^2 1/n sum_(k=1)^n tau_k^2\} dif tau_0 dif tau_1 dots dif tau_n.
  $
  В силу задачи @pr:gaussian-quadratic-integral справедливо равенство
  $I_n=sqrt(pi/n)(det A)^(-1/2)$, где $A$ — матрица размера $(n+1) times (n+1)$,
  имеющая вид
  $
    A=mat(
      1+a/n, -1, 0, 0, dots, 0, 0;
      -1, 2+b^2/n^2, -1, 0, dots, 0, 0;
      0, -1, 2+b^2/n^2, -1, dots, 0, 0;
      dots, dots, dots, dots, dots, dots, dots;
      0, 0, 0, 0, dots, 2+b^2/n^2, -1;
      0, 0, 0, 0, dots, -1, 1+b^2/n^2
    ).
  $
  Для вычисления $det A$ можно поступить так. Обозначим через $D_N (lambda,mu)$
  определитель матрицы размера $N times N$, у которой на главной диагонали стоят
  числа $lambda$, а на двух соседних диагоналях — числа $mu$ (остальные
  компоненты равны нулю). Разлагая этот определитель по первой строке, получаем
  тождество:
  $D_N (lambda,mu)=lambda D_(N-1) (lambda,mu)-mu^2 D_(N-2) (lambda,mu)$. Отсюда
  выводится по индукции, что
  $ D_N (lambda,mu)=(x_+^(N+1)-x_-^(N+1))/(x_+ - x_-), $
  где $x_(plus.minus)$ — корни квадратного уравнения $x^2-lambda x+mu^2=0$. Если
  $lambda=2+b^2/n^2$, $mu=-1$, то
  $x_(plus.minus)=1+b^2/(2n^2) plus.minus b/n sqrt(1+b^2/(4n^2))$.
  #source(311)
  Обозначим $D_N (lambda,mu)$ при этих $lambda,mu$ просто через $D_N$. Тогда
  $
    det A & = D_(n+1)+(a/n-b^2/n^2-1)D_n+(-1)D_n \
          & quad +(a/n-b^2/n^2-1)(-1)D_(n-1)
  $
  (разложение по первой и последней строкам). Пользуясь основным тождеством, это
  выражение можно привести к виду
  $ a/n (D_n-D_(n-1))+b^2/n^2 D_(n-1). $
  Вычислим $D_n$:
  $ D_n=(x_+^(n+1)-x_-^(n+1))/(x_+ - x_-) = $
  $
    = ((1+b/n+b^2/(2n^2)+o(n^(-2)))^(n+1)
    -(1-b/n+b^2/(2n^2)+o(n^(-2)))^(n+1))/(2b/n+o(n^(-2))) =
  $
  $
    = (exp\{[b/n+o(n^(-2))](n+1)\}-exp\{-[b/n+o(n^(-2))](n+1)\})
    /(2b/n+o(n^(-2))) =
  $
  $
    = (exp\{b+b/n+o(n^(-1))\}-exp\{-b-b/n+o(n^(-1))\})
    /(2b/n+o(n^(-2))) = n (sinh b)/b+cosh b+o(1).
  $
  Аналогично вычисляется $D_(n-1)=n (sinh b)/b+o(1)$. Отсюда
  $
    det A=a/n (cosh b+o(1))+b^2/n^2(n (sinh b)/b+o(1))=(a cosh b+b sinh
    b)/n+o(n^(-1)).
  $
  Значит,
  $ I_n=sqrt(pi/(a cosh b+b sinh b))+o(1). $
  Итак,
  $
    integral_(C[0,1]) phi_(a b n) (x) dif mu(x)=I_n arrow.r sqrt(
      pi/(a cosh
      b+b sinh b)
    ) "при" n arrow.r infinity.
  $
  #source(312)
  Отсюда по лемме Фату следует, что функции
  $phi_(a b) (x)=lim_(n -> infinity) phi_(a b n) (x)$ будут $mu$-суммируемы при
  $a>0,b>=0$ или $a>=0,b>0$. Чтобы перейти к пределу в интегралах, воспользуемся
  представлением $x(t) = c + y(t)$ и $dif mu = dif c dif mu_0(y)$ из
  @pr:wiener-measure-initial-value-product. При $a > 0$ имеем
  $phi_(a b n)(x) <= exp(-a c^2)$; эта мажоранта суммируема, поскольку
  $mu_0(C_0[0,1]) = 1$.

  При $a = 0$, $b > 0$ сначала проинтегрируем по $c$. Положим
  $s_(n)(y) = 1/n sum_(k=1)^n y(k/n)$, $r_(n)(y) = 1/n sum_(k=1)^n y(k/n)^2$.
  Тогда
  $
    integral_RR phi_(0 b n)(c + y) dif c =
    sqrt(pi)/b exp(-b^2 (r_(n)(y) - s_(n)(y)^2)) <= sqrt(pi)/b.
  $
  Здесь $r_(n)(y) - s_(n)(y)^2 >= 0$, а при $n -> infinity$ эта разность
  стремится к $integral_0^1 y(t)^2 dif t - (integral_0^1 y(t) dif t)^2$. Таким
  образом, после интегрирования по $c$ также имеется суммируемая по
  вероятностной мере $mu_0$ мажоранта. В обоих случаях применима теорема Лебега;
  используя для неотрицательных функций теорему Фубини, получаем#ed-note[
    В исходном доказательстве интегральные суммы объявлены не превосходящими
    своего предела. Такой монотонности у них нет; для предельного перехода
    требуется суммируемая мажоранта. См. теорему 2.24: #cite(
      <Folland1999>,
      form: "full",
    ).
  ]
  $
    integral phi_(a b) dif mu = lim integral phi_(a b n) dif mu = sqrt(
      pi/(a
      cosh b+b sinh b)
    ).
  $
] <hint:wiener-quadratic-exponential-integral>
#hint[@pr:wiener-measure-initial-value-product][
  Каждая функция $x in C[0,1]$ однозначно представляется в виде $x(t)=c+y(t)$,
  где $c=x(0)$ — константа, а $y in C_0[0,1]$. Мера $mu_0$ на $C_0[0,1]$
  определяется формулой
  $ mu_0 (X(t_1,dots,t_n;Delta_1,dots,Delta_n)) = $
  $
    = pi^(-n/2) product_(k=1)^n (t_k-t_(k-1))^(-1/2)
    integral_(Delta_1) dots integral_(Delta_n)
    exp\{-sum_(k=1)^n (tau_k-tau_(k-1))^2/(t_k-t_(k-1))\}
    dif tau_1 dots dif tau_n,
  $
  где $t_0=tau_0=0$, а множество $X(t_1,dots,t_n;Delta_1,dots,Delta_n)$
  определяется так же, как и раньше.
] <hint:wiener-measure-initial-value-product>

#hint[@pr:pinned-wiener-integral-moments][
  а) $mu_0 (C_0[0,1])=mu_0 (X(t_1,dots,t_n;RR,dots,RR)) =$
  $
    = pi^(-n/2) product_(k=1)^n (t_k-t_(k-1))^(-1/2)
    integral_(-infinity)^infinity dots integral_(-infinity)^infinity
    exp\{-sum_(k=1)^n (tau_k-tau_(k-1))^2/(t_k-t_(k-1))\}
    dif tau_1 dots dif tau_n.
  $
  Обозначив $tau_k-tau_(k-1)$ через $sigma_k$, а $t_k-t_(k-1)$ через $s_k$, мы
  получим величину
  $
    pi^(-n/2) product_(k=1)^n s_k^(-1/2) product_(k=1)^n
    integral_(-infinity)^infinity exp\{-sigma_k^2/s_k\} dif sigma_k = 1.
  $

  б) Поскольку при отображении $x arrow.r -x$ мера $mu_0$ не меняется, а
  подынтегральная функция меняет знак, то интеграл равен $0$, если он
  существует. Суммируемость подынтегральной функции следует из задачи
  @pr:wiener-quadratic-exponential-integral и неравенства Коши — Буняковского.

  в) Пусть $x(t)=c+y(t)$, $y in C_0[0,1]$. Результат задачи
  @pr:wiener-quadratic-exponential-integral можно сформулировать так. Если
  $
    phi_1 (y)=integral_0^1 y(t) dif t, quad phi_2 (y)=integral_0^1 y^2(t) dif t,
  $
  то
  $
    integral_RR integral_(C_0[0,1]) exp\{-a c^2-b^2[c^2+2c phi_1 (y)+phi_2
      (y)]\} dif c dif mu_0 (y) = sqrt(pi/(a cosh b+b sinh b)).
  $
  Положим здесь $c=t/sqrt(a)$ и устремим $a$ к $+infinity$. Тогда мы придем к
  #source(313)
  равенству
  $
    integral_RR integral_(C_0[0,1]) exp\{-t^2-b^2 phi_2 (y)\} dif t dif mu_0
    (y) = sqrt(pi/(cosh b))
  $
  или
  $ integral_(C_0[0,1]) exp\{-b^2 phi_2 (y)\} dif mu_0 (y) = 1/sqrt(cosh b). $
  Отсюда вытекает, что интегралы $integral_(C_0[0,1]) phi_2^k (y) dif mu_0 (y)$
  можно найти из разложения в ряд Тейлора функции $1/sqrt(cosh b)$. В частности,
  $
    integral_(C_0[0,1]) phi_2 (y) dif mu_0 (y) = 1/4, quad integral_(C_0[0,1])
    phi_2^2 (y) dif mu_0 (y) = 7/48.
  $
] <hint:pinned-wiener-integral-moments>
