#import "main-defs.typ": *
#import "statements.typ": *

==== Теория фредгольмовых операторов <ss:theory-fredholm-operators>

Пусть $L_1$ и $L_2$ — банаховы пространства и $T in cal(L)(L_1,L_2)$. Уравнение

$ T(x) = y, quad x in L_1, quad y in L_2, $ <eq:operator-inhomogeneous-equation>

является естественным обобщением системы линейных алгебраических уравнений на
бесконечномерный случай. Оказывается, что при некоторых дополнительных
предположениях теория таких систем почти полностью аналогична конечномерной
теории. Однако имеется и различие. Помимо более сложных доказательств, в
бесконечномерной ситуации возникает новое понятие — индекс линейного оператора.
Для введения этого понятия нам понадобятся некоторые приготовления. Будем
обозначать через $ker T$ #idx("Ядро оператора")_ядро_ оператора $T$, т. е.
совокупность всех решений уравнения

$ T x = 0, quad x in L_1. $ <eq:operator-homogeneous-equation>

Через $upright("im") T$ обозначим #idx("Образ оператора")_образ_ оператора $T$,
т. е. совокупность тех $y in L_2$, для которых разрешимо уравнение
@eq:operator-inhomogeneous-equation. Ясно, что $ker T$ — замкнутое
подпространство (как прообраз точки при непрерывном отображении). Множество
$upright("im") T$ не всегда замкнуто (см.
задачу~@pr:diagonal-operator-closed-range). Мы будем вместе с оператором $T$
рассматривать сопряженный оператор $T' in cal(L)(L'_2,L'_1)$ и соответствующие
уравнения

$
  T' g = f, quad g in L'_2, quad f in L'_1,
$ <eq:adjoint-inhomogeneous-equation>

$ T' g = 0, quad g in L'_2. $ <eq:adjoint-homogeneous-equation>

Если $upright("im") T$ и $upright("im") T'$ — замкнутые подпространства, то
можно определить банаховы пространства

$
  upright("coker") T = frac(L_2, upright("im") T),
  quad upright("coker") T' = frac(L'_1, upright("im") T').
$

Они называются #idx("Коядро оператора")_коядром_ операторов $T$ и $T'$
соответственно. #source(
  85,
)Положим

$ alpha(T) = dim ker T, quad beta(T) = dim upright("coker") T, $

$ i(T) = alpha(T) - beta(T). $

Оператор $T$ назовем #idx("Оператор", "фредгольмов")_фредгольмовым_, если числа
$alpha(T)$, $beta(T)$ конечны. В этом случае число $i(T)$ называется #idx(
  "Индекс оператора",
)_индексом_ оператора $T$.

В конечномерном случае, когда $dim L_1 = N_1$, $dim L_2 = N_2$, легко проверить
равенства

$
   N_1 - alpha(T) & = N_2 - beta(T) = upright("rang") T, \
  N_2 - alpha(T') & = N_1 - beta(T') = upright("rang") T',
$
<eq:finite-dimensional-rank-nullity>

которые в сочетании с равенством $upright("rang") T = upright("rang") T'$
(теорема о ранге матрицы) дают соотношения

$ alpha(T) = beta(T'), quad beta(T) = alpha(T'), quad i(T) = -i(T'). $
<eq:fredholm-adjoint-dimensions>

Цель этого пункта — показать соотношения @eq:fredholm-adjoint-dimensions в
бесконечномерном случае (для фредгольмовых операторов) и дать удобные критерии
для вычисления индекса и разрешимости уравнений
@eq:operator-inhomogeneous-equation — @eq:adjoint-homogeneous-equation.

Пусть задана последовательность линейных пространств и линейных операторов:

$
  dots arrow.r L_(k-1) arrow.r^(T_k) L_k arrow.r^(T_(k+1)) L_(k+1)
  arrow.r dots
$ <eq:linear-operator-complex>

Эта последовательность называется #idx(
  "Точная последовательность операторов",
)_точной в члене_ $L_k$, если $upright("im") T_k = ker T_(k+1)$. Говорят, что
последовательность @eq:linear-operator-complex _точна_, если она точна в каждом
члене. Ясно, что точность в члене $L_k$ влечет равенство
$T_(k+1) compose T_k = 0$. Последнее свойство получило название #idx(
  "Полуточная последовательность операторов",
)_полуточности_. Если последовательность @eq:linear-operator-complex полуточна в
члене $L_k$, то $upright("im") T_k subset ker T_(k+1)$. Факторпространство
$H_k = frac(ker T_(k+1), upright("im") T_k)$ измеряет «отклонение от точности» в
члене $L_k$. Оно называется #idx("Пространство", "когомологий")_$k$-м
пространством когомологий_ последовательности @eq:linear-operator-complex. Если
$H_k = {0}$ для всех $k$, то последовательность @eq:linear-operator-complex
точна.

Нас будет интересовать случай, когда все пространства $L_k$ — банаховы, а
операторы $T_k$ непрерывны. Основной результат в этом случае

#theorem[
  Пусть дана точная последовательность @eq:linear-operator-complex банаховых
  пространств и непрерывных операторов. #source(86)Тогда сопряженная
  последовательность

  $
    dots arrow.l L'_(k-1) arrow.l^(T'_k) L'_k
    arrow.l^(T'_(k+1)) L'_(k+1) arrow.l dots
  $ <eq:adjoint-operator-complex>

  также точна.
] <th:exact-sequence-duality>

#proof[
  Рассмотрим сначала один частный случай. А именно, пусть последовательность
  @eq:linear-operator-complex имеет вид

  $
    0 arrow.r L_1 arrow.r^T L_2 arrow.r 0,
  $ <eq:operator-isomorphism-exact-sequence>

  где $0$ означает тривиальное (нульмерное) пространство, и соответственно
  последовательность @eq:adjoint-operator-complex — вид

  $
    0 arrow.l L'_1 arrow.l^(T') L'_2 arrow.l 0.
  $ <eq:adjoint-isomorphism-exact-sequence>

  Точность последовательности @eq:operator-isomorphism-exact-sequence означает,
  что $ker T = {0}$ и $upright("im") T = L_2$, т. е. $T$ — изоморфизм линейных
  (но не банаховых!) пространств $L_1$ и $L_2$. По теореме Банаха об обратном
  операторе, $T^(-1)$ непрерывен и, следовательно, $T$ осуществляет
  топологический изоморфизм (линейный гомеоморфизм) банаховых пространств $L_1$
  и $L_2$. Поэтому $T'$ — топологический изоморфизм $L'_2$ и $L'_1$. Отсюда
  вытекает точность последовательности @eq:adjoint-isomorphism-exact-sequence.
  Итак, справедливость теоремы~@th:exact-sequence-duality в этом простейшем
  частном случае следует из теоремы Банаха. Можно проверить, что верно и
  обратное: теорема Банаха является следствием рассмотренного частного случая
  теоремы~@th:exact-sequence-duality.

  Вернемся к рассмотрению общего случая. Полуточность сопряженной
  последовательности очевидна, так как
  $T'_k compose T'_(k+1) = (T_(k+1) compose T_k)' = 0$. Остается доказать, что
  $upright("im") T'_(k+1) supset ker T'_k$. Пусть $f in ker T'_k$. Это означает,
  что функционал $f in L'_k$ обращается в нуль на
  $upright("im") T_k = ker T_(k+1)$. Значит, он определяет некоторый линейный
  функционал $F_0$ на подпространстве $upright("im") T_(k+1) subset L_(k+1)$ по
  формуле $F_(0)(T_(k+1)(x)) = f(x)$. На пространстве $upright("im") T_(k+1)$
  есть две нормы: одна — заимствованная из $L_(k+1)$, другая — перенесенная из
  $frac(L_k, ker T_(k+1))$ с помощью оператора $T_(k+1)$. Так как $T_(k+1)$
  ограничен, первая норма мажорируется второй. По теореме Банаха, эти нормы
  должны быть эквивалентны. Значит, $F_0$ непрерывен в топологии $L_(k+1)$ и по
  теореме Хана — Банаха допускает непрерывное продолжение до функционала
  $F in L'_(k+1)$. Ясно, что $T'_(k+1) F = f$, и теорема доказана. Эта теорема
  допускает обращение и обобщение (см.
  задачи~@pr:dual-exactness-implies-exactness — @pr:dual-cohomology-spaces).
]

#source(87)#theorem[
  Пусть $T$ — фредгольмов оператор из $cal(L)(L_1,L_2)$. Тогда
  $T' in cal(L)(L'_2,L'_1)$ также фредгольмов и справедливы равенства
  @eq:fredholm-adjoint-dimensions.
] <th:fredholm-adjoint>

#proof[
  По определению пространств $ker T$ и $upright("coker") T$ имеет место точность
  последовательности

  $
    0 arrow.r ker T arrow.r^i L_1 arrow.r^T L_2
    arrow.r^p upright("coker") T arrow.r 0,
  $

  где $i$ — вложение, а $p$ — естественная проекция. По
  теореме~@th:exact-sequence-duality отсюда следует точность последовательности

  $
    0 arrow.l (ker T)' arrow.l^(i') L'_1 arrow.l^(T') L'_2
    arrow.l^(p') (upright("coker") T)' arrow.l 0.
  $

  А это означает, что имеют место изоморфизмы

  $
    ker T' approx (upright("coker") T)',
    quad upright("coker") T' approx (ker T)'.
  $ <eq:fredholm-dual-kernel-cokernel>

  Отсюда вытекает фредгольмовость $T'$ и справедливость равенств
  @eq:fredholm-adjoint-dimensions.
]

#notation(
  $upright("coker") A$,
  references: [@ss:theory-fredholm-operators],
  sort: "048",
)

#notation(
  $i(A)$,
  references: [@ss:theory-fredholm-operators],
  sort: "051",
)

#notation(
  $upright("im") A$,
  references: [@ss:theory-fredholm-operators],
  sort: "052",
)

#notation(
  $ker A$,
  references: [@ss:theory-fredholm-operators],
  sort: "053",
)

#notation(
  $upright("rang") A$,
  references: [@ss:theory-fredholm-operators],
  sort: "057",
)
