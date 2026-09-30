#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/hints-inequalities.typ": (
  chebyshev-best-approximation, young-geometric-inequality,
)

=== Нормированные пространства <sec:hints-normed-spaces>

==== Основные определения <ss:hints-normed-definitions>

#hint[@pr:holder-sequence-inequality][
  Если одно из чисел $p$ или $q$ равно $infinity$, то искомое неравенство
  очевидно. Рассмотрим случай, когда $p$ и $q$ конечны. Воспользуемся следующим
  вспомогательным результатом: если $a>=0$ и $b>=0$, а $p$ и $q$ — сопряженные
  числа, то $a b<=a^p/p+b^q/q$.
  #source(320)
  Аналитическое доказательство этого неравенства легко получается, если
  вычислить частные производные функции $phi(x, y)=x y-x^p/p-y^q/q$.
  Геометрический смысл неравенства виден на @fig:young-geometric-inequality. Из
  этого же рисунка видно, что при $a=b^(q-1)$ (или $b=a^(p-1)$) неравенство
  превращается в равенство (см. также указание к
  @pr:holder-integral-inequality).

  #figure(
    young-geometric-inequality(),
    caption: [],
  ) <fig:young-geometric-inequality>

  Докажем теперь неравенство Гельдера. Поскольку обе части неравенства однородны
  по $x$ и по $y$, достаточно рассмотреть случай $norm(x)_p=1=norm(y)_q$. (Если
  один из векторов $x$ или $y$ равен 0, то неравенство становится очевидным).
  Положим $a=abs(x_i)$, $b=abs(y_i)$ во вспомогательном неравенстве. Мы получим
  $abs(x_i y_i)<=abs(x_i)^p/p+abs(y_i)^q/q$. Суммируя по $i$ от 1 до $n$,
  получаем
  $ sum_(i=1)^n abs(x_i y_i)<=norm(x)_p^p/p+norm(y)_q^q/q=1. $
] <hint:holder-sequence-inequality>

#hint[@pr:minkowski-sequence-inequality, @pr:sequence-spaces-completeness,
  @pr:continuous-functions-completeness][
  Подробное решение этих задач изложено в книге @bib:Kolmogorov1977. См. также
  указание к @pr:minkowski-integral-inequality.
] <hint:minkowski-sequence-inequality>

#hint[@pr:sequence-spaces-separability][
  Рассмотреть множество финитных последовательностей с рациональными
  коэффициентами.
] <hint:sequence-spaces-separability>

#hint[@pr:bounded-sequences-nonseparability][
  Рассмотреть множество последовательностей с элементами из нулей и единиц. (Ср.
  @pr:nonseparability-disjoint-unit-balls.)
] <hint:bounded-sequences-nonseparability>

#hint[@pr:banach-absolute-series-characterization][
  Чтобы доказать, что последовательность Коши сходится, достаточно показать, что
  сходится какая-либо ее подпоследовательность. Воспользуйтесь «быстро
  сходящейся» подпоследовательностью $\{x_(n_k)\}$, для которой
  $norm(x_(n_k)-x_(n_(k+1)))<=1/2^k$.
] <hint:banach-absolute-series-characterization>

#hint[@pr:nonseparability-disjoint-unit-balls][
  Достаточность условия несепарабельности очевидна. Для доказательства
  необходимости используйте лемму Цорна; достаточно доказать существование
  несчетного множества непересекающихся шаров радиуса $epsilon$, для некоторого
  $epsilon>0$.
] <hint:nonseparability-disjoint-unit-balls>

#hint[@pr:finite-dimensional-best-approximation][
  Воспользоваться компактностью шара в конечномерном пространстве.
] <hint:finite-dimensional-best-approximation>

#hint[@pr:monomial-best-polynomial-approximation][
  Доказать от противного, что если $P_n (x)$ — многочлен степени $n$ со старшим
  коэффициентом 1, то
  $max_([-1,1]) abs(P_n (x))>=max_([-1,1]) abs(T_n (x))=2^(1-n)$, где
  $T_n (x)=2^(1-n) cos(n arccos x)$ (на @fig:chebyshev-best-approximation
  изображен случай $n=4$).

  Если многочлен $P(x)$ имеет старший коэффициент 1 и
  $max_([-1,1]) abs(P(x))<=2^(1-n)$, то из рисунка видно, что графики $T_n (x)$
  и $P(x)$ имеют по крайней мере $n$ общих точек. Но разность $T_n (x)-P(x)$
  есть многочлен степени $n-1$ и потому тождественно равна нулю.

  #figure(
    chebyshev-best-approximation(),
    caption: [],
  ) <fig:chebyshev-best-approximation>
] <hint:monomial-best-polynomial-approximation>

#hint[@pr:riesz-epsilon-perpendicular][
  а) При факторотображении $phi:L arrow.r L/L_0$ открытый единичный шар в $L$
  переходит в открытый единичный шар в $L/L_0$.

  б) Выбрать последовательность $1/2$-перпендикуляров $y_n$ к
  $L(y_1,dots,y_(n-1))$.

  в) Пусть к подпространству $L_0=\{x_0 in L:f(x_0)=0\}$ существует
  нуль-перпендикуляр $x_1$. Это равносильно утверждению
  #source(321)
  $norm(x_1+x_0)>=norm(x_1)$ для всех $x_0 in L_0$. Другими словами, расстояние
  $d(x_1,L_0)$ достигается и равно $norm(x_1)$. Любой вектор $x in.not L_0$
  записывается в виде $x=alpha(x_1+x_0)$, где $alpha in RR without \{0\}$,
  $x_0 in L_0$.

  Имеем

  $
    abs(f(x))/norm(x)=abs(alpha) dot abs(f(x_1))/(abs(alpha) dot
    norm(x_1+x_0))<=abs(f(x_1))/norm(x_1).
  $
  Норма $f$ достигается на векторе $x_1$. Обратное утверждение выводится так же.
] <hint:riesz-epsilon-perpendicular>

#hint[@pr:finite-sequence-space-isometries][
  При $p!=2$ линейные изометрии $l_(p) (n,RR)$ — знаковые перестановки
  координат. Для $p<infinity$ это следует из классификации изометрий $L_p$, а
  для $p=infinity$ — по двойственности с $l_1$. При $p=2$ группа изометрий
  бесконечна; при остальных $p$ она конечна. Поэтому изометрия между двумя
  такими пространствами исключает случай, когда ровно один из показателей
  равен 2.

  Пусть оба показателя отличны от 2. Отражения, то есть изометрии $R$ с
  $op("rank")(I-R)=1$, в группе знаковых перестановок имеют направления $e_i$
  или $e_i plus.minus e_j$. Если $n>2$, осевое отражение коммутирует с $(n-1)^2$
  другими отражениями, а диагональное — с $(n-2)^2+1$ (само отражение в обоих
  подсчетах исключается). Эти числа различны. Сопряжение групп изометрий
  сохраняет поэтому осевые направления. Нормированные векторы $plus.minus e_i$
  переходят в такие же векторы, и расстояние между различными осями $2^(1/p)$
  дает равенство показателей.

  При $n=2$ либо осевые направления сохраняются, либо переходят в диагональные.
  Во втором случае, с точностью до знаков и перестановок, изометрия из $l_p$ в
  $l_q$ имеет вид $T(x,y)=2^(-1/q)(x+y,x-y)$, где $1/infinity=0$. Подстановка
  $(1,1)$ дает $1/p+1/q=1$. При $1<q<infinity$ около $(1,t)$ целевая норма равна
  $1+(q-1)t^2/2+o(t^2)$, а исходная — $1+abs(t)^p/p+o(abs(t)^p)$. Отсюда
  $p=q=2$. При $q=infinity$ целевая норма равна $1+abs(t)$ и $p=1$; при $q=1$
  она локально равна 1 и $p=infinity$. Таким образом, кроме равных показателей
  остается только изометрия $l_(1) (2,RR)$ и $l_(infinity) (2, RR)$.#ed-note[
    В исходном указании пропущены диагональные отражения. Приведенное
    конечномерное доказательство использует классификацию изометрий $L_p$,
    $p<infinity$, из теоремы 3.1, с.461–462: #cite(
      <Lamperti1958>,
      form: "full",
    ). Подсчет отражений и двухмерный аргумент изложены самостоятельно.
  ]
] <hint:finite-sequence-space-isometries>
