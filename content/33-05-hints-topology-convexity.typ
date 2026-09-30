#import "main-defs.typ": *
#import "statements.typ": *

=== Линейные топологические пространства <sec:hints-linear-topological-spaces>

==== Топология, выпуклость и полунормы <ss:hints-topology-convexity-seminorms>

#hint[@pr:linear-topology-zero-neighborhoods,
  @pr:linear-topological-space-regularity][Проверяется непосредственно, исходя
  из определений.
] <hint:linear-topology-zero-neighborhoods>

#hint[@pr:finite-dimensional-norm-equivalence][Воспользоваться теоремой
  @th:finite-dimensional-compactness. (См. также @bib:Kolmogorov1977.)
] <hint:finite-dimensional-norm-equivalence>

#hint[@pr:finite-dimensional-linear-topology-uniqueness][Доказать индукцией по
  $dim L$, что всякий линейный изоморфизм $L$ и $K^(dim L)$ (где $K$ — поле
  скаляров) является гомеоморфизмом.
] <hint:finite-dimensional-linear-topology-uniqueness>

#hint[@pr:equivalent-norm-topologies][Рассмотреть вложения окрестностей нуля.
] <hint:equivalent-norm-topologies>

#hint[@pr:minkowski-sum-open-closed][а)
  $ A+B=union_(x in B) (A+x). $

  б) Пусть $a in.not A+B$. Тогда для каждого $x in B$ множество $x+A$ замкнуто,
  следовательно, существует уравновешенная окрестность нуля $U(x)$, для которой
  $(a+U(x)) inter (x+A)=nothing$. Множества $x+1/2 U(x)$ — открытое покрытие
  $B$. Пусть ${x_i+1/2 U(x_i), 1<=i<=n}$ — конечное подпокрытие и
  $V=inter_(1<=i<=n) 1/2 U(x_i)$. Доказать, что $(a+V) inter (A+B)=nothing$.
] <hint:minkowski-sum-open-closed>

#hint[@pr:closed-minkowski-sum-counterexample][Для каждого $t in RR$ и каждого
  целого $n$ положим $e_n (t)=e^(i n t)$, $f_n=e_(-n)+n e_n$ ($n=1,2,dots$).
  Будем рассматривать эти функции как элементы пространства $L_2 (-pi,pi)$.

  Пусть $X_1$ — наименьшее замкнутое подпространство в $L_2$, содержащее
  $e_0,e_1,dots$, а $X_2$ — наименьшее замкнутое подпространство в $L_2$,
  содержащее $f_1,f_2,dots$. Показать, что $X_1+X_2$ всюду плотно в $L_2$, но не
  замкнуто.

  Например, вектор $x=sum_(n=1)^infinity n^(-1) e_(-n)$ принадлежит $L_2$, но не
  принадлежит $X_1+X_2$.
] <hint:closed-minkowski-sum-counterexample>

#hint[@pr:convex-minkowski-combinations, @pr:convex-intersections][Следует из
  определения выпуклого множества.
] <hint:convex-minkowski-combinations>

#hint[@pr:planar-steiner-area-formula][Ответ: $S=mu(A)$, $L$ — периметр $A$.
] <hint:planar-steiner-area-formula>

#hint[@pr:mixed-volume-polynomial][Для простоты и наглядности приведем
  доказательство для случая двух выпуклых множеств на плоскости. Предположим
  дополнительно, что эти выпуклые множества $A_1$ и $A_2$ ограничены гладкими
  кривыми $Gamma_1$ и $Gamma_2$, не имеющими прямолинейных участков. Пусть
  множество $A=alpha_1 A_1+alpha_2 A_2$ ограничено кривой $Gamma$.

  Выберем на кривых $Gamma_1$, $Gamma_2$ и $Gamma$ специальную параметризацию. А
  именно, каждой точке $tau in [0,2 pi]$ поставим в соответствие ту точку
  $(x_1 (tau),y_1 (tau)) in Gamma_1$, в которой достигает максимума величина
  $x cos tau+y sin tau$, когда $(x,y)$ пробегает $A_1$. (Другими словами,
  $(x_1 (tau),y_1 (tau))$ — точка касания $Gamma_1$ с опорной прямой,
  составляющей угол $tau$ с осью $y$.) Аналогично определяются параметризация
  $(x_2 (tau),y_2 (tau))$ кривой $Gamma_2$ и параметризация $(x(tau),y(tau))$
  кривой $Gamma$. Покажем теперь, что эти параметризации связаны равенствами

  $
    x(tau)=alpha_1 x_1 (tau)+alpha_2 x_2 (tau), quad
    y(tau)=alpha_1 y_1 (tau)+alpha_2 y_2 (tau).
  $

  #source(326)
  В самом деле,

  $
    max_((x,y) in A) (x cos tau+y sin tau) \
    =max_((x_i,y_i) in A_i) [(alpha_1 x_1+alpha_2 x_2) cos tau
      +(alpha_1 y_1+alpha_2 y_2) sin tau] \
    =max_((x_i,y_i) in A_i) [alpha_1 (x_1 cos tau+y_1 sin tau)
      +alpha_2 (x_2 cos tau+y_2 sin tau)] \
    =alpha_1 max_((x_1,y_1) in A_1) (x_1 cos tau+y_1 sin tau)
    +alpha_2 max_((x_2,y_2) in A_2) (x_2 cos tau+y_2 sin tau),
  $
  откуда следует желаемое равенство.

  Теперь остается воспользоваться известной формулой для площади множества $A$,
  ограниченной кривой $Gamma$, заданной в параметрической форме:
  $mu(A)=integral_0^(2 pi) x(tau) dif y(tau)$. Мы получим, что

  $
    mu(A)=alpha_1^2 mu(A_1)+alpha_2^2 mu(A_2)
    +2 alpha_1 alpha_2 dot M(A_1,A_2),
  $
  где $M(A_1,A_2)=integral_0^(2 pi) (x_1 y'_2+x_2 (y_1)')/2 dif tau$. Последняя
  величина называется _смешанной площадью пары множеств_#idx(
    "Смешанная площадь пары множеств",
  ) $A_1$ и $A_2$ в смысле Минковского.

  Точно так же доказывается, что для $k$ выпуклых множеств $A_1,dots,A_k$ на
  плоскости справедливо равенство
  $ mu(alpha_1 A_1+dots+alpha_k A_k)=sum_(i,j) M(A_i,A_j) alpha_i alpha_j. $

  Для множеств в $n$-мерном пространстве доказательство проводится по тому же
  плану. Граница $partial A$ выпуклого множества $A$ параметризуется точками
  единичной сферы $S$ в $RR^n$, после чего используется формула для объема:
  $ mu(A)=integral_S x_1 (tau) dif x_2 (tau) ∧ dots ∧ dif x_n (tau). $

  При этом возникает понятие _смешанного объема_#idx(
    "Смешанный объем набора из n-выпуклых множеств",
  ) $M(A_1,dots,A_n)$ набора из $n$ выпуклых множеств в $RR^n$, в терминах
  которого выражаются многие геометрические характеристики выпуклых тел.
] <hint:mixed-volume-polynomial>

#hint[@pr:finest-locally-convex-topology][Доказать, что ядерно-выпуклая
  топология задается системой всех вообще конечных полунорм на $L$.

  а) $p_f=abs(f(x))$ — полунорма для любого линейного функционала $f$ на $L$ (не
  обязательно непрерывного).

  б) Функционал Минковского выпуклого, уравновешенного и поглощающего множества
  есть полунорма.
] <hint:finest-locally-convex-topology>

#hint[@pr:seminorm-unit-ball-characterization][$B$ пересекается с каждой прямой,
  проходящей через нуль, по замкнутому в евклидовой топологии прямой интервалу,
  когда $B={x:p_B (x)<=1}$, где $p_B$ — функционал Минковского множества $B$.
] <hint:seminorm-unit-ball-characterization>

#hint[@pr:minkowski-functional-extremal-balls][а) Рассмотреть множества
  $B_0={x:p_B (x)<1}$ и $B_1={x:p_B (x)<=1}$, где $p_B$ — функционал Минковского
  множества $B$.

  б) Использовать предыдущую задачу @pr:seminorm-unit-ball-characterization.
] <hint:minkowski-functional-extremal-balls>

#source(327)

#hint[@pr:convex-hull-finite-combinations][$c_2 (A)$ — выпуклое множество. Далее
  воспользоваться задачей @pr:convex-intersections.
] <hint:convex-hull-finite-combinations>

#hint[@pr:seminorm-boundedness-characterization][Базис окрестностей нуля в
  полинормированном пространстве $L$ состоит из конечных пересечений множеств
  ${p_a (x)<epsilon}$ ($a in A$, $epsilon>0$).
] <hint:seminorm-boundedness-characterization>

#hint[@pr:convex-hull-boundedness][Во всяком ЛВП есть базис окрестностей нуля,
  состоящий из выпуклых множеств. Контрпример — пространство $L_p (X,mu)$ на
  безатомном пространстве $X$, например на $[0,1]$ с мерой Лебега, при $0<p<1$.
] <hint:convex-hull-boundedness>

#hint[@pr:product-sequences-no-bounded-neighborhood][Доказать, что в топологии
  покоординатной сходимости $RR^infinity$ — ЛВП с системой полунорм $p_n$
  ($n=0,1,dots$); $p_n ({x_i}_1^infinity)=abs(x_n)$; далее использовать задачу
  @pr:seminorm-boundedness-characterization.
] <hint:product-sequences-no-bounded-neighborhood>

#hint[@pr:compact-open-metric-convex-balls][Для $r>=1$ шар радиуса $r$ —
  выпуклое множество, так как совпадает с $C(RR)$. При $0<r<1$ шар радиуса $r$
  не является выпуклым множеством. Положим
  $ f(x)=cases(1-abs(x) quad & abs(x)<=1, 0 quad & abs(x)>1). $
  Рассмотрите функции вида $lambda f(x)+mu f(x-n)$, $n>-log_2 r$.
] <hint:compact-open-metric-convex-balls>

#hint[@pr:bounded-uniform-metric-linear-topology][Шары
  $S_R={f in C(RR), d(f,0)<=R}$ при $R<1$ не являются поглощающими множествами,
  следовательно, в этой топологии $C(RR)$ не есть ЛТП.
] <hint:bounded-uniform-metric-linear-topology>

#hint[@pr:bounded-continuous-functions-normability][Нормой на $op("BC")(RR)$
  является функция $p(f)=sup abs(f(x))$.
] <hint:bounded-continuous-functions-normability>

#hint[@pr:sequence-product-locally-convex-not-normable][Доказать, что топология
  в $RR^infinity$, заданная метрикой $d({x_n},{y_n})$, есть топология
  покоординатной сходимости (см. задачу
  @pr:product-sequences-no-bounded-neighborhood).
] <hint:sequence-product-locally-convex-not-normable>

==== Сопряженные пространства <ss:hints-topological-dual-spaces>

#hint[@pr:functional-continuity-at-one-point][Следует из линейности функционала
  и инвариантности топологии ЛТП относительно сдвигов.
] <hint:functional-continuity-at-one-point>

#hint[@pr:topological-functional-continuity-characterizations][а) Свести задачу
  к случаю, когда $U$ — уравновешенная окрестность нуля.

  б) При $f=0$ утверждение очевидно. Пусть $f!=0$. Тогда $ker f$ замкнуто,
  следовательно, нигде не плотно, поэтому существуют такие $x in L$ и
  уравновешенная окрестность нуля $V$, что $(x+V) inter ker f=emptyset$.
  Доказать, что $-f(x) in.not f(V)$ и использовать а).
] <hint:topological-functional-continuity-characterizations>

#hint[@pr:neighborhood-cardinality-discontinuous-functional][Пусть $\{U_alpha\}$
  — базис окрестностей нуля. По условию его элементы можно сопоставить различным
  векторам $e_alpha$ базиса Гамеля. Каждая окрестность нуля поглощает каждый
  вектор, поэтому выберем $t_alpha!=0$ так, чтобы $t_alpha e_alpha in U_alpha$.
  Зададим линейный функционал значениями $f(e_alpha)=1/t_alpha$, а на остальных
  векторах базиса положим $f=0$. В каждой $U_alpha$ имеется точка, в которой
  $f=1$. Следовательно, ни одна $U_alpha$ не содержится в $\{x:abs(f(x))<1/2\}$,
  и $f$ не непрерывен.
] <hint:neighborhood-cardinality-discontinuous-functional>

#hint[@pr:polar-section-projection-duality][Выбрать базис в $P$ и дополнить его
  до базиса в $RR^n$.
] <hint:polar-section-projection-duality>

#hint[@pr:continuous-functions-not-dual-space][Единичный шар в пространстве
  $C[a,b]$ имеет две крайние точки: $f(x) equiv 1$ и $f(x) equiv -1$. По теореме
  Крейна — Мильмана следует, что он не является компактом ни в какой
  хаусдорфовой локально выпуклой топологии.
] <hint:continuous-functions-not-dual-space>

==== Теорема Хана — Банаха <ss:hints-hahn-banach-theorem>

#hint[@pr:finite-dimensional-domain-map-continuity][Воспользоваться задачей
  @pr:finite-dimensional-linear-topology-uniqueness.
] <hint:finite-dimensional-domain-map-continuity>

#hint[@pr:polynomial-leading-sign-nonseparation][Разделяющая гиперплоскость
  должна иметь вид $f(x)=0$, $f in P prime$. Доказать, что $f equiv 0$.
] <hint:polynomial-leading-sign-nonseparation>

#hint[@pr:compact-convex-strict-separation][Пусть $A$ компактно; тогда
  существует выпуклая окрестность нуля $V$ такая, что $(A+V) inter B=nothing$.
  Применить геометрическую форму теоремы Хана — Банаха к $A+V$ и $B$ и еще раз
  воспользоваться компактностью $A$.
] <hint:compact-convex-strict-separation>

#hint[@pr:canonical-bidual-isometric-embedding][Фиксируем $x in L$; из теоремы
  Хана — Банаха следует, что существует $x^* in L prime$, $norm(x^*)=1$,
  $(x^*,x)=norm(x)$.
] <hint:canonical-bidual-isometric-embedding>

#hint[@pr:finite-dimensional-bidual-isometry][Изометрическое отображение
  $L arrow.r L prime prime$, построенное в предыдущей задаче
  @pr:canonical-bidual-isometric-embedding, является изоморфизмом в силу
  равенства размерностей пространств $L$ и $L prime prime$.
] <hint:finite-dimensional-bidual-isometry>

#source(328)

#hint[@pr:normed-space-compact-continuous-embedding][В качестве $X$ взять
  единичный шар в сопряженном пространстве с $*$-слабой топологией
  $sigma(L prime, L)$.
] <hint:normed-space-compact-continuous-embedding>

#hint[@pr:separable-space-continuous-interval-embedding][Воспользуйтесь
  результатами пункта @ss:theory-compact-sets-operators.
] <hint:separable-space-continuous-interval-embedding>

#hint[@pr:two-dimensional-sequence-continuous-embedding][Воспользоваться
  полярными координатами.
] <hint:two-dimensional-sequence-continuous-embedding>

#hint[@pr:finite-sequence-bounded-embedding][Использовать сепарабельность
  $l_q (n,RR)$.
] <hint:finite-sequence-bounded-embedding>

#hint[@pr:banach-limit][Пусть $L$ — подпространство в $l_infinity (RR)$,
  порожденное последовательностями вида
  $ y=x_(n+1)-x_n, quad {x_n} in l_infinity. $
  Докажите, что последовательность $y_n equiv 1$ не лежит в $L$. Затем примените
  теорему Хана — Банаха.
] <hint:banach-limit>

#hint[@pr:two-sided-banach-limit][См. указание @hint:banach-limit к предыдущей
  задаче.
] <hint:two-sided-banach-limit>

#hint[@pr:uniformly-bounded-group-invariant-norm][$tilde(p)(x)=sup_n p(T^n x)$
  ($n=0,plus.minus 1,dots$).
] <hint:uniformly-bounded-group-invariant-norm>

#hint[@pr:locally-convex-coordinate-embedding][Рассмотреть пространство
  $product RR^f$ ($f in L prime$) и вложение $x arrow.r {(f,x)}$.
] <hint:locally-convex-coordinate-embedding>

#hint[@pr:translation-invariant-function-mean][См. указание @hint:banach-limit к
  задаче @pr:banach-limit.
] <hint:translation-invariant-function-mean>

#hint[@pr:linear-density-annihilator-criterion][Применить теорему Хана — Банаха.
] <hint:linear-density-annihilator-criterion>

#hint[@pr:closed-convex-halfspace-intersection][См. указание
  @hint:linear-density-annihilator-criterion к задаче
  @pr:linear-density-annihilator-criterion.
] <hint:closed-convex-halfspace-intersection>

#hint[@pr:sequence-unit-ball-countable-halfspaces][Рассмотреть гиперплоскости
  $(x,f_i)=1$, где $f_i$ — счетное всюду плотное подмножество единичного шара в
  $L_q (n,RR)$ ($1/p+1/q=1$).
] <hint:sequence-unit-ball-countable-halfspaces>

#hint[@pr:convex-body-cube-section-approximation][Можно считать, что данное
  выпуклое множество $V$ содержит нуль и пересечение $V$ с каждой прямой,
  проходящей через начало, есть замкнутое множество. Граница $V$ задается в
  полярных координатах $(r,phi)$ уравнением положительной непрерывной функции
  $r(phi)$, удовлетворяющей условию $r(phi+pi)=r(phi)$. Доказать, что
  $forall epsilon>0 exists$ центрально-симметричный многоугольник
  $V_n (epsilon)$ такой, что $abs(r(phi)-tilde(r)(phi))<epsilon$, где
  $tilde(r)(phi)$ — функция границы для $V_n (epsilon)$. $V_n (epsilon)$
  задается пересечением полос вида $abs(a_i x+b_i y)<=1$. Рассмотреть вложение
  $phi:RR^2 arrow.r RR^n$: $(x,y) arrow.r x overline(a)+y overline(b)$, где
  $overline(a)=(a_1,dots,a_n)$, $overline(b)=(b_1,dots,b_n)$.
] <hint:convex-body-cube-section-approximation>

#hint[@pr:finite-sequence-continuous-embedding][Применить результат задачи
  @pr:separable-space-continuous-interval-embedding к сепарабельному банахову
  пространству $l_p (n,RR)$.
] <hint:finite-sequence-continuous-embedding>

#hint[@pr:helly-convex-intersection-theorem][Проведем сначала индукцию по числу
  множеств. Пусть $N>n+2$ и для $N-1$ множеств утверждение доказано. Если
  $X_1,dots,X_N$ удовлетворяют условиям теоремы, то любые $N-1$ из них имеют
  общую точку по предположению индукции. Положим $Y_i=X_i inter X_N$
  ($1<=i<=N-1$). Тогда любые $N-2$ из множеств $Y_i$ имеют общую точку.
  Поскольку $N-2>=n+1$, семейство $Y_i$ снова удовлетворяет условиям теоремы.
  Значит, все $Y_i$ имеют общую точку, которая будет общей для всех $X_i$.
  Осталось разобрать случай $N=n+2$. Выберем $x_i in inter_(j!=i)X_j$. Для $n+2$
  точек в $RR^n$ существует нетривиальная аффинная зависимость
  $sum_i a_i x_i=0$, $sum_i a_i=0$. Разделим ненулевые коэффициенты на
  положительные и отрицательные и нормируем их так, чтобы суммы в обеих группах
  были равны 1. Тогда
  #source(329)
  $z=sum_(a_i>0)a_i x_i=sum_(a_i<0)(-a_i)x_i$. Для каждого $k$ одна из этих
  выпуклых комбинаций не содержит $x_k$, а все остальные $x_i$ принадлежат
  $X_k$. Следовательно, $z in X_k$ для каждого $k$, что и завершает
  доказательство.#ed-note[
    Базовый шаг заменен аргументом через аффинную зависимость (леммой Радона):
    разделение двух произвольных незамкнутых выпуклых множеств не обеспечивает
    пересечения разделяющей гиперплоскости с нужными отрезками.
  ]

  *Замечание.* Топологический вариант верен для конечного семейства открытых
  множеств в $RR^n$, если каждое непустое конечное пересечение стягиваемо.
  Действительно, минимальное подсемейство с пустым общим пересечением состояло
  бы из $r>=n+2$ множеств. Его нерв — граница $(r-1)$-мерного симплекса, то есть
  сфера $S^(r-2)$. По теореме о нерве объединение этих множеств имеет ненулевую
  группу гомологий в степени $r-2>=n$. Но открытое подмножество $RR^n$ имеет
  нулевые гомологии во всех степенях не меньше $n$, что дает
  противоречие.#ed-note[
    Добавлены условия открытости и стягиваемости всех непустых конечных
    пересечений. См. следствие 4G.3, с.459, и предложение 3.29, с.239: #cite(
      <Hatcher2002>,
      form: "full",
    ).
  ]
] <hint:helly-convex-intersection-theorem>

#hint[@pr:nonlocally-convex-function-space-trivial-dual][
  Выберем непрерывное разбиение единицы $rho_0,dots,rho_n$ на $[0,1]$ из
  треугольных функций на равномерной сетке, причем носитель каждой функции имеет
  длину не более $2/n$. Положим $f_i=(n+1)rho_i f$. Тогда
  $f=(n+1)^(-1)sum_(i=0)^n f_i$ и
  $integral_0^1 sqrt(abs(f_i)) dif x <= 2/n sqrt((n+1)norm(f)_infinity)->0$
  равномерно по $i$. Для непрерывного линейного функционала $F$ отсюда следует
  $F(f_i)->0$ равномерно по $i$, а потому $F(f)=0$.#ed-note[
    Непрерывное разбиение единицы сохраняет принадлежность функций пространству
    $C[0,1]$. Ср. метод доказательства предложения 5.7.4(c,d), с.439–440: #cite(
      <Simon2015a>,
      form: "full",
    ).
  ]
] <hint:nonlocally-convex-function-space-trivial-dual>

#hint[@pr:weak-vector-integral][а) $L prime$ разделяет точки $L$.

  б) Используя то, что

  $
    abs(integral_X F(f(x)) dif mu(x))
    <=integral_X abs(F(f(x))) dif mu(x)
    <=norm(F) integral_X norm(f) dif mu(x),
  $
  доказать непрерывность $F(f)$ по $F$.
] <hint:weak-vector-integral>
