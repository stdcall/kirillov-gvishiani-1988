#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/theory-smooth-cutoff.typ": smooth-cutoff

#source(103)#theorem[
  Пространство $cal(D)(RR^n)$ плотно в $L_(p)(RR^n,dif x)$#footnote[
    Как обычно, через $dif x$ мы обозначаем меру Лебега в $RR^n$.
  ] при $1 <= p < infinity$, в $S(RR^n)$ и в $cal(E)(RR^n)$. Пространство
  $S(RR^n)$ плотно в $L_(p)(RR^n,dif x)$ при $1 <= p < infinity$ и в
  $cal(E)(RR^n)$.
] <th:smooth-test-function-density>

Чтобы избежать технических усложнений, мы проведем доказательство подробно лишь
для случая $n=1$. Начнем с конструкции нетривиальной функции в $cal(D)(RR)$.

#lemma(numbered: true)[
  Функция

  $ phi(x) = cases(0 & "при" x >= 0, e^(1/x) & "при" x < 0) $

  бесконечно дифференцируема на всей прямой.
] <lem:flat-exponential-function>

#proof[
  Всюду вне точки $x=0$ утверждение очевидно. Проверим, что $phi^((k))(0) = 0$
  для $k=1,2,dots$. Для этого заметим, что функция $frac(d^k, d x^k)(e^(1/x))$
  имеет вид $P_(k)(x) x^(-2k) e^(1/x)$, где $P_k$ — некоторый многочлен степени
  $<= k$. (Это легко устанавливается по индукции.) Далее,
  $lim_(x->-0) frac(P(x), x^m) e^(1/x)
  = lim_(t->+infinity) P(-1/t) t^m e^(-t) = 0$
  для любого $m$ и любого многочлена $P$, что легко установить с помощью правила
  Лопиталя. Таким образом, $lim_(epsilon->0) phi^((k))(epsilon) = 0$ для всех
  $k$. Применяя еще раз правило Лопиталя, получаем утверждение леммы.
]

#lemma(numbered: true)[
  Функция

  $ psi(x) = cases(exp{2/(x^2-1)} & "при" abs(x)<1, 0 & "при" abs(x)>=1) $

  принадлежит $cal(D)(RR)$.
] <lem:smooth-compact-bump>

В самом деле, эта функция обращается в нуль вне отрезка $[-1,1]$ и бесконечно
дифференцируема, так как записывается в виде $psi(x) = phi(x-1) phi(-x-1)$, где
$phi$ — функция из леммы~@lem:flat-exponential-function.

#lemma(numbered: true)[
  Для любого $epsilon > 0$ положим
  $psi_(epsilon)(x) = frac(c, epsilon) psi(x/epsilon)$, где
  $c^(-1) = integral_(-infinity)^infinity psi(x) dif x$. Тогда функция
  $psi_(epsilon)(x)$ обладает свойствами:

  + $psi_(epsilon)(x) >= 0$;
  + $upright("supp") psi_epsilon = [-epsilon,epsilon]$;
  + $integral_(-infinity)^infinity psi_(epsilon)(x) dif x = 1$.
] <lem:normalized-smooth-bump>

#source(104)Доказательство очевидно.

Теперь мы в состоянии доказать первое утверждение
теоремы~@th:smooth-test-function-density (о плотности $cal(D)(RR)$ в
$L_(p)(RR,dif x)$ при $1 <= p < infinity$). Пусть $f in L_(p)(RR,dif x)$.
Поскольку интеграл $integral_(-infinity)^infinity abs(f)^p dif x$ сходится,
существует такое число $N$, что $integral_(-infinity)^(-N) abs(f)^p dif x
+ integral_N^infinity abs(f)^p dif x < (epsilon/2)^p$. Тогда функция

$ f_(N)(x) = cases(f(x) & "при" abs(x)<=N, 0 & "при" abs(x)>N) $

имеет компактный носитель и $norm(f-f_N)_p < epsilon/2$. Далее, поскольку
$f_(N)(x)$ непрерывна в среднем (см.
задачу~@pr:integrable-function-translation-continuity), существует такое
$delta > 0$, что
$integral abs(f_(N)(x)-f_(N)(x+t))^p dif x < (epsilon/2)^p$
при $abs(t)<delta$. Рассмотрим теперь функцию

$ g(x) = integral_(-infinity)^infinity f_(N)(x-t) psi_(delta)(t) dif t. $

(Этот интеграл существует, поскольку $psi_delta$ ограниченна, финитна и,
следовательно, принадлежит $L_(q)(RR,dif x)$.) Оценим расстояние между $f_N$ и
$g$ в $L_(p)(RR,dif x)$. Для этого воспользуемся формулой
$norm(f)_p = sup_(norm(h)_q <= 1) abs(integral_RR f h dif x)$. Имеем

$
  norm(f_N-g)_p & = sup_(norm(h)_q <= 1)
                  abs(integral_(-infinity)^infinity (f_N-g) h dif x) \
                & = sup_(norm(h)_q <= 1) abs(
                    integral_(-infinity)^infinity
                    (integral_(-infinity)^infinity
                      psi_(delta)(t) f_(N)(x-t) dif t-f_(N)(x))
                    h(x) dif x
                  ) \
                & = sup_(norm(h)_q <= 1) abs(
                    integral_(-infinity)^infinity
                    integral_(-infinity)^infinity psi_(delta)(t)
                    (f_(N)(x-t)-f_(N)(x)) h(x) dif x dif t
                  ).
$

(Мы воспользовались равенством
$integral_(-infinity)^infinity psi_(delta)(t) dif t = 1$.) Последний #source(
  105,
)интеграл допускает оценку

$
  abs(
    integral_(-delta)^delta psi_(delta)(t)
    (integral_(-infinity)^infinity (f_(N)(x-t)-f_(N)(x)) h(x) dif x) dif t
  )
  \ <= integral_(-infinity)^infinity psi_(delta)(t) dot epsilon/2 dif t
  = epsilon/2
$

в силу выбора $delta$. Итак, $norm(f_N-g)_p < epsilon/2$ и, следовательно,
$norm(f-g)_p < epsilon$. Проверим, что $g in cal(D)(RR)$. Финитность функции $g$
вытекает из финитности $f_N$ и $psi_delta$: ясно, что
$upright("supp") g subset upright("supp") f_N
+ upright("supp") psi_delta = [-N-delta,N+delta]$. Бесконечная
дифференцируемость $g$ вытекает из тождества

$
  frac(d^k, d x^k) g(x) &= frac(d^k, d x^k)
  integral_(-infinity)^infinity f_(N)(x-t) psi_(delta)(t) dif t
  \ &= integral_(-infinity)^infinity f_(N)(x-t) psi_(delta)^((k))(t) dif t,
$

которое легко доказывается по индукции (ср. с~@sec:theory-convolutions).

Докажем теперь, что $cal(D)(RR)$ плотно в $cal(E)(RR)$. Для этого построим
функцию $chi_1 in cal(D)(RR)$, обладающую свойством: $chi_(1)(x)=1$ на $[-1,1]$.
В качестве такой функции можно взять, например, первообразную от функции
$psi_(1/2)(x+3/2)-psi_(1/2)(x-3/2)$ (рис.~@fig:smooth-cutoff).

#figure(smooth-cutoff(), caption: [], supplement: [Рис.]) <fig:smooth-cutoff>

Положим $chi_(N)(x) = chi_(1)(x/N)$. Тогда $chi_(N)(x) in cal(D)(RR)$ и
$chi_(N)(x)=1$ при $x in [-N,N]$. Пусть $f in cal(E)(RR)$. Тогда
$chi_N f in cal(D)(RR)$. Проверим, что $chi_N f -> f$ в $cal(E)(RR)$ при
$N -> infinity$. Пусть $K$ — компакт на прямой. Тогда он содержится в $[-N,N]$
при достаточно большом $N$. Поэтому
$p_(K l)(chi_N f-f) = sup abs((chi_N f-f)^((l))(x)) = 0$
при достаточно большом $N$. Значит, $chi_N f -> f$ в $cal(E)(RR)$ при
$N -> infinity$.

Оказывается, та же последовательность $chi_N f$ сходится к $f$ и в смысле
пространства $S(RR)$. Доказательство этого опирается на оценку

$
  abs(x^k f^((l))(x)) <= frac(p_(k+m,l)(f), N^m)
  quad "при" abs(x)>=N, quad f in S(RR),
$

которая непосредственно вытекает из определения нормы #source(106)$p_(k+m,l)$.
Имеем

$
  p_(k l)(chi_N f-f) & = sup_(x in RR) abs(x^k (chi_N f-f)^((l))(x)) \
                     & = sup_(x in RR) abs(
                         sum_(j=0)^l C_l^j x^k f^((j))(x)
                         (chi_N-1)^((l-j))(x)
                       ) \
                     & <= 1/N sum_(j=0)^l C_l^j p_(k+1,j)(f)
                       sup_(x in RR) abs((chi_N-1)^((l-j))(x)).
$

Воспользуемся теперь соотношением

$
  abs((chi_N-1)^((l))(x)) = abs(frac(1, N^l)(chi_1-1)^((l))(x/N)) <= C_l
  quad "при" x in RR "и" N>=1.
$

Тогда мы получим

$ p_(k l)(chi_N f-f) <= 1/N sum_(j=0)^l C_l^j p_(k+1,j)(f) C_(l-j). $

Последнее выражение стремится к нулю при $N -> infinity$. Остальные утверждения
теоремы следуют из уже доказанных.

#theorem(title: [Вейерштрасса], numbered: false)[
  #idx("Теорема", "Вейерштрасса")
  Пусть $Omega$ — ограниченная область в $RR^n$. Тогда для любого натурального
  $k$ всякая функция $f in C^(k)(overline(Omega))$, допускающая продолжение
  класса $C^k$ в окрестность $overline(Omega)$, является пределом
  последовательности из пространства $P_n$ полиномиальных функций от $n$
  переменных в норме $C^(k)(overline(Omega))$.
] <th:weierstrass-smooth-polynomial-approximation>

#proof[
  Умножая продолжение $f$ на гладкую финитную функцию, равную единице в
  окрестности $overline(Omega)$, получим функцию $g in C^(k)(RR^n)$ с компактным
  носителем, совпадающую с $f$ в этой окрестности. Свертки $g$ с нормированными
  гауссовыми ядрами

  $ G_(t)(x) = (4 pi t)^(-n/2) exp(-abs(x)^2/(4 t)), quad t>0, $

  сходятся к $g$ равномерно вместе со всеми производными порядка не выше $k$ при
  $t -> +0$. В самом деле, $partial^alpha(G_t*g)=G_t*(partial^alpha g)$, а
  каждая производная $partial^alpha g$, $abs(alpha)<=k$, равномерно непрерывна и
  ограниченна. При фиксированном $t$ функция $G_t*g$ продолжается до целой
  функции в $CC^n$: в интеграле свертки заменим $abs(x-y)^2$ на
  $sum_(j=1)^n (z_j-y_j)^2$. Интегрирование ведется по компактному носителю $g$.
  Частичные суммы ряда Тейлора этой целой функции сходятся вместе с производными
  порядка не выше $k$ равномерно на $overline(Omega)$. Выбирая сначала
  достаточно малое $t$, а затем достаточно большую частичную сумму, получаем
  искомое полиномиальное приближение.#ed-note[
    В книге утверждение дано без условия продолжения. Непрерывного продолжения
    отдельных производных на замыкание произвольной области недостаточно для
    приближения в норме $C^k$ при $k>=1$. Гауссово приближение вместе с
    производными см. в лемме 3: #cite(<Johanis2015>, form: "full").
  ]
]

#corollary(numbered: true)[
  Для любой области $Omega subset RR^n$ пространство $P_n$ полиномиальных
  функций от $n$ переменных плотно в $cal(E)(Omega)$.
] <cor:polynomial-smooth-function-density>

#proof(title: [Доказательство следствия])[
  Пусть заданы функция $f in cal(E)(Omega)$ и полунорма $p_(K k)$ в
  $cal(E)(Omega)$. Покажем, что для любого $epsilon > 0$ существует такой
  многочлен $q in P_n$, что $p_(K k)(q-f)<epsilon$. Пусть $V$ — ограниченная
  открытая окрестность компакта $K$, такая, что $overline(V) subset Omega$.
  Ограничение $f$ на $overline(V)$ принадлежит, очевидно, $C^(k)(overline(V))$.
  Применяя к этому ограничению теорему Вейерштрасса, найдем такой многочлен
  $q in P_n$, что $norm(q-f)_(C^(k)(overline(V))) < epsilon$. Поскольку норма
  пространства $C^(k)(overline(V))$ мажорирует полунорму $p_(K k)$, $q$ —
  искомый многочлен.
]

#corollary(numbered: true)[
  Пусть $Omega$ — область в $RR^n$, $K$ — компакт в $Omega$,
  $phi in cal(D)_(K)(Omega)$, $f in cal(D)(Omega)$ и $f(x) != 0$ для $x in K$.
  Тогда найдется последовательность многочленов ${p_k} subset P_n$, такая, что
  $p_k f -> phi$ в $cal(D)(Omega)$.
] <cor:polynomial-multiple-test-function-density>

#source(107)Для доказательства достаточно выбрать ${p_k}$ так, чтобы
$p_k -> phi/f$ в $cal(E)(Omega)$.
