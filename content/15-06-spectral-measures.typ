#import "main-defs.typ": *
#import "statements.typ": *

==== Спектральная теорема <ss:theory-spectral-theorem>

Многие результаты теории меры (см. гл.~@ch:theory-measure-integral) переносятся
mutatis mutandis на случай, когда вместо обычных мер рассматриваются так
называемые проекционные меры.

_Определение._ Пусть задано множество $X$, некоторая $sigma$-алгебра $B$
подмножеств $X$, содержащая $X$, и гильбертово пространство $H$. Отображение
$lambda:B arrow.r End H$ называется _проекционной мерой_ на $(X,B)$ со
значениями в $End H$, если $lambda(X)=1$ и выполнены условия:
#idx("Проекционная мера")

+ $lambda(E)=lambda(E)^*$ для любого $E in B$;
+ $lambda(E_1 inter E_2)=lambda(E_1)lambda(E_2)$ для любых $E_1,E_2 in B$;
+ $lambda(E_1 union E_2)=lambda(E_1)+lambda(E_2)$ для любых непересекающихся
  $E_1,E_2 in B$;
+ если $E_n in B$ и существует $lim_(n arrow.r infinity)E_n=E$ (см.
  задачу~@pr:set-sequence-limits), то $"s"-lim_(n arrow.r infinity)lambda(E_n)$
  существует и равен $lambda(E)$.

#example(numbered: false)[
  Пусть $(X,B,mu)$ — пространство с обычной $sigma$-аддитивной мерой $mu$.
  Положим $H=L_(2)(X,mu)$, $lambda(E)=M(chi_E)$ — оператор умножения на
  характеристическую функцию множества $E in B$. Свойства 1)–3) здесь #source(
    176,
  )очевидны, 4) следует из теоремы Лебега об ограниченной сходимости.
] <exm:multiplication-projection-measure>

Обсудим здесь некоторые свойства проекционных мер, вытекающие из данного выше
определения. Из условия 2) вытекает, что все операторы $lambda(E)$, $E in B$,
попарно перестановочны. Далее, условие 1) вместе с равенством
$lambda(E)^2=lambda(E)$, вытекающим из 2), показывают, что $lambda(E)$ —
ортопроектор.

Обозначим через $H_E$ подпространство $lambda(E)H$, на которое $lambda(E)$
проектирует $H$. Свойство 2) имеет следующий геометрический смысл:
$H_(E_1 inter E_2)=H_(E_1)inter H_(E_2)$. Из 3) легко выводится более общее
утверждение:
$lambda(E_1 union E_2)=lambda(E_1)+lambda(E_2)-lambda(E_1 inter E_2)$.
Геометрически это означает, что $H_(E_1 union E_2)=H_(E_1)+H_(E_2)$ и что
$H_(E_1)perp H_(E_2)$, если $E_1$ и $E_2$ не пересекаются. Наконец, из 3)
следует, что $lambda(emptyset)=0$, а $lambda(X)=1$ по определению. Поэтому
$H_(emptyset)={0}$, $H_X=H$.

Из проекционной меры $lambda$ можно изготовить целое семейство обычных мер и
зарядов. А именно, пусть $xi$ и $eta$ — два вектора из $H$. Тогда отображение
$lambda_(xi eta):B arrow.r CC$, заданное формулой

$
  lambda_(xi eta)(E)=(lambda(E)xi,eta),
$ <eq:projection-measure-matrix-element-charge>

будет комплексным зарядом на $B$. Если $xi=eta$, то вместо $lambda_(xi xi)$ мы
будем писать просто $lambda_xi$. Поскольку операторы $lambda(E)$ положительны,
заряд $lambda_xi$ является мерой. Тождество

$
  lambda_(xi eta)=frac(1, 4)(lambda_(xi+eta)-lambda_(xi-eta)
    +i lambda_(xi-i eta)-i lambda_(xi+i eta))
$ <eq:projection-measure-polarization>

показывает, что заряды $lambda_(xi eta)$, а следовательно, сама проекционная
мера $lambda$ восстанавливаются по набору обычных мер ${lambda_xi}_(xi in H)$.

Проекционную меру $lambda$ можно, как и обычную меру, использовать для
определения интеграла. Пусть $f$ — $B$-измеримая ограниченная вещественная
функция на $X$. _Интегральной суммой Лебега_ для $f$ назовем выражение
#idx("Интегральная сумма", "Лебега")

$
  S_(n)(f,lambda)=sum_(k in ZZ)frac(k, 2^n)
  lambda(lr({x in X:frac(k, 2^n)<=f(x)<frac(k+1, 2^n)})).
$ <eq:projection-measure-lebesgue-sum>

Легко проверяется, что если $n_1<n_2$, то $S_(n_2)(f)≫S_(n_1)(f)$ (т. е.
разность $S_(n_2)(f)-S_(n_1)(f)$ — положительный оператор). Кроме того,
последовательность ${S_(n)(f)}$ ограничена сверху оператором
$sup_(x in X)f(x)dot 1$. Существует (см.
задачу~@pr:monotone-operator-strong-convergence)
$"s"-lim_(n arrow.r infinity)S_(n)(f)$, который называется _интегралом_ #source(
  177,
)функции $f$ _по проекционной мере_ $lambda$ и обозначается
$integral_X f(x) dif lambda(x)$. Для комплексной функции $f$ интеграл
определяется как сумма интеграла от $Re f$ и $i$-кратного интеграла от $Im f$.
#idx("Интеграл", "по проекционной мере")

Из свойств обычного интеграла Лебега вытекает, что для любого вектора $xi in H$
справедливо равенство

$ lr((integral_X f(x) dif lambda(x)xi,xi))=integral_X f(x) dif lambda_(xi)(x). $

Отсюда и из тождества @eq:projection-measure-polarization вытекает
справедливость более общего равенства

$
  lr((integral_X f(x) dif lambda(x)xi,eta))
  =integral_X f(x) dif lambda_(xi eta)(x).
$ <eq:projection-integral-matrix-elements>

Наконец, можно определить интеграл $A=integral_X f(x) dif lambda(x)$ для
неограниченной $B$-измеримой функции $f$ на $X$. А именно, обозначим через
$cal(D)_A$ совокупность векторов $xi in H$, для которых сходится интеграл
$integral_X abs(f(x))^2 dif lambda_(xi)(x)$. (Из
@eq:projection-measure-polarization можно вывести, что $cal(D)_A$ — линейное
подпространство в $H$.)

Для $xi in cal(D)_A$ определим оператор $A$ равенством

$
  (A xi,eta)=integral_X f(x) dif lambda_(xi eta)(x).
$ <eq:unbounded-projection-integral-definition>

Сходимость этого интеграла следует из неравенства

$
  abs(lambda_(xi eta)(E))^2<=lambda_(xi)(E)lambda_(eta)(E),
$ <eq:projection-measure-cauchy-schwarz>

которое является частным случаем неравенства Коши — Буняковского. А именно, для
интегральной суммы интеграла @eq:unbounded-projection-integral-definition из
@eq:projection-measure-cauchy-schwarz и неравенства Коши — Буняковского следует
оценка для любой простой функции $g=sum_j c_j chi_(E_j)$ с попарно
непересекающимися $E_j$:

$
  abs(integral_X g dif lambda_(xi eta))^2
  <=lr(sum_j abs(c_j)^2 lambda_(xi)(E_j))
  lr(sum_j lambda_(eta)(E_j))
  <=norm(g)_(L_2(X,lambda_xi))^2 norm(eta)^2,
$

откуда по приближению простыми функциями в $L_2(X,lambda_xi)$ получаем
$abs(integral_X f(x) dif lambda_(xi eta))^2
<=integral_X abs(f(x))^2 norm(eta)^2 dif lambda_xi$.#ed-note[
  В напечатанной оценке квадрат интегральной суммы сравнивается с суммой для
  квадрата функции; такое сравнение неверно для округления вниз. Приближение
  простыми функциями и ортогональность спектральных проекций обсуждаются в §
  9.2: #cite(<Kantorovitz2022>, form: "full").
] Таким образом, $norm(A xi)_H<=norm(f)_(L_2(X,lambda_xi))$.

Отметим, что если функция $f$ вещественна, то по определению оператора $A$
выражение $(A xi,xi)$ вещественно для $xi in cal(D)_A$. Таким образом, оператор
$A$ — симметрический. На самом деле этот оператор с областью определения
$cal(D)_A$, введенной выше, является самосопряженным. Это следует из
теоремы~@th:self-adjointness-deficiency-criterion и из явной конструкции
операторов #source(178)$(A plus.minus i 1)^(-1)$: эти операторы можно определить
интегралами $integral_X frac(dif lambda(x), f(x)plus.minus i)$.

Теперь мы можем сформулировать основной результат этого пункта.

#theorem[
  Пусть $A$ — самосопряженный (не обязательно ограниченный) оператор в
  гильбертовом пространстве $H$. Существует единственная борелевская
  проекционная мера $lambda$ на $RR$ со значениями в $End H$, обладающая
  свойством:

  $
    f(A)=integral_(-infinity)^infinity f(x) dif lambda(x)
  $ <eq:self-adjoint-spectral-functional-calculus>

  для любой ограниченной борелевской функции $f$ на $RR$. Кроме того,
  справедливо равенство

  $
    A=integral_(-infinity)^infinity x dif lambda(x).
  $ <eq:self-adjoint-spectral-resolution>
] <th:self-adjoint-spectral-measure-resolution>
#idx("Теорема", "спектральная")

#proof[
  Единственность $lambda$ сразу вытекает из
  @eq:self-adjoint-spectral-functional-calculus, если положить $f=chi_E$, где
  $E$ — борелевское множество на прямой. Доказательство существования очевидно,
  если перейти к той реализации $H$, в которой оператор $A$ является оператором
  умножения на функцию.
]

Проекционная мера $lambda$ называется _спектральной мерой_#idx(
  "Спектральная мера оператора",
) оператора $A$, а равенство @eq:self-adjoint-spectral-resolution —
_спектральным разложением_#idx("Спектральное разложение") этого оператора.

В качестве следствия теоремы~@th:self-adjoint-spectral-measure-resolution мы
получаем определение любых (в том числе неограниченных) борелевских функций от
любого самосопряженного оператора $A$: они определяются интегралом
@eq:self-adjoint-spectral-functional-calculus с теми предосторожностями, которые
указаны выше. Можно проверить, что $f(A)$ — всегда замкнутый оператор,
нормальный в том смысле, что $f(A)f(A)^*$ и $f(A)^* f(A)$ имеют общую область
определения и совпадают на ней. Примером применения этой конструкции является
описание однопараметрических групп унитарных операторов.

_Определение._ Совокупность ${V(t)}_(t in RR)$ унитарных операторов в
гильбертовом пространстве $H$ называется _однопараметрической группой_#idx(
  "Однопараметрическая группа",
), если выполнены условия:

+ $V(t)V(s)=V(t+s)$ для $t,s in RR$;
+ отображение $t arrow.r.bar V(t)$ непрерывно в слабой операторной топологии.

#source(179)
#theorem(title: [Стоуна], numbered: false)[
  Всякая однопараметрическая группа унитарных операторов в $H$ имеет вид

  $ V(t)=e^(i t A), $ <eq:stone-unitary-group-exponential>

  где $A$ — некоторый самосопряженный оператор в $H$.
] <th:stone-unitary-group-generator>
#idx("Теорема", "Стоуна")

#proof[
  Отметим сначала, что формула @eq:stone-unitary-group-exponential действительно
  определяет однопараметрическую группу, как сразу видно, если перейти к той
  реализации $H$, в которой $A$ является оператором умножения на функцию; кроме
  того, в этой реализации легко проверяется равенство

  $
    frac(dif, dif t)V(t)xi=i V(t)A xi=i A V(t)xi
    quad "для" xi in cal(D)_A.
  $ <eq:stone-unitary-group-derivative>

  Пусть теперь задана однопараметрическая группа ${V(t)}_(t in RR)$. Определим
  $cal(D)_A$ как совокупность тех векторов $xi in H$, для которых функция
  $t arrow.r.bar V(t)xi$ дифференцируема, и определим для $xi in cal(D)_A$
  оператор $A$ равенством $A xi=-i frac(dif, dif t)V(t)xi|_(t=0)$. Покажем, что
  $cal(D)_A$ плотно в $H$. Сначала заметим, что соответствие
  $t arrow.r.bar V(t)$ сильно непрерывно. Пусть теперь
  ${phi_n}subset cal(D)(RR)$ — $delta$-образная последовательность. Тогда для
  любого $xi in H$ последовательность
  $xi_n=integral_(-infinity)^infinity phi_(n)(t)V(t)xi dif t$ сходится к $xi$.
  Проверим, что $xi_n in cal(D)_A$. В самом деле,

  $
    V(t)xi_n=integral_(-infinity)^infinity phi_(n)(tau)V(t+tau)xi dif tau
    =integral_(-infinity)^infinity phi_(n)(tau-t)V(tau)xi dif tau.
  $

  Отсюда $frac(dif, dif t)V(t)xi_n
  =-integral_(-infinity)^infinity phi'_(n)(tau-t)V(tau)xi dif tau$.
  (Дифференцируемость интеграла по параметру $t$ доказывается, как в обычном
  анализе.)

  Проверим теперь, что $V(t)$ сохраняет подпространство $cal(D)_A$ и что
  справедливы равенства @eq:stone-unitary-group-derivative. Для этого достаточно
  заметить, что векторы $V(t+tau)xi$ и $V(t)V(tau)xi$ совпадают. Дифференцируя
  их по $tau$ и полагая $tau=0$, получаем искомое соотношение.

  Симметричность оператора $A$ получается дифференцированием равенства
  $(V(t)xi,V(t)xi)≡norm(xi)^2$ по $t$ при $t=0$.

  Наконец проверим, что $A$ существенно самосопряжен. Пусть
  $eta in ker(A^* plus.minus i 1)$. Тогда для любого $xi in cal(D)_A$ имеем
  #source(180)$((A minus.plus i 1)xi,eta)=(xi,(A^* plus.minus i 1)eta)=0$.
  Поэтому функция $f(t)=(V(t)xi,eta)$ удовлетворяет дифференциальному уравнению
  $f'(t)plus.minus f(t)=0$. Отсюда $f(t)=c e^(minus.plus t)$. Но $f$ ограничена,
  так как $V(t)$ — унитарный оператор. Значит, $c=0$ и $(V(t)xi,eta)=0$ для всех
  $xi in cal(D)_A$. Поскольку $cal(D)_A$ плотно в $H$, то $eta=0$. Итак,
  $ker(A^* plus.minus i 1)=0$ и, следовательно, $A$ существенно самосопряжен.
  Пусть $overline(A)$ — его самосопряженное расширение. Сравним теперь операторы
  $V(t)$ и $overline(V)(t)=e^(i t overline(A))$. Пусть
  $xi in cal(D)_A subset cal(D)_(overline(A))$. Рассмотрим функцию
  $f(t)=(overline(V)(-t)V(t)xi,eta)$. Поскольку $V(t)xi in cal(D)_A$, можно
  дифференцировать эту функцию по $t$. Используя равенства
  @eq:stone-unitary-group-derivative, получаем

  $
    f'(t)=-(overline(V)(-t)i overline(A)V(t)xi,eta)
    +(overline(V)(-t)i A V(t)xi,eta)=0.
  $

  Отсюда $f(t)=(xi,eta)$, что дает $overline(V)(-t)V(t)xi=xi$, т. е.
  $overline(V)(t)xi=V(t)xi$. Поскольку $V(t)$ и $overline(V)(t)$ унитарны, а
  $cal(D)_A$ плотно в $H$, мы получаем $overline(V)(t)=V(t)$. Теорема доказана.
  #ed-note[
    Переставлены группы в последнем аргументе: это позволяет использовать уже
    доказанную инвариантность области $cal(D)_A$. Ср. второе доказательство
    теоремы 7.3.1, с.553: #cite(<Simon2015d>, form: "full").
  ]
]
