#import "main-defs.typ": *
#import "statements.typ": *

==== Сопряженные пространства <ss:hints-dual-spaces>

#hint[@pr:discontinuous-linear-functional][
  Использовать базис Гамеля. _Базисом Гамеля_#idx("Базис", "Гамеля") называется
  линейно независимая система $\{x_alpha\}$ элементов линейного пространства $L$
  такая, что ее линейная оболочка совпадает с $L$. (Ср.
  @pr:zorn-basis-existence.)
] <hint:discontinuous-linear-functional>

#hint[@pr:functional-norm-hyperplane-distance][
  Расстояние от нуля до гиперплоскости $f(x)=1$ есть $inf norm(x)$ по множеству
  $\{x:f(x)=1\}=\{x_0+ker f\}$, где $x_0$ — фиксированный элемент из $L$ такой,
  что $f(x_0)=1$. При этом $L$ есть линейная оболочка $x_0$ и $ker f$.
] <hint:functional-norm-hyperplane-distance>

#hint[@pr:finite-dimensional-reflexivity][
  Проверяется непосредственно, так как конечномерное пространство изоморфно
  сопряженному.
] <hint:finite-dimensional-reflexivity>

#hint[@pr:closed-subspace-reflexivity][
  Банахово пространство рефлексивно тогда и только тогда, когда шар $norm(x)<=1$
  компактен в слабой топологии.
] <hint:closed-subspace-reflexivity>

#hint[@pr:null-sequences-nonreflexivity][
  $c'_0 supset l_1$ (более того, $c'_0=l_1$), поэтому слабая сходимость влечет
  покомпонентную сходимость. Рассмотрев
  #source(322)
  последовательность $x_(n i)=1$, $i<=n$, $x_(n i)=0$, $i>n$, доказать
  некомпактность единичного шара в $c_0$ в слабой топологии.
] <hint:null-sequences-nonreflexivity>

#hint[@pr:weak-strong-topologies-distinct][
  Базис слабой топологии состоит из множеств, не ограниченных в сильной
  топологии.
] <hint:weak-strong-topologies-distinct>

#hint[@pr:schur-property][
  Легко видеть, что $(l_1)' supset l_infinity$ (более того,
  $(l_1)'=l_infinity$). Вычтем из последовательности ее слабый предел. Пусть
  теперь $\{x^((n))\}$ — последовательность элементов в $l_1$, которая сходится
  слабо к нулю и не сходится сильно к нулю. Переходя к подпоследовательности и
  умножая на константу, мы можем добиться того, что $norm(x^((n)))>=1$ для всех
  $n$.

  Будем говорить, что последовательность $x in l_1$ сконцентрирована на
  интервале $[k,l]$ в пределах $epsilon$, если
  $sum_(i=k)^l abs(x_i)>=(1-epsilon) norm(x)$. Переходя к подпоследовательности,
  мы можем предполагать, что $x^((n))$ сконцентрирована на $[k_n,l_n]$, в
  пределах $1/4$ и, более того, эти интервалы не пересекаются для различных $n$.
  Пусть теперь $a_i=op("sgn") x_i^((n))$, если $i in [k_n,l_n]$ и $a_i=0$ в
  противном случае. Тогда

  $
    sum_(i=1)^infinity a_i x_i^((n)) &>=sum_(i=k_n)^(l_n)
    abs(x_i^((n)))-sum_(i in.not [k_n,l_n]) abs(x_i^((n))) \
    &>=3/4 norm(x^((n)))-1/4 norm(x^((n)))>=1/2,
  $
  что противоречит предположению о том, что $x^((n)) arrow.r 0$.
] <hint:schur-property>

#hint[@pr:unit-ball-supporting-hyperplanes][
  Докажите, что опорная плоскость единичного шара в $L$ задается уравнением
  $f(x)=1$, где $f in L'$ и $norm(f)=1$.
] <hint:unit-ball-supporting-hyperplanes>

#hint[@pr:dual-unit-ball-face-correspondence][
  Возьмем $k$-мерную грань и $k+1$ аффинно независимых вершин $x_i$
  ($i=1,2,dots,k+1$) на этой грани (такие найдутся, так как выпуклый
  многогранник есть выпуклая оболочка своих вершин). Поставим в соответствие
  этой $k$-мерной грани множество $\{f in B':f(x_i)=1,i=1,dots,k+1\}$. Доказать,
  что полученное множество есть $(n-k-1)$-мерная грань $B'$.
] <hint:dual-unit-ball-face-correspondence>

#hint[@pr:convergent-null-sequence-duals][
  Проверьте, что единичный шар в $c_0$ не имеет крайних точек, а единичный шар в
  $c$ имеет крайние точки: например, $x_n equiv 1$ и $x_n equiv -1$. Изоморфизм
  между $l_1$ и $c'_0$ устанавливается формулой
  $⟨ \{a_n\},\{x_n\} ⟩=sum_(n=1)^infinity a_n x_n$, а изоморфизм между $l_1$ и
  $c'$ — формулой
  $⟨ \{a_n\},\{x_n\} ⟩=a_1 lim_(n -> infinity) x_n+sum_(n=1)^infinity a_(n+1)
  x_n$. Для вычисления нормы $\{a_n\}$ в $c'$ рассмотрите последовательности
  вида
  $ x_i=cases(op("sgn") a_(i+1) & "при" i<N, op("sgn") a_1 & "при" i>=N). $
] <hint:convergent-null-sequence-duals>

#hint[@pr:sequence-space-duality][
  Использовать неравенство Гельдера.
] <hint:sequence-space-duality>

#hint[@pr:bounded-sequence-dual-not-summable][
  Рассмотреть на $c subset l_infinity$ непрерывный функционал
  $f(\{x_n\})=lim_(n -> infinity) x_n$ и применить теорему Хана — Банаха.
] <hint:bounded-sequence-dual-not-summable>

#hint[@pr:adjoint-matrix-row-representation][
  Выбрать базисы $tilde(e)_i$ ($i=1,dots,n_1$) и $tilde(f)_j$ ($j=1,dots,n_2$) в
  $L'_1$ и $(L_2)'$, биортогональные соответственно к базисам $e_i$
  ($i=1,dots,n_1$) и $f_j$ ($j=1,dots,n_2$) в $L_1$ и $L_2$.
] <hint:adjoint-matrix-row-representation>

#hint[@pr:unbounded-functional-local-range][
  Проверяется непосредственно. (См. также
  @pr:topological-functional-continuity-characterizations.)
] <hint:unbounded-functional-local-range>

#source(323)
#hint[@pr:functional-continuity-closed-kernel][
  При доказательстве достаточности применить
  @pr:unbounded-functional-local-range.
] <hint:functional-continuity-closed-kernel>

#hint[@pr:same-kernel-proportional-functionals][
  Проверяется непосредственно.
] <hint:same-kernel-proportional-functionals>

#hint[@pr:hyperplane-closed-or-dense][
  Воспользоваться @pr:unbounded-functional-local-range и
  @pr:functional-continuity-closed-kernel.
] <hint:hyperplane-closed-or-dense>
