#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/hints-gibbs.typ": gibbs-limit-set

==== Ряды Фурье <ss:hints-fourier-series>

#hint[@pr:fourier-coefficients-parity-reality][а) $c_n=c_(-n)$; б)
  $c_n=-c_(-n)$; в) $c_n=overline(c)_(-n)$.
] <hint:fourier-coefficients-parity-reality>

#hint[@pr:piecewise-smooth-fourier-coefficient-decay][Ответ: $l=k+1$.
  Представьте $f$ в виде суммы $(k+1)$-гладкой функции и линейной комбинации
  модельных функций (для $k=0$ — функций вида $abs(t-a)$).
] <hint:piecewise-smooth-fourier-coefficient-decay>

#hint[@pr:smooth-fourier-image-decay-bounds][Достаточно разобрать случай $k=0$.
  Первое утверждение выводится из включения $C[T] subset L_2 (T,dif t)$; второе
  — из равномерной сходимости ряда Фурье.
] <hint:smooth-fourier-image-decay-bounds>

#hint[@pr:periodic-sobolev-fourier-coefficients][Ответ:
  $sum_(n in ZZ) n^(2 k) abs(c_n)^2<infinity$.
] <hint:periodic-sobolev-fourier-coefficients>

#hint[@pr:fourier-coefficients-rational-shift-symmetry][а) $c_(2 k+1)=0$,
  $k in ZZ$;

  б) при $lambda=e^(2 pi i m/k)$, $m in ZZ$, $c_n=0$, если
  $n equiv.not m (mod k)$.
] <hint:fourier-coefficients-rational-shift-symmetry>

#hint[@pr:circle-power-map-dual-exact-sequence][$0 arrow.r ZZ arrow.r^i ZZ
  arrow.r^p "Ц"_n arrow.r 0$, где $i$ — умножение на $n$, $p$ — переход к
  вычетам.
] <hint:circle-power-map-dual-exact-sequence>

#hint[@pr:quarter-interval-fourier-symmetric-extension][Так, чтобы продолженная
  функция обладала свойствами $f(t+1/2)=f(-t)=-f(t)$ (см. задачи
  @pr:fourier-coefficients-parity-reality а) и
  @pr:fourier-coefficients-rational-shift-symmetry а)). Для этого нужно положить

  $
    f(t)=cases(
      f(1/2-t) quad & "на" [1/4,1/2],
      -f(t-1/2) quad & "на" [1/2,3/4],
      -f(1-t) quad & "на" [3/4,1]
    ).
  $
] <hint:quarter-interval-fourier-symmetric-extension>

#source(357)

#hint[@pr:steklov-average-fourier-coefficients][$c_n (h)=c_n dot (sin 2 pi h
  n)/(2 pi h n)$
  при $n!=0$; $c_0 (h)=c_0$.
] <hint:steklov-average-fourier-coefficients>

#hint[@pr:polynomial-periodic-fourier-sequence-characterization][а) ${c_n}$ —
  финитная последовательность;

  б) $c_n=P(1/n)$ при $n!=0$, где $P$ — некоторый многочлен;

  в) $c_n=(-1)^n P(1/n)$ при $n!=0$, где $P$ — многочлен.
] <hint:polynomial-periodic-fourier-sequence-characterization>

#hint[@pr:positive-definite-circle-function-fourier-criterion][Для
  доказательства необходимости выведите из положительной определенности
  $f in C(T)$ неравенство
  $integral_T integral_T f(s-t)phi(s)overline(phi(t))dif s dif t>=0$ для любой
  функции $phi in C(T)$. Примените это неравенство к $phi(t)=e^(2 pi i n t)$.
  Для доказательства достаточности воспользуйтесь тем, что $f$ является пределом
  в $C(T)$ _чезаровских средних_ $C_n=1/n sum_(k=1)^n S_k$, где
  $S_k=sum_(j=-k)^k c_j e^(2 pi i j t)$.
] <hint:positive-definite-circle-function-fourier-criterion>

#hint[@pr:positive-definite-sequence-inequalities][См. указание
  @hint:positive-definite-function-basic-inequalities к задаче
  @pr:positive-definite-function-basic-inequalities.
] <hint:positive-definite-sequence-inequalities>

#hint[@pr:positive-definite-sequence-representing-measure][Рассмотрите линейный
  функционал $F$ на пространстве тригонометрических полиномов, принимающий на
  $e^(2 pi i n t)$ значение $c_n$. Докажите, что этот функционал положителен на
  полиномах вида $P(t)=abs(Q(t))^2$, где $Q$ — также полином, и что всякий
  положительный тригонометрический полином представляется в таком виде.
  (Воспользуйтесь принципом симметрии, согласно которому корни полинома $P(z)$,
  принимающего вещественные значения на окружности $abs(z)=1$, симметричны
  относительно этой окружности: вместе с корнем $lambda$ есть и корень
  $overline(lambda)^(-1)$.) Вывести отсюда, что $F$ имеет непрерывное
  продолжение на пространство $C(T)$ и, следовательно, представляется некоторой
  мерой $mu$.
] <hint:positive-definite-sequence-representing-measure>

#hint[@pr:unitary-matrix-coefficients-positive-definite][$sum_(n,m) c_(n-m)
  z^n overline(z)^(-m)=norm(sum_n z_n U^n xi)^2$.
] <hint:unitary-matrix-coefficients-positive-definite>

#hint[@pr:cyclic-unitary-spectral-measure-model][Искомый изоморфизм $V$
  переводит вектор $U^n xi in H$ в функцию $e^(2 pi i n t)$ в $L_2 (T,mu)$.
] <hint:cyclic-unitary-spectral-measure-model>

#hint[@pr:fourier-partial-sum-graph-limit-gibbs][Если $f$ — гладкая функция, то
  $S_n arrow.r.double f$ и предельное множество совпадает с графиком $f$. Всякая
  кусочно-дифференцируемая функция $f$ представляется в виде суммы гладкой
  функции и конечной линейной комбинации модельных функций вида $f(t)={t-a}$
  ($a in [0,1)$). Исследование в модельном случае сводится к изучению суммы
  $S_n=sum_(k=1)^n (sin 2 pi k t)/(pi k)$, сходящейся к $1/2-{t}$ при
  $t in RR/ZZ$. Имеем

  $
    S_n (epsilon_n)=2 sum_(k=1)^n integral_0^(epsilon_n) cos 2 pi k t dif t
    =integral_0^(epsilon_n) (sin ((2 n+1)pi t))/(sin pi t)dif t-epsilon_n \
    =integral_0^(epsilon_n) (sin ((2 n+1)pi t))/(pi t)dif t+O(epsilon_n)
    =1/pi integral_0^((2 n+1)pi epsilon_n) (sin tau)/tau dif tau+O(epsilon_n).
  $

  Таким образом, предельное множество содержит, кроме графика функции
  $f(t)=1/2-{t}$, вертикальный отрезок $t=0$ длины $2 A$,
  #source(358)
  где

  $
    A=sup_a 1/pi integral_0^a (sin tau)/tau dif tau
    =1/pi integral_0^pi (sin tau)/tau dif tau approx 0.589489872
  $

  (см. @fig:gibbs-limit-set).

  #figure(gibbs-limit-set(), caption: []) <fig:gibbs-limit-set>

  Ответ: предельное множество содержит график функции $f$ и вертикальные отрезки
  в точках $t_k$ разрыва $f$. Длина отрезка в $2 A approx 1.178979744$ раз
  больше величины скачка $f$ в $t_k$, а центр отрезка совпадает с точкой
  $(t_k,(f(t_k-0)+f(t_k+0))/2)$. Этот факт получил название _явления
  Гиббса_#idx("Явление Гиббса").
] <hint:fourier-partial-sum-graph-limit-gibbs>

#hint[@pr:torus-distribution-fourier-uniqueness][Воспользуйтесь тем, что
  тригонометрические полиномы образуют множество, плотное в $cal(E)(T)$ (задача
  @pr:trigonometric-polynomials-torus-distribution-density).
] <hint:torus-distribution-fourier-uniqueness>

#hint[@pr:positive-definite-torus-distribution-fourier-criterion][$c_n>=0$ для
  всех $n in ZZ$.
] <hint:positive-definite-torus-distribution-fourier-criterion>

#hint[@pr:irrational-circle-rotation-ergodicity][Пусть ${c_k}$ — коэффициенты
  Фурье характеристической функции множества $X subset T$:
  $c_k=integral_X e^(-2 pi i k t)dif t$.

  Если $X=X+alpha$, то

  $
    c_k=integral_(X+alpha) e^(-2 pi i k t)dif t
    =integral_X e^(-2 pi i k(t+alpha))dif t=c_k e^(-2 pi i k alpha).
  $

  Для иррациональных $alpha$ равенство $e^(-2 pi i k alpha)=1$ возможно, если
  только $k=0$. Таким образом, характеристическая функция $X$ почти всюду
  постоянна.
] <hint:irrational-circle-rotation-ergodicity>

#hint[@pr:periodic-heat-equation-fourier-solution][Обозначим $alpha(t, x)$
  обобщенное решение уравнения с начальными условиями $alpha(0, x)=delta(x)$.
  Докажите, что искомое решение с начальными условиями $u(0,x)=v(x)$ имеет вид

  $ u(t,x)=integral_T v(x-y)alpha(t, y)dif y. $
  #source(359)
  Для вычисления $alpha(t, x)$ представьте эту функцию рядом Фурье по $x$:

  $ alpha(t, x)=sum_(k in ZZ) c_k (t)e^(2 pi i k x). $

  Тогда уравнение принимает вид $c'_k (t)=-k^2 c_k (t)$ с условием $c_k (0)=1$.
  Соответственно $c_k (t)=e^(-k^2 t)$. Для фиксированного $t$ функция

  $ alpha(t, x)=sum_(k in ZZ) e^(-k^2 t+2 pi i k x) $

  не может быть выражена в терминах элементарных функций от $x$. В то же время
  она просто выражается через _тэта-функцию Вейерштрасса_

  $ theta(z, q)=sum_(n in ZZ) q^(n^2)(-1)^n e^(2 pi i n z). $

  Именно, $alpha(t, x)=theta(x+1/2, e^(-t))$.

] <hint:periodic-heat-equation-fourier-solution>
