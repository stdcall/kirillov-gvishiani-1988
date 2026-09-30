#import "main-defs.typ": *
#import "statements.typ": *

== Преобразование Фурье и элементы гармонического анализа
<ch:theory-fourier-harmonic-analysis>

=== Свертки на коммутативной группе <sec:theory-convolutions>

==== Свертки основных функций <ss:theory-function-convolutions>

Пусть $G$ — конечная группа, $K$ — некоторое поле. Обозначим через $K[G]$
совокупность формальных линейных комбинаций элементов группы $G$ с
коэффициентами из $K$. Элементы $K[G]$ имеют вид

$ x=sum_(g in G)a(g)g, quad "где" a(g) in K. $ <eq:group-algebra-elements>

На множестве $K[G]$ естественно вводится структура алгебры над полем $K$:

$
  lambda(sum_(g in G)a(g)g)&=sum_(g in G)lambda a(g)g, \
  sum_(g in G)a(g)g+sum_(g in G)b(g)g&=sum_(g in G)(a(g)+b(g))g, \
  (sum_(g in G)a(g)g)(sum_(g in G)b(g)g)&=
  sum_(g_1 in G,g_2 in G)a(g_1)b(g_2)g_1 g_2.
$ <eq:group-algebra-operations>

Удобно отождествлять элемент $x in K[G]$, заданный формулой
@eq:group-algebra-elements, с функцией $a(g)$ на группе $G$ со значениями в $K$.
При такой интерпретации умножение на число и сложение в $K[G]$ становятся
обычными операциями над функциями. Операция умножения, однако, отличается от
обычного (поточечного) умножения. Она называется _сверткой_ и обозначается $*$.
Явный вид ее дается формулами

$
  (a*b)(g) & =sum_(h in G)a(g h^(-1))b(h)=sum_(h in G)a(h)b(h^(-1)g) \
           & =sum_(g_1 g_2=g)a(g_1)b(g_2).
$ <eq:finite-group-convolution>
#idx("Свертка")

#source(129)Множество $K[G]$ с введенными в нем выше операциями называется
_групповой алгеброй_ группы $G$.
#idx("Групповая алгебра")
#notation($K[G]$, references: [@ss:theory-function-convolutions], sort: "073")
Эта алгебра естественно возникает как универсальный объект в подходящей
категории (см. задачу~@pr:group-algebra-universal-object) и играет большую роль
в теории линейных представлений групп.

В дальнейшем нас будут, как правило, интересовать бесконечные группы $G$,
снабженные некоторой мерой $mu$. В этом случае сумму в формуле
@eq:finite-group-convolution естественно заменить на интеграл. Более точно, мы
предположим, что $G$ — коммутативная топологическая группа (последнее означает,
что в $G$ определена хаусдорфова топология, относительно которой групповые
операции $(g_1,g_2) arrow.r.bar g_1 g_2$ и $g arrow.r.bar g^(-1)$ непрерывны) и
что на $G$ задана ненулевая регулярная борелевская мера $mu$, конечная на
компактах и инвариантная относительно сдвигов и перехода к обратному элементу.
Групповую операцию в $G$ мы будем обозначать знаком $+$. Тогда свойство
инвариантности меры $mu$ можно записать в виде

$ mu(X+a)=mu(X), quad mu(-X)=mu(X) $ <eq:invariant-group-measure>

для любого борелевского множества $X subset G$ и любого $a in G$. Известно, что
такая мера $mu$ существует тогда и только тогда, когда группа $G$ локально
компактна#footnote[
  Топологическое пространство называется локально компактным, если любая его
  точка имеет относительно компактную окрестность.
], и в этом случае инвариантная мера определена однозначно с точностью до
числового множителя.

#notation($TT^n$, references: [@ss:theory-function-convolutions], sort: "082")
#idx("Тор n-мерный")
#idx("Целочисленная решетка n-мерная")

_Основные примеры._

+ $G=RR^n$, групповая операция — обычное сложение векторов, а мера $mu$ —
  обычная мера Лебега в $RR^n$,

  $ dif mu(x)=dif x_1 dif x_2 dots dif x_n. $

+ $ZZ^n$ — $n$-мерная целочисленная решетка в $RR^n$, состоящая из векторов с
  целыми координатами. Групповая операция — сложение, инвариантная мера $mu$
  имеет вид $mu(X)=upright("card")X$ (число точек в множестве $X$).
+ $TT^n$ — $n$-мерный тор. Мы будем рассматривать две реализации $TT^n$: либо
  как подмножество в $CC^n$, состоящее из векторов $z=(z_1,dots,z_n)$ с условием
  $abs(z_k)=1$ $(1<=k<=n)$, и с операцией покоординатного умножения, либо как
  фактор-группу $frac(RR^n, ZZ^n)$, элементы которой можно задавать векторами
  $t in RR^n$ с условием $t_k in [0,1)$ и с операцией сложения по модулю 1.
  Соответствие между реализациями устанавливается формулой $z_k=e^(2 pi i t_k)$
  $(1<=k<=n)$. #source(130)Инвариантная мера $mu$ — обычная мера Лебега в
  координатах $t_1,dots,t_n$. Отметим, что эта группа компактна и что
  $mu(TT^n)=1$.

_Свертка_ функций $f_1$ и $f_2$ на коммутативной группе $G$ с инвариантной мерой
$mu$ определяется формулами

$
  (f_1*f_2)(x) & =integral_G f_1(x-y)f_2(y) dif mu(y) \
               & =integral_G f_1(y)f_2(x-y) dif mu(y),
$ <eq:group-convolution-integral>

которые являются точным аналогом~@eq:finite-group-convolution (и превращаются
в~@eq:finite-group-convolution, если $G$ конечна, а $mu(X)=upright("card")X$).

#theorem[
  Если $f_1,f_2 in L_(1)(G,mu)$, то интеграл~@eq:group-convolution-integral
  существует для почти всех $x in G$, функция $f_1*f_2$ принадлежит
  $L_(1)(G,mu)$ и $norm(f_1*f_2)<=norm(f_1)norm(f_2)$.
] <th:l1-convolution-bound>

#proof[
  Если $f_1,f_2 in L_(1)(G,mu)$, то по теореме Фубини функция
  $phi(x, y)=f_1(x)f_2(y)$ принадлежит $L_(1)(G times G,mu times mu)$, причем
  $norm(phi)=norm(f_1)norm(f_2)$.

  Рассмотрим теперь преобразование $tau$ пространства $G times G$, переводящее
  точку $(x,y)$ в $(x+y,y)$. Это преобразование измеримо (переводит борелевские
  множества в борелевские) и сохраняет меру $mu times mu$. В самом деле, если
  $X=A times B subset G times G$ — элементарное измеримое множество, то

  $
    (mu times mu)(tau(X))
    &=integral_(G times G)chi_(tau(X))(x,y) dif mu(x) dif mu(y) \
    &=integral_(G times G)chi_(X)(x-y,y) dif mu(x) dif mu(y) \
    &=integral_(G) (integral_G chi_(X)(x-y,y) dif mu(x)) dif mu(y) \
    &=integral_B mu(A+y) dif mu(y)=mu(A)mu(B)=(mu times mu)(X).
  $

  Отсюда следует, что $tau$ порождает изометрическое преобразование $T$
  пространства $L_(1)(G times G,mu times mu)$ по формуле

  $ T phi(x, y)=phi(tau^(-1)(x,y))=phi(x-y, y). $

  Применяя этот результат к функции $phi(x, y)=f_1(x)f_2(y)$, получаем
  утверждение теоремы.
]

#remark[
  Доказанное неравенство влечет непрерывность операции свертки в пространстве
  $L_(1)(G,mu)$.
] <rem:l1-convolution-continuity>

#theorem[
  Операция свертки коммутативна, ассоциативна и дистрибутивна относительно
  сложения.
] <th:convolution-algebra-properties>

#proof[
  Последнее утверждение сразу следует из линейности интеграла. Первые два
  доказываются #source(131)подходящей заменой переменных, сохраняющей меру $mu$
  или $mu times mu$. А именно,

  $
    (f_1*f_2)(x) & =integral_G f_1(x-y)f_2(y) dif mu(y) \
                 & =integral_G f_1(-y)f_2(x+y) dif mu(y) \
                 & =integral_G f_2(x-y)f_1(y) dif mu(y)=(f_2*f_1)(x),
  $

  $
    ((f_1*f_2)*f_3)(x)&=integral_(G) (f_1*f_2)(x-y)f_3(y) dif mu(y) \
    &=integral_G integral_G f_1(x-y-z)f_2(z)f_3(y) dif mu(z) dif mu(y) \
    &=integral_G integral_G f_1(x-z)f_2(z-y)f_3(y) dif mu(z) dif mu(y) \
    &=(f_1*(f_2*f_3))(x).
  $
]

#notation($T(a)$, references: [@ss:theory-function-convolutions], sort: "059")
Пусть теперь $T(a)$ означает оператор сдвига на группе $G$: $(T(a)f)(x)=f(x+a)$.
Ясно, что $T(a)$ — изометрический линейный оператор в $L_(1)(G,mu)$. Одно из
важнейших свойств свертки описывает

#theorem[
  Операция свертки перестановочна со сдвигами на группе:

  $ T(a)(f_1*f_2)=T(a)f_1*f_2=f_1*T(a)f_2. $ <eq:convolution-translation>
] <th:convolution-translation-commutation>

#proof[
  Имеем:

  $
    T(a)(f_1*f_2)(x) & =(f_1*f_2)(x+a) \
                     & =integral_G f_1(x+a-y)f_2(y) dif mu(y) \
                     & =integral_G T(a)f_1(x-y)f_2(y) dif mu(y)
                       =(T(a)f_1*f_2)(x).
  $

  Второе равенство следует из первого и коммутативности свертки.
]

В дальнейшем мы будем использовать обозначение $S(f)$ для оператора свертки с
функцией $f$: $S(f)f_2=f*f_2$. Утверждения
теоремы~@th:convolution-algebra-properties можно сформулировать в виде тождеств

$ S(f_1)S(f_2)=S(f_2)S(f_1)=S(f_1*f_2), $ <eq:convolution-operator-product>

а утверждение теоремы~@th:convolution-translation-commutation — в виде тождества

$ T(a)S(f)=S(f)T(a)=S(T(a)f). $ <eq:convolution-operator-translation>

#theorem[
  Если $phi in cal(D)(RR^n)$, то $S(phi)$ — непрерывный оператор из
  $L_(1)(RR^n,dif x)$ в $cal(E)(RR^n)$ и из $cal(D)(RR^n)$ в $cal(D)(RR^n)$.
] <th:test-function-convolution-smoothing>

#proof[
  #source(132)Пусть $phi in cal(D)(RR^n)$, $f in L_(1)(RR^n,dif x)$. Покажем,
  что функция $S(phi)f$ бесконечно дифференцируема и справедливо равенство

  $ partial^k S(phi)f=S(partial^k phi)f. $ <eq:convolution-differentiation>

  Очевидно, достаточно проверить это утверждение в случае частной производной
  $partial_j=frac(partial, partial x_j)$. Пусть $e_j$ — базисный вектор в
  $RR^n$. Оператор $partial_j$ может быть записан в виде
  $lim_(t->0)frac(T(t e_j)-1, t)$. По
  теореме~@th:convolution-translation-commutation последний оператор
  перестановочен с $S(f)$. Поэтому

  $
    partial_j S(phi)f(x)&=partial_j S(f)phi(x)
    =lim_(t->0)frac(T(t e_j)-1, t)S(f)phi(x) \
    &=lim_(t->0)S(f)frac(T(t e_j)-1, t)phi(x)=S(f)partial_j phi.
  $

  Последнее равенство вытекает из того, что для $phi in cal(D)(RR^n)$ функция
  $frac(T(t e_j)-1, t)phi$ равномерно стремится к $partial_j phi$, а оператор
  $S(f)$ сохраняет равномерную сходимость. Итак,
  равенство~@eq:convolution-differentiation и бесконечная дифференцируемость
  $S(phi)f$ доказаны. Проверим, что $S(phi):L_(1)(RR^n,dif x) -> cal(E)(RR^n)$ —
  непрерывный оператор. Для любой полунормы $p_(K k)$ в $cal(E)(RR^n)$ имеем

  $
    p_(K k)(S(phi)f) & =sup_(x in K)abs(partial^k S(phi)f(x))
                       =sup_(x in K)abs(S(partial^k phi)f(x)) \
                     & <=sup_(RR^n)abs(partial^k phi(x))norm(f)_1,
  $

  что и требовалось.

  Для доказательства последнего утверждения проверим, что для
  $phi_1,phi_2 in cal(D)(RR^n)$ справедливо включение

  $
    upright("supp")(phi_1*phi_2)
    subset upright("supp")phi_1+upright("supp")phi_2,
  $
  <eq:convolution-support-inclusion>

  где $upright("supp")$ означает носитель, а $+$ в правой части —
  _арифметическую сумму_ множеств#idx("Арифметическая сумма множеств"):
  $X+Y={x+y | x in X,y in Y}$. В самом деле, если
  $x in.not upright("supp")phi_1+upright("supp")phi_2$, то для любого
  $y in upright("supp")phi_2$ разность $x-y in.not upright("supp")phi_1$.
  Поэтому в интеграле~@eq:group-convolution-integral, определяющем
  $phi_1*phi_2(x)$, подынтегральное выражение тождественно равно нулю. Значит,
  $phi_1*phi_2$ обращается в нуль вне
  $upright("supp")phi_1+upright("supp")phi_2$. Последнее множество является
  компактом и, следовательно, содержит $upright("supp")(phi_1*phi_2)$. Мы
  доказали, что $S(phi)$ переводит $cal(D)(RR^n)$ в $cal(D)(RR^n)$.
  Непрерывность $S(phi)$ достаточно проверить на #source(133)подпространствах
  $cal(D)_(K)(RR^n)$, где она устанавливается той же выкладкой, что и выше,
  учитывая, что $S(phi)$ переводит $cal(D)_(K)(RR^n)$ в $cal(D)_(K_1)(RR^n)$,
  где $K_1=K+upright("supp")phi$. Теорема доказана.
]
