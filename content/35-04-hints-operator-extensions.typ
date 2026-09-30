#import "main-defs.typ": *
#import "statements.typ": *

==== Расширения операторов <ss:hints-operator-extensions>

#hint[@pr:cayley-transform-graph-linear-relation][Проверяется непосредственно.
] <hint:cayley-transform-graph-linear-relation>

#hint[@pr:closed-symmetric-operator-nonreal-shift-range][Воспользуйтесь
  рассуждением из доказательства теоремы
  @th:self-adjointness-deficiency-criterion.
] <hint:closed-symmetric-operator-nonreal-shift-range>

#hint[@pr:deficiency-dimension-local-constancy][Предположим, что
  $l_lambda>l_mu$. Тогда в $L_lambda$ найдется вектор, ортогональный к $L_mu$
  (см. доказательство теоремы @th:self-adjointness-deficiency-criterion). Из
  результата предыдущей задачи вытекает, что
  $L_lambda^perp="im"(A-lambda dot 1)$, $L_mu^perp="im"(A-mu 1)$. Значит, есть
  вектор вида $A y-mu y$, ортогональный $A y-lambda y$. Отсюда, пользуясь
  неравенством $norm(A y-mu y)>=abs("Im" mu) dot norm(y)$, получите соотношение
  $abs("Im" mu)<=abs(mu-lambda)$. Последнее невозможно, если расстояние между
  $lambda$ и $mu$ мало по сравнению с их расстоянием до вещественной оси.
] <hint:deficiency-dimension-local-constancy>

#hint[@pr:semibounded-operator-deficiency-constancy][#source(368)
  Повторить решение предыдущей задачи, воспользовавшись неравенством
  $norm(A y-lambda y)>=d norm(y)$, где $d$ — расстояние от точки $lambda$ до
  луча $[a,infinity)$.
] <hint:semibounded-operator-deficiency-constancy>

#hint[@pr:antilinear-involution-real-form][а) Воспользоваться тождеством
  $x=(1+C)/2 x+(1-C)/2 x$.

  б) Если $x in H_0$ и $A C=C A$, то $C A x=A C x=A x$, откуда $A x in H_0$.
  Если $A H_0 subset H_0$, то $A C-C A$ обращается в нуль на $H_0$, а в силу
  антилинейности и на всем $H$.
] <hint:antilinear-involution-real-form>

#hint[@pr:conjugation-commuting-symmetric-operator-equal-deficiencies][
  Проверить, что $C$ переводит $L_lambda$ в $L_(overline(lambda))$.
] <hint:conjugation-commuting-symmetric-operator-equal-deficiencies>

#hint[@pr:adjoint-domain-deficiency-direct-decomposition][Пусть $x in D(A)$,
  $y in L_lambda$, $z in L_(overline(lambda))$ и $x+y+z=0$. Применяя к этому
  равенству оператор $A^*-lambda 1$, получаем
  $(A-lambda 1)x+(overline(lambda)-lambda)y=0$. Так как $x in D(A)$,
  $(A^*-lambda 1)x=(A-lambda 1)x in "im"(A-lambda 1)=L_lambda^perp$. С другой
  стороны, $(overline(lambda)-lambda)y in L_lambda$. Поэтому $y=0$. Аналогично
  доказывается, что $z=0$. Значит, данные пространства независимы. Далее, ясно,
  что все три пространства содержатся в $D(A^*)$. Следовательно, их сумма также
  содержится в $D(A^*)$. Обратно, пусть $u in D(A^*)$. Запишем $A^* u-lambda u$
  в виде суммы $v'+v''$, где $v' in L_lambda$,
  $v'' in L_lambda^perp="im"(A-lambda 1)$, и положим
  $v'=(overline(lambda)-lambda)y$, $v''=(A-lambda 1)x$. Тогда
  $A^* u-lambda u=A x-lambda x+(overline(lambda)-lambda)y$, откуда
  $A^*(u-x-y)=lambda(u-x-y)$. Значит, вектор $z=u-x-y$ принадлежит
  $L_(overline(lambda))$.
] <hint:adjoint-domain-deficiency-direct-decomposition>

#hint[@pr:sturm-liouville-first-order-system-lagrange-identity][а), б)
  Проверяется непосредственно.

  в) Воспользоваться равенством $B^* I+I B=mat(2 "Im" lambda, 0; 0, 0)$.
] <hint:sturm-liouville-first-order-system-lagrange-identity>

#hint[@pr:sturm-liouville-weyl-circle-nesting][а) Если $x(t)$ — решение
  уравнения $A x=lambda x$ и $xi(t)$ — соответствующая вектор-функция, то
  $w^(-1)(t)xi(t)$ — постоянный вектор, ибо
  $(w^(-1)xi)'= -w^(-1)w'w^(-1)xi+w^(-1)xi'=-w^(-1)B xi+w^(-1)B xi=0$.

  б) Воспользоваться тождеством $(det w)'=(det w)"tr"(w'w^(-1))$.

  в) Положим $beta="Im" lambda!=0$ и $H(t)=w(t)^* I w(t)$. Тогда в силу задачи
  @pr:sturm-liouville-first-order-system-lagrange-identity в)

  $ H(t)=I+2 beta integral_0^t w(s)^* mat(1, 0; 0, 0)w(s)dif s. $

  Если $H(t)=mat(a, b; overline(b), d)$, то

  $ f_z (t)=a abs(z)^2+2 "Re"(b overline(z))+d=0. $
  <eq:weyl-circle-equation>

  Из б) следует $det w(t)=1$, поэтому $det H(t)=det I=-1$. При этом
  $a=2 beta integral_0^t abs(w_(1 1)(s))^2 dif s!=0$, поскольку $w_(1 1)(0)=1$.
  Следовательно, @eq:weyl-circle-equation задает окружность с центром $-b/a$ и
  радиусом

  $
    sqrt(abs(b)^2-a d)/abs(a)
    =1/abs(a)=[2 abs(beta)integral_0^t abs(w_(1 1)(s))^2 dif s]^(-1).
  $

  Соответствующий замкнутый круг задается условием $op("sgn")(beta)f_z (t)<=0$,
  или

  $ integral_0^t abs(x_z (s))^2 dif s<=-frac("Im" z, beta). $

  #source(369)
  Для любого $z$ функция $op("sgn")(beta)f_z (t)$ не убывает. Более того,
  интеграл $integral_(t_1)^(t_2)abs(x_z (s))^2 dif s$ положителен при $t_2>t_1$,
  так как ненулевое решение не может тождественно обращаться в нуль на
  интервале. Отсюда следует строгая вложенность кругов при $t_2>t_1>0$.
  #ed-note[
    Постановка с невещественным спектральным параметром и вложенность
    окружностей Вейля согласованы с § 7.4, Notes, с. 569, формулой (7.4.68):
    #cite(<Simon2015d>, form: "full"). Формула радиуса здесь получена прямым
    вычислением матрицы $H(t)$ и ее определителя.
  ]

] <hint:sturm-liouville-weyl-circle-nesting>

#hint[@pr:sturm-liouville-limit-point-circle-self-adjointness][Пусть имеет место
  случай предельной окружности. Для всех $z in S_infinity$ справедливо
  неравенство из указания @hint:sturm-liouville-weyl-circle-nesting к задаче
  @pr:sturm-liouville-weyl-circle-nesting в), показывающее, что
  $x_z in L_2 (0,infinity)$. Отсюда следует, что оператор $A$ имеет числа
  дефекта $(1,1)$. В случае предельной точки результат задачи
  @pr:sturm-liouville-weyl-circle-nesting в) показывает, что
  $x_1 in.not L_2 (0,infinity)$. Поэтому есть единственное решение $x_z$,
  $z=z_infinity$ уравнения $A x=lambda x$, лежащее в $L_2 (0,infinity)$. Оно не
  может удовлетворять самосопряженному граничному условию в нуле ввиду
  монотонности функции $f_(z_infinity)$. Значит, в этом случае оператор имеет
  нулевые числа дефекта.
] <hint:sturm-liouville-limit-point-circle-self-adjointness>
