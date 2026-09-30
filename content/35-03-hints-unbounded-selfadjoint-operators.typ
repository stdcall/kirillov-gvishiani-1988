#import "main-defs.typ": *
#import "statements.typ": *

==== Неограниченные самосопряженные операторы
<ss:hints-unbounded-selfadjoint-operators>

#hint[@pr:adjoint-graph-dense-domain-criterion][Докажите эквивалентность
  соотношений $0 plus.o x in tau(Gamma_A)^perp$ и $x perp D_A$.
] <hint:adjoint-graph-dense-domain-criterion>

#hint[@pr:densely-defined-double-adjoint-closure][Воспользуйтесь
  перестановочностью операций $tau$ и $perp$, а также результатом задачи
  @pr:double-orthogonal-complement-closed-span.
] <hint:densely-defined-double-adjoint-closure>

#hint[@pr:essential-self-adjointness-adjoint-characterizations][Воспользуйтесь
  равенствами $overline(A^*)=A^*$ и $(A^*)^*=overline(A)$ (задача
  @pr:densely-defined-double-adjoint-closure).
] <hint:essential-self-adjointness-adjoint-characterizations>

#hint[@pr:interval-first-derivative-domain-self-adjointness][а) Не симметричен;

  б) существенно самосопряжен;
  #source(367)
  в) симметричен, но не существенно самосопряжен.

] <hint:interval-first-derivative-domain-self-adjointness>

#hint[@pr:plane-laplacian-domain-symmetry][Ответ: да, во всех трех случаях.
] <hint:plane-laplacian-domain-symmetry>

#hint[@pr:everywhere-defined-symmetric-operator-boundedness][Докажите, что образ
  единичного шара при отображении $A$ слабо ограничен.
] <hint:everywhere-defined-symmetric-operator-boundedness>

#hint[@pr:unbounded-self-adjoint-cayley-transform][а) Проверьте равенство
  $norm((A-i 1)x)=norm((A+i 1)x)$.

  б) Если $x in ker(U-1)$ и $x=(A-i 1)y$, то $x=(A+i 1)y$, откуда $y=0$.
] <hint:unbounded-self-adjoint-cayley-transform>

#hint[@pr:unbounded-inverse-cayley-transform-self-adjointness][Проверьте
  соотношение $(tau Gamma_A)^perp=Gamma_A$.
] <hint:unbounded-inverse-cayley-transform-self-adjointness>

#hint[@pr:bilateral-shift-inverse-cayley-transform][Перейдите к преобразованию
  Фурье. Ответ:

  $ A:{x_n} |-> lr({i sum_(k=1)^infinity (x_(n-k)-x_(n+k))}). $
] <hint:bilateral-shift-inverse-cayley-transform>

#hint[@pr:sign-matrix-zero-sum-domain-self-adjointness][а) Да. б) Да. Проверьте,
  что $"im"(A plus.minus i 1)$ содержит все финитные последовательности.
] <hint:sign-matrix-zero-sum-domain-self-adjointness>

#hint[@pr:essential-self-adjoint-multiplier-domain-intersection][Могут.
  Например, пространство $D(RR)$ и пространство ступенчатых функций.
] <hint:essential-self-adjoint-multiplier-domain-intersection>

#hint[@pr:positive-operator-essential-self-adjointness-kernel-criterion][Для
  доказательства достаточности воспользуйтесь неравенством задачи
  @pr:positive-operator-log-convexity-quadratic-bound б) и покажите, что
  $(1+A)^(-1)$ продолжается с $"im"(A+1)$ на все $H$ и имеет норму $<=1$.
] <hint:positive-operator-essential-self-adjointness-kernel-criterion>

#hint[@pr:closed-operator-adjoint-product-self-adjointness][Рассмотрите проекции
  вектора $x plus.o 0 in H plus.o H$ на $Gamma_A$ и
  $Gamma_A^perp=tau(Gamma_(A^*))$. Докажите, что $(1+A^* A)^(-1)$ — ограниченный
  самосопряженный оператор.
] <hint:closed-operator-adjoint-product-self-adjointness>

#hint[@pr:tensor-sum-essential-self-adjointness][Воспользуйтесь критерием
  существенной самосопряженности или теоремой Стоуна.
] <hint:tensor-sum-essential-self-adjointness>

#hint[@pr:self-adjoint-operator-real-spectrum][Докажите ограниченность
  $(A-lambda 1)^(-1)$ при невещественных $lambda$ (замена $A$ на $alpha A+beta$,
  $alpha,beta in RR$ сводит общий случай к случаю $lambda=i$).
] <hint:self-adjoint-operator-real-spectrum>

#hint[@pr:unbounded-operator-range-kernel-orthogonality][б) Неверно. Может быть
  $ker A=0$, но $D_(A^*)={0}$. Для этого достаточно в качестве $Gamma_A$ взять
  любое плотное в $H plus.o H$ подпространство, имеющее нулевое пересечение с
  $H plus.o 0$ и с $0 plus.o H$.
] <hint:unbounded-operator-range-kernel-orthogonality>

#hint[@pr:self-adjoint-operator-maximal-symmetry][Если $A subset A_1$, то
  $A_1^* subset A^*$. Из симметричности $A_1$ и самосопряженности $A$ следует
  $A subset A_1 subset A_1^* subset A^*=A$.
] <hint:self-adjoint-operator-maximal-symmetry>

#hint[@pr:symmetric-operator-cayley-isometric-extension][Проверьте равенство
  $norm((A+i 1)x)=norm((A-i 1)x)$.
] <hint:symmetric-operator-cayley-isometric-extension>

#hint[@pr:closed-symmetric-operator-nonreal-range-closure][Докажите, что графики
  оператора $A$ и оператора $U$ из задачи
  @pr:symmetric-operator-cayley-isometric-extension получаются друг из друга
  линейными обратимыми преобразованиями пространства $H plus.o H$. Сравните
  графики $A$ и $A+i 1$.
] <hint:closed-symmetric-operator-nonreal-range-closure>

#hint[@pr:symmetric-operator-equal-deficiency-extension-criterion][Каждому
  симметрическому расширению оператора $A$ соответствует изометрическое
  расширение оператора $U$ задачи
  @pr:symmetric-operator-cayley-isometric-extension. Самосопряженному оператору
  соответствует унитарное расширение.
] <hint:symmetric-operator-equal-deficiency-extension-criterion>
