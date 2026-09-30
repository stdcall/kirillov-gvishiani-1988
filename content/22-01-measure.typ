#import "main-defs.typ": *
#import "statements.typ": *

== Теория меры и интеграла <ch:problems-measure-integral>

=== Теория меры <sec:problems-measure>

==== Алгебра множеств <ss:problems-set-algebra>

#problem(difficulty: "core")[
  Доказать, что операция симметрической разности удовлетворяет следующему
  условию:
  $ A Delta B subset (A Delta C) union (B Delta C) $
  (аналог неравенства треугольника для «расстояния» $d(A, B) = A Delta B$,
  принимающего значения в множествах).
] <pr:symmetric-difference-triangle>

#problem[
  Доказать, что

  а) $(A_1 union A_2) Delta (B_1 union B_2)
  subset (A_1 Delta B_1) union (A_2 Delta B_2)$;

  б) $(A_1 inter A_2) Delta (B_1 inter B_2)
  subset (A_1 Delta B_1) union (A_2 Delta B_2)$;

  в) $(A_1 without A_2) Delta (B_1 without B_2)
  subset (A_1 Delta B_1) union (A_2 Delta B_2)$.

  (Эти включения означают непрерывность операций объединения, пересечения и
  дополнения относительно «расстояния» $d(A, B)$, введенного в
  @ss:theory-measure-extension[пункте о продолжении меры]).
] <pr:set-operations-continuity>

#problem(difficulty: "core")[
  Показать, что система множеств, замкнутая относительно операций объединения и
  пересечения, вообще говоря, не является кольцом.
] <pr:union-intersection-nonring>

#problem[
  Доказать, что система множеств, замкнутая относительно операций объединения и
  разности, является кольцом.
] <pr:union-difference-ring>

#problem(difficulty: "core")[
  Доказать, что множество всех отрезков (открытых, замкнутых и полуоткрытых) на
  прямой является полукольцом, но не кольцом.
] <pr:interval-semiring>

#problem[
  #idx("Минимальное кольцо")
  Показать, что для любой непустой системы множеств $S$ существует одно и только
  одно _минимальное кольцо_ $R(S)$, т. е. такое кольцо множеств $R(S)$, что $S$
  #source(200)$subset R(S)$ и $R(S) subset R$ для любого кольца $R$, содержащего
  $S$.
] <pr:generated-set-ring>

#problem[
  Доказать, что для полукольца $S$ минимальное кольцо совпадает с системой
  множеств вида $A = union.sq_(k = 1)^n A_k$ ($A_k in S$).
] <pr:semiring-generated-ring>

#problem(difficulty: "core")[
  Доказать, что любая $sigma$-алгебра является $delta$-алгеброй и, наоборот,
  любая $delta$-алгебра является $sigma$-алгеброй.
] <pr:sigma-delta-algebras>

#problem[
  а) Доказать, что прямое произведение полуколец является полукольцом.

  б) Показать, что прямое произведение колец может не быть кольцом.
] <pr:product-semirings>

#problem[
  _Верхним пределом последовательности множеств_ $E_n$ называется множество
  $overline(lim)_n E_n = inter_n (union_(k >= n) E_k)$, т. е. совокупность
  точек, принадлежащих бесконечному числу из множеств $E_n$. _Нижним пределом
  последовательности множеств_ $E_n$ называется множество
  $underline(lim)_n E_n = union_n (inter_(k >= n) E_k)$. Доказать, что для любой
  последовательности множеств $E_n$
  $underline(lim)_n E_n subset overline(lim)_n E_n$. Если верхний и нижний
  пределы равны, то их общее значение называется _пределом последовательности
  множеств_ $E_n$.
] <pr:set-sequence-limits>

#problem[
  Привести пример последовательности множеств $E_n$, для которой
  $underline(lim)_n E_n != overline(lim)_n E_n$.
] <pr:unequal-set-limits>

#problem[
  Пусть $X$ — множество и ${E_n}$ — последовательность множеств таких, что
  $E_n subset X$ для любого $n$. Доказать формулу
  $
    X without overline(lim)_n E_n
    = underline(lim)_n (X without E_n).
  $
] <pr:complement-set-limits>

#problem[
  Пусть ${E_n}$ — последовательность множеств и ${chi_n}$ — последовательность
  их характеристических функций. Доказать, что характеристической функцией
  множества $overline(lim)_n E_n$ является функция $overline(lim)_n chi_n$, а
  характеристической функцией множества $underline(lim)_n E_n$ — функция
  $underline(lim)_n chi_n$.
] <pr:indicator-limsup-liminf>

#problem[
  Доказать, что предел последовательности множеств $E_n$ существует тогда и
  только тогда, когда существует предел характеристических функций множеств
  $E_n$.
] <pr:set-indicator-limit>

#problem[
  Пусть $A$ — некоторая система множеств и $tilde(A)$ — совокупность
  характеристических функций множеств, #source(201)принадлежащих $A$. Доказать,
  что $A$ является кольцом множеств тогда и только тогда, когда $tilde(A)$ есть
  алгебраическое кольцо относительно сложения и умножения по модулю 2.
] <pr:boolean-ring-indicators>

#problem(difficulty: "hard")[
  #idx("Множество", "борелевское")
  _Борелевскими множествами_ на прямой называются множества, получающиеся из
  интервалов применением счетного числа операций объединения, пересечения и
  разности. Доказать, что совокупность борелевских множеств имеет мощность
  континуума.
] <pr:borel-cardinality>

#problem[
  а) Пусть $f: A -> B$ — отображение множеств, $cal(A)$ — система подмножеств
  множества $A$, $cal(B)$ — система подмножеств множества $B$. Положим
  $ f(cal(A)) = {f(X) subset cal(B): X in cal(A)}, $
  $ f^(-1)(cal(B)) = {f^(-1)(Y) subset cal(A): Y in cal(B)}. $
  Доказать, что если $cal(B)$ — кольцо, то $f^(-1)(cal(B))$ — также кольцо.

  б) Показать, что $f(cal(A))$, вообще говоря, не обязано являться кольцом, если
  $cal(A)$ — кольцо.

  в) Доказать, что если $cal(B)$ — $sigma$-алгебра, то $f^(-1)(cal(B))$ — также
  $sigma$-алгебра.

  г) В обозначениях задачи~@pr:image-preimage-set-rings доказать равенство
  $R(f^(-1)(cal(B))) = f^(-1)(R(cal(B)))$.
] <pr:image-preimage-set-rings>

==== Продолжение меры <ss:problems-measure-extension>

#problem[
  #idx("Внутренняя мера")
  Пусть $X$ — пространство с конечной $sigma$-аддитивной мерой $mu$,
  определенной на некоторой алгебре $R subset P(X)$. _Внутренней мерой_
  множества $A subset X$ называется число
  $mu_* (A) = mu(X) - mu^*(X without A)$, где $mu^*$ — внешняя мера множества
  $A$. Доказать, что
  $ mu^*(A) >= mu_* (A). $
] <pr:inner-outer-measure>

#problem(difficulty: "hard")[
  В обозначениях задачи~@pr:inner-outer-measure доказать, что множество
  $A subset X$ измеримо по Лебегу тогда и только тогда, когда
  $ mu_* (A) = mu^*(A). $
] <pr:inner-outer-measurability>

#problem(difficulty: "hard")[
  Доказать, что мощность множества измеримых по Лебегу подмножеств отрезка
  $[0, 1]$ больше мощности континуума.
] <pr:measurable-set-cardinality>

#problem(difficulty: "hard")[
  Обозначим через $mu$ меру Лебега на отрезке $[0, 1]$ и введем на пространстве
  измеримых по Лебегу подмножеств отрезка $[0, 1]$ отношение эквивалентности,
  положив $A tilde B$, если $mu(A Delta B) = 0$. Доказать, что множество классов
  эквивалентности имеет мощность континуума.
] <pr:measure-algebra-cardinality>

#problem(difficulty: "hard")[
  #idx("Непрерывность меры")
  #idx("Полунепрерывность меры сверху (снизу)")
  #idx("Счетная", "аддитивность меры")
  Пусть $mu$ — мера на $S$. Доказать, что следующие условия эквивалентны, если
  $S$ — кольцо, и могут быть не эквивалентны, если $S$ — полукольцо:

  #source(202)а) _счетная аддитивность_
  $mu(union.sq_(k = 1)^infinity A_k) = sum_(k = 1)^infinity mu(A_k)$;

  б) _полунепрерывность сверху:_ если $A_1 supset A_2 supset A_3
  supset dots$ и $A = inter_(k = 1)^infinity A_k$, то $mu(A) = lim mu(A_k)$;

  в) _полунепрерывность снизу:_ если $A_1 subset A_2 subset A_3
  subset dots$ и $A = union_(k = 1)^infinity A_k$, то $mu(A) = lim mu(A_k)$;

  г) _непрерывность:_ $mu(lim_(n -> infinity) A_k)
  = lim_(n -> infinity) mu(A_k)$.
] <pr:measure-continuity-equivalence>

#problem[
  Пусть $mu$ — счетно-аддитивная мера на полукольце $S subset P(X)$, $mu^*$ —
  соответствующая внешняя мера на $P(X)$.

  а) Доказать, что отношение $mu^*(A Delta B) = 0$ является отношением
  эквивалентности и что функция $d(tilde(A), tilde(B)) = mu^*(A Delta B)$ задает
  расстояние на соответствующем фактормножестве $cal(M)$. (Здесь $tilde(A)$ и
  $tilde(B)$ — классы эквивалентности, содержащие множества $A$ и $B$.)

  б)#difficulty("hard") Доказать, что метрическое пространство $cal(M)$ полно.

  в) Обозначим через $R$ и $L$ подпространства в $cal(M)$, состоящие из классов
  элементарных (т. е. принадлежащих $R(S)$) и измеримых множеств соответственно.
  Докажите, что $L$ совпадает с замыканием $R$. (См.
  @ss:theory-measure-extension[пункт о продолжении меры].)
] <pr:outer-measure-metric-quotient>

#problem[
  Пусть $S$ — подкольцо интервалов вида $[a, b)$ на отрезке $[0, 1]$, $cal(M)$ —
  пространство, построенное в задаче~@pr:outer-measure-metric-quotient.
  Доказать, что $cal(M)$ связно и некомпактно.
] <pr:measure-metric-connectedness>

#problem[
  Пусть ${E_n}$ — последовательность измеримых по Лебегу множеств на прямой.
  Являются ли измеримыми множествами верхний и нижний пределы последовательности
  ${E_n}$?
] <pr:measurable-set-limits>

#problem[
  Пусть $A_n$ — последовательность измеримых множеств и
  $sum mu(A_n) < infinity$. Доказать, что $mu(overline(lim) A_n) = 0$.
] <pr:borel-cantelli-null-limit>

#problem[
  а) Доказать, что борелевские множества измеримы по Лебегу.

  б) Доказать, что всякое измеримое по Лебегу множество на прямой есть
  объединение борелевского множества и множества меры нуль.
] <pr:borel-null-decomposition>

#problem[
  Пусть $X$ — единичный квадрат на плоскости и $S$ — полукольцо прямоугольников,
  принадлежащих $X$, вида
  $ T_(a b) = {a <= x < b, 0 <= y <= 1}. $
  Положим $m(T_(a b)) = b - a$. Описать явный вид лебеговского продолжения этой
  меры.
] <pr:vertical-strip-measure-extension>

#source(203)
#problem[
  В условиях и обозначениях задачи~@pr:vertical-strip-measure-extension
  доказать, что множество $tilde(T) = {0 <= x <= 1, y = 1 / 2}$ неизмеримо, и
  найти его внешнюю меру.
] <pr:horizontal-strip-nonmeasurability>

#problem(difficulty: "hard")[
  #idx("Измеримость по Каратеодори")
  Пусть мера $mu$ задана на полукольце $X$ с единицей и $mu^*$ — отвечающая ей
  внешняя мера. Множество $A subset X$ называется _измеримым по Каратеодори_,
  если для любого подмножества $Z subset X$ имеет место равенство
  $ mu^*(Z) = mu^*(Z inter A) + mu^*(Z without A). $
  Доказать, что множество $A$ измеримо по Лебегу тогда и только тогда, когда оно
  измеримо по Каратеодори.
] <pr:caratheodory-measurability>

#problem(difficulty: "very-hard")[
  #idx("Множество", "σ-однозначности меры")
  Пусть $m$ — исходная $sigma$-аддитивная мера, определенная на полукольце.
  Множество $A$ называется _множеством $sigma$-однозначности_ для меры $m$, если

  + существует $sigma$-аддитивное продолжение $lambda$ меры $m$, определенное на
    $A$;
  + для всяких двух таких $sigma$-аддитивных продолжений $lambda_1$ и $lambda_2$
    справедливо равенство
    $ lambda_1(A) = lambda_2(A). $

  а) Доказать, что каждое множество $A$, измеримое по Лебегу, является
  множеством $sigma$-однозначности для исходной меры $m$.

  б) Доказать, что система множеств, измеримых по Лебегу, исчерпывает всю
  систему множеств $sigma$-однозначности для исходной меры $m$.
] <pr:sigma-uniqueness-measurability>

#problem(difficulty: "hard")[
  Пусть каждое из множеств $X_n$ ($n = 1, 2, 3, dots$) состоит из цифр
  $0, 1, 2, dots, 9$. Определим меру $mu_n$ на $X_n$, полагая
  $mu_n (Y) = 1 / 10 upright("card") Y$. Пусть $mu$ — мера на $X = product X_n$,
  являющаяся произведением мер $mu_n$. Рассмотрим отображение $X$ в отрезок
  $[0, 1]$: ${x_n} |-> 0, x_1 x_2 x_3 dots$ (бесконечная десятичная дробь).
  Доказать, что при этом отображении мера $mu$ переходит в обычную меру Лебега
  на $[0, 1]$.
] <pr:decimal-product-measure>

==== Конструкции мер <ss:problems-measure-constructions>

#problem(difficulty: "hard")[
  Построить пример неизмеримого по Лебегу множества на прямой.
] <pr:nonmeasurable-real-set>

#problem(difficulty: "hard")[
  Построить пример измеримого по Лебегу множества на плоскости, проекции
  которого на координатные оси неизмеримы.
] <pr:nonmeasurable-projections>

#problem(difficulty: "very-hard")[
  #idx("Точка", "плотности множества")
  Пусть $mu$ — мера Лебега, $X$ — измеримое подмножество отрезка $[0, 1]$. Точка
  $x in X$ называется _точкой #source(204)плотности_ множества $X$, если
  $
    lim_(epsilon -> 0) frac(
      mu{X inter (x - epsilon, x + epsilon)},
      2 epsilon
    ) = 1.
  $
  Доказать, что почти все точки множества $X$ есть точки плотности.
] <pr:lebesgue-density-points>

#problem[
  Описать все подмножества $E$ отрезка $[0, 1]$ такие, что их характеристические
  функции $chi_E (x)$ интегрируемы по Риману.
] <pr:riemann-integrable-indicators>

#problem(difficulty: "core")[
  а) Пусть $X$ — пространство с $sigma$-аддитивной мерой. Доказать, что
  подмножества нулевой меры в $X$ образуют $sigma$-кольцо.

  б) Доказать, что счетные множества на прямой имеют лебеговскую меру нуль.
  Привести пример несчетного множества на прямой, имеющего лебеговскую меру
  нуль.
] <pr:null-set-sigma-ring>

#problem[
  Доказать, что множество всех зарядов на $sigma$-алгебре $frak(A)$ является
  линейным пространством, полным относительно расстояния
  $d(nu_1, nu_2) = sup_(A in frak(A)) abs(nu_1 (A) - nu_2 (A))$.
] <pr:charge-space-completeness>

#problem(difficulty: "hard")[
  Для любого подмножества $M$ пространства $RR^n$ обозначим через $M - M$
  множество
  $ M - M = {x - y: x in M, y in M}. $
  Доказать, что если $M$ измеримо и имеет положительную лебеговскую меру, то
  множество $M - M$ содержит окрестность нуля в $RR^n$.
] <pr:steinhaus-difference-neighborhood>

#problem(difficulty: "core")[
  Пусть $X = {x_1, x_2, dots, x_n, dots}$ — счетное множество и каждому его
  элементу $x_i$ поставлено в соответствие число $p_i >= 0$ так, что
  $sum_(n = 1)^infinity p_n = 1$. Положим для любого подмножества $A subset X$
  $m(A) = sum_(n in N_A) p_n$, где $N_A = {i: x_i in A}$.

  Доказать, что $m$ есть $sigma$-аддитивная мера на алгебре всех подмножеств
  множества $X$.
] <pr:countable-probability-measure>

#problem(difficulty: "hard")[
  Привести пример конечно-аддитивной, но не $sigma$-аддитивной меры.
] <pr:finitely-additive-noncountable-measure>

#problem(difficulty: "hard")[
  Вычислить меру Винера множества функций $f in C[a, b]$, обладающих свойствами:
  $f(a) < 0$, $f(b) > 0$.
] <pr:wiener-endpoint-signs>

#problem[
  Определим меру $mu$ на $[0, 1]$ формулой
  $mu([alpha, beta)) = log_2 frac(1 + beta, 1 + alpha)$. Доказать, что эта мера
  сохраняется при преобразовании $f: x |-> {frac(1, x)}$, где ${dot.op}$
  означает дробную часть числа. #source(205) (То есть $mu(f^(-1)(A)) = mu(A)$.
  Не утверждается, что $mu(f(A)) = mu(A)$.)
] <pr:gauss-invariant-measure>

#problem[
  Каждое действительное число $x in [0, 1]$ можно разложить в непрерывную дробь
  $x = frac(1, n_1 + frac(1, n_2 + dots))$ (рациональным числам соответствуют
  конечные дроби, иррациональным — бесконечные).

  а) Доказать, что преобразование задачи~@pr:gauss-invariant-measure в терминах
  последовательностей ${n_k}$ имеет вид ${n_k} |-> {n_(k + 1)}$.

  б) Вычислить меру простейших цилиндрических множеств в пространстве
  последовательностей, соответствующую мере $mu$
  задачи~@pr:gauss-invariant-measure.
] <pr:continued-fraction-cylinder-measure>

#problem[
  Докажите, что условие абсолютной сходимости ряда $sum nu(A_n)$ в определении
  заряда можно заменить условием простой сходимости (см. @def:charge[определение
    заряда]).
] <pr:charge-absolute-convergence>

#problem[
  Вычислить вариацию комплексного заряда $nu = mu_1 + i mu_2$ на множестве $A$,
  если а) известно, что меры $mu_1$ и $mu_2$ дизъюнктны на $A$; б) $mu_1 = mu_2$
  на $A$.
] <pr:complex-charge-variation>

#problem[
  Пусть $nu$ — комплексный заряд на $sigma$-алгебре $frak(A) subset P(X)$.

  Доказать, что вещественная и мнимая части $nu$ являются зарядами на $frak(A)$.
] <pr:complex-charge-real-imaginary-parts>

#problem(difficulty: "hard")[
  Пусть $nu$ — заряд на $sigma$-алгебре $frak(A) subset P(X)$. Доказать, что
  $sup_(A in frak(A)) nu(A) < +infinity$,
  $inf_(A in frak(A)) nu(A) > -infinity$.
] <pr:charge-boundedness>

#problem(difficulty: "hard")[
  Доказать, что верхняя и нижняя грани, о которых идет речь в
  задаче~@pr:charge-boundedness, достигаются на некоторых множествах $A_+$ и
  $A_-$ из $frak(A)$.
] <pr:hahn-decomposition-extrema>

#problem(difficulty: "hard")[
  В обозначениях задач~@pr:charge-boundedness, @pr:hahn-decomposition-extrema
  доказать, что функция $nu$ (соотв. $-nu$) является $sigma$-аддитивной мерой на
  $frak(A) inter P(A_+)$ (соотв. на $frak(A) inter P(A_-)$).
] <pr:hahn-positive-negative-measures>

#problem(difficulty: "hard")[
  В обозначениях задач~@pr:charge-boundedness, @pr:hahn-decomposition-extrema
  доказать, что для всякого $A in frak(A)$ справедливо равенство
  $nu(A) = nu(A inter A_+) + nu(A inter A_-)$.
] <pr:hahn-charge-splitting>

#problem(difficulty: "hard")[
  Доказать, что вариация $abs(nu)$ заряда $nu$ конечна и $sigma$-аддитивна.
] <pr:charge-variation-additivity>
