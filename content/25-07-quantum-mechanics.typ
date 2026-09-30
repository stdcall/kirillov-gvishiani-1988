#import "main-defs.typ": *
#import "statements.typ": *

#source(284)
=== Математическая модель квантовой механики
<sec:problems-quantum-mechanics>

#problem[
  Пусть $Psi(t) in D(A H) inter D(H A)$ удовлетворяет уравнению Шредингера и
  дифференцируема в графовой норме $A$. Доказать, что среднее значение
  $chevron.l A chevron.r_Psi$ величины $A$ в состоянии $Psi$ меняется со
  временем по закону
  $
    i ℏ dif / (dif t) chevron.l A chevron.r_Psi
    = chevron.l [A, H] chevron.r_Psi,
  $
  где $[A, H] = A H - H A$ — коммутатор операторов $A$ и $H$.
] <pr:quantum-expectation-commutator-time-evolution>

#problem[
  а) Доказать, что всякий линейный функционал на пространстве $op("Mat")_n (CC)$
  комплексных матриц $n$-го порядка имеет вид
  $ f_A (X) = op("tr")(A X). $

  б) При каком условии на $A$ этот функционал положителен (т. е. $f_A (X) >= 0$
  для положительно определенных матриц $X$)?
] <pr:matrix-linear-functional-trace-positive-representation>

#problem(difficulty: "hard")[
  Пусть $B(H)$ означает банахово пространство всех ограниченных линейных
  операторов в гильбертовом пространстве $H$. Доказать, что всякий положительный
  нормальный линейный функционал $f$ на $B(H)$ (т. е. $f(X) >= 0$ для
  положительных операторов $X$, а $f(X_alpha) -> f(X)$ для всякой ограниченной
  возрастающей сети положительных операторов с верхней гранью $X$) имеет вид
  $ f_A (X) = op("tr")(A X), $
  где $A$ — положительный ядерный оператор (см. задачу
  @pr:trace-class-operators-trace-duality).
  #ed-note[
    Добавлена нормальность функционала: без неё утверждение в бесконечной
    размерности неверно. См. определение 12.16, теоремы 12.17 и 12.25,
    с.366–367, 372–373: #cite(<Kantorovitz2022>, form: "full").
  ]
] <pr:positive-bounded-operator-functional-trace-representation>

#problem(difficulty: "hard")[
  Пусть $K$ — совокупность всех положительных нормальных функционалов $f$ на
  $B(H)$ (см. предыдущую задачу
  @pr:positive-bounded-operator-functional-trace-representation), обладающих
  свойством $f(1) = 1$. Найти крайние точки множества $K$.
] <pr:operator-state-convex-set-extreme-points>

В задачах
@pr:free-particle-position-momentum-energy-spectrum–@pr:quantum-harmonic-oscillator-stationary-states
речь идет об _одномерных квантовых системах_, характеризуемых массой $m$ и
потенциалом $V(x)$.

#problem[
  #idx("Свободная", "частица")
  #idx("Одномерные квантовые системы")
  Пусть $V(x) = 0$ (_свободная частица_). Найти спектр операторов координаты,
  импульса и энергии. Указать реализации, в которых эти операторы
  диагонализируются (т. е. приводятся к виду умножения на функцию). Найти
  обобщенные собственные функции этих операторов.
] <pr:free-particle-position-momentum-energy-spectrum>

#problem[
  В условиях предыдущей задачи
  @pr:free-particle-position-momentum-energy-spectrum найти закон изменения со
  временем состояния
  $ Psi_(a, b) = (pi a)^(-1 / 4) exp{-(x - b)^2 / (2 a)}, quad a > 0. $
] <pr:free-particle-gaussian-wavepacket-evolution>

#source(285)
#problem[
  Пусть $V(x) = cases(0 & "при" abs(x) < a, +infinity & "при" abs(x) >= a)$
  (частица между двумя непроницаемыми отталкивающими стенками). Найти
  стационарные состояния и соответствующие уровни энергии.
] <pr:infinite-square-well-stationary-states>

#problem[
  Пусть $V(x) = cases(0 & "при" abs(x) < a, V_0 > 0 & "при" abs(x) >= a)$
  (частица в потенциальной яме конечной глубины). Найти стационарные состояния и
  уровни энергии.
] <pr:finite-square-well-stationary-states>

#problem[
  #idx("Гармонический осциллятор")
  Пусть $V(x) = 1 / 2 m omega^2 x^2$ (_гармонический осциллятор_). Найти
  стационарные состояния и уровни энергии.
] <pr:quantum-harmonic-oscillator-stationary-states>

В задачах
@pr:one-dimensional-scattering-transfer-matrix-properties–@pr:delta-barrier-scattering-limit
речь идет об элементах квантовой теории рассеяния для одномерных частиц массы
$m$ на прямой. Если потенциал $V$ отличен от нуля лишь на конечном интервале
$abs(x) < a$, то вне этого интервала обобщенная собственная функция с энергией
$E = (k^2 ℏ^2) / (2 m)$ имеет вид
$
  Psi(x) = cases(
    A e^(i k x) + B e^(-i k x) & "при" x < -a,
    C e^(i k x) + D e^(-i k x) & "при" x > a.
  )
$
Коэффициенты $A$, $B$, $C$, $D$ связаны соотношением
$ mat(C; D) = T(k) mat(A; B); quad T(k) = mat(a(k), b(k); c(k), d(k)). $
Матрица $T(k)$ называется _матрицей перехода_.

#problem[
  #idx("Матрица", "перехода")
  #idx("Квантовая теория рассеяния")
  а) Доказать, что $det T(k) = 1$.

  б) Доказать, что для вещественного потенциала $V(x)$ матрица перехода обладает
  свойствами:
  $ c(k) = overline(b(k)), quad d(k) = overline(a(k)). $
] <pr:one-dimensional-scattering-transfer-matrix-properties>

#problem[
  #idx("Потенциальный барьер")
  #idx("Амплитуда рассеяния")
  Величины $t(k) = d(k)^(-1)$ и $r(k) = -c(k) d(k)^(-1)$ для волны, приходящей
  слева, называются _амплитудами рассеяния_ вперед и назад соответственно.
  Доказать, что $abs(t(k))^2 + abs(r(k))^2 = 1$. (Величина $abs(t(k))^2$
  интерпретируется как вероятность того, что частица пройдет потенциальный
  барьер, а величина $abs(r(k))^2$ — как вероятность того, что она отразится от
  этого барьера.)
] <pr:scattering-transmission-reflection-unitarity>

#problem[
  Найти $t(k)$ и $r(k)$ в случае, когда $V(x) equiv V_0 > 0$ на отрезке
  $abs(x) <= a$ и $V(x) = 0$ при $abs(x) > a$.
] <pr:rectangular-barrier-scattering-amplitudes>

#source(286)
#problem[
  #idx("Рассеяние на полупроницаемой перегородке")
  Пусть в условиях предыдущей задачи
  @pr:rectangular-barrier-scattering-amplitudes $a -> 0$, $V_0 -> infinity$ и
  $2 a V_0 -> c$. Найти пределы $t(k)$ и $r(k)$ (результат можно
  интерпретировать как рассеяние на полупроницаемой перегородке, описываемой
  потенциалом $V(x) = c delta(x)$).
] <pr:delta-barrier-scattering-limit>

#problem[
  Найти обобщенные собственные функции операторов координат, импульсов и энергии
  для свободной частицы массы $m$ в пространстве $RR^n$.
] <pr:euclidean-free-particle-generalized-eigenfunctions>

#problem[
  Найти стационарные состояния и уровни энергии свободной частицы массы $m$:

  а) на окружности $S^1 = RR / ZZ$;

  б) на $m$-мерном торе $bold(T)^m = RR^m / ZZ^m$.
] <pr:circle-torus-free-particle-energy-levels>

#problem[
  Найти стационарные состояния и уровни энергии гармонического осциллятора в
  трехмерном пространстве, для которого
  $ V(x, y, z) = (m omega^2) / 2 (x^2 + y^2 + z^2). $
] <pr:three-dimensional-harmonic-oscillator-energy-levels>

#problem[
  Найти уровни энергии и стационарные состояния системы $n$ неразличимых
  одномерных гармонических осцилляторов, являющихся:

  а) бозонами;

  б) фермионами.
] <pr:indistinguishable-boson-fermion-oscillator-states>

#problem[
  Пусть $X$, $Y$ и $Z$ — три оператора в конечномерном пространстве $V$,
  подчиненные коммутационным соотношениям
  $ [X, Y] = Z, quad [Y, Z] = X, quad [Z, X] = Y. $

  а) Доказать, что оператор $Delta = X^2 + Y^2 + Z^2$ перестановочен с $X$, $Y$
  и $Z$.

  б) Доказать соотношения $(X ± i Y) Z = (Z ± i 1)(X ± i Y)$,
  $[X + i Y, X - i Y] = -2 i Z$.
] <pr:rotation-lie-algebra-casimir-ladder-relations>

#problem[
  В условиях задачи @pr:rotation-lie-algebra-casimir-ladder-relations
  предположим дополнительно, что пространство $V$ неприводимо относительно $X$,
  $Y$, $Z$ (т. е. не содержит собственных подпространств, инвариантных
  относительно всех этих операторов). Доказать, что:

  а) каждый из операторов $X$, $Y$, $Z$ имеет простой спектр, состоящий из чисел
  ${s i, (s - 1) i, dots, (1 - s) i, -s i}$, где $s = (dim V - 1) / 2$ — целое
  или полуцелое число;

  б) оператор $Delta$ сводится к умножению на число $-s(s + 1)$;

  #source(287)
  в) в подходящем базисе ${eta_k}$ ($k = 0, 1, dots, 2 s$) операторы $X$, $Y$ и
  $Z$ приводятся к каноническому виду
  $
    X eta_k & = 1 / 2 [c_+ (k) eta_(k + 1) + c_- (k) eta_(k - 1)], \
    Y eta_k & = i / 2 [c_- (k) eta_(k - 1) - c_+ (k) eta_(k + 1)], \
    Z eta_k & = i (s - k) eta_k,
  $
  <eq:rotation-representation-canonical-form>
  где $c_- (k) = k$, $c_+ (k) = k - 2 s$.
] <pr:irreducible-rotation-representation-spin-canonical-form>

#problem(difficulty: "hard")[
  Пусть классическая система имеет в качестве фазового пространства двумерную
  сферу $S$ радиуса $R$ со скобкой Пуассона, задаваемой элементами площади.
  Найти квантовые аналоги координат $x$, $y$, $z$ на $S$. При каких значениях
  радиуса эта задача разрешима?
] <pr:sphere-phase-space-coordinate-quantization>

#problem[
  Операторы момента импульса для частицы в $RR^3$ определяются формулами
  $
    L_1 & = q_2 p_3 - q_3 p_2, quad L_2 = q_3 p_1 - q_1 p_3, \
    L_3 & = q_1 p_2 - q_2 p_1,
  $
  где $q_i$, $p_i$ — координаты и импульсы частицы. Доказать, что эти операторы
  удовлетворяют коммутационным соотношениям
  $
    [L_1, L_2] & = -i ℏ L_3, quad
                 [L_2, L_3] = -i ℏ L_1, \
    [L_3, L_1] & = -i ℏ L_2.
  $
] <pr:orbital-angular-momentum-commutation-relations>

#problem[
  #idx("Квадрат полного момента")
  В условиях предыдущей задачи
  @pr:orbital-angular-momentum-commutation-relations оператор
  $L^2 = L_1^2 + L_2^2 + L_3^2$ называется квадратом полного момента. Если
  состояние $Psi$ удовлетворяет условию $L^2 Psi = ℏ^2 l(l + 1) Psi$, то
  говорят, что частица в этом состоянии имеет полный момент $ℏ l$.

  Пусть даны две частицы с полными моментами $ℏ l_1$ и $ℏ l_2$. Какой полный
  момент может иметь система, полученная объединением этих частиц?
] <pr:two-particle-total-angular-momentum-addition>

#problem[
  Как изменится ответ в предыдущей задаче
  @pr:two-particle-total-angular-momentum-addition, если считать частицы
  неразличимыми?
] <pr:identical-particle-angular-momentum-addition>
