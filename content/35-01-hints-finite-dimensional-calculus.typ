#import "main-defs.typ": *
#import "statements.typ": *

=== Функциональное исчисление <sec:hints-functional-calculus>

==== Функции операторов в конечномерном пространстве
<ss:hints-finite-dimensional-operator-functions>

#hint[@pr:finite-dimensional-operator-power-dependence][Воспользуйтесь
  тождеством Кэли $P_A (A)=0$, где $P_A$ — характеристический многочлен матрицы
  $A$.
] <hint:finite-dimensional-operator-power-dependence>

#hint[@pr:regular-operator-cyclic-vector-characterizations][Импликации б)
  $arrow.r$ в) $arrow.r$ а) очевидны. Для вывода б) из а) рассмотрим для каждого
  вектора $xi$ идеал $I_xi$ в кольце многочлена от одного переменного,
  определяемый формулой $I_xi=$

  #source(364)
  $={P:P(A)xi=0}$. Идеал $I_xi$ является главным (как любой идеал в кольце
  многочленов от одного переменного), т. е. порождается некоторым многочленом
  $P_xi$. Так как $P_A in I_xi$, $P_xi$ есть делитель $P_A$. Пусть
  $P_1,dots,P_k$ — все различные делители $P_A$ степени $<n$ со старшим
  коэффициентом $1$. Пусть $L_i=ker P_i (A)$. Из а) следует, что $L_i!=L$. Тогда
  $union_(i=1)^k L_i!=L$. Таким образом, существует вектор $xi in L$, который не
  аннулируется ни одним из операторов $P_i (A)$, ни, соответственно, одним из
  операторов вида $P(A)$, $deg P<n$. Отсюда следует б).
] <hint:regular-operator-cyclic-vector-characterizations>

#hint[@pr:diagonal-operator-regularity-distinct-entries][Воспользуйтесь формулой
  для определителя Вандермонда.
] <hint:diagonal-operator-regularity-distinct-entries>

#hint[@pr:regular-operator-minimal-polynomial-jordan-criterion][Действуйте по
  схеме а) $arrow.r$ б) $arrow.r$ в) $arrow.r$ а).
] <hint:regular-operator-minimal-polynomial-jordan-criterion>

#hint[@pr:regular-operators-open-dense][Условие, что $A$ нерегулярен, может быть
  записано системой алгебраических уравнений на матричные коэффициенты $A$
  (выражающих линейную зависимость $1,A,dots,A^(n-1)$).
] <hint:regular-operators-open-dense>

#hint[@pr:regular-operator-companion-matrix-canonical-form][а) Пусть $xi$ —
  циклический вектор для $A$. Запишите $A$ в базисе $xi,A xi,dots,A^(n-1)xi$.

  б) Первый базисный вектор $e_1$ является циклическим для $A$.

  в) Коэффициенты ${a_i}$ однозначно определяются характеристическим многочленом
  матрицы $A$.
] <hint:regular-operator-companion-matrix-canonical-form>

#hint[@pr:regular-operator-similarity-trace-power-criterion][Коэффициенты
  многочлена $P(x)=x^n+a_1 x^(n-1)+dots+a_n$ выражаются через суммы
  $s_k=sum_(i=1)^n lambda_i^k$ ($k=1,2,dots,n$) степеней его корней. (А именно,
  справедливы _формулы Ньютона_: $k a_k=-sum_(i=0)^(k-1) a_i s_(k-i)$, где
  $a_0=1$.)
] <hint:regular-operator-similarity-trace-power-criterion>

#hint[@pr:jordan-block-powers-polynomial-analytic-rational-calculus][в) Ответ:

  $
    f(A)=mat(
      f(lambda), frac(f'(lambda), 1!), frac(f''(lambda), 2!), dots,
      frac(f^((n-1))(lambda), (n-1)!);
      0, f(lambda), frac(f'(lambda), 1!), dots, frac(f^((n-2))(lambda), (n-2)!);
      0, 0, dots, dots, dots;
      0, 0, 0, dots, f(lambda)
    ).
  $
] <hint:jordan-block-powers-polynomial-analytic-rational-calculus>

#hint[@pr:primary-algebra-idempotent-direct-sum-criterion][Если
  $frak(A)=frak(A)_1 plus.o frak(A)_2$, $e_i$ — единица в $frak(A)_i$, то
  элементы $e_1 plus.o 0$ и $0 plus.o e_2$ — нетривиальные идемпотенты. Обратно,
  если $e$ — идемпотент в $frak(A)$, отличный от $0$ и $1$, то
  $frak(A)=frak(A)_1+frak(A)_2$, где $frak(A)_1=e frak(A)e$,
  $frak(A)_2=(1-e)frak(A)(1-e)$.
] <hint:primary-algebra-idempotent-direct-sum-criterion>

#hint[@pr:single-generator-complex-primary-algebra-classification][а) Уравнение
  $lambda^2=lambda$ имеет в $CC$ лишь тривиальные решения $0$ и $1$.

  б) Докажите, что образующий элемент $x$ удовлетворяет уравнению
  $(x-lambda dot 1)^n=0$, где $lambda in CC$, а $n=dim frak(A)$.
] <hint:single-generator-complex-primary-algebra-classification>

#hint[@pr:finite-dimensional-algebra-primary-decomposition][Рассуждайте от
  противного и рассмотрите алгебру минимальной размерности, неразложимую в сумму
  примарных.
] <hint:finite-dimensional-algebra-primary-decomposition>

#hint[@pr:subadditive-sequence-fekete-limit][Пусть $A=inf a_n/n$. Тогда для
  любого $epsilon>0$ найдется $n_epsilon$ такое, что
  $a_(n_epsilon)/n_epsilon<A+epsilon$. Представим произвольное $N$ в виде

  $ N=k dot n_epsilon+l, "где" 0<=l<n_epsilon. $

  Тогда $a_N/N<=(k a_(n_epsilon)+a_l)/(k n_epsilon+l)$. При
  $N arrow.r infinity$, $k arrow.r infinity$. Отсюда следует утверждение задачи.
] <hint:subadditive-sequence-fekete-limit>

#hint[@pr:operator-generated-algebra-dimension-bound][#source(365)
  Воспользуйтесь задачей @pr:finite-dimensional-operator-power-dependence.
] <hint:operator-generated-algebra-dimension-bound>

#hint[@pr:operator-generated-algebra-primary-single-eigenvalue][Воспользуйтесь
  задачей @pr:single-generator-complex-primary-algebra-classification б).
] <hint:operator-generated-algebra-primary-single-eigenvalue>

#hint[@pr:operator-generated-algebra-self-commutant][Для регулярных.
] <hint:operator-generated-algebra-self-commutant>

#hint[@pr:single-matrix-polynomial-invariants-trace-generators][Воспользуйтесь
  задачами @pr:regular-operators-open-dense и
  @pr:regular-operator-similarity-trace-power-criterion.
] <hint:single-matrix-polynomial-invariants-trace-generators>

#hint[@pr:two-by-two-matrix-pair-polynomial-invariants][Докажите, что почти
  каждая пара матриц $(A,B)$ приводится к виду $A=mat(alpha, 0; 0, beta)$,
  $B=mat(gamma, epsilon; 1, delta)$.
] <hint:two-by-two-matrix-pair-polynomial-invariants>

#hint[@pr:matrix-pair-invariant-algebra-generator-lower-bound][Коразмерность
  орбиты действия группы $"PGL"(n)$ равна в этом случае $2 n^2-(n^2-1)=n^2+1$.
] <hint:matrix-pair-invariant-algebra-generator-lower-bound>

#hint[@pr:large-commutative-matrix-subspace][Все матрицы вида
  $mat(lambda dot 1_n, A; 0, lambda dot 1_n)$, где $1_n$ — единичная матрица
  порядка $n$, попарно перестановочны.
] <hint:large-commutative-matrix-subspace>

#hint[@pr:single-eigenvalue-operator-taylor-functional-calculus][Представьте $A$
  в виде $lambda dot 1+N$, где $N^n=0$, и проверьте равенство для
  $f(lambda)=lambda^k$ ($k=0,1,dots,n-1$).
] <hint:single-eigenvalue-operator-taylor-functional-calculus>

#hint[@pr:distinct-eigenvalue-operator-lagrange-functional-calculus][Проверьте,
  что $f(A)$ линейно выражается через значения $f$ в точках
  $lambda_1,dots,lambda_n$ и найдите соответствующие (матричные) коэффициенты.
] <hint:distinct-eigenvalue-operator-lagrange-functional-calculus>

#hint[@pr:repeated-eigenvalue-operator-hermite-functional-calculus][Проверьте,
  что $f(A)$ линейно выражается через $f^((j))(lambda_k)$ ($0<=j<=m_k-1$).
  Ответ: $B_(j k)=P_(j k)(A)$, где $P_(j k)(x)$ — многочлен степени не выше
  $n-1$, обладающий свойствами:

  1. $P_(j k)^((s))(lambda_i)=0$ для всех пар $(s,i)$ ($0<=s<=m_i-1$), кроме
    пары $(j,k)$;
  2. $P_(j k)^((j))(lambda_k)=1$.
] <hint:repeated-eigenvalue-operator-hermite-functional-calculus>

#hint[@pr:positive-trace-one-operator-convex-extreme-points][Крайние точки $K$ —
  положительные операторы ранга $1$, т. е. ортопроекторы на одномерные
  подпространства в $H$.
] <hint:positive-trace-one-operator-convex-extreme-points>
