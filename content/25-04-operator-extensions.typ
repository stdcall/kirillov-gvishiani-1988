#import "main-defs.typ": *
#import "statements.typ": *

==== Расширения операторов <ss:problems-operator-extensions>

#problem[
  Пусть $A$ — симметрический оператор, $V$ — его преобразование Кэли. Докажите,
  что графики этих операторов $Gamma_A$ и $Gamma_V$ связаны соотношением
  $Gamma_V = Gamma_A mat(-i, i; 1, 1)$. (Здесь $mat(-i, i; 1, 1)$ означает
  оператор в $H ⊕ H$, переводящий $x ⊕ y$ в $(-i x + y) ⊕ (i x + y)$.)
] <pr:cayley-transform-graph-linear-relation>

#problem[
  Доказать, что для замкнутого симметрического оператора $A$ и невещественного
  числа $lambda$ пространство $op("im")(A - lambda dot 1)$ замкнуто.
] <pr:closed-symmetric-operator-nonreal-shift-range>

#problem[
  Пусть $A$ — симметрический оператор,
  $L_lambda = ker(A^* - overline(lambda) dot 1)$. Доказать, что функция
  $lambda mapsto l_lambda = dim L_lambda$ постоянна в некоторой окрестности
  точки $lambda$, не лежащей на вещественной оси.
] <pr:deficiency-dimension-local-constancy>

#problem[
  Пусть $A$ — симметрический оператор, полуограниченный снизу:
  $(A x, x) >= a norm(x)^2$. Доказать, что функция $lambda mapsto l_lambda$ (см.
  предыдущую задачу @pr:deficiency-dimension-local-constancy) постоянна в
  области $CC without [a, infinity)$.
] <pr:semibounded-operator-deficiency-constancy>

#problem[
  Пусть $H$ — комплексное пространство и $C$ — антилинейный оператор в $H$,
  обладающий свойством $C^2 = 1$.

  а) Докажите, что $H = H_0 + i H_0$, где $H_0$ — вещественное пространство,
  состоящее из $C$-неподвижных векторов.

  б) Докажите, что условие $A C = C A$ для линейного оператора в $H$ равносильно
  условию $A H_0 subset H_0$.
] <pr:antilinear-involution-real-form>

#problem[
  Пусть $A$ — симметрический оператор в $H$. Предположим, что существует
  антилинейная изометрия $C: H -> H$ со свойствами $C^2 = 1$, $A C = C A$.
  Доказать, что индексы дефекта у $A$ равны.
] <pr:conjugation-commuting-symmetric-operator-equal-deficiencies>

#problem[
  Пусть $A$ — замкнутый симметрический оператор в пространстве $H$,
  $L_lambda = ker(A^* - overline(lambda) dot 1)$. Доказать, что для
  $lambda in CC without RR$ пространства $D(A)$, $L_lambda$ и
  $L_(overline(lambda))$ линейно независимы и их сумма совпадает с $D(A^*)$.
] <pr:adjoint-domain-deficiency-direct-decomposition>

В следующих трех задачах приняты следующие обозначения (ср. @bib:Naimark1969):
$p in C^1[0,infinity)$ — положительная, $q in C[0,infinity)$ — вещественная
функция, $lambda in CC without RR$; $A$ — дифференциальный #source(278)
оператор, заданный равенством $A x = -(p x')' + q x$; для каждой
дифференцируемой комплексной функции $x(t)$ построим комплексную вектор-функцию
$xi(t) = mat(x(t); p(t) x'(t))$ и вещественную скалярную функцию
$f(t) = xi^* (t) I xi(t)$, где $I = mat(0, i; -i, 0)$; положим
$B = B(t, lambda) = mat(0, p^(-1) (t); q(t) - lambda, 0)$.

#problem[
  а) Доказать, что $x(t)$ является решением уравнения $A x = lambda x$ тогда и
  только тогда, когда $xi(t)$ удовлетворяет уравнению $xi' = B xi$.

  б) Проверить, что для любого $t in (0, infinity)$, такого, что $x(t)!=0$,
  условие $f(t) = 0$ равносильно вещественности величины $(x'(t)) / (x(t))$.

  в) Доказать тождество
  $ f(b) - f(a) = 2 op("Im") lambda integral_a^b abs(x(t))^2 dif t $
  для любого решения $x(t)$ уравнения $A x = lambda x$.
] <pr:sturm-liouville-first-order-system-lagrange-identity>

#problem[
  Пусть $w(t)$ — решение матричного уравнения $w' = B w$ с начальным условием
  $w(0) = 1$.

  а) Доказать, что общее решение уравнения $A x = lambda x$ имеет вид
  $x(t) = (1, 0) w(t)c$, $c in CC^2$. Положим $x_(z)(t)=(1,0)w(t)mat(z; 1)$,
  $z in CC$.

  б) Проверить, что $det w(t) = 1$.

  в) Пусть $S_t$ ($t>0$) — совокупность тех $z in CC$, для которых $f_(z)(t)=0$,
  где $f_z$ определена по $x_(z)$ как в общем условии. Проверить, что $S_t$ —
  окружность, найти ее радиус и доказать, что при $t_2 > t_1>0$ $S_(t_2)$ лежит
  внутри $S_(t_1)$.
  #ed-note[
    Уточнены регулярность коэффициентов в нуле, невещественность спектрального
    параметра и параметризация решений. Условие $f_(z)(t)=0$ включает также
    решения с $x_(z)(t)=0$, для которых исходная дробь не определена. Окружности
    Вейля и их вложенность см. в § 7.4, исторических замечаниях, с. 569, формуле
    (7.4.68): #cite(<Simon2015d>, form: "full").
  ]
] <pr:sturm-liouville-weyl-circle-nesting>

#problem[
  Доказать, что при $t -> infinity$ окружность $S_t$ стремится либо к предельной
  точке, либо к предельной окружности, в зависимости от того, будет ли
  самосопряжен оператор $A$ с областью определения $D(A)$, заданной каким-нибудь
  самосопряженным граничным условием в нуле: $alpha x(0) + beta x'(0) = 0$, где
  $alpha / beta in RR$.
] <pr:sturm-liouville-limit-point-circle-self-adjointness>
