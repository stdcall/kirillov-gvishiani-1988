#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/theory-convolution-duality.typ": convolution-square

==== Свертки обобщенных функций <ss:theory-distribution-convolutions>
#idx("Свертка")

Определение свертки можно обобщить на тот случай, когда один или оба сомножителя
являются не обычными, а обобщенными функциями.

Пусть $F in cal(D)'(RR^n)$, $phi in cal(D)(RR^n)$. Свертку $F*phi$ можно
определить двумя способами.

_Первый способ._ Оператор $S(phi)$, как мы знаем (см.
теорему~@th:test-function-convolution-smoothing), является непрерывным
оператором в пространстве $cal(D)(RR^n)$. Вычислим действие сопряженного
оператора $S(phi)'$ на регулярную обобщенную функцию $f(x)$. Имеем

$
  ⟨S(phi)'f,psi⟩ & =⟨f,S(phi)psi⟩ \
                 & =integral_(RR^n)f(x)phi*psi(x) dif x \
                 & =integral_(RR^n)integral_(RR^n)f(x)phi(x-y)psi(y)
                   dif y dif x.
$
<eq:convolution-adjoint-pairing>

Введем обозначение $breve(phi)(x)=phi(-x)$. Тогда последнее выражение можно
преобразовать так:

$
  integral_(RR^n)integral_(RR^n)f(x)breve(phi)(y-x)psi(y) dif y dif x
  &=integral_(RR^n)f*breve(phi)(y)psi(y) dif y=⟨S(breve(phi))f,psi⟩.
$

Итак, мы установили равенство операторов $S(phi)'=S(breve(phi))$ на регулярных
обобщенных функциях. Отсюда вытекает, что оператор $S(phi)$ допускает
непрерывное продолжение на $cal(D)'(RR^n)$, а именно, оператор $S(breve(phi))'$.
Это и есть первое определение свертки. Запишем его в виде формулы

$
  ⟨F*phi,psi⟩=⟨F,breve(phi)*psi⟩.
$ <eq:distribution-test-convolution-definition>

_Второй способ._ Интеграл $integral_(RR^n)phi(x-y)F(y) dif y$, задающий свертку
в случае обычных функций, можно определить в случае $F in cal(D)'(RR^n)$ как
значение функционала $F$ на основной функции $psi(y)=phi(x-y)$. Используя ранее
введенные обозначения, это определение можно выразить формулой

$ F*phi(x)=⟨F,T(-x)breve(phi)⟩. $ <eq:distribution-test-convolution-pointwise>

#source(134)Таким образом, согласно второму определению свертки $F*phi$ является
обычной функцией на $RR^n$. Оказывается, на самом деле оба определения
совпадают. А именно, справедлива

#theorem[
  Если $F in cal(D)'(RR^n)$, $phi in cal(D)(RR^n)$, то обобщенная функция
  $F*phi$, определенная формулой~@eq:distribution-test-convolution-definition,
  регулярна, бесконечно дифференцируема и может быть вычислена в точке
  $x in RR^n$ по формуле~@eq:distribution-test-convolution-pointwise.
] <th:distribution-test-convolution-smoothness>

#proof[
  Заметим прежде всего, что элемент $T(-x)breve(phi) in cal(D)(RR^n)$ непрерывно
  зависит от $x in RR^n$. (Если $x_n -> x$ в $RR^n$, то
  $T(-x_n)breve(phi) -> T(-x)breve(phi)$ в топологии пространства
  $cal(D)(RR^n)$.) Поэтому правая часть равенства
  @eq:distribution-test-convolution-pointwise — непрерывная функция. Рассмотрим
  ее как регулярную обобщенную функцию на $RR^n$ и покажем, что она совпадает с
  обобщенной функцией @eq:distribution-test-convolution-definition. Для этого мы
  должны для любого $psi in cal(D)(RR^n)$ проверить равенство

  $ ⟨F,breve(phi)*psi⟩=integral_(RR^n)⟨F,T(-x)breve(phi)⟩psi(x) dif x $

  или

  $
    integral_(RR^n)F(y)(integral_(RR^n)phi(x-y)psi(x) dif x) dif y
    =integral_(RR^n)(integral_(RR^n)F(y)phi(x-y) dif y)psi(x) dif x.
  $

  Покажем, что справедливо более общее равенство

  $
    integral_(RR^n)F(y)(integral_(RR^m)alpha(x, y) dif x) dif y \
    &=integral_(RR^m)(integral_(RR^n)F(y)alpha(x, y) dif y) dif x,
  $
  <eq:distribution-parameter-integral-interchange>

  где $F in cal(D)'(RR^n)$, $alpha in cal(D)(RR^(n+m))$. Для этого заметим, что
  множество тех $alpha in cal(D)(RR^(m+n))$, для которых
  равенство~@eq:distribution-parameter-integral-interchange верно, образует
  замкнутое линейное подпространство. Это подпространство содержит все функции
  вида $alpha(x, y)=beta(x)gamma(y)$, $beta in cal(D)(RR^m)$,
  $gamma in cal(D)(RR^n)$ и, следовательно, совпадает с $cal(D)(RR^(m+n))$.

  Для доказательства теоремы осталось проверить бесконечную дифференцируемость
  функции $F*phi$. Она следует из бесконечной дифференцируемости отображения
  $x arrow.r.bar T(-x)breve(phi)$, которая проверяется непосредственно.
]

Аналогично определяется свертка $F*phi$ в случае, когда $phi$ и $F$ принадлежат
другим пространствам основных и обобщенных функций (см.
задачи~@pr:tempered-schwartz-convolution-regularity,
@pr:compact-distribution-smooth-convolution).

#source(135)Пусть теперь $F in cal(D)'(RR^n)$, $f in cal(E)'(RR^n)$. Покажем,
что можно определить свертку $F*f$, которая будет элементом пространства
$cal(D)'(RR^n)$. Мы уже знаем, что оператор $S(F)$ свертки с
$F in cal(D)'(RR^n)$ переводит $cal(D)(RR^n)$ в $cal(E)(RR^n)$. Можно проверить
(см. задачу~@pr:tempered-schwartz-convolution-regularity), что этот оператор
непрерывен. Далее, операцию $breve(dot)$ и соотношение
@eq:distribution-test-convolution-definition можно перенести на обобщенные
функции. Отсюда вытекает, что оператор $S(F)$ имеет непрерывное продолжение (а
именно, $S(breve(F))'$) на пространство $cal(E)'(RR^n)$, отображая его в
$cal(D)'(RR^n)$. Это и есть искомое определение свертки. Запишем его в виде
формулы

$ ⟨F*f,phi⟩=⟨f,breve(F)*phi⟩. $ <eq:distribution-convolution-definition>

#remark[
  В этом определении сомножители $F$ и $f$ играют несимметричную роль. Можно
  было бы построить продолжение оператора $S(f):cal(D)(RR^n) -> cal(D)(RR^n)$ до
  непрерывного оператора в $cal(D)'(RR^n)$ (а именно, $S(breve(f))'$) и
  определять $F*f$ как результат применения к $F$ этого продолженного оператора.
  Мы получили бы формулу

  $
    ⟨F*f,phi⟩=⟨F,breve(f)*phi⟩.
  $ <eq:distribution-convolution-symmetric-definition>

  Можно убедиться (ср. с доказательством
  теоремы~@th:distribution-test-convolution-smoothness), что формулы
  @eq:distribution-convolution-definition и
  @eq:distribution-convolution-symmetric-definition определяют одну и ту же
  обобщенную функцию.
] <rem:distribution-convolution-symmetry>

Приведем еще одну полезную формулу для свертки обобщенных функций $F$ и $f$:

$
  ⟨F*f,phi⟩=⟨F times f,accent(phi, circle)⟩,
$ <eq:distribution-convolution-product>

где $F times f$ — прямое произведение обобщенных функций $F$ и $f$ (см.
§~@sec:theory-function-spaces-distributions
гл.~@ch:theory-linear-spaces-operators), т. е. обобщенная функция в $RR^(2 n)$,
заданная одним из эквивалентных равенств:

$
  ⟨F times f,alpha⟩
  &=integral_(RR^n)F(x)(integral_(RR^n)f(y)alpha(x, y) dif y) dif x \
  &=integral_(RR^n)f(y) dif y(integral_(RR^n)F(x)alpha(x, y) dif x),
$
<eq:distribution-product-pairing>

а через $accent(phi, circle)$ обозначена функция $phi(x+y)$. Доказательство этой
формулы предоставляется читателю (оно сводится к замене переменных в интегралах,
содержащих обобщенные функции). Приведем теперь «таблицу умножения» для операции
свертки в основных функциональных пространствах:

#source(136)
#table(
  columns: 7,
  table.header(
    [$f_1 arrow.b$, $f_2 arrow.r$],
    [$cal(D)(RR^n)$],
    [$S(RR^n)$],
    [$cal(E)(RR^n)$],
    [$cal(E)'(RR^n)$],
    [$S'(RR^n)$],
    [$cal(D)'(RR^n)$],
  ),
  [$cal(D)(RR^n)$],
  [$cal(D)(RR^n)$],
  [$S(RR^n)$],
  [$cal(E)(RR^n)$],
  [$cal(D)(RR^n)$],
  [$P cal(E)(RR^n)$],
  [$cal(E)(RR^n)$],

  [$S(RR^n)$],
  [$S(RR^n)$],
  [$S(RR^n)$],
  [—],
  [$S(RR^n)$],
  [$P cal(E)(RR^n)$],
  [—],

  [$cal(E)(RR^n)$], [$cal(E)(RR^n)$], [—], [—], [$cal(E)(RR^n)$], [—], [—],
  [$cal(E)'(RR^n)$],
  [$cal(D)(RR^n)$],
  [$S(RR^n)$],
  [$cal(E)(RR^n)$],
  [$cal(E)'(RR^n)$],
  [$S'(RR^n)$],
  [$cal(D)'(RR^n)$],

  [$S'(RR^n)$],
  [$P cal(E)(RR^n)$],
  [$P cal(E)(RR^n)$],
  [—],
  [$S'(RR^n)$],
  [—],
  [—],

  [$cal(D)'(RR^n)$], [$cal(E)(RR^n)$], [—], [—], [$cal(D)'(RR^n)$], [—], [—],
)

Прочерк означает, что соответствующая операция свертки не определена. Через
$P cal(E)(RR^n)$ обозначено подпространство $cal(E)(RR^n)$, состоящее из
функций, растущих не быстрее многочлена. Для запоминания этой таблицы полезно
иметь в виду следующее правило: свертка определена, если хотя бы один
сомножитель финитный, гладка, если хотя бы один сомножитель гладкий, и финитна,
если оба сомножителя финитны.

#theorem[
  Операторы свертки перестановочны друг с другом (в тех случаях, когда их
  композиция имеет смысл), с операторами сдвига и с операторами
  дифференцирования.
] <th:distribution-convolution-operator-commutation>

#proof[
  Прежде всего заметим, что первое утверждение теоремы влечет два остальных.
  Дело в том, что операторы сдвига и дифференцирования являются частными
  случаями оператора свертки. А именно, справедливы равенства

  $ T(a)phi=delta_(-a)*phi, $ <eq:translation-dirac-convolution>

  $ partial^k phi=partial^k delta*phi. $ <eq:derivative-dirac-convolution>

  Равенство~@eq:translation-dirac-convolution для основных функций $phi$
  вытекает из~@eq:distribution-test-convolution-pointwise:

  $
    delta_a*phi(x)=integral_(RR^n)delta_(a)(x-y)phi(y) dif y
    =phi(x-a)=T(-a)phi(x).
  $

  Для обобщенных функций $phi$ с компактным носителем
  @eq:translation-dirac-convolution вытекает из
  @eq:distribution-convolution-definition и равенств
  $breve(delta)_a=delta_(-a)$, $T(a)'=T(-a)$, проверяемых непосредственно.
  Равенство~@eq:derivative-dirac-convolution доказывается индукцией по числу
  $abs(k)$. Основная лемма в этом доказательстве — соотношение
  $partial_j phi=partial_j delta*phi$ доказывается так же, как
  и~@eq:translation-dirac-convolution.

  #source(137)Итак, осталось проверить равенство $S(f_1)S(f_2)=S(f_2)S(f_1)$ в
  тех случаях, когда хотя бы одна из функций $f_1$ и $f_2$ имеет компактный
  носитель. Пусть для определенности $f_1=f in cal(E)'(RR^n)$,
  $f_2=F in cal(D)'(RR^n)$, и мы должны проверить коммутативность диаграммы

  #figure(convolution-square(), numbering: none, caption: none)

  По определению действия оператора свертки на обобщенные функции это
  равносильно коммутативности диаграммы

  #figure(convolution-square(dual: false), numbering: none, caption: none)

  которая вытекает из равенства~@eq:distribution-convolution-product. Теорема
  доказана.
]

Доказанная теорема о перестановочности операторов свертки допускает следующее
интересное и полезное обобщение.

#theorem[
  Пусть $A$ — непрерывный оператор из $cal(D)(RR^n)$ в $cal(E)(RR^n)$. Следующие
  свойства $A$ эквивалентны:

  + $A$ перестановочен со сдвигами;
  + $A$ перестановочен с операторами дифференцирования;
  + $A$ является оператором свертки с некоторой обобщенной функцией
    $f in cal(D)'(RR^n)$.
] <th:translation-invariant-operator-convolution>

#proof[
  Согласно теореме~@th:distribution-convolution-operator-commutation из свойства
  3) следуют 1) и 2). Покажем, что из 2) вытекает 1). Пусть
  $phi in cal(D)(RR^n)$, $a in RR^n$, $t in RR$. Рассмотрим функцию
  вещественного переменного $t arrow.r.bar T(-t a)A T(t a)phi$ со значениями в
  $cal(E)(RR^n)$. Производная этой функции по $t$ легко вычисляется, если учесть
  равенство

  $
    frac(d, d t)T(t a)=D_a T(t a)=T(t a)D_a,
  $ <eq:translation-directional-derivative>

  справедливое для операторов сдвига в $cal(D)(RR^n)$ и $cal(E)(RR^n)$ (через
  $D_a$ обозначена производная вдоль вектора $a$). Эта производная имеет вид

  $ [-T(-t a)D_a A T(t a)+T(-t a)A D_a T(t a)]phi, $

  что равно нулю в силу перестановочности $A$ и $D_a$. Поэтому наша функция
  постоянна. Приравнивая ее значения #source(138)при $t=1$ и $t=0$, получаем
  $T(-a)A T(a)phi=A phi$, откуда следует 1). Выведем теперь свойство 3) из 1).
  Для этого заметим, что соответствие $phi arrow.r.bar A phi(0)$ является
  линейным непрерывным функционалом на $cal(D)(RR^n)$. Обозначим этот функционал
  через $f$. Теперь из 1) можно заключить, что

  $ A phi(x)=T(x)A phi(0)=A T(x)phi(0)=⟨f,T(x)phi⟩=breve(f)*phi(x). $

  Итак, $A=S(breve(f))$.
]

#remark[
  Утверждение теоремы и ее доказательство переносится без изменения на случай,
  когда оператор $A$ действует из $S'(RR^n)$ или $cal(E)'(RR^n)$ в $S'(RR^n)$.
  Свойство 3) при этом формулируется так: $A=S(f)$, где $f in S'(RR^n)$ или
  $cal(E)'(RR^n)$ соответственно. Несколько более сложно доказывается, что
  всякий оператор из $cal(D)(RR^n)$ в себя, перестановочный со сдвигами, имеет
  вид $S(f)$, где $f in cal(E)'(RR^n)$. Таким образом, операторы свертки во всех
  этих случаях образуют максимальное коммутативное семейство. Это свойство
  показывает, что семейство операторов свертки похоже на семейство операторов
  умножения на функции. Ниже мы увидим, что это сходство не случайно: оба
  семейства переходят друг в друга при некотором преобразовании пространства.
] <rem:translation-invariant-operator-other-spaces>
