#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/hints-peano-recursion.typ": peano-recursive-square

=== Функциональные пространства и обобщенные функции
<sec:hints-function-spaces-distributions>

==== Пространства интегрируемых функций <ss:hints-integrable-function-spaces>

#hint[@pr:holder-integral-inequality][Докажите сначала для $a,b>=0$ числовое
  неравенство $a^(1/p) b^(1/q)<=a/p+b/q$; рассмотрев функцию
  $phi(t)=t^(1/p)-t/p$, докажите неравенство $phi(t)<=phi(1)$ для $t>0$ и
  подставьте $t=a/b$.
] <hint:holder-integral-inequality>

#hint[@pr:integral-norm-dual-supremum][Из неравенства Гельдера следует, что

  $
    abs(integral_X f g dif mu)<=integral_X abs(f g) dif mu \
    <=(integral_X abs(f)^p dif mu)^(1/p)
    (integral_X abs(g)^q dif mu)^(1/q)
    <=(integral_X abs(f)^p dif mu)^(1/p).
  $
  Следовательно,
  $sup abs(integral_X f g dif mu)<=(integral_X abs(f)^p dif mu)^(1/p)$.
  Подберите функцию $g(x)$, для которой достигается неравенство.
] <hint:integral-norm-dual-supremum>

#hint[@pr:minkowski-integral-inequality][Пусть $q$ связано с $p>1$ соотношением
  $1/p+1/q=1$. Применяя неравенство Гельдера, имеем

  $
    integral_X abs(f+g)^p dif mu
    <=integral_X abs(f) abs(f+g)^(p-1) dif mu
    +integral_X abs(g) abs(f+g)^(p-1) dif mu \
    <=(integral_X abs(f)^p dif mu)^(1/p)
    (integral_X abs(f+g)^p dif mu)^(1/q) \
    +(integral_X abs(g)^p dif mu)^(1/p)
    (integral_X abs(f+g)^p dif mu)^(1/q),
  $
  откуда непосредственно следует доказываемое неравенство.
] <hint:minkowski-integral-inequality>

#hint[@pr:measure-countable-base-separability][Пусть $n,k in ZZ$, $m in NN$,
  $chi$ — характеристическая функция. Если ${A_n}$ — база, то конечные суммы
  функций $f_(k m n) (x)=k/m chi(A_n)$ — всюду плотное множество в $L_1 (X,mu)$.
  Если $g_n (x)$ плотно в $L_1 (X,mu)$, то
  $B_(k m n)={x in X | k/m<=g_n (x)<(k+1)/m}$ — база.
] <hint:measure-countable-base-separability>

#hint[@pr:integrable-space-separability-equivalence][Решение аналогично задаче
  @pr:measure-countable-base-separability.
] <hint:integrable-space-separability-equivalence>

#hint[@pr:essentially-bounded-space-nonseparability][Рассмотрите несчетное
  множество функций, принимающих значения $0$ и $1$.
] <hint:essentially-bounded-space-nonseparability>

#source(335)

#hint[@pr:finite-measure-integrable-space-inclusion][Пусть $p prime$, $q prime$
  удовлетворяют условиям $p prime=p/q$; $1/(p prime)+1/(q prime)=1$, $f in L_p$.
  Суммируемость $abs(f)^q$ следует из неравенства Гельдера

  $
    integral_X abs(f)^q dif mu
    <=(integral_X abs(f)^p dif mu)^(1/(p prime))
    (integral_X 1 dif mu)^(1/(q prime)).
  $
] <hint:finite-measure-integrable-space-inclusion>

#hint[@pr:real-line-integrable-spaces-incomparable][Пусть $q>p$, $1/p>k>1/q$.
  Рассмотрите функции

  $
    f_q (x)=x^(-k) theta(x-1), \
    f_p (x)=x^(-k) chi_([0,1])(x).
  $
] <hint:real-line-integrable-spaces-incomparable>

#hint[@pr:power-denominator-integrability-range][$1/beta<p<1/alpha$.
] <hint:power-denominator-integrability-range>

#hint[@pr:triple-holder-product-integrability][Пусть $1/q+1/r=1/s$, тогда
  $1/(q/s)+1/(r/s)=1$. Применяя два раза неравенство Гельдера, имеем
  $ norm(f g h)_1<=norm(f)_p norm(g h)_s<=norm(f)_p norm(g)_q norm(h)_r. $
] <hint:triple-holder-product-integrability>

#hint[@pr:integrable-norm-interpolation][Легко проверить, что
  $1/r=alpha/p+beta/q$, $alpha+beta=1$. Ограничимся случаем $q<infinity$,
  $f(x)>=0$. Тогда $1=1/(p/(r alpha))+1/(q/(r beta))$; примените неравенство
  Гельдера к произведению $f^(alpha r) dot f^(beta r)$.
] <hint:integrable-norm-interpolation>

#hint[@pr:essential-supremum-limit-of-integral-norms][Используйте очевидное
  неравенство

  $
    (norm(f)_infinity-epsilon)(mu(X prime))^(1/p)
    <=norm(f)_p<=(mu(X))^(1/p) norm(f)_infinity,
  $
  где множество $X prime subset X$ подбирается по $epsilon>0$ так, чтобы
  $abs(f)>=norm(f)_infinity-epsilon$ при $x in X prime$, $mu(X prime)!=0$.
] <hint:essential-supremum-limit-of-integral-norms>

#hint[@pr:integrable-function-dense-subsets][а) Используйте тот факт, что
  линейное подпространство $X$ в ЛВП $L$ плотно тогда и только тогда, когда
  всякий линейный функционал $f in L prime$, равный нулю на $X$, обращается в
  нуль тождественно.

  б), в), г) — см. указание @hint:real-line-integrable-dense-approximants к
  задаче @pr:real-line-integrable-dense-approximants.
] <hint:integrable-function-dense-subsets>

#hint[@pr:power-function-integral-norm][При $alpha!=0$ $-1/p<alpha$,
  $norm(x^alpha)_p=(p alpha+1)^(-1/p)$; при $1<=p<infinity$ $norm(x^0)_p=1$; при
  $alpha>=0$ $norm(x^alpha)_infinity=1$.
] <hint:power-function-integral-norm>

#hint[@pr:integrable-closed-subspaces-continuity][а) Подпространство ломаных с
  вершинами в точках $0$, $plus.minus 1$, $plus.minus 2$, $dots$

  б) Функции из $L_1$, удовлетворяющие условию $f(x)=f(floor(x))$.
] <hint:integrable-closed-subspaces-continuity>

#hint[@pr:integrable-closed-subspace-unbounded-function][Пусть
  $L subset L_infinity (X,mu)$. Тождественное отображение из $L_infinity (X,mu)$
  в $L_1 (X,mu)$ непрерывно. По теореме Банаха об обратном операторе, обратное
  отображение непрерывно на $V$. Следовательно, существует постоянная $M_1$
  такая, что $norm(f)_infinity<=M_1 dot norm(f)_1$ при $f in V$. Из этого
  неравенства и неравенства Коши — Буняковского следует оценка
  $norm(f)_infinity<=M_2 norm(f)_2$ при $f in V$. Пусть $phi_1,dots,phi_n$ —
  ортонормированная система в $V$, соответствующая скалярному произведению в
  $L_2 (X,mu)$. Тогда, если $(c_1,dots,c_n)$ — единичный вектор в $l_2 (n,RR)$,
  имеем:

  $
    norm(sum_(k=1)^n c_k phi_k)_infinity
    <=M_2 norm(sum_(k=1)^n c_k phi_k)_2=M_2.
  $
  Из этого следует, что для почти всех $x in X$ вектор
  $(phi_1 (x),dots,phi_n (x))$ имеет норму $<=M_2$ в $l_2 (n,RR)$. Таким
  образом,

  $
    n=integral_X sum_(k=1)^n abs(phi_k (x))^2 dif mu<=M_2^2 mu(X)
    quad "и" quad dim V<infinity.
  $
] <hint:integrable-closed-subspace-unbounded-function>

#source(336)

#hint[@pr:compactly-supported-continuous-integrable-density][Для любого
  $epsilon>0$ и любой $f in L_p (RR,dif x)$ существует отрезок $[a,b]$ такой,
  что $(integral_(RR without [a,b]) abs(f(x))^p dif x)^(1/p)<epsilon$. Примените
  задачу @pr:integrable-function-dense-subsets.
] <hint:compactly-supported-continuous-integrable-density>

#hint[@pr:integrable-function-translation-continuity][Проверьте непрерывность в
  среднем на пространстве $C_0 (RR)$ из задачи
  @pr:compactly-supported-continuous-integrable-density.
] <hint:integrable-function-translation-continuity>

#hint[@pr:multidimensional-integrable-translation-continuity][Проверьте
  непрерывность в среднем на пространстве $C_0 (RR^n)$.
] <hint:multidimensional-integrable-translation-continuity>

#hint[@pr:integrable-function-precompactness-criterion][Пусть сначала $M$
  состоит из одной функции $f$. Тогда условие а) выполнено автоматически,
  условие б) вытекает из определения суммируемой функции, а условие в) — из
  задачи @pr:integrable-function-translation-continuity. Далее, если $M$ состоит
  из конечного числа функций $f_1,dots,f_n$, то для каждой функции $f_i$ условия
  а), б), в) выполняются с константами $c_i$, $R_i (epsilon)$,
  $delta_i (epsilon)$ соответственно. Положим $c=max_i c_i$,
  $R(epsilon)=max_i R_i (epsilon)$, $delta(epsilon)=min_i delta_i (epsilon)$.
  Тогда для $M$ выполнены условия а), б), в). Наконец, если $M$ — любое
  предкомпактное множество, для которого ${f_1,dots,f_n}$ — $epsilon/3$-сеть, то
  для $M$ выполняются условия а), б), в) с константами $c+epsilon/3$,
  $R(2 epsilon/3)$, $delta(epsilon/3)$. Это доказывает необходимость условий а),
  б), в).

  Пусть теперь условия а), б), в) выполнены. Рассмотрим отображение
  $phi_epsilon$ множества $M$ в $C[-R(epsilon),R(epsilon)]$ по формуле
  $phi_epsilon (f)(x)=1/(delta(epsilon)) integral_x^(x+delta(epsilon)) f(t)
  dif t$ на этом отрезке, продолжая результат нулем вне отрезка при сравнении в
  $L_p (RR,dif x)$. Из условия а) вытекает, что $phi(M)$ ограничено в
  $C[-R(epsilon),R(epsilon)]$; из условий б) и в) — что расстояние в
  $L_p (RR,dif x)$ между $f$ и $phi_epsilon (f)$ не превосходит $2 epsilon$.
  Наконец, из в) следует, что функции $phi(f)$, $f in M$ равностепенно
  непрерывны. Поэтому $phi(M)$ — предкомпакт в $C[-R(epsilon),R(epsilon)]$ и,
  тем более, предкомпакт в $L_p (RR,dif x)$.

  Если ${phi(f_1),dots,phi(f_n)}$ — $epsilon$-сеть в $phi(M)$, то $f_1,dots,f_n$
  — $5 epsilon$-сеть в $M$. Поскольку $epsilon$ произвольно, $M$ — предкомпакт.
] <hint:integrable-function-precompactness-criterion>

#hint[@pr:integrable-projective-tensor-product][
  Для $sigma$-конечных мер $mu,nu$ отображение $R(f times.o g)(x,y)=f(x)g(y)$
  продолжается до сжатия из проективного тензорного произведения в
  $L_(1) (X times Y,mu times nu)$. Рассмотрим плотное подпространство сеточных
  тензоров $u=sum_(i,j)c_(i j)chi_(E_i) times.o chi_(F_j)$, где множества $E_i$
  попарно не пересекаются, множества $F_j$ также, и все имеют конечную меру.
  Тогда
  $
    norm(u)_pi <= sum_(i,j)abs(c_(i j))mu(E_i)nu(F_j)
    =norm(R u)_1 <= norm(u)_pi.
  $
  #source(337)
  Простые функции аппроксимируют факторы в $L_1$, поэтому такие тензоры плотны в
  проективном произведении. Прямоугольные простые функции плотны в $L_1$
  произведения мер. Следовательно, продолжение $R$ изометрично и
  сюръективно.#ed-note[
    Устранена необоснованная редукция к множествам рациональной меры. Ср. полный
    сеточный аргумент в главе 2, §7, теореме 5, с.227–228: #cite(
      <Helemskii2014>,
      form: "full",
    ).
  ]
] <hint:integrable-projective-tensor-product>

#hint[@pr:integrable-unit-ball-extreme-points][а) Назовем подмножество $E$ в
  пространстве $X$ с мерой $mu$ _атомом_, если $mu(E)>0$ и любое измеримое
  подмножество $F subset E$ либо имеет меру нуль, либо $mu(F)=mu(E)$. (Легко
  проверить, что для борелевских мер $mu$ атомы — это точки положительной меры.)
  Докажите, что крайними точками единичного шара в вещественном $L_1 (X,mu)$
  являются функции $plus.minus chi_E/mu(E)$ для атомов $E$ конечной меры и
  только они (в комплексном случае — $c chi_E/mu(E)$, $abs(c)=1$). (В частности,
  пространство $l_1$ имеет крайние точки, а $L_1 [0,1]$ — нет.)

  б) Все граничные точки шара (для доказательства выясните, когда неравенство
  Минковского превращается в равенство).

  в) Множество таких $f$, что $abs(f(x))=1$ почти для всех $x$.
] <hint:integrable-unit-ball-extreme-points>

#hint[@pr:integrable-and-summable-sequence-nonisomorphism][
  По задаче @pr:schur-property в $l_1$ слабая сходимость последовательности
  влечет сходимость по норме. В $L_1[0,1]$ последовательность
  $f_(n) (t)=sin(2pi n t)$ слабо сходится к нулю, но $norm(f_n)_1=2/pi$.
  Действительно, всякий функционал задается функцией
  $g in L_infinity[0,1] subset L_2[0,1]$, а интегралы $integral_0^1 g f_n dif t$
  стремятся к нулю по неравенству Бесселя. Банахов изоморфизм сохраняет слабую
  сходимость и сходимость по норме, поэтому искомого изоморфизма нет.#ed-note[
    Вместо аргумента о крайних точках использовано свойство Шура; ср. пример
    5.7.3, с.438–439, и упражнение 6 к §5.7, с.445: #cite(
      <Simon2015a>,
      form: "full",
    ).
  ]
] <hint:integrable-and-summable-sequence-nonisomorphism>
==== Пространства непрерывных функций <ss:hints-continuous-function-spaces>

#hint[@pr:continuous-function-space-completeness][Для доказательства полноты
  рассмотрите поточечный предел фундаментальной в $C(X)$ последовательности.
] <hint:continuous-function-space-completeness>

#hint[@pr:euclidean-compact-continuous-space-separability][Многочлены от $n$
  переменных с рациональными коэффициентами образуют всюду плотное множество в
  $C(X)$.
] <hint:euclidean-compact-continuous-space-separability>

#hint[@pr:positive-continuous-function-functional][Если функция $g$ принадлежит
  единичному шару в $C(X)$, то положим
  $ abs(F(g))=abs(F((g+abs(g))/2)-F((abs(g)-g)/2))<=F(1). $
] <hint:positive-continuous-function-functional>

#hint[@pr:continuous-functional-positive-decomposition][Если $f(x)$ —
  неотрицательная функция, то положим $G f={g:0<=g(x)<=f(x)}$. Обозначим
  $F_1 (f)=sup_(g in G f) F(g)$. Неравенства $F_1 (f)>=F(f)$ и $F_1 (f)>=0$ для
  $f>=0$ очевидны. Аддитивность $F_1$ следует из тождества
  $G(f_1+f_2)=G f_1+G f_2$ (включение $G f_1+G f_2 subset G(f_1+f_2)$ очевидно,
  а обратное включение следует из тождества
  $g=g f_1/(f_1+f_2)+g f_2/(f_1+f_2)$).
] <hint:continuous-functional-positive-decomposition>

#hint[@pr:positive-functional-representing-measure][Если $F(1)=0$, то $F=0$ и
  $mu=0$. В остальных случаях нормируем функционал, заменяя его на $F/F(1)$.
  Будем обозначать через $E_epsilon$ $epsilon$-окрестность множества $E$ и через
  $overline(E)$ — замыкание $E$. Покажем, что для любого компакта $K subset X$
  справедливо соотношение $mu(overline(K)_epsilon) arrow.r mu(K)$ при
  $epsilon arrow.r 0$. Для этого фиксируем $0<delta<1$ и выберем функцию
  $phi in C(X)$, обладающую свойствами: $chi_K (x)<=phi(x)<=1$,
  $F(phi)<=mu(K)+delta$.

  Пусть $L$ — множество тех точек $x in X$, для которых $phi(x)<=1-delta$. Ясно,
  что $L$ — компакт, не пересекающийся с $K$. Обозначим через $d$ расстояние
  между $K$ и $L$. Если $epsilon<d$, то функция $psi(x)=min{phi(x)/(1-delta),1}$
  обладает свойствами $chi_(overline(K)_epsilon) (x)<=psi(x)<=1$. Поэтому
  $ mu(K_epsilon)<=F(psi)<=F(phi)/(1-delta)<=(mu(K)+delta)/(1-delta). $
  При $delta arrow.r 0$ последнее выражение стремится к $mu(K)$.

  #source(338)
  Для пропущенного шага применим теорему Рисса о представлении положительного
  функционала регулярной мерой $lambda$. Для компакта $K$ всякая непрерывная
  мажоранта $chi_K<=phi<=1$ дает $lambda(K)<=F(phi)$. Обратно, по внешней
  регулярности и лемме Урысона можно выбрать такую мажоранту с
  $F(phi)<=lambda(K)+epsilon$. Значит, $mu(K)=lambda(K)$. Внутренняя
  регулярность дает $mu(E)=lambda(E)$ для любого борелевского $E$. Тем самым
  обоснованы конечная и счетная аддитивность и регулярность $mu$.#ed-note[
    Исправлены знак приближающей оценки и срезающая функция; пропущенные шаги
    обоснованы теоремой Рисса и ее следствием 7.17–7.18, с.223: #cite(
      <Folland1999>,
      form: "full",
    ).
  ] В частности, имеем равенство $mu(K)+mu(X without K)=1$, конечная
  аддитивность, а также регулярность функции $mu$
  $ mu(A)=sup_(K subset A) mu(K)=inf_(G supset A) mu(G), $
  где $K$ означает компакт, а $G$ — открытое множество.

  Пусть $E_n$ попарно не пересекаются. Неравенство
  $mu(union_(n=1)^infinity E_n)>=sum_(n=1)^infinity mu(E_n)$ выводится
  непосредственно из определения $mu(E_n)$ и неравенства
  $mu(union_(i=1)^n K_i)>=sum_(i=1)^n mu(K_i)$, которое следует из определения
  $mu(K)$.

  Для вывода обратного неравенства воспользуемся регулярностью $mu$, введем
  компакт $K subset E=union_(n=1)^infinity E_n$ и открытые множества
  $G_i supset E_i$ так, чтобы
  $ mu(E without K)<epsilon/2, quad mu(G_n without E_n)<epsilon/2^(n+1). $
  Из включения $K subset union_(n=1)^infinity G_n$ вытекает включение
  $K subset union_(n=1)^N G_n$ при некотором $N$. Теперь из конечной
  аддитивности $mu$ следует оценка $mu(K)<=sum_(n=1)^N mu(G_n)$ и,
  следовательно, неравенство $mu(E)<=sum_(n=1)^infinity mu(G_n)+epsilon$.

] <hint:positive-functional-representing-measure>

#hint[@pr:helly-stieltjes-functional-convergence][Для доказательства
  достаточности условия докажите, что для любой ступенчатой функции $S(x)$
  выполняется

  $
    lim_(n arrow.r infinity) integral_0^1 S(x) dif g_n (x)=integral_0^1 S(x)
    dif g(x).
  $
  Произвольную функцию $f(x) in C[0,1]$ приблизьте ступенчатыми.
] <hint:helly-stieltjes-functional-convergence>

#hint[@pr:helly-bounded-variation-subsequence][Сведите задачу к случаю, когда
  $M$ состоит из монотонно неубывающих функций. Выбирая подпоследовательность из
  $M$, сходящуюся в другой точке, и т. д., диагональным способом (из $n$-й
  подпоследовательности возьмите $n$-й член) получите подпоследовательность
  ${phi_n}$, сходящуюся во всех рациональных точках отрезка $[0,1]$. Докажите,
  что ${phi_n}$ сходится к некоторой неубывающей функции $phi(x)$ всюду, кроме
  точек разрыва $phi(x)$, множество которых не более чем счетно, что позволяет
  диагональным способом выбрать из ${phi_n}$ подпоследовательность, сходящуюся и
  в этих точках.
] <hint:helly-bounded-variation-subsequence>

#hint[@pr:polynomial-coefficient-functional-extension][а), б) Продолжением
  являются $f(0)$ и $f(1)$ соответственно; в), г) — продолжения нет, так как
  любую функцию $f in C[0,1]$ можно приблизить полиномами вида $(x+1)p_1 (x)$,
  для которых $F_3=0$, и полиномами вида $p(x^(N+1))$, для которых
  $F_4 (f)=c_0=f(0)$. Проверьте, что эти продолжения не годятся.
] <hint:polynomial-coefficient-functional-extension>

#hint[@pr:connected-compact-continuous-ball-extreme-points][$f_1 (x) equiv 1$,
  $f_2 (x) equiv -1$ (см. задачу @pr:continuous-functions-not-dual-space).
] <hint:connected-compact-continuous-ball-extreme-points>

#source(339)

#hint[@pr:continuous-dual-ball-point-charge-extremes][Пусть
  $mu_x=tau mu_1+(1-tau)mu_2$, где $tau in (0,1)$, а $mu_1$ и $mu_2$ принадлежат
  единичному шару в $C prime(X)$. Обозначим через $f_x$ какую-нибудь функцию из
  $C(X)$, которая равна $1$ в точке $x$ и принимает значение из $[0,1)$ в
  остальных точках (например, $f_x (y)=max{1-d(x,y),0}$). Тогда
  $mu_x (f_x)=norm(f_x)=1$, $abs(mu_1 (f_x))<=1$, $abs(mu_2 (f_x))<=1$. Поэтому
  $mu_1 (f_x)=mu_2 (f_x)=1$. Это возможно лишь в случае
  $mu_1 ({x})=mu_2 ({x})=1$, т. е. $mu_1=mu_2=mu_x$. Значит, $mu_x$ — крайняя
  точка.

  Пусть теперь $mu$ — любая крайняя точка в единичном шаре $C prime(X)$, $f(x)$
  — любая непрерывная функция на $X$, принимающая значения из $(0,1)$. Легко
  убедиться, что либо $mu$, либо $(-mu)$ — положительный заряд. Пусть для
  определенности $mu>0$. Положим $mu_1=(f mu)/(mu(f))$,
  $mu_2=((1-f)mu)/(1-mu(f))$. Тогда $mu_1$ и $mu_2$ лежат в единичном шаре
  $C prime(X)$ и
  $ mu=mu(f) dot mu_1+[1-mu(f)]mu_2. $
  Так как $mu$ — крайняя точка, то $mu_1$ и $mu_2$ совпадают с $mu$. Отсюда
  легко выводится, что $mu(f g)=mu(f)mu(g)$ для любых $f,g in C(X)$, принимающих
  значения из $(0,1)$. Ввиду билинейности этого соотношения, оно справедливо для
  всех $f,g in C(X)$. Обозначим через $L$ ядро функционала $mu$. Это — замкнутый
  идеал коразмерности $1$ в $C(X)$. Легко показать, что существует точка
  $x in X$, в которой обращаются в нуль все функции из $L$. (В противном случае
  $X$ покрывается конечным числом окрестностей $U_i$, для которых найдутся
  $f_i in L$ такие, что $f_i (x)!=0$ на $U_i$. Тогда $f=sum_i abs(f_i)^2 in L$ и
  $f!=0$ на $X$, откуда $L=C(X)$.) Условие $codim L=1$ влечет единственность
  такой точки. Теперь ясно, что $mu=mu_x$.
] <hint:continuous-dual-ball-point-charge-extremes>

#hint[@pr:stone-weierstrass-approximation][а) Вместе с любой функцией $phi$
  алгебра $A$ содержит также функцию $P(phi)$, где $P$ — полином. Из замкнутости
  $A$ и теоремы Вейерштрасса следует, что $A$ содержит $f circle phi$ для любой
  непрерывной функции $f$ на прямой. Используя это, последовательно докажите,
  что $A$ содержит следующие типы функций:

  + Для любых $x!=y$; $x,y in X$ — функцию $phi$ такую, что $phi(x)=0$,
    $phi(y)=1$ и $0<=phi(z)<=1$ для всех других $z in X$;

  + Для каждой точки $x in X$ и любой ее окрестности $U$ — функцию $phi$ такую,
    что $phi(x)=0$ и $phi(z)=1$ для всех $z in X without U$;

  + Для любых непересекающихся компактных множеств $K_1$ и $K_2$ — функцию
    $phi$, которая равна нулю на $K_1$, равна единице на $K_2$ и принимает
    значения между нулем и единицей в остальных точках $x in X$.

  Используя функции последнего типа, покажите, что каждая функция $f in C(X)$ с
  нормой $1$ может быть аппроксимирована с точностью $2/3$ функцией $phi in A$ с
  нормой $1/3$.

  б) Нет; рассмотрите
  $ A_(x_0)={f(x)|f(x) in C(X),f(x_0)=0}. $
] <hint:stone-weierstrass-approximation>

#hint[@pr:path-connected-compact-interval-surjection][Сначала покажем, что
  близкие точки можно соединять путями малого диаметра. В связной открытой части
  $U$ пространства $X$ любые две точки соединяются конечной цепью пересекающихся
  связных открытых множеств сколь угодно малого диаметра, с замыканиями в $U$.
  Такие множества существуют по локальной связности; классы точек, соединяемых
  цепями, открыты в $U$, поэтому связность дает одну цепь для любых двух точек.

  Выберем общие точки соседних звеньев и назначим их концам разбиения отрезка.
  На следующем шаге уточним каждое звено цепью связных открытых множеств с
  замыканиями в предыдущем звене и диаметрами меньше $2^(-j)$ на шаге $j$.
  Разбиения можно дополнительно измельчать повторением точек, чтобы их шаг не
  превосходил $2^(-j)$. Все последующие значения внутри одного интервала
  разбиения лежат в замыкании соответствующего звена. Если два параметра
  достаточно близки, они лежат в одном или соседних интервалах фиксированного
  разбиения. Общая концевая точка дает оценку расстояния между их образами через
  удвоенный диаметр звена. Поэтому отображение на плотном множестве концов
  равномерно непрерывно и продолжается до пути в $U$.

  По компактности покроем $X$ конечным семейством таких связных открытых
  множеств диаметра меньше данного $epsilon$. Число Лебега этого покрытия
  показывает, что достаточно близкие точки соединяются путем диаметра меньше
  $epsilon$; связность также дает путь между любыми двумя точками.
  #source(340)
  Далее построим непрерывную сюръекцию $g:C->X$, где $C$ — канторово множество.
  Каждый компакт конечным образом покрывается своими непустыми компактными
  подмножествами сколь угодно малого диаметра. Применяя это последовательно,
  получаем вложенные конечные покрытия, диаметры которых на уровне $j$ меньше
  $2^(-j)$. Каждый цилиндр в $C$ разобьем на конечное число непустых
  открыто-замкнутых цилиндров, сопоставленных дочерним компактам; если цилиндров
  больше, некоторые компакты повторим. Единственная точка пересечения вдоль
  ветви задает $g$. Общий начальный цилиндр обеспечивает близость образов,
  значит, $g$ непрерывно. Каждая точка $X$ принадлежит вложенной ветви
  компактов, поэтому $g$ сюръективно.

  На каждом промежутке $(a,b)$ дополнения $C$ соединим $g(a)$ и $g(b)$ путем. По
  равномерной непрерывности $g$ и уже доказанному свойству можно выбирать
  диаметры этих путей стремящимися к нулю при $b-a->0$. Полученное отображение
  непрерывно внутри промежутков. В точке $C$ непрерывность следует из
  непрерывности $g$ и малости диаметров путей в малых промежутках; больших
  промежутков конечное число, и у их концов действует непрерывность выбранного
  пути. Продолжение $g$ на весь отрезок непрерывно и сюръективно.#ed-note[
    В исходном построении не обеспечивалась малость соединяющих путей. Приведено
    самостоятельное построение с контролем диаметров. Ср. формулировку теоремы
    Хана — Мазуркевича в замечании после упражнения 6 к §4.2, с.205: #cite(
      <Simon2015a>,
      form: "full",
    ).
  ]
] <hint:path-connected-compact-interval-surjection>

#hint[@pr:space-filling-square-curve][Утверждение этой задачи — частный случай
  задачи @pr:path-connected-compact-interval-surjection. В этом случае
  построение можно иллюстрировать чертежом (@fig:peano-recursive-square). Здесь
  числа $n_1,n_2,dots$ все равны $4$, в качестве представителя
  $x_(i_1,dots,i_k)$ квадрата $X_(i_1,dots,i_k)$ берется его центр; четыре
  квадрата $k$-го ранга, лежащие в одном квадрате $(k-1)$-го ранга, проходятся
  по часовой стрелке, начиная с левого нижнего.

  #figure(peano-recursive-square(), caption: []) <fig:peano-recursive-square>
] <hint:space-filling-square-curve>

#hint[@pr:plane-integral-norm-continuous-space-isometry][Отображение
  $t |-> (abs(cos 2 pi t)^(2/q) op("sgn") cos 2 pi t, abs(sin 2 pi t)^(2/q)
    op("sgn") sin 2 pi t)$
  переводит $[0,1]$ в единичную окружность в $l_q (2,RR)$. Соответствующее
  вложение $l_p (2,RR)$ в $C[0,1]$ имеет вид

  $
    (alpha,beta)|->phi_(alpha beta) (t)
    =alpha abs(cos 2 pi t)^(2/q) op("sgn") cos 2 pi t \
    +beta abs(sin 2 pi t)^(2/q) op("sgn") sin 2 pi t.
  $
  Проверьте, пользуясь неравенством Гельдера, что

  $
    max_(t in [0,1]) abs(phi_(alpha beta) (t))
    =root(p, abs(alpha)^p+abs(beta)^p).
  $
] <hint:plane-integral-norm-continuous-space-isometry>

#hint[@pr:continuous-square-injective-tensor-product][Рассмотрим естественное
  линейное отображение $phi$
  $ C[0,1] times.o C[0,1] arrow.r C(square), $
  задаваемое формулой
  $ phi(f times.o g)(x,y)=f(x)g(y). $
  Ясно, что это отображение инъективно, а из теоремы Вейерштрасса вытекает, что
  образ $phi$ плотен в $C(square)$. Остается проверить изометричность $phi$. По
  определению нормы в тензорном произведении

  $
    norm(sum_(i=1)^n f_i times.o g_i)
    =sup_(norm(mu)=norm(nu)=1) abs(sum mu(f_i)nu(g_i)).
  $
  #source(341)
  Достаточно брать верхнюю грань только по крайним точкам единичных шаров в
  $C[0,1] prime$. Поэтому (см. задачу
  @pr:continuous-dual-ball-point-charge-extremes)

  $
    norm(sum_i f_i times.o g_i)=sup_(x,y) abs(sum_i f_i (x)g_i (y)) \
    =sup_(x,y) abs(phi(sum_i f_i times.o g_i)(x,y))
    =norm(phi(sum_i f_i times.o g_i)).
  $
] <hint:continuous-square-injective-tensor-product>

#hint[@pr:continuous-product-injective-tensor-isomorphism][Воспользовавшись
  теоремой Стоуна — Вейерштрасса, докажите, что $C(X) times.o C(Y)$ плотно в
  $C(X times Y)$. Завершает доказательство проверка того, что норма
  $p_X times.o p_Y$, где $p_X$ и $p_Y$ — нормы в $C(X)$ и $C(Y)$, совпадает с
  нормой в $C(X times Y)$.
] <hint:continuous-product-injective-tensor-isomorphism>

#hint[@pr:continuous-space-isomorphism-homeomorphism][Воспользуемся тем, что
  сопряженный оператор $A prime$ задает изометрию единичного шара в $C(Y) prime$
  на единичный шар в $C(X) prime$. Поэтому для каждой точки $y in Y$ существует
  такая точка $x=phi(y)$ и такое число $a(y)=plus.minus 1$, что
  $A prime mu_y=a(y)mu_x$. Отсюда $(A f)(y)=a(y)f(phi(y))$. Полагая
  $f=op("const")$, мы видим, что $a in C(Y)$. Поэтому $f circle phi in C(Y)$ для
  любой $f in C(X)$. Отсюда следует, что $phi$ — непрерывное отображение.
  Применяя это к оператору $A^(-1)$, убеждаемся, что обратная функция также
  непрерывна.
] <hint:continuous-space-isomorphism-homeomorphism>

#hint[@pr:separate-variable-continuous-closed-subspace][Пусть
  $F_n (x,y)=f_n (x)+g_n (y)$ — фундаментальная последовательность в
  $C(square)$. Тогда $F_n (0,y)=f_n (0)+g_n (y)$ фундаментальна в $C[0,1]$ и,
  следовательно, $f_n (x)-f_n (0)$ фундаментальна и

  $
    lim_(n arrow.r infinity) F_n (x,y)
    =lim_(n arrow.r infinity)(f_n (x)-f_n (0))
    +lim_(n arrow.r infinity)(g_n (y)+f_n (0)).
  $
] <hint:separate-variable-continuous-closed-subspace>

#hint[@pr:continuous-interval-schauder-basis][Пусть ${r_n}$ — всюду плотная в
  $[0,1]$ последовательность без повторений, причем $r_0=0$, $r_1=1$.
  Рассмотрите систему ${f_n}$, где $f_0 (x) equiv 1$, $f_1 (x)=x$, а при $n>1$
  $f_n (x)$ определяется следующим образом: пусть $r_n$ принадлежит
  $(r_(s_1),r_(s_2))$ — одному из $(n-1)$ интервалов, на которые точки
  $r_2,dots,r_(n-1)$ разбивают отрезок $[0,1]$; тогда

  $
    f_n (0)=0, quad f_n (r_(s_1))=0, quad f_n (r_n)=1,
    quad f_n (r_(s_2))=0, quad f_n (1)=0,
  $
  а график $f_n (x)$ — четырехзвенная ломаная.

  *Замечание.* Топологические базисы имеются также в пространствах $L_p (0,1)$ и
  $l_p$ при $1<=p<infinity$, в сепарабельном гильбертовом пространстве, но не во
  всяком сепарабельном банаховом пространстве.
] <hint:continuous-interval-schauder-basis>

#hint[@pr:trigonometric-system-not-continuous-basis][Предположим, что для любой
  $f in C^P [0,1]$ существует тригонометрический ряд
  $sum_(k in ZZ) C_k (f)e^(2 pi i k x)$, который равномерно сходится к $f$.
  Тогда этот ряд сходится и в смысле $L_2 (0,1)$. Таким образом, числа $C_k (f)$
  есть коэффициенты Фурье функции $f$.

  Пусть $S_n (f)=sum_(k=-n)^n C_k (f)e^(2 pi i k x)$. Из нашего предположения
  следует, что $S_n f arrow.r f$ для каждой $f$, т. е. $S_n arrow.r 1$ в сильной
  операторной топологии. По теореме Банаха — Штейнгауза нормы $norm(S_n)$
  ограничены. Это противоречит тому, что $norm(S_n) arrow.r infinity$.
  (Проверьте, что
  $norm(S_n)=integral_0^1 abs((sin ((2 n+1)pi x))/(sin pi x)) dif x$.)
] <hint:trigonometric-system-not-continuous-basis>
