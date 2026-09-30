#import "main-defs.typ": *
#import "statements.typ": *

==== Спектральная теорема <ss:problems-spectral-theorem>

#problem[
  #idx("Интегральная сумма", "Римана для проекционной меры")
  #idx("Интеграл", "Римана по проекционной мере")
  Пусть $lambda$ — проекционная мера на отрезке $[a, b]$ со значениями в
  $op("End") H$, $f$ — непрерывная функция на $[a, b]$. Для каждого разбиения
  $T = {a = t_0 < t_1 < dots < t_n = b}$ и каждого набора точек
  $xi = {xi_k}_(k=0)^(n-1)$, $xi_k in [t_k, t_(k + 1)]$, определим _интегральную
  сумму Римана_, где $I_k=[t_k,t_(k+1))$ при $0<=k<n-1$,
  $I_(n-1)=[t_(n-1),t_n]$,
  $ S(f, T, xi) = sum_(k = 0)^(n-1) f(xi_k) lambda(I_k). $

  а) Доказать, что, когда диаметр разбиения $delta(T) = max_k (t_(k + 1) - t_k)$
  стремится к нулю, интегральные суммы $S(f, T, xi)$ стремятся по норме к
  некоторому оператору. Этот оператор называется _интегралом Римана_ от $f$ по
  мере $lambda$ и обозначается
  $ R integral_a^b f(x) dif lambda(x). $

  б) Доказать, что интеграл Римана $R integral_a^b f(x) dif lambda(x)$ совпадает
  с интегралом Лебега $integral_a^b f(x) dif lambda(x)$, определенным в
  §~@sec:theory-spectral-integrals гл.~@ch:theory-spectral-operators.
] <pr:projection-measure-riemann-lebesgue-integral-agreement>

#problem(difficulty: "core")[
  Доказать следующие свойства интеграла от ограниченных функций по проекционной
  мере:

  а)
  $
    integral_X [alpha_1 f_1 (x) + alpha_2 f_2 (x)] dif lambda(x)
    &= alpha_1 integral_X f_1 (x) dif lambda(x) \
    &quad + alpha_2 integral_X f_2 (x) dif lambda(x);
  $

  б) $integral_X (f_1 f_2)(x) dif lambda(x)
  = integral_X f_1 (x) dif lambda(x) integral_X f_2 (x) dif lambda(x)$;

  в) $norm(integral_X f(x) dif lambda(x)) <= sup_(x in X) abs(f(x))$;

  #source(281)
  г) $(integral_X f(x) dif lambda(x))^*
  = integral_X overline(f(x)) dif lambda(x)$;

  д) если $f_n (x) -> f(x)$, $abs(f_n (x)) <= C$ для всех $x in X$, то
  $integral_X f_n (x) dif lambda(x) -> integral_X f(x) dif lambda(x)$ сильно.
] <pr:projection-measure-integral-algebraic-convergence-properties>

#problem[
  а) Доказать, что свойство 3) в определении проекционной меры можно заменить
  более слабым условием 3′) $lambda(X without E) = 1 - lambda(E)$ и
  нормировочным условием $lambda(emptyset) = 0$.

  б) Доказать, что условие 2) в определении проекционной меры следует из условия
  3), нормировочных условий $lambda(emptyset) = 0$, $lambda(X) = 1$ и того, что
  значения меры $lambda$ — ортопроекторы.
] <pr:projection-measure-axiom-redundancy>

#problem[
  Пусть $H_1 = L_2 [0, 1]$, $H_2 = L_2 ([0, 1] times [0, 1])$. Определим
  проекционные меры $lambda_1$ и $lambda_2$ со значениями в $op("End") H_1$ и
  $op("End") H_2$ соответственно, полагая $lambda_i (E) = M(chi_E (x))$.
  Существует ли такой изоморфизм $U: H_1 -> H_2$, при котором $lambda_1$
  переходит в $lambda_2$?
] <pr:interval-square-multiplication-projection-measure-equivalence>

#problem[
  Пусть заданы множество $X$ с $sigma$-алгеброй $B$, гильбертово пространство
  $H$ и для каждого $xi in H$ конечная мера $mu_xi$ на $(X, B)$ так, что
  выполнены условия:

  + $mu_xi (X) = norm(xi)^2$;
  + $mu_(xi - eta) + mu_(xi + eta) = 2 mu_xi + 2 mu_eta$.

  Верно ли, что существует такая проекционная мера $lambda$ на $X$ со значениями
  в $op("End") H$, что $mu_xi = lambda_xi$ для всех $xi in H$?
] <pr:quadratic-vector-measures-projection-measure-question>

#problem(difficulty: "hard")[
  #idx("Представление алгебры")
  Пусть $X$ — метрический компакт, $H$ — гильбертово пространство.
  _Представлением алгебры_ $C(X)$ в $H$ называется отображение
  $phi: C(X) -> op("End") H$, обладающее свойствами:

  + $phi$ является гомоморфизмом алгебр;
  + $phi(overline(f)) = phi(f)^*$;
  + $phi(1) = 1$ (единица слева — функция на $X$, справа — единичный оператор в
    $H$).

  Доказать, что существует единственная проекционная мера $lambda$ на $X$ со
  значениями в $op("End") H$ такая, что
  $phi(f) = integral_X f(x) dif lambda(x)$.
] <pr:continuous-function-algebra-representation-spectral-measure>

#problem[
  Пусть $A$ — самосопряженный оператор в гильбертовом пространстве $H$, $lambda$
  — его спектральная мера, $E$ — борелевское множество на прямой. Через $H_E$
  обозначим подпространство $lambda(E) H$. Доказать, что

  а) $H_E$ инвариантно относительно $A$;

  б) если $E$ ограничено, то $A|_(H_E)$ — ограниченный оператор;

  #source(282)
  в) если $E$ замкнуто, то $sigma(A|_(H_E)) subset E$.
] <pr:spectral-projection-subspace-invariance-restriction-spectrum>

#problem[
  Доказать, что спектр самосопряженного оператора $A$ состоит в точности из тех
  точек $a in RR$, для которых $lambda((a - epsilon, a + epsilon)) != 0$ при
  любом $epsilon > 0$. (Здесь $lambda$ — спектральная мера оператора $A$.)
] <pr:self-adjoint-spectrum-spectral-measure-support>

#problem[
  #idx("Критерий", "Вейля")
  _Критерий Вейля._ Доказать, что точка $a$ принадлежит спектру самосопряженного
  ограниченного оператора $A$ в гильбертовом пространстве $H$ тогда и только
  тогда, когда существует последовательность единичных векторов $xi_n in H$, для
  которой $norm(A xi_n - a xi_n) -> 0$ при $n -> infinity$.
] <pr:weyl-self-adjoint-spectrum-approximate-eigenvectors>

#problem[
  #idx("Существенный спектр")
  Определение _существенного спектра_ ограниченного самосопряженного оператора
  $A$ получается из критерия Вейля (см. задачу
  @pr:weyl-self-adjoint-spectrum-approximate-eigenvectors) наложением
  дополнительного условия: последовательность ${xi_n}$ ортонормирована.
  Доказать, что если оператор $B$ самосопряжен и компактен, то существенные
  спектры $A$ и $A + B$ совпадают.
] <pr:essential-spectrum-compact-perturbation-invariance>

#problem[
  #idx("Формула", "Стоуна")
  _Формула Стоуна._ Пусть $A$ — ограниченный самосопряженный оператор. Доказать
  равенство
  $
    op("s-lim")_(epsilon -> +0) epsilon / pi
    integral_a^b [(A - lambda 1)^2 + epsilon^2 1]^(-1) dif lambda
    &= 1 / 2 lambda({a}) + lambda((a, b)) + 1 / 2 lambda({b}) \
    &= 1 / 2 lambda([a, b]) + 1 / 2 lambda((a, b)).
  $
] <pr:stone-resolvent-spectral-projection-formula>

#problem[
  Пусть $U$ — унитарный оператор в гильбертовом пространстве $H$. Доказать, что
  существует единственная борелевская проекционная мера $lambda$ на окружности
  $bold(T)$ со значениями в $op("End") H$, для которой справедливо равенство
  $ f(U) = integral_0^1 f(e^(2 pi i t)) dif lambda(t) $
  для любой борелевской ограниченной функции $f$ на $bold(T)$.
] <pr:unitary-operator-circle-spectral-measure>

#problem[
  #idx("Теорема", "фон Неймана", "эргодическая")
  _Эргодическая теорема фон Неймана._ Пусть $U$ — унитарный оператор в
  гильбертовом пространстве $H$. Доказать, что
  $op("s-lim")_(N -> infinity) 1 / N sum_(k = 1)^N U^k$ существует и равен
  проектору на $ker(U - 1)$.
] <pr:von-neumann-mean-ergodic-theorem>

#problem[
  Пусть $A$ — любой ограниченный оператор и $f$ — аналитическая функция в
  области $Omega$, содержащей $sigma(A)$. #source(283) Определим оператор $f(A)$
  равенством
  $ f(A) = i / (2 pi) integral_C f(lambda)(A - lambda 1)^(-1) dif lambda, $
  где $C$ — любой контур в $Omega$, охватывающий $sigma(A)$.

  а) Доказать, что соответствие $f mapsto f(A)$ является гомоморфизмом алгебр.

  б) Доказать, что для нормального оператора $A$ это определение $f(A)$
  совпадает с данным в п.~@ss:theory-normal-operator-functional-calculus
  §~@sec:theory-functional-calculus гл.~@ch:theory-spectral-operators.
] <pr:holomorphic-contour-functional-calculus>

#problem(difficulty: "hard")[
  Доказать, что любое семейство попарно коммутирующих ограниченных
  самосопряженных операторов в сепарабельном гильбертовом пространстве можно
  одновременно привести к виду умножения на функцию.
] <pr:commuting-self-adjoint-family-simultaneous-multiplication-model>

#problem(difficulty: "hard")[
  Пусть $A$ — самосопряженный оператор в гильбертовом пространстве $H$, $lambda$
  — его спектральная мера и $f$ — борелевская функция на $RR$. Определим $f(A)$
  формулой
  $
    (f(A) xi, eta) = integral_(-infinity)^infinity f(x) dif lambda_(xi eta) (x)
  $
  на подпространстве $D_A subset H$, состоящем из тех векторов $xi in H$, для
  которых $integral_(-infinity)^infinity abs(f(x))^2 dif lambda_xi (x)
  < infinity$. Доказать, что

  а) оператор $B = f(A)$ замкнут и плотно определен;

  б) операторы $B B^*$ и $B^* B$ имеют общую плотную область определения и
  совпадают на этой области.
] <pr:unbounded-borel-functional-calculus-normality>

#problem[
  Найти оператор $A$ в представлении $V(t) = e^(i t A)$ для однопараметрической
  группы в пространстве $L_2 (RR, dif x)$, заданной равенством
  $V(t) f(tau) = f(tau + t)$.
] <pr:translation-unitary-group-self-adjoint-generator>

#problem[
  Пусть сильно непрерывная однопараметрическая группа $U(t)$ унитарных
  операторов в гильбертовом пространстве $H$ обладает свойством $U(1) = 1$.
  Доказать, что $U(t) = e^(i t A)$, где $sigma(A) subset 2 pi ZZ$.
] <pr:periodic-unitary-group-generator-integral-spectrum>

#problem[
  Для всякого ли унитарного оператора $U$ существует такая однопараметрическая
  группа $V(t)$, что $V(1) = U$?
] <pr:unitary-operator-continuous-group-embedding>

#problem(difficulty: "hard")[
  Найти спектральное разложение самосопряженного расширения оператора
  $A = -dif^2 / (dif x^2) + x^2$ с первоначальной областью определения
  $D(A) = S(RR)$.
] <pr:harmonic-oscillator-self-adjoint-spectral-decomposition>
