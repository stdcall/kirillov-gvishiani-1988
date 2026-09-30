#import "main-defs.typ": *
#import "statements.typ": *

#heading(level: 4)[
  Функции ограниченных самосопряженных операторов
] <ss:theory-normal-operator-functional-calculus>

Пусть $A$ — ограниченный самосопряженный оператор #source(156)в гильбертовом
пространстве $H$ над полем $K=RR$ или $CC$. Задача этого пункта — определить
$f(A)$ для любой борелевской функции $f$ на отрезке $[-a,a]$, где $a=norm(A)$.

Напомним, что _спектром оператора_ $A$ называется множество
$sigma(A) subset CC$, состоящее из тех $lambda in CC$, для которых оператор
$A-lambda dot 1$ необратим. Дополнение к $sigma(A)$ в $CC$ называется
_резольвентным множеством_ и обозначается $rho(A)$. Таким образом, резольвента
оператора $A$, $r_(lambda)(A)=(A-lambda 1)^(-1)$, определена при
$lambda in rho(A)$.
#idx("Спектр оператора")
#idx("Множество", "резольвентное")
#notation(
  $sigma(A)$,
  references: [@ss:theory-normal-operator-functional-calculus],
  sort: "061",
)
#notation(
  $rho(A)$,
  references: [@ss:theory-normal-operator-functional-calculus],
  sort: "060",
)

#theorem[
  Спектр ограниченного оператора является непустым компактным подмножеством в
  $CC$.
] <th:bounded-operator-spectrum-compact-nonempty>

#proof[
  Если $abs(lambda)>norm(A)$, то оператор $A-lambda dot 1$ имеет обратный
  оператор $r_(lambda)(A)$, задаваемый рядом:

  $
    r_(lambda)(A)=-sum_(k=0)^infinity lambda^(-k-1)A^k,
  $ <eq:resolvent-infinity-expansion>

  Поэтому $sigma(A)$ содержится в круге $abs(lambda)<=norm(A)$. Далее, если в
  некоторой точке $lambda_0 in CC$ существует резольвента $r_(lambda_0)(A)=B$,
  то в круге радиуса $norm(B)^(-1)$ сходится ряд

  $
    r_(lambda)(A)=sum_(k=0)^infinity (lambda-lambda_0)^k B^(k+1).
  $ <eq:resolvent-local-expansion>

  Это показывает, что резольвентное множество $rho(A)$ открыто и, следовательно,
  $sigma(A)$ — компакт. Попутно мы установили, что норма резольвенты допускает
  следующую оценку снизу:

  $
    norm(r_(lambda)(A))>=d(lambda,sigma(A))^(-1)
    =(min_(mu in sigma(A))abs(lambda-mu))^(-1).
  $ <eq:resolvent-spectrum-distance-lower-bound>

  Остается доказать непустоту спектра. Предположим противное, т. е.
  $sigma(A)=emptyset$. Тогда резольвента $r_(lambda)(A)$ является целой
  аналитической функцией от $lambda in CC$. Формула
  @eq:resolvent-infinity-expansion показывает, что
  $norm(r_(lambda)(A))arrow.r 0$ при $lambda arrow.r infinity$. Значит,
  $norm(r_(lambda)(A))$ ограничена на всей комплексной плоскости. Для любых
  векторов $x$ и $y$ из $H$ величина $(r_(lambda)(A)x,y)$ является целой
  аналитической функцией от $lambda$, стремящейся к нулю на бесконечности. Такая
  функция по теореме Лиувилля тождественно равна нулю. Значит,
  $r_(lambda)(A)=0$, что невозможно. Теорема доказана.
]

Изучим теперь, как меняется спектр $A$, когда над оператором $A$ совершают те
или иные преобразования.

#theorem[
  + Пусть $r(x)$ — рациональная функция, не имеющая полюсов на спектре оператора
    $A$. Тогда #source(157)оператор $r(A)$ определен и его спектр описывается
    формулой

    $
      sigma(r(A))=r(sigma(A))={r(lambda):lambda in sigma(A)}.
    $ <eq:rational-spectral-mapping>

  + Спектр сопряженного оператора $A^*$ связан со спектром $A$ соотношением

    $
      sigma(A^*)=overline(sigma(A))={overline(lambda):lambda in sigma(A)}.
    $ <eq:adjoint-spectrum-conjugation>
] <th:rational-spectral-mapping-adjoint-spectrum>

#proof[
  Пусть $r(x)=p(x)q(x)^(-1)$, где $p$ и $q$ — взаимно простые многочлены. Если
  $alpha_1,dots,alpha_m$ — корни $p(x)$, $beta_1,dots,beta_n$ — корни $q(x)$
  (учитывая кратности), то
  $r(x)=c product_(i=1)^m (x-alpha_i)product_(j=1)^n (x-beta_j)^(-1)$. Отсюда
  $r(A)=c product_(i=1)^m (A-alpha_i 1)product_(j=1)^n r_(beta_j)(A)$. Пусть
  $lambda in sigma(A)$ и $mu=r(lambda)$. Поскольку рациональная функция
  $r(x)-mu$ обращается в нуль при $x=lambda$, ее числитель имеет $lambda$ корнем
  и, следовательно, содержит множитель $x-lambda$. Поэтому оператор
  $r(A)-mu dot 1$ содержит множителем необратимый оператор $A-lambda dot 1$ и,
  следовательно, сам необратим. Значит, $mu in sigma(r(A))$. Мы доказали
  включение $r(sigma(A))subset sigma(r(A))$.

  Обратно, пусть $mu in sigma(r(A))$. Представим рациональную функцию $r(x)-mu$
  в виде произведения
  $c product_(i=1)^m (x-alpha_i)product_(j=1)^n (x-beta_j)^(-1)$. Если бы все
  $alpha_i$ принадлежали $rho(A)$, то оператор $r(A)-mu dot 1$ имел бы обратный
  оператор
  $c^(-1)product_(i=1)^m r_(alpha_i)(A)product_(j=1)^n (A-beta_j dot 1)$, что
  неверно. Значит, одно из чисел $alpha_i$ принадлежит спектру $A$. Но тогда
  $r(alpha_i)-mu=0$, т. е. $mu in r(sigma(A))$. Утверждение 1) доказано.
  Утверждение 2) вытекает из равенства $(A^(-1))^*=(A^*)^(-1)$, которое влечет
  соотношение

  $ r_(lambda)(A^*)=r_(overline(lambda))(A)^*. $
]

#theorem[
  Пусть $A$ — самосопряженный оператор. Тогда

  + $A$ имеет спектр на отрезке $[-norm(A),norm(A)]$;
  + для любой рациональной функции $r$ с полюсами вне $sigma(A)$ справедливо
    равенство

    $
      norm(r(A))=max_(lambda in sigma(A))abs(r(lambda)).
    $ <eq:self-adjoint-rational-functional-calculus-norm>
] <th:self-adjoint-spectrum-rational-functional-calculus>

#proof[
  #source(158)Пусть $lambda$ — невещественное число. Покажем, что существует
  $r_(lambda)(A)$. Оператор $A-lambda 1$ не имеет ядра, так как если $x$ —
  единичный вектор из $ker(A-lambda 1)$, то
  $lambda=(A x,x)=(x,A x)=overline(lambda)$, что неверно. Далее, образ оператора
  $A-lambda 1$ плотен в $H$, так как
  $im(A-lambda 1)^perp=ker(A-lambda 1)^*=ker(A-overline(lambda)1)=0$. Покажем,
  что оператор $(A-lambda 1)^(-1)$, определенный на $im(A-lambda 1)$, ограничен.
  Пусть $lambda=alpha+i beta$, $alpha,beta in RR$. Тогда

  $
    norm((A-lambda 1)x)^2
    &=((A-alpha 1)x-i beta x,(A-alpha 1)x-i beta x) \
    &=norm((A-alpha 1)x)^2+beta^2 norm(x)^2>=beta^2 norm(x)^2.
  $

  Отсюда $norm((A-lambda 1)^(-1))<=abs(beta)^(-1)$ и $r_(lambda)(A)$ получается
  продолжением по непрерывности. (На самом деле, как можно проверить, из
  полученной оценки следует, что $im(A-lambda 1)=H$.)

  Итак, $sigma(A)$ лежит на вещественной оси. Утверждение 1) следует теперь из
  того, что $sigma(A)$ лежит в круге радиуса $norm(A)$ (см. доказательство
  теоремы~@th:bounded-operator-spectrum-compact-nonempty).

  Доказательство утверждения 2) начнем со случая $r(x)=x$. Тогда 2) сводится к
  равенству

  $
    norm(A)=sup{abs(lambda):lambda in sigma(A)}.
  $ <eq:self-adjoint-spectral-radius-norm>
]

Величину, стоящую в правой части, называют _спектральным радиусом_ оператора $A$
и обозначают $r(A)$. Имеет место
#idx("Спектральный радиус")
#notation(
  $r(A)$,
  references: [@ss:theory-normal-operator-functional-calculus],
  sort: "055",
)

#lemma(numbered: false)[
  Для любого ограниченного оператора $A$ справедливо соотношение

  $
    r(A)=lim_(n arrow.r infinity)norm(A^n)^(1/n);
  $ <eq:spectral-radius-power-limit>

  если $A$ — самосопряженный оператор, то $r(A)=norm(A)$.
] <lem:spectral-radius-power-limit>

#proof[
  Существование предела в правой части равенства @eq:spectral-radius-power-limit
  вытекает из общих свойств полуаддитивных последовательностей (см.
  задачу~@pr:subadditive-sequence-fekete-limit). Далее, разложение резольвенты в
  ряд Лорана в окрестности бесконечно удаленной точки дается формулой
  @eq:resolvent-infinity-expansion. По формуле Адамара радиус сходимости этого
  ряда (равный, очевидно, $r(A)$) связан с коэффициентами искомым соотношением
  @eq:spectral-radius-power-limit. (Мы применяем здесь формулу Адамара к
  операторной аналитической функции. Легко проверить, что обычный вывод этой
  формулы полностью переносится на этот случай.) Для любого оператора $A$
  справедливо равенство

  $
    norm(A^* A)=sup_(norm(x)=norm(y)=1)abs((A^* A x,y))
    =sup_(x,y!=0)frac(abs((A x,A y)), norm(x)norm(y))=norm(A)^2.
  $

  #source(159)В частности, для самосопряженного $A$ $norm(A^2)=norm(A)^2$.
  Поэтому $norm(A^(2^n))=norm(A)^(2^n)$ и, следовательно,
  $lim_(n arrow.r infinity)norm(A^n)^(1/n)=norm(A)$. Лемма доказана.
]

Вернемся к доказательству утверждения 2) в общем случае. Пусть $B=r(A)$. Тогда
$B^*=overline(r)(A)$, где через $overline(r)$ мы обозначаем функцию
$overline(r)(z)=overline(r(overline(z)))$. Легко проверить, что $overline(r)$ —
рациональная функция, коэффициенты которой комплексно сопряжены коэффициентам
$r$. Применяя уже доказанное утверждение к самосопряженному оператору
$B^* B=abs(r)^2(A)$, получаем

$
  norm(B)^2=norm(B^* B)=r(B^* B)=sup_(mu in sigma(B^* B))(mu)
  =sup_(lambda in sigma(A))abs(r(lambda))^2
$

(последнее — в силу утверждения 1) теоремы
@th:rational-spectral-mapping-adjoint-spectrum). Теорема доказана.

#corollary(numbered: false)[
  Для любого самосопряженного оператора $A$ в гильбертовом пространстве $H$
  существует единственный непрерывный гомоморфизм $phi$ алгебры $C[-a,a]$, где
  $a=norm(A)$, в алгебру ограниченных операторов в $H$, обладающий свойствами:

  + $phi(1)=1$ (здесь слева 1 означает функцию, тождественно равную 1, а справа
    — единичный оператор в $H$);
  + $phi(overline(f))=phi(f)^*$;
  + $phi(x)=A$;
  + $norm(phi(f))<=norm(f)_(C[-a,a])$.

  Этот гомоморфизм обладает также свойством:

  #enum(start: 5)[
    если $A B=B A$, то $phi(f)B=B phi(f)$.
  ]
] <cor:self-adjoint-continuous-functional-calculus>

(Другой вывод этого утверждения см. в
задачах~@pr:positive-polynomial-self-adjoint-functional-calculus
и~@pr:polynomial-functional-calculus-sup-norm-continuity.)

Теперь мы распространим гомоморфизм $phi$ на алгебру $B[-a,a]$ ограниченных
борелевских функций на отрезке $[-a,a]$.

#theorem[
  Пусть $A$ — ограниченный самосопряженный оператор в гильбертовом пространстве
  $H$. Существует единственный гомоморфизм $phi$ алгебры $B[-a,a]$ ограниченных
  борелевских функций на отрезке $[-a,a]$, где $a=norm(A)$, обладающий
  свойствами:

  + $phi(1)=1$;
  + $phi(x)=A$;
  + если $abs(f_(n)(x))<=C$ и $f_(n)(t)arrow.r f(t)$ в каждой точке
    $t in [-a,a]$, то $phi(f_n)arrow.r phi(f)$.

  Гомоморфизм обладает также свойствами:

  #enum(start: 4)[
    $phi(overline(f))=phi(f)^*$;
  ][
    $norm(phi(f))<=sup abs(f(t))$, $t in [-a,a]$;
  ][
    #source(160)$phi(f)B=B phi(f)$ для любого оператора $B$, перестановочного с
    $A$.
  ]
] <th:self-adjoint-bounded-borel-functional-calculus>

#proof[
  На множестве $C[-a,a]$ гомоморфизм $phi$ уже определен. Совокупность
  борелевских функций получается из совокупности непрерывных функций поточечными
  предельными переходами; это влечет единственность искомого гомоморфизма $phi$.
  Докажем его существование. Пусть $x,y in H$. Определим линейный функционал
  $F_(x y)$ на $C[-a,a]$ по формуле

  $ F_(x y)(f)=(phi(f)x,y). $ <eq:functional-calculus-matrix-element>

  Поскольку $abs(F_(x y)(f))<=norm(phi(f))norm(x)norm(y)
  <=norm(f)_(C[-a,a])norm(x)norm(y)$, $F_(x y)$ — непрерывный функционал, норма
  которого не превосходит величины $norm(x)norm(y)$. Значит, существует такой
  борелевский заряд $nu_(x y)$ на $[-a,a]$, что

  $
    F_(x y)(f)=integral_(-a)^a f(t) dif nu_(x y)(t),
  $ <eq:functional-calculus-matrix-element-measure>

  причем $upright("Var")_(-a)^a nu_(x y)<=norm(x)norm(y)$. Пусть теперь $f$ —
  ограниченная борелевская функция на отрезке $[-a,a]$. Величина
  $B_(f)(x,y)=integral_(-a)^a f(t) dif nu_(x y)(t)$ линейно зависит от $x$,
  антилинейно — от $y$ и удовлетворяет оценке
  $abs(B_(f)(x,y))<=sup_(t in [-a,a])abs(f(t))norm(x)norm(y)$. Отсюда следует,
  что существует такой ограниченный оператор $phi(f)$, что
  $B_(f)(x,y)=(phi(f)x,y)$, причем $norm(phi(f))<=sup abs(f(t))$, $t in [-a,a]$.
  Пусть $f_(n)(t)arrow.r f(t)$ для $t in [-a,a]$ и $abs(f_n)<=C$ для всех $n$.
  Тогда для любых $x$ и $y$ из $H$ мы имеем

  $
    (phi(f_n)x,y)=integral_(-a)^a f_(n)(t) dif nu_(x y)(t)
    arrow.r integral_(-a)^a f(t) dif nu_(x y)(t)=(phi(f)x,y).
  $

  Таким образом, $phi(f_n)$ слабо сходится к $phi(f)$. Отсюда вытекает, что
  отображение $phi$ — гомоморфизм. В самом деле, равенства

  $
    phi(lambda f+mu g)=lambda phi(f)+mu phi(g), \
    phi(f g)=phi(f)phi(g)
  $

  справедливы, когда $f$ и $g$ принадлежат $C[-a,a]$ и сохраняются при
  поточечных предельных переходах. Это же рассуждение показывает, что $phi$
  обладает свойством 4). Теперь мы в состоянии доказать свойство 3). Пусть
  $f_(n)(t)arrow.r f(t)$ для всех $t in [-a,a]$ и $abs(f_(n)(t))<=C$. Тогда
  #source(161)$abs(f_n-f)^2(t)arrow.r 0$ для всех $t in [-a,a]$. Поэтому
  $phi(abs(f_n-f)^2)arrow.r 0$. Отсюда
  $norm(phi(f_n-f)x)^2=(phi(f_n-f)^* phi(f_n-f)x,x)
  =(phi(abs(f_n-f)^2)x,x)arrow.r 0$. Теорема доказана.
]

_Основной пример._ Пусть $H=L_(2)(X,mu)$, $A$ — оператор умножения на функцию
$a in L_(infinity)(X,mu)$. В этом случае $phi(f)$ — оператор умножения на
функцию $f(a(x))$ (проверьте это, проследив построение $phi(f)$ на этом
примере). Универсальность этого примера выяснится ниже.

Построенное в теореме~@th:self-adjoint-bounded-borel-functional-calculus
функциональное исчисление допускает следующее полезное обобщение.

#theorem[
  Пусть $A_1,dots,A_n$ — попарно перестановочные ограниченные самосопряженные
  операторы в гильбертовом пространстве $H$, $T$ — параллелепипед в $RR^n$,
  определенный условиями $abs(t_i)<=norm(A_i)$ ($i=1,2,dots,n$). Существует
  единственный гомоморфизм $phi$ алгебры $B(T)$ ограниченных борелевских функций
  на $T$ в алгебру ограниченных операторов в $H$, обладающий свойствами:

  + $phi(1)=1$;
  + $phi(t_i)=A_i$;
  + если $abs(f_(k)(t))<=C$ и $f_(k)(t)arrow.r f(t)$ для всех $t in T$, то
    $phi(f_k)arrow.r phi(f)$ в сильной операторной топологии.

  Кроме того, гомоморфизм обладает свойствами:

  #enum(start: 4)[
    $phi(overline(f))=phi(f)^*$;
  ][
    $norm(phi(f))<=sup_(t in T)abs(f(t))$;
  ][
    $phi(f)B=B phi(f)$ для любого оператора $B$, перестановочного с
    $A_1,dots,A_n$.
  ]
] <th:commuting-self-adjoint-borel-functional-calculus>

#proof[
  Пусть $B_(k)(T)$ — подалгебра в $B(T)$, состоящая из функций, зависящих от
  координаты $t_k$. Тогда ограничение $phi$ на $B_(k)(T)$ совпадает с
  гомоморфизмом $phi_(k)$, соответствующим по теореме об оператору $A_k$.
  Обозначим через $B_0(T)$ подалгебру ступенчатых функций на $T$, т. е. функций
  вида $f(t)=sum c_(k_1 dots k_n)chi_(E_1)(t_1)dots chi_(E_n)(t_n)$. Если
  искомый гомоморфизм $phi$ существует, то, согласно сказанному выше на
  ступенчатой функции $f$ он должен задаваться формулой

  $
    phi(f)=sum c_(k_1 dots k_n)phi_(1)(chi_(E_1))dots phi_(n)(chi_(E_n)).
  $ <eq:joint-functional-calculus-simple-functions>

  Отсюда вытекает единственность $phi$ на $B_0(T)$, а следовательно, и на $B(T)$
  в силу свойства 3).

  Докажем его существование. На подалгебре $B_0(T)$ мы определим отображение
  $phi$ формулой @eq:joint-functional-calculus-simple-functions. Поскольку
  $A_1,dots,A_n$ попарно коммутируют, операторы
  $phi_(1)(f_1),phi_(2)(f_2),dots,phi_(n)(f_n)$ также попарно коммутируют
  (#source(
    162,
  )утверждение 6) в теореме @th:self-adjoint-bounded-borel-functional-calculus).
  Поэтому отображение $phi$ является гомоморфизмом. Далее, гомоморфизм $phi$
  переводит положительные функции в положительные операторы, так как если
  $f>=0$, то $f=g^2$ для некоторой вещественной функции $g in B_0(T)$ и, значит,
  $phi(f)=phi(g)^2 ≫ 0$. Это влечет справедливость свойства 5) (см.
  задачу~@pr:polynomial-functional-calculus-sup-norm-continuity). Поэтому
  гомоморфизм $phi$ продолжается на алгебру $C(T)$ непрерывных функций на $T$ и
  обладает свойством 5). Вывод остальной части теоремы проводится так же, как
  вывод теоремы~@th:self-adjoint-bounded-borel-functional-calculus из следствия
  к теореме~@th:self-adjoint-spectrum-rational-functional-calculus.
]

Отметим полезное

#corollary(numbered: false)[
  Пусть $A$ — ограниченный нормальный оператор в гильбертовом пространстве $H$,
  $T$ — квадрат на комплексной плоскости с центром в нуле и стороной
  $2 norm(A)$. Существует единственный гомоморфизм $phi$ алгебры $B(T)$
  ограниченных борелевских функций на $T$ в алгебру операторов в $H$, обладающий
  свойствами:

  + $phi(1)=1$;
  + $phi(x+i y)=A$;
  + $phi(overline(f))=phi(f)^*$;
  + если $abs(f_n)<=C$ и $f_(n)(t)arrow.r f$ для $t in T$, то
    $phi(f_n)arrow.r phi(f)$.

  Этот гомоморфизм обладает также свойствами:

  #enum(start: 5)[
    $norm(phi(f))<=sup_(t in T)abs(f(t))$;
  ][
    $phi(f)B=B phi(f)$ для любого оператора $B$, перестановочного с $A$ и $A^*$.
  ]
] <cor:normal-operator-borel-functional-calculus>

В самом деле, если $A$ — нормальный оператор, то $A=B+i C$, где $B$ и $C$ —
ограниченные самосопряженные операторы, норма которых не превосходит нормы $A$.
Условия 2) и 3) влекут условие 2) $phi(x)=B$, $phi(y)=C$. Теперь утверждение
следствия вытекает из теоремы
@th:commuting-self-adjoint-borel-functional-calculus, примененной к операторам
$B$ и $C$.
