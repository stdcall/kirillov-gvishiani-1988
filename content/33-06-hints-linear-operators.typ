#import "main-defs.typ": *
#import "statements.typ": *

=== Линейные операторы <sec:hints-linear-operators>

==== Пространство линейных операторов <ss:hints-linear-operator-space>

#hint[@pr:tail-projections-operator-convergence][Имеют место б) и в).
] <hint:tail-projections-operator-convergence>

#hint[@pr:rank-one-strong-zero-sequence][Пусть
  $x=(x_1,x_2,dots,x_n,dots) in l_2 (RR)$, тогда $A_n x=x_n l_1 arrow.r 0$.
] <hint:rank-one-strong-zero-sequence>

#hint[@pr:rank-one-weak-not-strong-zero-sequence][$(y,B_n x)=x_1 y_n$, где
  $x=(x_1,x_2,dots,x_n,dots) in l_2 (RR)$ и
  $y=(y_1,y_2,dots,y_n,dots) in l_2 (RR)$.
] <hint:rank-one-weak-not-strong-zero-sequence>

#hint[@pr:operator-product-norm-continuity][$
    A_n B_n-A B=A_n B_n-A_n B+A_n B-A B=(A_n-A) B+A_n (B_n-B).
  $
] <hint:operator-product-norm-continuity>

#hint[@pr:weak-operator-convergence-uniform-boundedness][Воспользоваться
  теоремой Банаха — Штейнгауза.
] <hint:weak-operator-convergence-uniform-boundedness>

#hint[@pr:operator-product-strong-sequential-continuity][См. указания
  @hint:operator-product-norm-continuity и
  @hint:weak-operator-convergence-uniform-boundedness к двум предыдущим задачам.
] <hint:operator-product-strong-sequential-continuity>

#hint[@pr:operator-product-strong-topology-continuity][База сильной топологии на
  $op("End") L$ задается множеством полунорм
  $ P_x (A)=norm(A x), quad A in op("End") L, quad x in L. $
  Для доказательства б) достаточно проверить непрерывность умножения в точке
  $(0,0)$, где $0$ — нулевой оператор в $op("End") L$.
] <hint:operator-product-strong-topology-continuity>

#hint[@pr:operator-product-weak-discontinuity][См. задачи
  @pr:rank-one-strong-zero-sequence и
  @pr:rank-one-weak-not-strong-zero-sequence.
] <hint:operator-product-weak-discontinuity>

#hint[@pr:operator-norm-submultiplicativity][$
    norm(A B)<=sup_(norm(x)<=1) norm(A) norm(B x)<=norm(A) norm(B).
  $
] <hint:operator-norm-submultiplicativity>

#hint[@pr:translation-group-operator-continuity][а) Проверить, что
  $norm(f(x+t)-f(x))_(L_p) arrow.r 0$ при $t arrow.r 0$ для непрерывных функций
  с компактным носителем.

  б) $norm(T(t prime)-T(t prime prime))=2$ при $t prime != t prime prime$.
  (Применить оператор к функциям с достаточно малым носителем.)
] <hint:translation-group-operator-continuity>

#source(330)

#hint[@pr:strong-to-weak-sequential-map-boundedness][Пусть $norm(x_n) arrow.r 0$
  и $norm(A x_n) arrow.not 0$. Тогда существуют $epsilon>0$ и
  подпоследовательность ${x_(n_k)}$ такие, что $norm(A x_(n_k))>=epsilon$. Из
  того, что $norm(x_(n_k)) arrow.r 0$, следует существование
  $alpha_(n_k) arrow.r infinity$ таких, что $alpha_(n_k) x_(n_k) arrow.r 0$.
  Тогда из того, что $norm(A alpha_(n_k) x_(n_k)) arrow.r infinity$, следует,
  что ${A alpha_(n_k) x_(n_k)}$ слабо не сходится.
] <hint:strong-to-weak-sequential-map-boundedness>

#hint[@pr:weak-continuity-implies-strong-question][В банаховых пространствах
  слабая и сильная ограниченности совпадают; непрерывность оператора равносильна
  его ограниченности. Ответ: будет.
] <hint:weak-continuity-implies-strong-question>

==== Компактные множества и компактные операторы
<ss:hints-compact-sets-operators>

#hint[@pr:cantor-set-approximate-dimension][Канторово множество покрывается
  $2^n$ отрезками длины $3^(-n)$ и не может быть покрыто меньшим числом отрезков
  такой длины. Поэтому при $epsilon=3^(-n)/2$ $N(epsilon)=2^n$. Значит,
  $N(epsilon)=O(epsilon^(-log_3 2))$ и аппроксимативная размерность равна
  $log_3 2 approx 0.63$.
] <hint:cantor-set-approximate-dimension>

#hint[@pr:extreme-subset-intersections][Условие того, что $A$ — крайнее
  подмножество $K$, выглядит следующим образом: если $x in K$, $y in K$, $x!=y$
  и $(x+y)/2 in A$, то $x in A$ и $y in A$.
] <hint:extreme-subset-intersections>

#hint[@pr:minimal-closed-extreme-subset][Пусть $P$ — семейство всех непустых
  компактных крайних подмножеств множества $K$. Так как $K in P$, то
  $P!=nothing$. Из леммы Цорна следует существование максимальной цепи $Omega$,
  являющейся центрированной системой замкнутых подмножеств $K$. (Система
  множеств называется _центрированной_, если любая конечная подсистема в ней
  имеет непустое пересечение.) Далее использовать тот факт, что следующие
  свойства подмножества $A$ в топологическом пространстве эквивалентны:

  а) $A$ — компакт;

  б) всякая направленность в $A$ имеет поднаправленность, сходящуюся к
  некоторому элементу из $A$;

  в) всякая центрированная система замкнутых подмножеств в $A$ имеет непустое
  пересечение.
] <hint:minimal-closed-extreme-subset>

#hint[@pr:minimal-extreme-subset-singleton][Если $A$ — крайнее подмножество $K$,
  $Lambda in L prime$, $mu$ — максимум $Re Lambda$ на $A$ и
  $A_Lambda={x in A:Re Lambda(x)=mu}$, то $A_Lambda$ — крайнее подмножество $K$.
  Далее воспользоваться тем, что $L prime$ разделяет точки в $L$.
] <hint:minimal-extreme-subset-singleton>

#hint[@pr:compact-convex-extreme-point-existence][См. задачи
  @pr:minimal-closed-extreme-subset и @pr:minimal-extreme-subset-singleton.
] <hint:compact-convex-extreme-point-existence>

#hint[@pr:krein-milman-theorem][Пусть $H$ — выпуклая оболочка крайних точек $K$.
  Так как $K$ компактно и выпукло, то замыкание $overline(H) subset K$. Поэтому
  $overline(H)$ компактно. Предположим, что некоторая точка $x_0 in K$ и
  $x_0 in.not overline(H)$. Применяя теорему Хана — Банаха к $x_0$ и
  $overline(H)$, показать, что $K_Lambda subset.not overline(H)$
  ($Lambda in L prime$ — теорема Хана — Банаха. По поводу обозначения $K_Lambda$
  см. задачу @pr:minimal-extreme-subset-singleton). Таким образом мы получаем
  противоречие построению $H$.
] <hint:krein-milman-theorem>

#hint[@pr:sequence-unit-ball-extreme-points][Все точки единичной сферы
  пространства $l_p (n,RR)$.
] <hint:sequence-unit-ball-extreme-points>

#hint[@pr:convergent-sequence-unit-ball-extreme-points][Единичный шар
  пространства $c_0$ не имеет крайних точек. В пространстве $c$ единичный шар
  имеет крайние точки: например,
  $ (1,1,dots,1,dots) quad "и" quad (-1,-1,dots,-1,dots). $
] <hint:convergent-sequence-unit-ball-extreme-points>

#hint[@pr:convergent-sequences-not-dual-spaces][
  Для $c_0$ примените теорему Крейна — Мильмана (@pr:krein-milman-theorem): его
  единичный шар не имеет крайних точек. Пусть теперь $c=F prime$ изометрически.
  По задаче @pr:convergent-null-sequence-duals пространство $F$ изометрически
  вложено в $c prime=l_(1) (NN union \{infinity\})$ и нормирует $c$. Обозначим
  через $delta_n$ функционал $x|->x_n$. Для любого $epsilon>0$ выберем
  $phi in F$, $norm(phi)<=1$, и, умножая на число единичного модуля, сделаем
  $phi(e_n)$ вещественным и большим $1-epsilon$. Тогда
  $norm(phi-delta_n)<=2epsilon$, поэтому $delta_n in F$. В единичном шаре $c$
  рассмотрим последовательности с первыми $m$ координатами $(-1)^n$, а
  остальными — нулевыми. По слабой звездной компактности у них имеется
  кластерная точка. Поскольку все $delta_n$ принадлежат $F$, ее координаты равны
  $(-1)^n$, что противоречит принадлежности $c$.#ed-note[
    Теорема Крейна — Мильмана сама по себе не исключает пространство $c$, шар
    которого имеет крайние точки. Добавлен аргумент с координатными
    функционалами. Ср. представление функционалов на $C(X)$ в следствии 7.18,
    с.223: #cite(<Folland1999>, form: "full").
  ]
] <hint:convergent-sequences-not-dual-spaces>

#hint[@pr:bounded-function-family-precompactness][Пусть $M$ — предкомпактное
  множество. Тогда оно обладает $epsilon/3$-сетью ${f_i}$ ($1<=i<=N$). Компакт
  $X$ можно представить в виде объединения конечного числа частей диаметра
  $<epsilon/3$. Поэтому для каждого $i$ существует разбиение $T$ на конечное
  число частей, на которых колебание $f_i$ не превосходит $epsilon/3$. Взяв
  произведение этих разбиений, мы получим разбиение $T$ на такие части ${T_j}$
  ($1<=j<=n$), что колебание $f_i$ на $T_j$ не превосходит $epsilon/3$ для
  #source(331)
  всех $i$ и $j$. Если теперь $f$ — любая функция из $M$, $f_i$ — ближайшая к
  $f$ точке $epsilon/3$-сети, а $t$ и $s$ — любые точки из $T_j$, то

  $
    d_X (f(t),f(s))<=d_X (f(t),f_i (t))+d_X (f_i (t),f_i (s))
    +d_X (f_i (s),f(s)) \
    <epsilon/3+epsilon/3+epsilon/3=epsilon.
  $
  Необходимость условия доказана.

  Пусть теперь задано $epsilon>0$ и существует такое разбиение
  $T=product_(i=1)^n T_j$, что $omega_f (T_j)<epsilon/4$ для всех $f in M$.
  (Здесь $omega_f (T_j)$ означает колебание функции $f$ на множестве $T_j$.)
  Выберем в каждом множестве $T_j$ по точке $t_j$ и рассмотрим отображение
  $phi:M arrow.r X^n$: $f arrow.r (f(t_1),dots,f(t_n))$. Так как $X$ — компакт,
  $X^n$ — также компакт (расстояние в $X^n$ определяется формулой
  $d(x,y)=max_(1<=i<=n) d_X (x_i,y_i)$). Значит, образ $M$ — предкомпактное
  множество. Выберем в $phi(M)$ конечную $epsilon/2$-сеть
  $phi(f_1),dots,phi(f_n)$. Тогда $f_1,dots,f_n$ — $epsilon$-сеть для $M$. В
  самом деле, если $f$ — любая функция из $M$, а $phi(f_i)$ — ближайшая к
  $phi(f)$ точка $epsilon/2$-сети, то для $t in T_j$ имеем

  $
    d_X (f(t),f_i (t))<=d_X (f(t),f(t_j))+d_X (f(t_j),f_i (t_j)) \
    +d_X (f_i (t_j),f_i (t))<epsilon/4+epsilon/2+epsilon/4=epsilon.
  $
] <hint:bounded-function-family-precompactness>

#hint[@pr:doubly-stochastic-extreme-points][Крайние точки — матрицы $(a_(i j))$,
  где $a_(i sigma(i))=1$; $a_(i j)=0$ для $j!=sigma(i)$, где $sigma in S$ —
  симметрическая группа $n$-го порядка. Для $n=2$ это очевидно. Пусть это
  доказано для $k<n$. Крайние точки множества стохастических матриц порядка $n$
  — это сечение куба $0<=x_(i j)<=1$ ($i,j=1,dots,n$) плоскостью
  $sum_i x_(i j)=1$ ($j=1,dots,n$). Отсюда следует, что каждая крайняя к
  $sum_j x_(i j)=1$ ($i=1,dots,n$) точка должна содержать не менее $n^2-2 n$
  нулей. Проверить, что у крайней точки найдется $a_(i j)=1$, и применить
  индукцию к матрице, у которой вычеркнуты $i$-я строка и $j$-й столбец.
] <hint:doubly-stochastic-extreme-points>

#hint[@pr:infinite-dimensional-identity-noncompact][Единичная сфера в этом
  случае ограничена, но не компактна.
] <hint:infinite-dimensional-identity-noncompact>

#hint[@pr:compact-operator-no-bounded-inverse][Компактные операторы образуют
  идеал в $op("End")(L)$.
] <hint:compact-operator-no-bounded-inverse>

#hint[@pr:diagonal-sequence-operator-compactness][Если $a_i arrow.r 0$, то
  $forall epsilon>0 exists N:forall n>N abs(a_n)<epsilon$. Рассмотреть
  $K={{x_i} in l_p (RR):norm({x_i/a_i})_(l_p)<=1}$ (можно считать, что $a_i!=0$)
  и $K_N=K inter L(e_1,dots,e_N)$, выбрать $epsilon$-сеть $x_1,dots,x_m$ в $K_N$
  и доказать, что она есть $2 epsilon$-сеть для $K$. Оператор $A$ компактен
  тогда и только тогда, когда $K$ компактно.
] <hint:diagonal-sequence-operator-compactness>

#hint[@pr:continuous-multiplication-noncompact][На подпространстве
  $L={f in C[0,1],f|_([0,1/2])=0}$ оператор $A f=x f$ обратим.
] <hint:continuous-multiplication-noncompact>

#hint[@pr:adjoint-compactness-implies-operator-compactness][Пусть $A prime$ —
  компактный оператор. Тогда оператор $A prime prime$ компактен. Поэтому
  множество $A prime prime S prime prime$, где $S prime prime$ — замкнутый
  единичный шар в пространстве $L_1 prime prime$, предкомпактно. Пространство
  $L_2$ может быть изометрически вложено в $L_2 prime prime$. Отождествляя $L_2$
  с образом в $L_2 prime prime$ при этом вложении, получаем
  $A S subset.eq A prime prime S prime prime$, следовательно, множество $A S$
  предкомпактно в сильной топологии $L_2 prime prime$, а потому и в сильной
  топологии пространства $L_2$.
] <hint:adjoint-compactness-implies-operator-compactness>

#hint[@pr:continuous-kernel-operator-compactness][Применить теорему Арцела —
  Асколи.
] <hint:continuous-kernel-operator-compactness>

#source(332)

#hint[@pr:square-integrable-kernel-compactness][Если ${phi_i}$ и ${psi_j}$ —
  полные ортонормированные системы в $L_2 (X,mu)$ и $L_2 (Y,nu)$, то
  ${phi_i psi_j}$ — полная ортосистема в $L_2 (X times Y,mu times nu)$.
] <hint:square-integrable-kernel-compactness>

#hint[@pr:hardy-averaging-operator][Пусть $F(x)=1/x integral_0^x f(t) dif t$,
  $f(t)>=0$. Сначала предположим, что $f$ ограничена и имеет компактный
  носитель.

  Если $0<xi<X$, то имеем

  $
    integral_xi^X F^p dif x=-1/(p-1) integral_xi^X (x F)^p
    dif/(dif x) (x^(1-p)) dif x \
    =(xi F^p (xi))/(p-1)-(X F^p (X))/(p-1)
    +p/(p-1) integral_xi^X F^(p-1) f dif x.
  $
  Граничный член при $X->infinity$ стремится к нулю, а
  $xi F^(p) (xi)<=integral_0^xi f^p dif x->0$ при $xi->+0$. Отсюда
  $
    norm(F)_p^p <= p/(p-1) norm(f)_p norm(F^(p-1))_q
    =p/(p-1) norm(f)_p norm(F)_p^(p-1).
  $
  Для произвольной неотрицательной $f$ применим полученную оценку к
  $f_N=min(f, N)chi_([0,N])$ и перейдем к пределу по теореме Леви. Для функции
  произвольного знака используем $abs(T f)<=T abs(f)$. Чтобы проверить точность
  оценки, положим $f_(epsilon) (x)=x^(-1/p+epsilon)chi_((0,1))(x)$, $epsilon>0$.
  На $(0,1)$ имеем $T f_epsilon=f_epsilon/(1-1/p+epsilon)$, поэтому
  $norm(T)>=(1-1/p+epsilon)^(-1)->p/(p-1)$. Ответ: $norm(T)=p/(p-1)$.#ed-note[
    Исправлена степень в применении неравенства Гельдера и уточнены предельные
    переходы. Ср. теорему 6.1.3, с.550–551: #cite(<Simon2015c>, form: "full").
  ]
] <hint:hardy-averaging-operator>

#hint[@pr:reflexive-completely-continuous-compact-operator][$L$ рефлексивно
  тогда и только тогда, когда единичный шар $S prime$ слабо компактен.
] <hint:reflexive-completely-continuous-compact-operator>

#hint[@pr:smooth-function-space-compact-embedding][Воспользоваться теоремой
  Асколи — Арцела.
] <hint:smooth-function-space-compact-embedding>

#hint[@pr:compact-operator-polynomial-equation][Если $c_0!=0$, то нет. Если
  $c_0=0$, то может. Примером служит конечномерный проектор.
] <hint:compact-operator-polynomial-equation>

==== Теория фредгольмовых операторов <ss:hints-fredholm-operators>

#hint[@pr:diagonal-operator-closed-range][Необходимое и достаточное условие:
  существует $c>0$ такое, что все отличные от нуля $a_n$ удовлетворяют условию
  $abs(a_n)>c$. Далее применить теорему Банаха об обратном операторе.
] <hint:diagonal-operator-closed-range>

#hint[@pr:backward-shift-kernel-cokernel][$im T^k=l_p (RR)$. Следовательно,
  $op("coker") T^k=0$, а $ker T^k$ порождается первыми $k$ базисными векторами.
] <hint:backward-shift-kernel-cokernel>

#hint[@pr:polyhedral-cochain-cohomology][а) Полуточность в членах $L_0$ и $L_3$
  очевидна.

  б) Полуточность в члене $L_1$. Пусть $x$ — произвольная вершина $P$, $e_x$
  равна $1$ на $x$ и нулю на остальных вершинах. Тогда $d_1 e_x$ равна $1$ на
  выходящих из $x$ ребрах, $-1$ на входящих в $x$ ребрах и $0$ на остальных.
  Рассмотрим любую грань $Delta$, которой принадлежит $x$; тогда $x$ принадлежит
  последовательно двум ребрам $Gamma_1$ и $Gamma_2$ грани $Delta$. Если
  $Gamma_1$ и $Gamma_2$ оба входящие в $x$ или выходящие из $x$ ребра, то
  $epsilon(Gamma_1, Delta)=-epsilon(Gamma_2, Delta)$. Если одно ребро выходит, а
  другое входит в $x$, то $epsilon(Gamma_1, Delta)=epsilon(Gamma_2, Delta)$.
  Отсюда следует, что $d_2 d_1=0$.

  в) Полуточность в члене $L_2$. Рассмотрим любое ребро $Gamma$ и функцию
  $f_Gamma$, равную $1$ на $Gamma$ и нулю на остальных ребрах. Пусть $Delta_1$ и
  $Delta_2$ — любая пара граней, которым принадлежит $Gamma$. Если
  $epsilon(Gamma, Delta_1)=epsilon(Gamma, Delta_2)$, то
  $epsilon(Delta_1, P)=-epsilon(Delta_2, P)$. Если
  $epsilon(Gamma, Delta_1)=-epsilon(Gamma, Delta_2)$, то
  $epsilon(Delta_1, P)=epsilon(Delta_2, P)$. Отсюда $d_3 d_2=0$.

  Для куба и симплекса $H_0=RR$; $H_1=H_2=H_3=0$. Для куба с дырой $H_0=H_1=RR$;
  $H_2=H_3=0$. Для куба с внутренней полостью $H_0=H_2=RR$, $H_1=H_3=0$.
] <hint:polyhedral-cochain-cohomology>

#hint[@pr:circle-differentiation-cohomology][$im d$ — подмножество в
  $C^(k-1)(T)$, состоящее из функций $f$, для которых
  $integral_0^(2 pi) f(t) dif t=0$. Оба пространства когомологий одномерны.
] <hint:circle-differentiation-cohomology>

#source(333)

#hint[@pr:euler-cochain-dimension-identity][Считая, что $T_0=T_(n+1)=0$, имеем

  $
    H_i equiv ker T_(i+1)/(im T_i); quad L_i/(ker T_(i+1)) equiv im T_(i+1),
    quad i=0,1,dots,n,
  $
  откуда

  $
    dim H_i+dim im T_i=dim ker T_(i+1), \
    dim im T_(i+1)+dim ker T_(i+1)=dim L_i.
  $
] <hint:euler-cochain-dimension-identity>

#hint[@pr:dual-exactness-implies-exactness][Сопряженная последовательность
  точна, следовательно, $im T_k prime$ замкнут в $L_(k-1) prime$; тогда $im T_k$
  замкнут в $L_k$. Если включение $im T_k subset ker T_(k+1)$ строгое, то по
  теореме Хана — Банаха существует такой $f in L_k prime$, что
  $f in ker T_k prime$ и $f in.not im T_(k+1) prime$.
] <hint:dual-exactness-implies-exactness>

#hint[@pr:dual-cohomology-spaces][Будем через $X^0 subset L prime$ обозначать
  _аннулятор_#idx("Аннулятор множества") множества $X subset L$, т. е.
  совокупность тех $f in L prime$, которые обращаются в нуль на $X$. Пусть $phi$
  — факторотображение $L_k prime arrow.r L_k prime/(ker T_(k+1))^0$, тогда
  $(H_k) prime=(ker T_(k+1)/(im T_k)) prime=phi((im T_k)^0)$. Но
  $(ker T_(k+1))^0=im T_(k+1) prime$, так как $im T_(k+1) prime$ замкнут в
  $*$-слабой топологии
  $arrow.r.double L prime/(ker T_(k+1))^0=L_k prime/(im T_(k+1) prime)$, но
  $
    (im T_k)^0=ker T_k prime supset im T_(k+1) prime
    arrow.r.double phi((im T_k)^0)=ker T_k prime/(im T_(k+1) prime)
  $.
] <hint:dual-cohomology-spaces>

#hint[@pr:backward-shift-parametrix][Оператор сдвига вправо.
] <hint:backward-shift-parametrix>

#hint[@pr:ordinary-differential-operator-fredholm-index][$dim ker A=n$,
  $dim op("coker") A=0$; $op("ind") A=n$.
] <hint:ordinary-differential-operator-fredholm-index>

#hint[@pr:continuous-multiplication-fredholm-question][Ответ: если $a(x)!=0$ ни
  в одной точке отрезка $[0,1]$. Если множество нулей $a$ имеет непустую
  внутренность, то $ker A$ бесконечномерно. В противном случае выберем нуль
  $x_0 in [0,1]$ и последовательность $x_n arrow.r x_0$ такую, что $a(x_n)!=0$.
  Рассмотрим $f_lambda in C[0,1]$ такую, что $f_lambda (x_n)=abs(a(x_n))^lambda$
  ($0<lambda<1$). Тогда $f_lambda$ независимы $mod im A$.
] <hint:continuous-multiplication-fredholm-question>

#hint[@pr:harmonic-boundary-restriction-fredholm][$ker P=0$, $im P=C(Gamma)$,
  так как любую непрерывную на $Gamma$ функцию $u$ можно единственным образом
  гармонически продолжить в $Omega$.
] <hint:harmonic-boundary-restriction-fredholm>

#hint[@pr:holomorphic-multiplication-fredholm][В силу теоремы единственности для
  голоморфных функций ядро оператора $A$ умножения на $a(z)$ — нулевое.

  Пусть $z_1,dots,z_n$ — нули $a(z)$ на $Omega$ кратности $k_1,dots,k_n$. Тогда
  $ im A={f in H(Omega), f^((j))(z_i)=0, j=0,dots,k_i-1; i=1,dots,n}, $
  $ op("ind") A=-sum_(i=1)^n k_i. $
] <hint:holomorphic-multiplication-fredholm>

#hint[@pr:creation-annihilation-fredholm-index][Пусть
  $phi_k (x)=H_k (x) e^(-x^2/2)$, где $H_k$ — полиномы Эрмита#idx(
    "Полином Эрмита",
  ). Проверьте, что ${phi_k}$ является ортогональным базисом в $H_0$ и что
  $A_+ phi_k=-2 k phi_(k-1)$ и $A_- phi_k=phi_(k+1)$.
] <hint:creation-annihilation-fredholm-index>

#hint[@pr:hilbert-schmidt-kernel-operators][а) Использовав теорему @th:fubini,
  доказать, что функция $psi(s)=(A phi)(s)$ определена почти всюду. Применяя
  неравенство Коши — Буняковского, получить оценку
  $ abs(psi(s))^2<=norm(phi)_(L_2)^2 integral_a^b abs(K(s,t))^2 dif t. $
  Интегрируя это неравенство по $s$, приходим к искомой оценке.

  б) Проверяется непосредственно, исходя из определений.
] <hint:hilbert-schmidt-kernel-operators>

#hint[@pr:hilbert-schmidt-adjoint-kernel][Применить теорему @th:fubini.
] <hint:hilbert-schmidt-adjoint-kernel>

#hint[@pr:degenerate-kernel-fredholm-equation][Положить
  $a_(i j)=integral_a^b Q_i (t) P_j (t) dif t$,
  $b_j=integral_a^b Q_j (t) f(t) dif t$.
] <hint:degenerate-kernel-fredholm-equation>

#source(334)

#hint[@pr:volterra-equation-unique-solution][Показать, что некоторая степень
  оператора, стоящего в правой части уравнения, является сжимающим оператором и,
  следовательно, однородное уравнение имеет единственное (тривиальное) решение.
  Далее применить альтернативу Фредгольма.
] <hint:volterra-equation-unique-solution>

#hint[@pr:hilbert-schmidt-product-kernel][Применить теорему @th:fubini и
  неравенство Коши — Буняковского.
] <hint:hilbert-schmidt-product-kernel>

#hint[@pr:hilbert-schmidt-power-kernel-bound][Воспользоваться результатом задачи
  @pr:hilbert-schmidt-product-kernel и применить индукцию.
] <hint:hilbert-schmidt-power-kernel-bound>
