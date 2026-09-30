#import "main-defs.typ": *
#import "statements.typ": *

==== Функции ограниченных самосопряженных операторов
<ss:hints-bounded-selfadjoint-functions>

#hint[@pr:continuous-real-multiplier-spectrum][Множество $sigma(A)$ совпадает с
  множеством значений, принимаемых функцией $a(x)$.
] <hint:continuous-real-multiplier-spectrum>

#hint[@pr:bounded-measurable-multiplier-spectrum][Спектр $A$ — множество
  существенных значений функции $a(x)$, т. е. таких значений $lambda in CC$, что
  для любой окрестности $U$ точки $lambda$ множество

  $ E_U={x in X:a(x) in U} $

  имеет положительную меру.
] <hint:bounded-measurable-multiplier-spectrum>

#hint[@pr:line-convolution-operator-spectrum][Перейдите к преобразованию Фурье.
  Ответ: замыкание множества значений преобразования Фурье функции $f$.
] <hint:line-convolution-operator-spectrum>

#hint[@pr:circle-convolution-operator-spectrum][Перейдите к преобразованию
  Фурье. Ответ: замыкание совокупности коэффициентов Фурье функции $f$.
] <hint:circle-convolution-operator-spectrum>

#hint[@pr:unitary-operator-spectrum-unit-circle][Докажите, что спектры $U$ и
  $U^(-1)$ лежат в единичном круге.
] <hint:unitary-operator-spectrum-unit-circle>

#hint[@pr:self-adjoint-cayley-transform-unitarity][Проверьте изометричность
  отображения $(A+overline(lambda)1)xi |-> (A+lambda 1)xi$ и плотность
  $"im"(A+overline(lambda)1)$.
] <hint:self-adjoint-cayley-transform-unitarity>

#hint[@pr:cayley-transform-unitarity-self-adjoint-criterion][Пусть
  $U=(A+i 1)(A-i 1)^(-1)$. Тогда

  $ (A^*+i 1)^(-1)(A^*-i 1)=U^*=U^(-1)=(A-i 1)(A+i 1)^(-1), $

  откуда

  $ (A^*-i 1)(A+i 1)=(A^*+i 1)(A-i 1) "и" A=A^*. $
] <hint:cayley-transform-unitarity-self-adjoint-criterion>

#hint[@pr:inverse-cayley-transform-self-adjointness][Воспользуйтесь
  перестановочностью $U+1$ и $(U-1)^(-1)$.
] <hint:inverse-cayley-transform-self-adjointness>

#hint[@pr:volterra-operator-spectral-radius][#source(366)
  Воспользуйтесь формулой
  $A^n f(x)=integral_0^x ((x-t)^(n-1))/((n-1)!)f(t)dif t$ и докажите неравенство
  $norm(A^n)<=1/((n-1)!)$. Ответ: $r(A)=0$.
] <hint:volterra-operator-spectral-radius>

#hint[@pr:volterra-operator-explicit-resolvent][Воспользуйтесь формулой
  $R_lambda (A)=-sum_(k=0)^infinity lambda^(-1-k)A^k$.

  Ответ: $R_lambda (A)f(x)=-lambda^(-1)f(x)-lambda^(-2)integral_0^x
  e^(lambda^(-1)(x-t))f(t)dif t$.
] <hint:volterra-operator-explicit-resolvent>

#hint[@pr:positive-operator-basic-properties][Воспользуйтесь задачей
  @pr:positive-operator-log-convexity-quadratic-bound.
] <hint:positive-operator-basic-properties>

#hint[@pr:positive-polynomial-self-adjoint-functional-calculus][Докажите, что
  всякий многочлен, положительный на отрезке $[a,b]$, представим в виде суммы
  слагаемых вида $Q_i^2 (x)$, $(x-a)Q_i^2 (x)$, $(b-x)Q_i^2 (x)$, где $Q_i$ —
  многочлены с вещественными коэффициентами. Указание:

  $ (b-x)(x-a)=(b-x)((x-a)/sqrt(b-a))^2+(x-a)((b-x)/sqrt(b-a))^2. $
] <hint:positive-polynomial-self-adjoint-functional-calculus>

#hint[@pr:polynomial-functional-calculus-sup-norm-continuity][Докажите, что если
  $alpha dot 1<=A<=beta dot 1$, то $norm(A)$ не превосходит
  $max(abs(alpha), abs(beta))$.
] <hint:polynomial-functional-calculus-sup-norm-continuity>

#hint[@pr:bounded-self-adjoint-exponential-unitary-group][Воспользуйтесь
  формулой $e^(i t A)=sum_(k=0)^infinity ((i t A)^k)/(k!)$.
] <hint:bounded-self-adjoint-exponential-unitary-group>

#hint[@pr:bounded-unitary-group-exponential-derivative][См. указание
  @hint:bounded-self-adjoint-exponential-unitary-group к задаче
  @pr:bounded-self-adjoint-exponential-unitary-group.
] <hint:bounded-unitary-group-exponential-derivative>

#hint[@pr:norm-continuous-unitary-group-bounded-generator][Докажите, что $U(t)$
  — дифференцируемая функция (см. метод сглаживания в доказательстве теоремы
  Стоуна). Затем выведите дифференциальное уравнение задачи
  @pr:bounded-unitary-group-exponential-derivative и докажите, что оно имеет
  единственное решение с начальным условием $U(0)=1$.
] <hint:norm-continuous-unitary-group-bounded-generator>

#hint[@pr:multiplication-operator-polar-decomposition][$A=R U$, где $R$ —
  оператор умножения на функцию $abs(a(x))$, а $U$ — оператор умножения на
  функцию $op("sgn")(a(x))$.
] <hint:multiplication-operator-polar-decomposition>

#hint[@pr:unilateral-shift-polar-decomposition][Оператор одностороннего сдвига
  $T$ обладает свойствами: $T^* T=1$, $T T^*=P$, где $P$ — ортопроектор на
  ортогональное дополнение к первому базисному вектору. Ответ: $T=P T$.
] <hint:unilateral-shift-polar-decomposition>

#hint[@pr:polar-decomposition-unitary-commutant][а) $A=B R B^(-1)B U B^(-1)$ —
  полярное разложение.

  б) Неверно. Разберите случай, когда $A$ и $B$ — оператор одностороннего сдвига
  из задачи @pr:unilateral-shift-polar-decomposition.
] <hint:polar-decomposition-unitary-commutant>

#hint[@pr:positive-operator-inverse-order-reversal][Разберите сначала случай
  $B=1$, введя в рассмотрение оператор $A^(1/2)$.
] <hint:positive-operator-inverse-order-reversal>

#hint[@pr:bilateral-shift-bounded-self-adjoint-logarithm][Приведите $T$ к виду
  умножения на функцию.
] <hint:bilateral-shift-bounded-self-adjoint-logarithm>

#hint[@pr:alternating-orthogonal-projection-limit][Воспользуйтесь монотонностью
  последовательности $(P_1 P_2 P_1)^n$.
] <hint:alternating-orthogonal-projection-limit>

#hint[@pr:carleman-operator-dilation-commutation][Проверяется непосредственно.
] <hint:carleman-operator-dilation-commutation>
