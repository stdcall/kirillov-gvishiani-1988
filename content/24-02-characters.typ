#import "main-defs.typ": *
#import "statements.typ": *

=== Преобразование Фурье <sec:problems-fourier-transform>

==== Характеры коммутативной группы <ss:problems-commutative-group-characters>

#problem[
  Найти явный вид характеров циклической группы $upright("Ц")_n$ порядка $n$.
] <pr:cyclic-group-character-formula>

#source(262)
#problem[
  Доказать, что всякая конечная коммутативная группа $G$ изоморфна (не
  канонически) своей двойственной группе $hat(G)$.
] <pr:finite-abelian-group-self-duality>

#problem[
  #idx("Обобщенный (неунитарный) характер")
  _Обобщенным_ или _неунитарным характером_ группы $G$ называют ее гомоморфизм в
  мультипликативную группу поля комплексных чисел.

  Доказать, что для компактной группы $G$ все обобщенные характеры являются
  обычными. Найти обобщенные характеры групп: а) $ZZ$, б) $RR$, в) $CC$, г)
  $RR^*$, д) $CC^*$ ($*$ означает мультипликативную группу).
] <pr:generalized-nonunitary-group-characters>

#problem(difficulty: "hard")[
  Доказать, что если группа $G$ компактна, то двойственная группа $hat(G)$
  дискретна.
] <pr:compact-group-discrete-dual>

#problem(difficulty: "hard")[
  Доказать, что если группа $G$ дискретна, то двойственная группа $hat(G)$
  компактна.
] <pr:discrete-group-compact-dual>

#problem[
  Пусть $chi$ — характер группы $RR$, рассматриваемый как элемент пространства
  $cal(D)'(RR)$. Доказать, что $chi$ удовлетворяет дифференциальному уравнению
  $chi' = c chi$, где $c$ — некоторая константа.
] <pr:real-group-character-differential-equation>

#problem[
  Пусть $chi$ — характер группы $G$, $f in L_1 (G, mu)$. Доказать, что
  $chi * f = c chi$, где
  $ c = (chi * f)(0) = integral_G f(x) overline(chi(x)) dif mu(x). $
] <pr:character-convolution-fourier-coefficient>

#problem[
  Пусть $G$ — компактная группа с инвариантной мерой $mu$, нормированной
  условием $mu(G) = 1$. Доказать, что для любых двух характеров
  $chi_1, chi_2 in hat(G)$ справедливо соотношение
  $
    chi_1 * chi_2 = cases(
      0 & "если" chi_1 != chi_2,
      chi_1 & "если" chi_1 = chi_2
    ).
  $
] <pr:compact-group-character-convolution-orthogonality>

#problem[
  Доказать, что все характеры группы $bold(T)^n$ исчерпываются функциями
  $e_k (t) = e^(2 pi i k t)$ (ср. с
  @pr:torus-character-convolution-idempotents).
] <pr:torus-characters-integer-frequencies>

#problem(difficulty: "hard")[
  Доказать, что соответствие $G -> hat(G)$ определяет контравариантный функтор в
  категории топологических абелевых групп.
] <pr:abelian-group-duality-contravariant-functor>

#problem[
  Пусть $L$ — ЛТП над полем $RR$, рассматриваемое как топологическая абелева
  группа. Найти двойственную к $L$ группу $hat(L)$.
] <pr:real-topological-vector-space-character-dual>

#problem(difficulty: "very-hard")[
  Пусть $QQ_p$ — поле $p$-адических чисел (см. @pr:padic-expansions), $ZZ_p$ —
  подкольцо целых $p$-адических чисел. Найти двойственные группы к следующим
  группам: а) $QQ_p$, б) $ZZ_p$, в) $QQ_p / ZZ_p$.
] <pr:padic-additive-group-duals>

#source(263)
#problem(difficulty: "very-hard")[
  Пусть $G_0$ — замкнутая подгруппа в $G$, $G_1 = G / G_0$ — соответствующая
  фактор-группа. Это кратко записывается в виде точной последовательности
  $ 0 -> G_0 arrow^i G arrow^p G_1 -> 0, $
  где $0$ — тривиальная группа из одного элемента. Доказать, что двойственная
  последовательность
  $ 0 <- hat(G)_0 arrow.l^(hat(i)) hat(G) arrow.l^(hat(p)) hat(G)_1 <- 0 $
  также точна.
] <pr:abelian-duality-exact-sequence>

#problem(difficulty: "hard")[
  Найти двойственную группу $hat(G)$, если $G = QQ / ZZ$. (Группа $G$
  естественно отождествляется с группой всех корней из единицы с помощью
  отображения $x mod ZZ -> e^(2 pi i x)$.)
] <pr:rational-quotient-character-dual>

#problem[
  Пусть $G = product_(n = 1)^infinity upright("Ц")_2$ — группа всех
  последовательностей нулей и единиц (групповая операция — сложение по модулю
  $2$; топология определяется покоординатной сходимостью).

  а) Доказать, что $G$ компактна.

  б) Доказать, что двойственная группа изоморфна счетной группе
  $sum_(n = 1)^infinity upright("Ц")_2$ всех финитных последовательностей нулей
  и единиц (групповая операция — сложение по модулю $2$; топология дискретна).
] <pr:binary-sequence-product-character-dual>

#problem[
  Пусть $alpha$ — иррациональное число, $f in L_1 (bold(T), dif t)$ — функция,
  обладающая свойством $f(t + alpha) = f(t)$ почти всюду. Доказать, что $f$
  почти всюду постоянна.
] <pr:irrational-rotation-invariant-integrable-function>

#problem[
  а)#difficulty("core") Пусть $f in L_1 (RR, dif x)$. Доказать, что
  $tilde(f)(lambda) -> 0$ при $lambda -> infinity$.

  б) Пусть группа $G$ имеет вид $RR^n times bold(T)^m times ZZ^k$ и
  $f in L_1 (G, mu)$. Доказать, что $tilde(f)(x) -> 0$ при $x -> infinity$ в
  $hat(G) = RR^n times ZZ^m times bold(T)^k$.
] <pr:riemann-lebesgue-group-fourier-decay>

#problem(difficulty: "very-hard")[
  Пусть $G = QQ_p^+$ — аддитивная группа поля $p$-адических чисел. Обозначим
  через $cal(D)(G)$ пространство финитных локально постоянных функций на $G$.
  Доказать, что преобразование Фурье переводит пространство $cal(D)(G)$ в себя.
] <pr:padic-test-functions-fourier-invariance>

#problem(difficulty: "hard")[
  Пусть $S(ZZ)$ — пространство двусторонних последовательностей ${c_n}$,
  обладающих свойством $c_n = O(n^(-k))$ для всех $k$. Топологию в $S(ZZ)$
  зададим семейством норм
  $ p_k ({c_n}) = sup_n abs(n^k c_n), quad k = 0, 1, dots. $
  #source(264)Доказать, что преобразование Фурье устанавливает изоморфизм
  линейных топологических пространств $cal(E)(bold(T))$ и $S(ZZ)$.
] <pr:smooth-torus-rapid-sequence-fourier-isomorphism>

#problem[
  #idx("Функция", "положительно определенная")
  Непрерывная функция $f$ на группе $G$ называется _положительно определенной_,
  если для любого конечного набора $x_1, dots, x_n$ элементов $G$ матрица $A$ с
  элементами $a_(k j) = f(x_k - x_j)$ положительно определена. Доказать
  следующие соотношения для положительно определенной функции $f$:

  а) $abs(f(x)) <= f(0)$, $f(x) = overline(f(-x))$;

  б)
  $
    abs(f(0) f(x - y) - f(x) overline(f(y)))^2
    <= (f^2 (0) - abs(f(x))^2)(f^2 (0) - abs(f(y))^2).
  $
] <pr:positive-definite-function-basic-inequalities>

#problem[
  а) Доказать, что линейная комбинация характеров группы $G$ с положительными
  коэффициентами является положительно определенной функцией на $G$.

  б)#difficulty("hard") Доказать, что произведение двух положительно
  определенных функций является положительно определенной функцией.

  в) Доказать, что если $phi in L_1 (G, mu) inter L_2 (G, mu)$, то функция
  $phi * phi^*$ (где $phi^* (x) = overline(phi(-x))$) положительно определена.
] <pr:positive-definite-function-constructions>

#problem[
  Пусть $G$ — конечная группа. Доказать, что $f$ положительно определена на $G$
  тогда и только тогда, когда функция $tilde(f)$ неотрицательна на $hat(G)$.
] <pr:finite-group-positive-definiteness-fourier-criterion>

#problem[
  Пусть $phi in L_1 (G, mu)$ и $phi >= 0$. Доказать, что $tilde(phi)$
  положительно определена на $hat(G)$.
] <pr:nonnegative-function-positive-definite-transform>
