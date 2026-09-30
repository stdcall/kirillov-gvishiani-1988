#import "main-defs.typ": *
#import "statements.typ": *

=== Спектральное разложение операторов <sec:hints-spectral-decomposition>

==== Приведение оператора к виду умножения на функцию
<ss:hints-multiplication-operator-representation>

#hint[@pr:finite-dimensional-self-adjoint-multiplication-model][Рассмотрите
  пространство $X$, состоящее из конечного числа точек.
] <hint:finite-dimensional-self-adjoint-multiplication-model>

#hint[@pr:square-multiplier-two-cyclic-components][а) Пусть $f$ — любой вектор
  из $H$. Положим $g(x)=overline(f(-x)) dot op("sgn") x$. Докажите, что вектор
  $g$ ортогонален циклическому подпространству, порожденному $f$.

  б) Подпространства четных и нечетных функций — циклические.
] <hint:square-multiplier-two-cyclic-components>

#hint[@pr:infinite-dimensional-simple-spectrum-power-independence][Предположим
  противное: $sum_(k=0)^N c_k A^k=0$ и $c_N!=0$. Тогда линейная оболочка
  оператора ${A^k}_(k=0)^infinity$ совпадает с линейной оболочкой операторов
  ${A^k}_(k=0)^(N-1)$. Поэтому для любого вектора $xi in H$ пространство,
  порожденное векторами ${A^k xi}_(k=1)^infinity$, имеет размерность не выше
  $N$. Значит, оператор $A$ не может иметь циклического вектора.
] <hint:infinite-dimensional-simple-spectrum-power-independence>

#hint[@pr:commuting-self-adjoint-pair-single-generator][Используйте тот факт,
  что квадрат и отрезок изоморфны как пространства с мерой.
] <hint:commuting-self-adjoint-pair-single-generator>

#hint[@pr:simple-spectrum-operator-commutant-functional-calculus][Всякий
  оператор в $L_2 ([a,b],mu)$, перестановочный с умножением на $x$, является
  оператором умножения на функцию от $x$.
] <hint:simple-spectrum-operator-commutant-functional-calculus>

#hint[@pr:bounded-borel-functional-calculus-norm][Воспользуйтесь теоремой о
  приведении оператора $A$ к виду умножения на функцию $a(x)$ в пространстве
  $L_2 (X,mu)$. Докажите, что множество тех $x in X$, для которых
  $a(x) in.not sigma(A)$, имеет меру нуль. Поэтому для почти всех $x in X$
  выполняется неравенство $abs(f(a(x)))<=op("ess sup")_E abs(f)$, где $E$ —
  спектральная мера $A$.
] <hint:bounded-borel-functional-calculus-norm>

#hint[@pr:line-convolution-multiplication-model-self-adjointness][Перейдите к
  преобразованиям Фурье. Условие самосопряженности: $S(f):tilde(f)(lambda)$ —
  вещественная функция (или: $f(x)=overline(f(-x))$).
] <hint:line-convolution-multiplication-model-self-adjointness>

#hint[@pr:integrable-line-convolution-unitarity-question][Нет, так как
  $tilde(f)(lambda) arrow.r 0$ при $lambda arrow.r infinity$.
] <hint:integrable-line-convolution-unitarity-question>

#hint[@pr:abelian-group-convolution-spectral-properties][а)
  $f(g)=overline(f(-g))$;

  б) $abs(tilde(f)(chi))=1$ (что возможно, лишь если группа $hat(G)$ компактна,
  а $G$ дискретна);

  в) когда группа $G$ компактна.
] <hint:abelian-group-convolution-spectral-properties>

#hint[@pr:min-kernel-integral-operator-multiplication-model][#source(370)
  Найдите собственные векторы оператора $A$, дважды продифференцировав по $x$
  равенство $lambda f(x)=integral_0^1 min(x, y)f(y)dif y$.
] <hint:min-kernel-integral-operator-multiplication-model>

#hint[@pr:self-adjoint-operator-graph-orthogonal-complement][Воспользуйтесь
  соотношением $tau(Gamma_A)^perp=Gamma_(A^*)$, которое справедливо для любого
  оператора $A$ и равносильно определению $A^*$.
] <hint:self-adjoint-operator-graph-orthogonal-complement>

#hint[@pr:self-adjoint-graph-projection-resolvent-identities][а) По определению
  проекции справедливо равенство

  $ norm(x)^2=norm(y)^2+norm(A y)^2+norm(A z)^2+norm(z)^2, $

  откуда $norm(B)<=1$, $norm(C)<=1$.

  б) Равенство $x plus.o 0=(y plus.o A y)+(-A z plus.o z)$ влечет $x=y-A z$,
  $z=-A y$. Вспоминая, что $y=B x$, $z=C x$, получаем: $x=B x-A C x$,
  $C x=-A B x$ или $1=B-A C$, $C=-A B$. Отсюда имеем: $1=B+A^2 B$, т. е.
  $(1+A^2)B=1$.
] <hint:self-adjoint-graph-projection-resolvent-identities>

#hint[@pr:finite-difference-derivative-functional-calculus][$Delta_h=(e^(-i h
  A)-1)/h$.
] <hint:finite-difference-derivative-functional-calculus>

#hint[@pr:fourier-operator-continuous-functional-calculus][$
    f(F):phi(x) |-> (f(1)+f(i)+f(-1)+f(-i))/4 phi(x)
    \
    +(f(1)-i f(i)-f(-1)+i f(-i))/4 tilde(phi)(x)
    \
    +(f(1)-f(i)+f(-1)-f(-i))/4 phi(-x)
    \
    +(f(1)+i f(i)-f(-1)-i f(-i))/4 tilde(phi)(-x).
  $
] <hint:fourier-operator-continuous-functional-calculus>
