#import "main-defs.typ": *
#import "statements.typ": *

== Спектральная теория операторов <ch:problems-spectral-theory>

=== Функциональное исчисление <sec:problems-functional-calculus>

==== Функции операторов в конечномерном пространстве
<ss:problems-finite-dimensional-calculus>

#problem(difficulty: "core")[
  Пусть $A$ — оператор в $n$-мерном пространстве $L$ над полем $K$. Доказать,
  что операторы $1$, $A$, $A^2$, $dots$, $A^n$ линейно зависимы.
] <pr:finite-dimensional-operator-power-dependence>

#problem[
  Доказать, что следующие свойства оператора $A$ в $n$-мерном пространстве $L$
  над полем $K = RR$ или $CC$ эквивалентны друг другу:

  а) операторы $1$, $A$, $A^2$, $dots$, $A^(n - 1)$ линейно независимы;

  б) существует такой вектор $xi in L$, что $xi$, $A xi$, $dots$, $A^(n - 1) xi$
  — базис в $L$;

  в) существует вектор $xi in L$, _циклический_ для $A$ (т. е. такой, что всякое
  подпространство в $L$, содержащее $xi$ и инвариантное относительно $A$,
  совпадает с $L$).

  #source(271) #idx("Оператор", "регулярный") Операторы $A$, обладающие
  перечисленными свойствами, называются _регулярными_.
] <pr:regular-operator-cyclic-vector-characterizations>

#problem[
  Доказать, что диагональная матрица задает регулярный оператор тогда и только
  тогда, когда все элементы, стоящие на главной диагонали, попарно различны.
] <pr:diagonal-operator-regularity-distinct-entries>

#problem[
  Доказать, что следующие свойства матрицы $A$ эквивалентны:

  а) $A$ задает регулярный оператор;

  б) минимальный многочлен для $A$ совпадает с характеристическим многочленом;

  в) каждому собственному значению $A$ отвечает только одна жорданова клетка.
] <pr:regular-operator-minimal-polynomial-jordan-criterion>

#problem[
  Доказать, что множество регулярных операторов открыто и всюду плотно в
  множестве всех операторов.
] <pr:regular-operators-open-dense>

#problem[
  #idx("Подобные матрицы")
  Пусть $R_n$ — совокупность матриц порядка $n$ вида
  $
    A = mat(
      0, 1, 0, 0, dots.h, 0;
      0, 0, 1, 0, dots.h, 0;
      dots.h, dots.h, dots.h, dots.h, dots.h, dots.h;
      0, 0, 0, 0, dots.h, 1;
      a_1, a_2, a_3, a_4, dots.h, a_n;
    ).
  $
  Доказать, что

  а) всякий регулярный оператор в $n$-мерном пространстве в подходящем базисе
  задается матрицей $A in R_n$;

  б) каждая матрица $A in R_n$ задает регулярный оператор;

  в) две матрицы $A$ и $B$ из $R_n$ _подобны_ (т. е. $A = C B C^(-1)$), только
  если $A = B$.
] <pr:regular-operator-companion-matrix-canonical-form>

#problem[
  Доказать, что два регулярных оператора $A$ и $B$ в $n$-мерном пространстве $L$
  над полем $K = RR$ или $CC$ подобны тогда и только тогда, когда справедливы
  равенства
  $ op("tr") A^k = op("tr") B^k, quad k = 1, 2, dots, n. $
] <pr:regular-operator-similarity-trace-power-criterion>

#problem(difficulty: "core")[
  #idx("Жорданова клетка")
  Пусть
  $
    A = mat(
      lambda, 1, 0, 0;
      0, lambda, 1, 0;
      dots.h, dots.h, dots.h, dots.h;
      0, 0, 0, lambda;
    )
  $
  — _жорданова клетка_ порядка $n$ с собственным значением $lambda$. Вычислить
  матрицы:

  а) $A^n$, $n = 2, 3$;

  б) $p(A)$, где $p$ — многочлен;

  в) $f(A)$, где $f$ — целая аналитическая функция;

  #source(272)
  г) $r(A)$, где $r$ — рациональная функция, не имеющая полюса в точке $lambda$.
] <pr:jordan-block-powers-polynomial-analytic-rational-calculus>

#problem[
  #idx("Сумма", "алгебр прямая")
  #idx("Идемпотент")
  #idx("Алгебра", "примарная")
  Пусть $frak(A)$ — коммутативная алгебра над полем $K = CC$ или $RR$.
  _Идемпотентом_ называется элемент $x in frak(A)$, обладающий свойством
  $x^2 = x$. _Прямой суммой_ алгебр $frak(A)_1$ и $frak(A)_2$ называется
  линейное пространство $frak(A)_1 ⊕ frak(A)_2$ с покомпонентной операцией
  умножения. Доказать, что следующие свойства алгебры $frak(A)$ эквивалентны:

  а) $frak(A)$ изоморфна прямой сумме некоторых (ненулевых) алгебр $frak(A)_1$ и
  $frak(A)_2$;

  б) в алгебре $frak(A)$ есть нетривиальный (отличный от нуля и единицы)
  идемпотент.

  Алгебры, не обладающие этими свойствами, называются _примарными_.
] <pr:primary-algebra-idempotent-direct-sum-criterion>

#problem[
  а) Доказать, что поле $CC$ является примарной алгеброй над $RR$.

  б) Доказать, что всякая конечномерная примарная алгебра с единицей и с одной
  образующей над $CC$ изоморфна одной из алгебр $frak(A)_n = CC[x] / (x^n)$
  (факторалгебре многочленов от $x$ по идеалу, порожденному $x^n$).
] <pr:single-generator-complex-primary-algebra-classification>

#problem[
  Доказать, что всякая конечномерная алгебра является прямой суммой примарных
  алгебр.
] <pr:finite-dimensional-algebra-primary-decomposition>

#problem(difficulty: "core")[
  Числовая последовательность ${a_n}$ обладает свойством
  $0 <= a_(m + n) <= a_m + a_n$ для всех $m$ и $n$. Доказать, что существует
  $lim_(n -> infinity) (a_n / n)$ и что он равен $inf_n (a_n / n)$.
] <pr:subadditive-sequence-fekete-limit>

#problem[
  Пусть $A$ — оператор в $n$-мерном линейном пространстве $L$ над полем $K$.
  Обозначим через $frak(A)(A)$ алгебру над $K$, порожденную $1$ (единичный
  оператор) и $A$. Докажите, что $dim frak(A)(A) <= n$.
] <pr:operator-generated-algebra-dimension-bound>

#problem[
  Пусть $K = CC$. Докажите, что алгебра $frak(A)(A)$ примарна тогда и только
  тогда, когда оператор $A$ имеет единственное собственное значение.
] <pr:operator-generated-algebra-primary-single-eigenvalue>

#problem[
  Пусть $S$ — некоторое множество операторов в линейном пространстве $L$. Через
  $S'$ обозначается совокупность операторов в $L$, перестановочных со всеми
  операторами из $S$. Для каких операторов $A$ справедливо равенство
  $frak(A)(A)' = frak(A)(A)$?
] <pr:operator-generated-algebra-self-commutant>

#problem(difficulty: "core")[
  Доказать, что всякий многочлен от коэффициентов матрицы $A$, не меняющийся при
  преобразованиях подобия $A mapsto C A C^(-1)$, является многочленом от
  $op("tr") A$, $op("tr") A^2$, $dots$, $op("tr") A^n$.
] <pr:single-matrix-polynomial-invariants-trace-generators>

#problem(difficulty: "hard")[
  Пусть $A$ и $B$ — матрицы второго порядка. Доказать, что всякий многочлен от
  коэффициентов $A$ и $B$, не меняющийся при преобразованиях $A -> C A C^(-1)$,
  $B -> C B C^(-1)$, #source(273) имеет вид
  $P(op("tr") A, op("tr") B, op("tr") A^2, op("tr") B^2, op("tr") A B)$, где $P$
  — некоторый однозначно определенный многочлен от пяти переменных.
] <pr:two-by-two-matrix-pair-polynomial-invariants>

#problem(difficulty: "very-hard")[
  Пусть $A$ и $B$ — матрицы порядка $n$. Доказать, что алгебра многочленов от
  коэффициентов $A$ и $B$, инвариантных относительно преобразований
  $A -> C A C^(-1)$, $B -> C B C^(-1)$, содержит не менее $n^2 + 1$ образующих.
] <pr:matrix-pair-invariant-algebra-generator-lower-bound>

#problem[
  Указать в пространстве матриц порядка $2 n times 2 n$ подпространство
  размерности $1 + n^2$, состоящее из попарно перестановочных матриц.
] <pr:large-commutative-matrix-subspace>

#problem[
  Пусть $A$ — оператор в $n$-мерном пространстве с единственным собственным
  значением $lambda$. Доказать, что для любой функции $f$, $(n - 1)$-кратно
  дифференцируемой в точке $lambda$, справедливо равенство
  $ f(A) = sum_(k = 0)^(n - 1) (f^((k)) (lambda)) / k! (A - lambda dot 1)^k. $
] <pr:single-eigenvalue-operator-taylor-functional-calculus>

#problem(difficulty: "hard")[
  Пусть $A$ — оператор в $n$-мерном пространстве с различными собственными
  значениями $lambda_1$, $dots$, $lambda_n$. Доказать формулу
  $
    f(A) = sum_(k = 1)^n f(lambda_k) product_(j != k)
    (A - lambda_j dot 1) / (lambda_k - lambda_j).
  $
] <pr:distinct-eigenvalue-operator-lagrange-functional-calculus>

#problem(difficulty: "hard")[
  Пусть оператор $A$ имеет собственные числа $lambda_1$, $dots$, $lambda_n$ с
  кратностями $m_1$, $dots$, $m_n$. Доказать формулу
  $ f(A) = sum_(k = 1)^n sum_(j = 0)^(m_k - 1) f^((j)) (lambda_k) B_(j k) $
  и найти явный вид операторов $B_(j k)$.
] <pr:repeated-eigenvalue-operator-hermite-functional-calculus>

#problem(difficulty: "hard")[
  Пусть $K$ — совокупность всех положительных (см. задачу
  @pr:positive-operator-basic-properties) операторов со следом $1$ в
  конечномерном гильбертовом пространстве $H$. Доказать, что $K$ — выпуклый
  компакт, и найти крайние точки $K$.
] <pr:positive-trace-one-operator-convex-extreme-points>
