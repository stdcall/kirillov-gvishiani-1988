#import "main-defs.typ": *
#import "statements.typ": *

==== Преобразование Фурье обобщенных функций
<ss:problems-distribution-fourier>

#problem[
  Пусть $f$ — однородная обобщенная функция степени $(lambda, epsilon)$.
  Доказать, что $tilde(f)$ также однородна, и найти ее степень.
] <pr:homogeneous-distribution-fourier-degree>

#problem[
  Пусть $f$ — регулярная обобщенная функция на окружности $bold(T)$, $F$ —
  обобщенная периодическая функция на прямой, связанная с $f$ соотношением
  $ chevron.l F, phi chevron.r = integral_RR f(e^(2 pi i t)) phi(t) dif t. $
  Как связаны преобразования Фурье функций $F$ и $f$?
] <pr:circle-distribution-periodic-lift-fourier-relation>

#problem(difficulty: "hard")[
  #idx("Функция", "квазипериодическая")
  Назовем непрерывную функцию $f$ на $RR^n$ _квазипериодической_ с периодом $R$,
  если ее интеграл по любому шару радиуса $R$ не зависит от положения центра
  шара.

  а) Доказать, что для $n = 1$ квазипериодичность равносильна обычной
  периодичности.

  б) Построить непостоянную квазипериодическую функцию на плоскости.

  в) Может ли непостоянная квазипериодическая функция иметь два разных периода
  $R_1$ и $R_2$?
] <pr:ball-integral-quasiperiodic-functions>

#problem(difficulty: "hard")[
  Найти преобразование Фурье обобщенной функции $f(x) = e^(-pi (A x, x))$ в
  $RR^n$, где $A$ — симметрическая матрица с положительно определенной
  вещественной частью.
] <pr:complex-gaussian-distribution-fourier-transform>

#problem[
  Найти преобразование Фурье обобщенной функции $f(x) = e^(i pi (A x, x))$ в
  $RR^n$, где $A$ — вещественная симметрическая невырожденная матрица.
] <pr:oscillatory-gaussian-distribution-fourier-transform>

#problem[
  Доказать, что образом пространства $cal(E)'(RR)$ при преобразовании Фурье
  является совокупность целых аналитических функций $g(lambda)$
  ($lambda in CC$), удовлетворяющих оценке
  $ abs(g(lambda)) < C abs(1 + abs(lambda))^N e^(R abs(op("Im") lambda)), $
  #source(270) где $C$, $N$, $R$ — некоторые константы (свои для каждой функции
  $g$). От каких свойств преобразуемой функции зависят константы $R$ и $N$?
] <pr:paley-wiener-compact-distribution-characterization>

#problem[
  #idx("Оператор", "Лапласа")
  Доказать, что уравнение $Delta f = f$ не имеет ненулевых решений в
  пространстве $S'(RR^n)$. (Здесь
  $Delta = sum_(k = 1)^n partial^2 / (partial x_k^2)$ — _оператор Лапласа_.)
] <pr:tempered-laplacian-positive-eigenvalue-impossibility>

#problem(difficulty: "hard")[
  Пусть $u in C([0,infinity); L_1(RR,dif x))$ — решение в смысле обобщенных
  функций _уравнения теплопроводности_
  $partial u / (partial t) = partial^2 u / (partial x^2)$ с начальными данными
  $u(0, x) = v(x)$, $v in L_1 (RR, dif x)$. Показать, что $u(t, x)$ имеет вид
  $v * f_t (x)$, и найти функцию $f_t$.
  #ed-note[
    Указан класс решений, в котором начальные данные определяют решение
    однозначно. Без ограничения роста существуют ненулевые гладкие решения с
    нулевыми начальными данными. Формулу теплового ядра и такой контрпример см.
    в § 6.9, формуле (6.9.28), с. 592, и задаче 10, с. 611: #cite(
      <Simon2015a>,
      form: "full",
    ).
  ]
] <pr:heat-equation-integrable-initial-data-kernel>

#problem[
  Пусть $T(a)$ — оператор сдвига на вектор $a in RR^n$, $M(a)$ — оператор
  умножения на $e^(2 pi i a x)$ в пространстве $S'(RR^n)$. Вывести
  коммутационные соотношения
  $
    cal(F) T(a) cal(F)^(-1) = M(a), quad
    cal(F) M(a) cal(F)^(-1) = T(-a),
  $
  где $cal(F)$ — преобразование Фурье.
] <pr:fourier-translation-modulation-conjugacy>

#problem(difficulty: "hard")[
  Функция $f in L_1(RR^3,dif x)$ зависит только от радиуса $r = norm(x)$,
  $f(x) = phi(norm(x))$. Показать, что ее преобразование Фурье задается формулой
  $ tilde(f)(lambda) = integral_0^infinity r^2 k(r norm(lambda)) phi(r) dif r, $
  и найти непрерывную функцию $k$, включая ее значение при нуле.
] <pr:radial-tempered-function-fourier-kernel>
