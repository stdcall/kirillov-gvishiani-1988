#import "main-defs.typ": *
#import "statements.typ": *

=== Измеримые функции <sec:hints-measurable-functions>

==== Свойства измеримых функций <ss:hints-measurable-function-properties>

#hint[@pr:measurability-characterizations][
  Цепочка следствий доказывается равенствами
  $ \{x in X:f(x)>=a\} = inter.big_(n=1)^infinity \{x in X:f(x)>a-1/n\}, $
  $ \{x in X:f(x)<a\} = X without \{x in X:f(x)>=a\}, $
  $ \{x in X:f(x)<=a\} = inter.big_(n=1)^infinity \{x in X:f(x)<a+1/n\}, $
  $ \{x in X:f(x)>a\} = X without \{x:f(x)<=a\}. $
  #source(305)
  д) Всякий луч является борелевским множеством; наименьшим $sigma$-кольцом,
  содержащим все лучи, является кольцо борелевских множеств.
] <hint:measurability-characterizations>

#hint[@pr:measurable-reciprocal][
  $
    \{x in X:1/f(x)>a\} =
  $
  $
    cases(
      \{x in X:0<f(x)<a^(-1)\} & "если" a>0,
      \{x in X:0<f(x)<infinity\} & "если" a=0,
      \{x in X:-infinity<f(x)<a^(-1)\}
      union \{x in X:0<f(x)<infinity\} & "если" a<0.
    )
  $
] <hint:measurable-reciprocal>

#hint[@pr:measurable-absolute-value][
  $\{x in X:abs(f(x))<a\} = \{x in X:f(x)<a\} inter \{x in X:f(x)>-a\}$.
] <hint:measurable-absolute-value>

#hint[@pr:continuous-composition-measurability][
  Очевидно, что множество $\{(t_1,dots,t_n):f(t_1,dots,t_n)>a\}$ открыто и
  представимо в виде счетного объединения открытых параллелепипедов из $RR^n$
  вида $(a_k^((1)),b_k^((1))) times dots times (a_k^((n)),b_k^((n)))$. Тогда
  $
    \{x in RR:h(x)>a\} = union.big_(k=1)^infinity inter.big_(i=1)^n \{x in
    RR:a_k^((i))<g_i (x)<b_k^((i))\}.
  $
] <hint:continuous-composition-measurability>

#hint[@pr:reverse-composition-nonmeasurability][
  Построить непрерывную строго возрастающую функцию $RR arrow.r RR$ такую, что
  прообраз некоторого множества меры $0$ является множеством $X'$ положительной
  меры (используйте для этого ряды из *канторовых лестниц*). Пусть $X subset X'$
  — неизмеримое множество, $phi(y)$ — характеристическая функция множества
  $f(X)$. Тогда $phi[f(x)]$ неизмерима.
] <hint:reverse-composition-nonmeasurability>

#hint[@pr:derivative-measurability][
  Считая, что $f(x)$ продолжена вправо от точки $x=1$ дифференцируемым образом
  (например, $f(1+alpha)=f(1)+alpha f'(1)$), положим
  $phi_n (x)=n (f(x+1/n)-f(x))$. Тогда $f'(x)$ является пределом сходящейся
  последовательности непрерывных и, следовательно, измеримых функций:
  $f'(x)=lim_(n -> infinity) phi_n (x)$.
] <hint:derivative-measurability>

#hint[@pr:cantor-square-measure-isomorphism][
  Прообразом квадрата $D_(n m l)=[m/2^n,(m+1)/2^n] times [l/2^n,(l+1)/2^n]$
  является интервал длиной $2^(-2n)$. Рассмотреть $sigma$-кольца, порожденные
  $D_(n m l)$ и $f^(-1)(D_(n m l))$.
] <hint:cantor-square-measure-isomorphism>

#hint[@pr:borel-version-measurable-function][
  Положим $U(a)=\{x in RR:f(x)<a\}$. Каждое из счетной совокупности множеств
  $U((k+1)/2^n)$ становится борелевским после выбрасывания некоторого множества
  меры $0$, которое можно выбрать борелевским. Объединение всех выброшенных
  множеств — борелевское множество; можно на нем положить, например, $f(x)=0$.
] <hint:borel-version-measurable-function>

#hint[@pr:luzin-continuity-on-large-closed-set][
  Доказать утверждение задачи для простых функций, принимающих конечное число
  значений, доказав сначала, что для любого измеримого множества
  $A subset [0,1]$ выполняется: $forall delta>0$ существует замкнутое
  $B subset A$ такое, что $mu(A without B)<delta$. Для любой функции $f(x)$
  существует последовательность простых функций $f_n (x)$, сходящихся к $f(x)$.
  Тогда существует последовательность замкнутых множеств $\{K_n\}$,
  $mu(K_n)>1-epsilon/2^(n+1)$, $f_n (x)$ непрерывна на
  #source(306)
  $K_n$. По теореме~@th:egorov и внутренней регулярности меры выберем замкнутое
  множество $K_0$ с $mu(K_0)>1-epsilon/2$, на котором $f_n arrow.r.double f$. На
  компактном множестве $K=inter.big_(n=0)^infinity K_n$ непрерывные функции
  $f_n$ равномерно сходятся к $f$, причем $mu(K)>1-epsilon$, откуда следует
  утверждение задачи.#ed-note[
    Равномерная сходимость на пересечении $K_n$ в исходном доказательстве не
    обоснована; требуется дополнительное применение теоремы Егорова. См. теорему
    2.33 и упражнение 44: #cite(<Folland1999>, form: "full").
  ]
] <hint:luzin-continuity-on-large-closed-set>

#hint[@pr:approximate-continuity-almost-everywhere][
  Сведя задачу к случаю, когда $f(x)$ задана на отрезке $[a,b]$, в силу задачи
  @pr:luzin-continuity-on-large-closed-set имеем: $forall epsilon>0$ существует
  измеримое множество $X_epsilon subset [a,b]$, $mu(X_epsilon)>b-a-epsilon$
  такое, что $f(x)$ непрерывна на $X_epsilon$. Обозначим через
  $X'_epsilon subset X_epsilon$ множество точек плотности; можно показать, что
  $mu(X'_epsilon)=mu(X_epsilon)$. Очевидно, что все точки $X'_epsilon$ являются
  точками Лебега функции $f$, откуда в силу произвольности $epsilon$ следует
  утверждение задачи.
] <hint:approximate-continuity-almost-everywhere>

#hint[@pr:level-cardinality-measurability][
  См. указания к задаче @pr:banach-indicatrix-variation.
] <hint:level-cardinality-measurability>

#hint[@pr:measurable-supremum-infimum][
  $ \{x:sup_n f_n (x)>c\} = union.big_(n=1)^infinity \{x:f_n (x)>c\}, $
  $ \{x:inf_n f_n (x)<c\} = union.big_(n=1)^infinity \{x:f_n (x)<c\}. $
] <hint:measurable-supremum-infimum>

#hint[@pr:pointwise-convergence-set-measurability][
  Искомое множество:
  $ inter.big_k union.big_n inter.big_m \{x:abs(f_n (x)-f_(n+m) (x))<1/k\}. $
] <hint:pointwise-convergence-set-measurability>

#hint[@pr:measurable-positive-negative-parts][
  Следствие из задачи @pr:measurable-supremum-infimum.
] <hint:measurable-positive-negative-parts>

#hint[@pr:monotone-equimeasurable-rearrangement][
  Положим $M=mu(X)$ и $F(c)=mu\{x:f(x)<=c\}$. Тогда при $0<y<M$
  $ g(y)=inf\{c in RR:F(c)>=y\}. $
  Используйте равносильность $g(y)<=c$ и $y<=F(c)$, а также непрерывность $F$
  справа.#ed-note[
    Исправлен знак в определении обобщенной обратной функции. Все вещественные
    уровни нужны для равноизмеримости, а открытый интервал исключает
    неопределенные крайние значения. См. теорему 1 в гл. III, § 8: #cite(
      <Shiryaev2021>,
      form: "full",
    ).
  ]
] <hint:monotone-equimeasurable-rearrangement>

#hint[@pr:complex-modulus-argument-measurability][
  Следствие из задачи @pr:continuous-composition-measurability.
] <hint:complex-modulus-argument-measurability>

#hint[@pr:complex-measurability-disk-preimages][
  На множестве комплексных чисел круги и прямоугольники
  $ \{z in CC:a<="Re" z<=b,c<="Im" z<=d\} $
  порождают одну и ту же $sigma$-алгебру.
] <hint:complex-measurability-disk-preimages>

#hint[@pr:vector-measurability-basis-independence][
  Координаты векторов в одном базисе непрерывно зависят от координат в другом
  базисе. Использовать задачу @pr:continuous-composition-measurability.
] <hint:vector-measurability-basis-independence>
