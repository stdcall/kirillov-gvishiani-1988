#import "main-defs.typ": *
#import "statements.typ": *

==== Ряды Фурье <ss:problems-fourier-series>

#problem(difficulty: "core")[
  Что можно сказать о коэффициентах Фурье функции $f$ на $bold(T)$, если
  известно, что $f$

  а) четна: $f(t) = f(1 - t)$,

  б) нечетна: $f(t) = -f(1 - t)$,

  в) вещественна почти всюду на $bold(T)$?
] <pr:fourier-coefficients-parity-reality>

#problem[
  Пусть функция $f$ на $bold(T)$ имеет кусочно-дифференцируемую $k$-ю
  производную. Каково максимальное число $l$, для которого можно гарантировать
  оценку $abs(c_n) = o(abs(n)^(-l))$ для коэффициентов Фурье функции $f$?
] <pr:piecewise-smooth-fourier-coefficient-decay>

#problem[
  Доказать, что образ пространства $C^k (bold(T))$ при преобразовании Фурье
  содержится в множестве последовательностей, обладающих свойством
  $abs(c_n) = o(abs(n)^(-k))$, и содержит множество последовательностей,
  обладающих свойством $abs(c_n) = o(n^(-k - 1 - epsilon))$, $epsilon > 0$.
] <pr:smooth-fourier-image-decay-bounds>

#problem[
  Пусть $W^k (bold(T))$ — совокупность функций на $bold(T)$, у которых $k$-я
  обобщенная производная принадлежит $L_2 (bold(T), dif t)$. Дайте описание
  этого пространства в терминах коэффициентов Фурье.
] <pr:periodic-sobolev-fourier-coefficients>

#source(265)
#problem[
  Выразить в терминах коэффициентов Фурье следующие свойства функции $f$:

  а) $f(t + 1 / 2) = f(t)$;

  б) $f(t + 1 / k) = lambda f(t)$; при каких $k in ZZ$ существуют ненулевые
  функции, обладающие этим свойством?
] <pr:fourier-coefficients-rational-shift-symmetry>

#problem(difficulty: "hard")[
  Точная последовательность $0 -> upright("Ц")_n arrow^i bold(T) arrow^p
  bold(T) -> 0$ задается вложением $i: upright("Ц")_n -> bold(T)$ по формуле
  $i(k mod n) = e^(2 pi i k / n)$ и проекцией $p: bold(T) -> bold(T)$ по формуле
  $p(z) = z^n$. Описать двойственную точную последовательность.
] <pr:circle-power-map-dual-exact-sequence>

#problem[
  Пусть функция $f$ суммируема на отрезке $[0, 1 / 4]$. Как нужно продолжить $f$
  на отрезок $[0, 1]$, чтобы ее коэффициенты Фурье удовлетворяли соотношениям
  $c_(2 k) = 0$, $c_(2 k - 1) = -c_(1 - 2 k)$.
] <pr:quarter-interval-fourier-symmetric-extension>

#problem(difficulty: "core")[
  #idx("Функция", "Стеклова")
  Пусть ${c_n}$ — коэффициенты Фурье функции $f in L_1 (bold(T), dif t)$. Найти
  коэффициенты Фурье ${c_n (h)}$ для сглаженной функции (или _функции Стеклова_)
  $f_h (x) = 1 / (2 h) integral_(x - h)^(x + h) f(xi) dif xi$.
] <pr:steklov-average-fourier-coefficients>

#problem[
  Какими свойствами характеризуются последовательности ${c_n}$ коэффициентов
  Фурье:

  а) тригонометрических многочленов,

  б) многочленов от ${t}$,

  в) многочленов от ${t - 1 / 2}$?
] <pr:polynomial-periodic-fourier-sequence-characterization>

#problem(difficulty: "hard")[
  Доказать, что непрерывная функция $f$ на $bold(T)$ положительно определена
  (см. @pr:positive-definite-function-basic-inequalities) тогда и только тогда,
  когда ее коэффициенты Фурье неотрицательны.
] <pr:positive-definite-circle-function-fourier-criterion>

#problem[
  #idx("Последовательность", "положительно определенная")
  Последовательность ${c_n}$ ($n in ZZ$) называется _положительно определенной_,
  если для любой финитной последовательности ${z_n}$ ($n in ZZ$) справедливо
  неравенство
  $ sum_(n, m) c_(n - m) z_n overline(z_m) >= 0. $
  Доказать, что положительно определенная последовательность ограничена и
  обладает свойствами: $c_n = overline(c_(-n))$, $c_0 >= abs(c_n)$,
  $
    abs(c_0 c_(m + n) - c_m c_n)^2
    <= (c_0^2 - abs(c_m)^2)(c_0^2 - abs(c_n)^2).
  $
] <pr:positive-definite-sequence-inequalities>

#problem[
  Доказать, что всякая положительно определенная последовательность (см.
  @pr:positive-definite-sequence-inequalities) является преобразованием Фурье
  конечной борелевской меры $mu$ на $bold(T)$:
  $ c_n = integral_0^1 e^(-2 pi i n t) dif mu(t). $
] <pr:positive-definite-sequence-representing-measure>

#problem[
  Пусть $U$ — унитарный оператор в гильбертовом пространстве $H$, $xi in H$.
  Доказать, что последовательность $c_n = (U^n xi, xi)$ положительно определена.
] <pr:unitary-matrix-coefficients-positive-definite>

#source(266)
#problem[
  #idx("Циклический вектор")
  В условиях @pr:unitary-matrix-coefficients-positive-definite предположим, что
  $xi$ — _циклический вектор_ для $U$ (т. е. линейная оболочка векторов $U^n xi$
  ($n in ZZ$) плотна в $H$). Построить изоморфизм $H$ и $L_2 (bold(T), mu)$, где
  $mu$ — преобразование Фурье последовательности ${c_n}$, при котором оператор
  $U$ переходит в умножение на $e^(2 pi i t)$.
] <pr:cyclic-unitary-spectral-measure-model>

#problem(difficulty: "hard")[
  Пусть $f$ — кусочно-дифференцируемая вещественная функция на $bold(T)$,
  $S_n = sum_(k = -n)^n c_k e^(2 pi i k t)$ — частичная сумма ее ряда Фурье,
  $Gamma_n subset bold(T) times RR$ — график функции $S_n$. Найти предельное
  множество для ${Gamma_n}$, т. е. совокупность всех предельных точек
  последовательностей ${gamma_n}$ ($gamma_n in Gamma_n$).
] <pr:fourier-partial-sum-graph-limit-gibbs>

#problem[
  Доказать, что обобщенная функция $bold(T)$ определяется однозначно своими
  коэффициентами Фурье.
] <pr:torus-distribution-fourier-uniqueness>

#problem[
  Обобщенная функция $f$ на $bold(T)$ называется положительно определенной, если
  для любой функции $phi in cal(E)(bold(T))$ справедливо неравенство
  $chevron.l f, phi * phi^* chevron.r >= 0$. Охарактеризовать положительно
  определенные обобщенные функции в терминах их коэффициентов Фурье.
] <pr:positive-definite-torus-distribution-fourier-criterion>

#problem[
  #idx("Преобразование", "эргодическое")
  Пусть $alpha$ — иррациональное число, а $X$ — измеримое подмножество
  $bold(T)$, инвариантное относительно сдвига на $alpha$. Докажите, что если
  $mu$ — мера Хаара, то либо $mu(X) = 0$, либо $mu(X) = 1$. (Это свойство для
  преобразований в пространстве с мерой называется _эргодичностью_;
  преобразование называется эргодическим, если для любого инвариантного
  измеримого подмножества либо оно само, либо его дополнение имеют меру нуль.)
] <pr:irrational-circle-rotation-ergodicity>

#problem(difficulty: "hard")[
  #idx("Уравнение", "теплопроводности")
  Решить уравнение теплопроводности $partial u / (partial t)
  = partial^2 u / (partial x^2)$ на $bold(T)$ с начальными условиями
  $u(0, x) = v(x)$ с помощью метода Фурье.
] <pr:periodic-heat-equation-fourier-solution>
