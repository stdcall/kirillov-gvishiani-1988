#import "main-defs.typ": *
#import "statements.typ": *

=== Линейные операторы <sec:problems-linear-operators>

==== Пространство линейных операторов <ss:problems-operator-space>

#problem[
  Пусть в пространстве $l_2 (RR)$ оператор $P_k$ действует по формуле
  $P_k ({x_n}) = {epsilon_(n k) x_n}$, где $epsilon_(n k) = 1$ при $k <= n$ и
  $epsilon_(n k) = 0$ при $k > n$. Какие из следующих сходимостей имеют место
  при $k -> infinity$: а) $P_k => 0$, б) $P_k -> 0$, в) $P_k ⇀ 0$?
] <pr:tail-projections-operator-convergence>

#problem[
  Пусть $e_1, dots, e_n, dots$ — естественный базис в пространстве $l_2 (RR)$.
  Определим оператор $A_n$ формулой
  $ A_n e_k = cases(e_1 & text("если") k = n, 0 & text("если") k != n). $
  Доказать, что $norm(A_n) = 1$ и что $A_n -> 0$ при $n -> infinity$.
] <pr:rank-one-strong-zero-sequence>

#problem[
  В условиях @pr:rank-one-strong-zero-sequence определим оператор $B_n$ формулой
  $ B_n e_k = cases(e_n & text("если") k = 1, 0 & text("если") k != 1). $
  Доказать, что $norm(B_n) = 1$, $B_n ⇀ 0$ при $n -> infinity$, но не существует
  $upright("s-lim")_(n -> infinity) B_n$.
] <pr:rank-one-weak-not-strong-zero-sequence>

#problem(difficulty: "core")[
  Доказать непрерывность операции умножения операторов в равномерной топологии:
  если $A_n => A in cal(L)(L_1, L_2)$, $B_n => B in cal(L)(L_0, L_1)$, то
  $A_n B_n => A B in cal(L)(L_0, L_2)$.
] <pr:operator-product-norm-continuity>

#problem[
  Пусть $L_1$ и $L_2$ — банаховы пространства. Доказать, что если
  $A_n ⇀ A in cal(L)(L_1, L_2)$, то нормы операторов $A_n$ ограничены в
  совокупности.
] <pr:weak-operator-convergence-uniform-boundedness>

#problem[
  Доказать, что если $A_n -> A in cal(L)(L_1, L_2)$,
  $B_n -> B in cal(L)(L_0, L_1)$, то $A_n B_n -> A B in cal(L)(L_0, L_2)$.
] <pr:operator-product-strong-sequential-continuity>

#source(232)
#problem(difficulty: "hard")[
  Доказать, что операция умножения операторов

  а) не непрерывна в сильной топологии пространства $upright("End") L$, если $L$
  бесконечномерно (сравнение с результатом
  @pr:operator-product-strong-sequential-continuity показывает, что сильная
  топология в $upright("End") L$ не определяется сходящимися
  последовательностями);

  б) непрерывна в сильной топологии на единичном шаре пространства
  $upright("End") L$.
] <pr:operator-product-strong-topology-continuity>

#problem[
  Привести пример последовательностей операторов $A_n ⇀ 0$, $B_n ⇀ 0$, для
  которых $A_n B_n$ не сходится слабо к $0$.
] <pr:operator-product-weak-discontinuity>

#problem(difficulty: "core")[
  Доказать неравенство $norm(A B) <= norm(A) norm(B)$ для
  $A in cal(L)(L_1, L_2)$, $B in cal(L)(L_0, L_1)$.
] <pr:operator-norm-submultiplicativity>

#problem[
  Пусть $T(t)$ — оператор сдвига в $L_p (RR)$ ($1 <= p < infinity$):
  $T(t) f(x) = f(x + t)$. Доказать, что $T(t) -> T(t_0)$ при $t -> t_0$. Верно
  ли, что $T(t) => T(t_0)$ при $t -> t_0$?
] <pr:translation-group-operator-continuity>

#problem[
  Пусть $A$ — линейный оператор из $L_1$ в $L_2$, переводящий всякую сильно
  сходящуюся последовательность в слабо сходящуюся. Доказать, что $A$ ограничен.
] <pr:strong-to-weak-sequential-map-boundedness>

#problem[
  Пусть $A$ — оператор из $L_1$ в $L_2$, непрерывный в смысле слабых топологий
  $L_1$ и $L_2$. Будет ли $A$ непрерывен в смысле сильных топологий?
] <pr:weak-continuity-implies-strong-question>

==== Компактные множества и компактные операторы <ss:problems-compact-operators>

#problem[
  #idx("Множество", "канторово совершенное")
  Вычислить аппроксимативную размерность _канторова совершенного множества_ $X$.
  (Множество $X$ является пересечением счетного числа множеств $X_n$, где $X_n$
  получается из отрезка $[0, 1]$ выбрасыванием $3^(n - 1)$ интервалов вида
  $((3 k - 2) / 3^n, (3 k - 1) / 3^n)$, $k = 1, 2, dots, 3^(n - 1)$.)
] <pr:cantor-set-approximate-dimension>

#problem[
  #idx("Подмножество", "крайнее")
  Пусть $K$ — выпуклое множество в линейном пространстве $L$. Подмножество
  $A subset K$ называется _крайним_, если всякий отрезок, лежащий в $K$,
  середина которого принадлежит $A$, целиком лежит в $A$. Доказать, что
  пересечение любого семейства крайних подмножеств либо пусто, либо является
  крайним подмножеством.
] <pr:extreme-subset-intersections>

#problem[
  Пусть $K$ — непустой выпуклый компакт. Доказать, что совокупность его непустых
  замкнутых крайних подмножеств (см. @pr:extreme-subset-intersections),
  упорядоченная по включению, имеет минимальный элемент.
] <pr:minimal-closed-extreme-subset>

#problem[
  Пусть $K$ — замкнутое выпуклое ограниченное подмножество в ЛВП $L$, $A$ —
  минимальный элемент семейства замкнутых крайних подмножеств в $K$ (см.
  @pr:minimal-closed-extreme-subset). Доказать, что $A$ состоит из одной точки.
] <pr:minimal-extreme-subset-singleton>

#problem[
  Доказать, что выпуклый компакт $K$ в ЛВП $L$ имеет хотя бы одну крайнюю точку.
] <pr:compact-convex-extreme-point-existence>

#source(233)
#problem(difficulty: "hard")[
  #idx("Теорема", "Крейна — Мильмана")
  Доказать _теорему Крейна — Милмана_: всякий выпуклый компакт $K$ в ЛВП $L$
  совпадает с замыканием выпуклой оболочки своих крайних точек.
] <pr:krein-milman-theorem>

#problem[
  Найти крайние точки единичного шара в пространстве $l_p (n, RR)$
  ($1 < p < infinity$).
] <pr:sequence-unit-ball-extreme-points>

#problem[
  Найти крайние точки единичного шара в пространствах $c$ и $c_0$.
] <pr:convergent-sequence-unit-ball-extreme-points>

#problem[
  Доказать, что пространства $c$ и $c_0$ не являются сопряженными ни к какому
  линейному нормированному пространству.
] <pr:convergent-sequences-not-dual-spaces>

#problem[
  Доказать следующий аналог теоремы Асколи — Арцела: пусть $B(T, X)$ —
  метрическое пространство всех ограниченных функций на множестве $T$ со
  значениями в компактном метрическом пространстве $X$; расстояние в $B(T, X)$
  определено как $d(f, g) = sup_(t in T) d_X (f(t), g(t))$, где $d_X$ —
  расстояние в $X$. Для того чтобы множество $M subset B(T, X)$ было
  предкомпактным, необходимо и достаточно, чтобы выполнялись условия: для
  каждого $epsilon > 0$ существует такое конечное разбиение множества $T$:
  $T = T_1 union.sq dots union.sq T_n$, что на каждой части $T_j$ каждая функция
  $f in M$ изменяется не больше чем на $epsilon$.
] <pr:bounded-function-family-precompactness>

#problem[
  #idx("Матрица", "дважды стохастическая")
  Найти крайние точки множества $S$ дважды стохастических матриц порядка $n$.
  (Матрица $A$ называется _дважды стохастической_, если ее элементы
  неотрицательны и сумма элементов каждой строки и каждого столбца равна $1$.)
] <pr:doubly-stochastic-extreme-points>

#problem[
  Доказать, что в бесконечномерном нормированном пространстве единичный оператор
  некомпактен.
] <pr:infinite-dimensional-identity-noncompact>

#problem[
  Доказать, что в бесконечномерном нормированном пространстве компактный
  оператор не имеет ограниченного обратного оператора.
] <pr:compact-operator-no-bounded-inverse>

#problem[
  Пусть оператор $A$ в $l_p (RR)$ ($1 <= p <= infinity$) задан формулой
  $A{x_n} = {a_n x_n}$, где ${a_n}$ — фиксированная ограниченная
  последовательность вещественных чисел. Доказать, что оператор $A$ компактен
  тогда и только тогда, когда $lim_(n -> infinity) a_n = 0$.
] <pr:diagonal-sequence-operator-compactness>

#problem[
  Доказать некомпактность в пространстве $C[0, 1]$ оператора $A$, действующего
  по формуле $A f(x) = x dot f(x)$.
] <pr:continuous-multiplication-noncompact>

#problem[
  Пусть $L_1$ и $L_2$ — банаховы пространства, $A in cal(L)(L_1, L_2)$.
  Доказать, что из компактности сопряженного оператора $A'$ следует компактность
  $A$.
] <pr:adjoint-compactness-implies-operator-compactness>

#problem[
  Пусть $K(x, y)$ — непрерывная функция на единичном квадрате в $RR^2$.
  Доказать, что оператор $A$ в $C[0, 1]$, #source(234)определенный формулой
  $A f(x) = integral_0^1 K(x, y) f(y) dif y$, компактен.
] <pr:continuous-kernel-operator-compactness>

#problem[
  Пусть $K in L_2 (X times Y, mu times nu)$. Доказать, что оператор $A$,
  действующий из $L_2 (Y, nu)$ в $L_2 (X, mu)$ по формуле
  $A f(x) = integral_Y K(x, y) f(y) dif nu(y)$, является компактным.
] <pr:square-integrable-kernel-compactness>

#problem(difficulty: "hard")[
  Пусть оператор $T$ в пространстве $L_p (0, infinity)$ ($p > 1$) задан формулой
  $T f(x) = 1 / x integral_0^x f(t) dif t$. Доказать, что $T$ ограничен, но
  некомпактен. Найти норму $T$.
] <pr:hardy-averaging-operator>

#problem(difficulty: "hard")[
  Пусть пространство $L$ рефлексивно. Доказать компактность оператора
  $T in upright("End") L$, переводящего всякую слабо сходящуюся
  последовательность в сильно сходящуюся.
] <pr:reflexive-completely-continuous-compact-operator>

#problem[
  Пусть $Omega$ — ограниченная выпуклая область в $RR^n$. Доказать, что оператор
  вложения из $C^(k + 1) (overline(Omega))$ в $C^k (overline(Omega))$ компактен.
] <pr:smooth-function-space-compact-embedding>

#problem[
  Может ли компактный оператор $A$ удовлетворять алгебраическому уравнению
  $sum_(k = 0)^n c_k A^k = 0$ (мы полагаем $A^0 = 1$)?
] <pr:compact-operator-polynomial-equation>

==== Теория фредгольмовых операторов <ss:problems-fredholm-operators>

#problem[
  Пусть $A$ — оператор в $l_p (RR)$, действующий по формуле
  $A{x_n} = {a_n x_n}$, где ${a_n}$ — фиксированная последовательность
  вещественных чисел. При каком условии на ${a_n}$ подпространство
  $upright("im") A$ замкнуто в $l_p (RR)$?
] <pr:diagonal-operator-closed-range>

#problem[
  Пусть $T$ — оператор в $l_p (RR)$, действующий по формуле
  $T{x_n} = {x_(n + 1)}$. Найти ядро и коядро операторов $T^k$
  ($k = 1, 2, dots$).
] <pr:backward-shift-kernel-cokernel>

#problem(difficulty: "hard")[
  Пусть $P$ — многогранник в $RR^3$, $X_k$ — множество его ориентированных
  $k$-мерных граней ($0$-мерные грани — вершины, $1$-мерные грани — ребра,
  $2$-мерные грани — обычные грани, $3$-мерная грань — сам многогранник), $L_k$
  — пространство вещественных функций на $X_k$. Если $Gamma in X_(k - 1)$,
  $Delta in X_k$, то можно определить число $epsilon(Gamma, Delta)$, равное $0$,
  если $Gamma$ не лежит на границе $Delta$, и $plus.minus 1$ в противном случае.
  Знак $epsilon(Gamma, Delta)$ зависит от ориентаций $Gamma$ и $Delta$. Пусть
  $e_1, dots, e_(k - 1)$ — базис, задающий ориентацию $Gamma$; $f_1, dots, f_k$
  — базис, задающий ориентацию $Delta$ и выбранный так, что векторы
  $f_1, dots, f_(k - 1)$ лежат в плоскости $Gamma$, а вектор $f_k$ трансверсален
  к $Gamma$ и направлен вне $Delta$. Тогда #source(235)$epsilon(Gamma, Delta)$
  равно знаку определителя матрицы перехода от $e_1, dots, e_(k - 1)$ к
  $f_1, dots, f_(k - 1)$. Определим оператор $d_k: L_(k - 1) -> L_k$ формулой
  $ (d_k f)(Delta) = sum_(Gamma in X_(k - 1)) epsilon(Gamma, Delta) f(Gamma). $
  Доказать полуточность последовательности
  $ 0 -> L_0 arrow^(d_1) L_1 arrow^(d_2) L_2 arrow^(d_3) L_3 -> 0 $
  и вычислить ее когомологии для простейших многогранников (симплекса, куба,
  куба с дыркой, куба с внутренней полостью).
] <pr:polyhedral-cochain-cohomology>

#problem[
  Пусть $C^k (T)$ — пространство функций на окружности $T$, имеющих $k$
  непрерывных производных, с нормой
  $ norm(f) = max_(t in T){abs(f(t)), abs(f'(t)), dots, abs(f^((k)) (t))}. $
  Доказать полуточность последовательности
  $ 0 -> C^k (T) arrow^d C^(k - 1) (T) -> 0, $
  где $d$ — оператор дифференцирования, и вычислить ее когомологии.
] <pr:circle-differentiation-cohomology>

#problem[
  #idx("Тождество", "Эйлера")
  Пусть дана полуточная последовательность конечномерных пространств
  $
    0 -> L_0 arrow^(T_1) L_1 arrow^(T_2) dots -> L_(n - 1) arrow^(T_n) L_n -> 0
  $
  и $H_k$ — пространства ее когомологий для $k = 0, 1, dots, n$. Доказать
  _тождество Эйлера_
  $ sum_(k = 0)^n (-1)^k dim L_k = sum_(k = 0)^n (-1)^k dim H_k. $
] <pr:euler-cochain-dimension-identity>

#problem(difficulty: "very-hard")[
  Пусть задана последовательность
  $ dots -> L_(k - 1) arrow^(T_n) L_k arrow^(T_(n + 1)) L_(k + 1) -> dots $
  банаховых пространств и непрерывных операторов. Доказать, что если сопряженная
  последовательность
  $
    dots <- L'_(k - 1) arrow.l^(T'_k) L'_k
    arrow.l^(T'_(k + 1)) L'_(k + 1) <- dots
  $
  точна, то точна и исходная последовательность.
] <pr:dual-exactness-implies-exactness>

#problem(difficulty: "hard")[
  Пусть дана полуточная последовательность
  $ dots -> L_(k - 1) arrow^(T_k) L_k arrow^(T_(k + 1)) L_(k + 1) -> dots $
  #source(236)банаховых пространств и непрерывных линейных отображений с
  замкнутыми образами. Доказать, что сопряженная последовательность полуточна и
  пространства когомологий сопряженной последовательности сопряжены к
  пространствам когомологий исходной последовательности.
] <pr:dual-cohomology-spaces>

#problem[
  Построить почти обратный оператор для оператора $T$ из
  @pr:backward-shift-kernel-cokernel.
] <pr:backward-shift-parametrix>

#problem[
  Пусть $T$ — дифференциальный оператор вида
  $ T = (dif / (dif x))^n + a_1 (x)(dif / (dif x))^(n - 1) + dots + a_n (x), $
  действующий из $C^(k + n) [0, 1]$ в $C^k [0, 1]$. Доказать, что оператор $T$ —
  фредгольмов и найти его индекс.
] <pr:ordinary-differential-operator-fredholm-index>

#problem[
  Является ли фредгольмовым оператор умножения на непрерывную функцию $a(x)$ в
  пространстве $C[0, 1]$?
] <pr:continuous-multiplication-fredholm-question>

#problem(difficulty: "hard")[
  Пусть $L$ — пространство гармонических непрерывных вплоть до границы функций в
  области $Omega subset RR^2$, ограниченной гладкой кривой $Gamma$. Доказать,
  что оператор ограничения $P: L -> C(Gamma)$ является фредгольмовым, и найти
  его индекс.
] <pr:harmonic-boundary-restriction-fredholm>

#problem[
  Пусть $Omega$ — ограниченная область на комплексной плоскости, $H(Omega)$ —
  пространство голоморфных в $Omega$ и непрерывных в $overline(Omega)$ функций,
  $a(z) equiv.not 0$ — функция, голоморфная в некоторой окрестности
  $overline(Omega)$, не обращающаяся в нуль на границе $Omega$. Доказать, что
  оператор умножения на $a(z)$ фредгольмов в $H(Omega)$, и найти его индекс.
] <pr:holomorphic-multiplication-fredholm>

#problem[
  #idx("Оператор", "рождения (уничтожения)")
  Пусть $H_0 = L_2 (RR, dif x)$, $H_1$ — пополнение пространства $S(RR)$ по
  норме $norm(f)_1^2 = norm(x f)_0^2 + norm(f')_0^2$ (здесь $norm(dot.op)_0$
  означает норму в $H_0$). _Операторы рождения и уничтожения_ в квантовой теории
  поля могут быть определены как дифференциальные операторы из $H_1$ в $H_0$,
  действующие по формулам $A_(plus.minus) f = (dif / (dif x) plus.minus x) f$.
  Доказать, что $A_(plus.minus)$ — фредгольмовы и что
  $upright("ind") A_(plus.minus) = plus.minus 1$.
] <pr:creation-annihilation-fredholm-index>

#problem[
  #idx("Оператор", "Гильберта — Шмидта")
  а) _Оператором Гильберта — Шмидта_ называется интегральный оператор
  $ (A phi)(s) = integral_a^b K(s, t) phi(t) dif t, $
  действующий в пространстве $L_2 [a, b]$, ядро которого удовлетворяет условию
  $integral_a^b integral_a^b abs(K(s, t))^2 dif s dif t < infinity$. Доказать,
  что для оператора Гильберта — Шмидта выполнено не#source(237)равенство
  $ norm(A) <= sqrt(integral_a^b integral_a^b abs(K(s, t))^2 dif s dif t). $

  б) Доказать, что соответствие $A |-> K(s, t)$ между операторами Гильберта —
  Шмидта и их ядрами является взаимно-однозначным с точностью до эквивалентности
  измеримых функций.
] <pr:hilbert-schmidt-kernel-operators>

#problem[
  Пусть дан оператор Гильберта — Шмидта, определенный ядром $K(s, t)$ (см.
  @pr:hilbert-schmidt-kernel-operators). Доказать, что сопряженный к нему
  оператор определяется «сопряженным» ядром $overline(K(t, s))$.
] <pr:hilbert-schmidt-adjoint-kernel>

#problem[
  #idx("Интегральное уравнение Фредгольма с вырожденным ядром")
  _Интегральным уравнением Фредгольма (второго рода) с вырожденным ядром_
  называется уравнение вида
  $ phi(s) = integral_a^b (sum_(i = 1)^n P_i (s) Q_i (t)) phi(t) dif t + f(s), $
  где $P_i$, $Q_i$ — функции из $L_2 [a, b]$. Доказать, что общее решение этого
  уравнения имеет вид $phi(s) = sum_(i = 1)^n q_i P_i (s) + f(s)$ и что
  неопределенные коэффициенты $q_i$ можно найти из некоторой системы
  алгебраических уравнений вида
  $ sum_(j = 1)^n a_(i j) q_j + b_i = q_i. $
] <pr:degenerate-kernel-fredholm-equation>

#problem[
  #idx("Уравнение", "Вольтерра")
  _Уравнением Вольтерра_ (второго рода) называется интегральное уравнение
  $ phi(s) = integral_a^s K(s, t) phi(t) dif t + f(s), $
  где $K(s, t)$ — ограниченная измеримая функция на квадрате
  $[a, b] times [a, b]$. Доказать, что для любой функции $f in L_2 (a, b)$
  уравнение Вольтерра имеет одно и только одно решение.
] <pr:volterra-equation-unique-solution>

#problem[
  Доказать, что произведение двух операторов Гильберта — Шмидта с ядрами
  $K(s, t)$, $Q(s, t)$ (см. @pr:hilbert-schmidt-kernel-operators) есть оператор
  того же типа с ядром
  $ R(s, t) = integral_a^b K(s, u) Q(u, t) dif u. $
] <pr:hilbert-schmidt-product-kernel>

#source(238)
#problem[
  Пусть $A$ — оператор Гильберта — Шмидта (см.
  @pr:hilbert-schmidt-kernel-operators), причем его ядро удовлетворяет
  соотношению
  $ integral_a^b integral_a^b abs(K(s, t))^2 dif s dif t = K^2 < infinity. $
  Доказать, что ядро $K_n (s, t)$ оператора $A^n$ удовлетворяет оценке
  $ integral_a^b integral_a^b abs(K_n (s, t))^2 dif s dif t <= K^(2 n). $
] <pr:hilbert-schmidt-power-kernel-bound>
