#import "main-defs.typ": *
#import "statements.typ": *

=== Спектральное разложение операторов
<sec:problems-spectral-decomposition>

==== Приведение оператора к виду умножения на функцию
<ss:problems-multiplication-model>

#problem[
  Пусть $A$ — самосопряженный оператор в конечномерном пространстве. Привести
  его к виду умножения на функцию.
] <pr:finite-dimensional-self-adjoint-multiplication-model>

#source(279)
#problem[
  Оператор $A$ в пространстве $H = L_2 [-1, 1]$ состоит в умножении на функцию
  $a(x) = x^2$. Доказать, что

  а) в $H$ нет циклических векторов для $A$;

  б) представить $H$ в виде суммы двух подпространств, обладающих циклическими
  векторами для $A$.
] <pr:square-multiplier-two-cyclic-components>

#problem[
  Доказать, что если $A$ — оператор с простым спектром в бесконечномерном
  гильбертовом пространстве $H$, то операторы $1$, $A$, $dots$, $A^n$, $dots$
  линейно независимы.
] <pr:infinite-dimensional-simple-spectrum-power-independence>

#problem[
  Пусть $B$ и $C$ — ограниченные самосопряженные операторы, перестановочные друг
  с другом. Доказать, что существует такой ограниченный самосопряженный оператор
  $A$, что $B$ и $C$ являются функциями от $A$.
] <pr:commuting-self-adjoint-pair-single-generator>

#problem[
  Пусть $A$ — самосопряженный оператор с простым спектром. Доказать, что всякий
  ограниченный оператор $B$, перестановочный с $A$, является функцией от $A$.
] <pr:simple-spectrum-operator-commutant-functional-calculus>

#problem[
  Доказать, что $norm(f(A)) = op("ess sup")_E abs(f)$ для любой ограниченной
  борелевской функции от самосопряженного оператора $A$, где $E$ — его
  спектральная мера и $op("ess sup")_E abs(f)=inf{C>=0:E({t:abs(f(t))>C})=0}$.
] <pr:bounded-borel-functional-calculus-norm>

#problem[
  Привести к виду умножения на функцию оператор свертки $S(f)$,
  $f in L_1 (RR, dif x)$. Для каких функций этот оператор самосопряжен?
] <pr:line-convolution-multiplication-model-self-adjointness>

#problem[
  Может ли оператор свертки $S(f)$, $f in L_1 (RR, dif x)$, быть унитарным?
] <pr:integrable-line-convolution-unitarity-question>

#problem(difficulty: "hard")[
  Пусть $G$ — коммутативная локально компактная группа с инвариантной мерой
  $mu$. При каких условиях на функцию $f in L_1 (G, mu)$ оператор свертки $S(f)$
  является:

  а) самосопряженным;

  б) унитарным;

  в) компактным?
] <pr:abelian-group-convolution-spectral-properties>

#problem[
  Пусть $A$ — интегральный оператор в $L_2 (0, 1)$, заданный формулой
  $A f(x) = integral_0^1 min(x, y) f(y) dif y$. Привести этот оператор к виду
  умножения на функцию.
] <pr:min-kernel-integral-operator-multiplication-model>

#problem[
  Пусть $A$ — неограниченный самосопряженный оператор в $H$, $Gamma_A$ — график
  $A$ в $H ⊕ H$. Доказать, что ортогональным дополнением к $Gamma_A$ в $H ⊕ H$
  является $tau(Gamma_A)$.
] <pr:self-adjoint-operator-graph-orthogonal-complement>

#problem[
  В условиях задачи @pr:self-adjoint-operator-graph-orthogonal-complement
  обозначим проекцию вектора $x ⊕ 0$ на $Gamma_A$ через $(y ⊕ A y)$, а проекцию
  этого вектора на $Gamma_A^perp$ — через $-A z ⊕ z$. Доказать, что

  а) соответствия $x mapsto y$ и $x mapsto z$ являются ограниченными операторами
  в $H$; обозначим их $B$ и $C$ соответственно;

  б) справедливы соотношения $C = -A B$, $(1 + A^2) B = 1$.
] <pr:self-adjoint-graph-projection-resolvent-identities>

#source(280)
#problem[
  Доказать, что _оператор конечной разности_
  $Delta_h phi(x) equiv 1 / h [phi(x + h) - phi(x)]$ является функцией от
  оператора дифференцирования.
] <pr:finite-difference-derivative-functional-calculus>

#problem(difficulty: "hard")[
  Пусть $f$ — непрерывная функция на окружности. Написать явное выражение для
  оператора $f(F)$, где $F$ — оператор Фурье:
  $F phi(y) = integral_RR e^(-2 pi i x y) phi(x) dif x$.
] <pr:fourier-operator-continuous-functional-calculus>
