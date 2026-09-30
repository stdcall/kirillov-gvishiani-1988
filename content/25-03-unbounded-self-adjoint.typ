#import "main-defs.typ": *
#import "statements.typ": *

==== Неограниченные самосопряженные операторы
<ss:problems-unbounded-self-adjoint>

#problem(difficulty: "core")[
  В обозначениях @th:adjoint-graph-density-characterization доказать, что
  $tau(Gamma_A)^perp$ является графиком некоторого оператора тогда и только
  тогда, когда $D_A$ плотно в $H$.
] <pr:adjoint-graph-dense-domain-criterion>

#problem(difficulty: "core")[
  Пусть операторы $A$ и $A^*$ плотно определены (т. е. $D_A$ и $D_(A^*)$ плотны
  в $H$). Доказать, что $(A^*)^*$ совпадает с замыканием $A$.
] <pr:densely-defined-double-adjoint-closure>

#problem(difficulty: "core")[
  Доказать, что существенная самосопряженность оператора $A$ равносильна каждому
  из условий:

  а) $A^*$ самосопряжен;

  б) $overline(A) = A^*$.
] <pr:essential-self-adjointness-adjoint-characterizations>

#problem(difficulty: "core")[
  В каких случаях оператор $A = i dif / (dif x)$ в пространстве $H = L_2 (0, 1)$
  симметричен, существенно самосопряжен, самосопряжен:

  а) $D_A = C^1 [0, 1]$,

  б) $D_A = {phi in C^1 [0, 1], phi(0) = phi(1)}$,

  в) $D_A = {phi in C^1 [0, 1], phi(0) = phi(1) = 0}$?
] <pr:interval-first-derivative-domain-self-adjointness>

#problem[
  Будет ли симметричным оператор Лапласа
  $Delta = partial^2 / (partial x_1^2) + partial^2 / (partial x_2^2)$ в
  $L^2 (RR^2, dif x)$, если

  #source(276)
  а) $D_Delta = S(RR^2)$; б) $D_Delta = D(RR^2)$;

  в) $D_Delta$ — естественная область определения.
] <pr:plane-laplacian-domain-symmetry>

#problem(difficulty: "hard")[
  Докажите, что всякий симметрический оператор $A$, для которого $D_A = H$,
  ограничен.
] <pr:everywhere-defined-symmetric-operator-boundedness>

#problem[
  Пусть $A$ — самосопряженный оператор.

  а) Доказать, что оператор $(A + i 1)(A - i 1)^(-1) = U$ унитарен.

  б) Доказать, что $ker(U - 1) = {0}$.
] <pr:unbounded-self-adjoint-cayley-transform>

#problem[
  Пусть $U$ унитарный оператор, для которого $ker(U - 1) = {0}$. Докажите, что
  оператор $A = i (U + 1)(U - 1)^(-1)$ с областью определения
  $D_A = op("im")(U - 1)$ самосопряжен.
] <pr:unbounded-inverse-cayley-transform-self-adjointness>

#problem(difficulty: "hard")[
  Вычислить оператор $A$ в условиях задачи
  @pr:unbounded-inverse-cayley-transform-self-adjointness, если $U$ — оператор
  сдвига на $1$ в $l_2 (ZZ)$.
] <pr:bilateral-shift-inverse-cayley-transform>

#problem[
  Пусть $H = l_2 (CC)$, $D_A$ состоит из всех финитных последовательностей с
  нулевой суммой, оператор $A$ задается матрицей $A = norm(a_(j k))$, где
  $a_(j k) = i op("sgn")(j - k)$.

  а) Будет ли $A$ симметрическим?

  б) Будет ли $A$ существенно самосопряженным?
] <pr:sign-matrix-zero-sum-domain-self-adjointness>

#problem[
  Пусть $A_i$ ($i = 1, 2$) — операторы умножения на $x$ в $L_2 (RR, dif x)$ с
  областями определения $D_(A_i)$. Известно, что $A_1$ и $A_2$ существенно
  самосопряжены. Могут ли подпространства $D_(A_1)$ и $D_(A_2)$ иметь нулевое
  пересечение?
] <pr:essential-self-adjoint-multiplier-domain-intersection>

#problem[
  Пусть оператор $A$ плотно определен и положителен (см. задачу
  @pr:positive-operator-basic-properties). Доказать, что существенная
  самосопряженность $A$ равносильна условию $ker(A^* + 1) = 0$.
] <pr:positive-operator-essential-self-adjointness-kernel-criterion>

#problem(difficulty: "hard")[
  Доказать, что для любого замкнутого плотно определенного оператора $A$
  оператор $T = A^* A + 1$ с областью определения
  $D_T = {x in D_A; A x in D_(A^*)}$ самосопряжен.
] <pr:closed-operator-adjoint-product-self-adjointness>

#problem(difficulty: "hard")[
  Пусть $H_1$ и $H_2$ — гильбертовы пространства, $H_1 times.o H_2$ — их
  гильбертово тензорное произведение. Доказать, что если операторы $A_1$ и $A_2$
  самосопряжены в $H_1$ и $H_2$ соответственно, то оператор
  $A_1 times.o 1 + 1 times.o A_2$ с областью определения
  $D_(A_1) times.o D_(A_2)$ существенно самосопряжен в $H$.
] <pr:tensor-sum-essential-self-adjointness>

#problem(difficulty: "core")[
  Доказать, что спектр самосопряженного оператора лежит на вещественной оси.
] <pr:self-adjoint-operator-real-spectrum>

#problem[
  а) Доказать соотношение $(op("im") A)^perp = ker A^*$ для плотно определенного
  оператора $A$ в гильбертовом пространстве.

  б) Верно ли в этом случае соотношение $(ker A)^perp = overline(op("im") A^*)$?
] <pr:unbounded-operator-range-kernel-orthogonality>

#problem[
  Доказать, что самосопряженный оператор $A$ не имеет симметрических расширений,
  отличных от $A$.
] <pr:self-adjoint-operator-maximal-symmetry>

#source(277)
#problem[
  Пусть $A$ — симметрический оператор. Доказать, что оператор
  $(A + i)(A - i)^(-1)$ продолжается до изометрического оператора $U$ из
  $overline(op("im")(A - i))$ в $overline(op("im")(A + i))$.
] <pr:symmetric-operator-cayley-isometric-extension>

#problem[
  Пусть $A$ — замкнутый симметрический оператор. Доказать, что пространство
  $op("im")(A + i 1)$ замкнуто в $H$.
] <pr:closed-symmetric-operator-nonreal-range-closure>

#problem[
  Доказать, что замкнутый симметрический оператор $A$ допускает самосопряженное
  расширение тогда и только тогда, когда
  $dim ker(A^* - i 1) = dim ker(A^* + i 1)$.
] <pr:symmetric-operator-equal-deficiency-extension-criterion>
