#import "main-defs.typ": *
#import "statements.typ": *

==== Пространства гладких функций <ss:hints-smooth-function-spaces>

#hint[@pr:finite-sequence-test-function-topology][а) Неметризуемость следует из
  того, что для любой числовой нефинитной последовательности ${lambda_n}$
  последовательность ${lambda_n e_n}$ не стремится к нулю в $cal(D)(NN)$.
  #source(342)
  б) Последовательность ${x_k^((n))}$ сходится к ${x_k}$ при
  $n arrow.r infinity$, если и только если: 1) существует такое $N$, что
  $x_k^((n))=0$ при $k>N$ и всех $n$; 2) $x_k^((n)) arrow.r x_k$ при
  $k=1,2,dots,N$.

  в) Пусть $x_k$ — последовательность точек в $Omega$, не имеющая предельной
  точки внутри $Omega$; ${U_k}$ — набор попарно непересекающихся окрестностей
  точек $x_k$, $phi_k$ — ненулевая функция с носителем в $U_k$. Искомое
  отображение $cal(D)(NN)$ в $cal(D)(Omega)$ можно задать формулой
  $ {c_k} arrow.r sum_(k=1)^infinity c_k phi_k. $
] <hint:finite-sequence-test-function-topology>

#hint[@pr:test-function-linear-map-continuity-equivalences][Импликация а)
  $arrow.r.double$ б) очевидна; б) $arrow.r.double$ в), так как сходящаяся к
  нулю последовательность $phi_n$ стремится к нулю по всем полунормам; в)
  $arrow.r.double$ г), так как $cal(D)_K (Omega)$ метризуемо; г)
  $arrow.r.double$ а) по определению топологии в $cal(D)(Omega)$.
] <hint:test-function-linear-map-continuity-equivalences>

#hint[@pr:fixed-support-test-functions-closed][$cal(D)_K (Omega)$ является
  пересечением семейства замкнутых множеств
  $T_x={phi in cal(D)(Omega):phi(x)=0}$, где $x$ пробегает $Omega without K$.
] <hint:fixed-support-test-functions-closed>

#hint[@pr:smooth-partition-of-unity][Сначала постройте конечный набор функций
  ${psi_i}$ ($1<=i<=N$), для которого $op("supp") psi_i subset U_i$ и
  $psi=sum_(i=1)^N psi_i>=delta>0$ на $K$. Пусть теперь $f in cal(E)(RR)$
  такова, что $f(x)=0$ при $x<delta/2$ и $f(x)=1/x$ при $x>=delta$. Тогда
  $phi_i=psi_i dot f(psi(x))$ — искомый набор.
] <hint:smooth-partition-of-unity>

#hint[@pr:test-functions-dense-in-smooth-functions][Воспользуйтесь результатами
  задачи @pr:smooth-partition-of-unity.
] <hint:test-functions-dense-in-smooth-functions>

#hint[@pr:closed-set-smooth-zero-locus][
  Покройте $Omega=RR^n without K$ счетным семейством шаров $B_j$ с замыканиями в
  $Omega$. Выберите неотрицательные $psi_j in cal(D)(Omega)$, положительные на
  $B_j$, и положите
  $
    c_j=2^(-j)/(1+max_(abs(alpha)<=j)norm(partial^alpha psi_j)_infinity),
    quad f=sum_(j=1)^infinity c_j psi_j.
  $
  При каждом фиксированном порядке производные этого ряда сходятся равномерно:
  хвост мажорируется рядом $sum_j 2^(-j)$. Следовательно, $f in cal(E)(RR^n)$,
  причем $f=0$ на $K$ и $f>0$ вне $K$.#ed-note[
    Оценка только значений функции через $exp(-1/d(x,K))$ не контролирует ее
    производные. Использован сходящийся со всеми производными ряд гладких
    функций. Ср. построение гладких срезающих функций в теореме 8.18, с.245:
    #cite(<Folland1999>, form: "full").
  ]
] <hint:closed-set-smooth-zero-locus>

#hint[@pr:test-function-arbitrary-derivative-jet][Существует.
] <hint:test-function-arbitrary-derivative-jet>

#hint[@pr:smooth-space-differentiation-coordinate-continuity][В случае
  $cal(D)(RR^n)$ проверьте, что $phi_k arrow.r 0$ влечет
  $x_i dot phi_k arrow.r 0$ и $(partial phi_k)/(partial x_i) arrow.r 0$; в
  случае $S(RR^n)$, $cal(E)(RR^n)$ дайте оценку соответствующих полунорм.
] <hint:smooth-space-differentiation-coordinate-continuity>

#hint[@pr:test-smooth-function-product-continuity][а) да, б) нет, в) да.
] <hint:test-smooth-function-product-continuity>

#hint[@pr:bounded-smooth-function-multipliers][а) да, б) нет, в) да, г) да, д)
  да, е) да.
] <hint:bounded-smooth-function-multipliers>

#hint[@pr:schwartz-zak-transform-quasiperiodicity][Воспользуйтесь тем, что ряд
  $sum_(k in ZZ) k^m f^((n))(x+k)$ сходится абсолютно и равномерно на отрезке
  $[0,1]$, если $f in S(RR)$, $m,n in NN$.
] <hint:schwartz-zak-transform-quasiperiodicity>

#hint[@pr:smooth-torus-tensor-products][Пусть $p_k,q_k,r_k$ — нормы пространств
  $C^k (T^m)$, $C^k (T^n)$ и $C^k (T^(m+n))$ соответственно. Обозначим
  инъективную тензорную норму через $epsilon_k=p_k times.o q_k$, а проективную
  через $pi_k=p_k hat(times.o) q_k$. Функционалы вычисления производных в точках
  дают $r_(k) (u)<=C_k epsilon_(k) (u)<=C_k pi_(k) (u)$.

  Положим $d=m+n$. Для коэффициентов Фурье $c_gamma$ функции $f$ имеем
  $
    pi_(k) (f) <= C_k sum_(gamma in ZZ^d)abs(c_gamma)(1+abs(gamma))^(2k)
    <= C_(k,s)(sum_(gamma in ZZ^d)
      (1+abs(gamma))^(2s)abs(c_gamma)^2)^(1/2)
    <= C'_(k,s)r_(s) (f),
  $
  где $s>d/2+2k$. Первое неравенство следует из тензорного разложения экспонент,
  второе — из неравенства Коши — Буняковского и сходимости
  $sum_(gamma) (1+abs(gamma))^(-2(s-2k))$, последнее — из равенства Парсеваля
  для производных порядка не выше $s$. Та же оценка хвостов показывает, что ряд
  Фурье сходится к $f$ по каждой проективной норме $pi_k$.
  #source(343)
  Следовательно, системы норм $\{epsilon_k\}$, $\{r_k\}$ и $\{pi_k\}$ задают
  одну топологию. Плотность тригонометрических многочленов дает требуемые
  отождествления пополнений.#ed-note[
    Эквивалентность отдельных норм с одинаковым индексом заменена
    эквивалентностью систем норм с переходом от $k$ к $s$. Равенство Парсеваля и
    полнота экспонент изложены в теореме 8.20, с.248: #cite(
      <Folland1999>,
      form: "full",
    ). Взвешенная оценка приведена здесь самостоятельно.
  ]
] <hint:smooth-torus-tensor-products>

#hint[@pr:smooth-directional-difference-quotient-limit][а) Нужно проверить, что
  при $t in [-1,1]$ все функции обращаются в нуль вне некоторого компакта $K$,
  не зависящего от $t$, и что $f_t^((l))$ стремится равномерно на $K$ к
  $(partial_y f)^((l))$, где $l$ — любой мультииндекс, а $partial_y$ означает
  частную производную по направлению $y$. Воспользуйтесь теоремой о конечном
  приращении.

  б) Нужно проверить, что на любом компакте $K subset RR^n$ функции $f_t^((l))$
  стремятся равномерно из $K$ к $partial_y f^((l))$.
] <hint:smooth-directional-difference-quotient-limit>

#hint[@pr:iterated-average-smooth-transition][Свойство а) очевидно; свойство б)
  доказывается по индукции, используя тождество
  $f_n^((r)) (x)=1/delta_n integral_0^(delta_n) f_(n-1)^((r)) (x-t) dif t$,
  верное при $r<n$. Сходимость последовательности $f_n^((r))$ при
  $n arrow.r infinity$ и фиксированной $r$ следует из оценки
  $ abs(f_n^((r))-f_(n-1)^((r)))<=2^(r+1)/(delta_1 dots delta_(r+1)) delta_n, $
  верной при $n>=r+2$.
] <hint:iterated-average-smooth-transition>

#hint[@pr:countably-normed-heine-borel-property][а) Пусть $M$ — ограниченное
  множество в $L$. Тогда оно предкомпактно по любой полунорме $p_k$, так как
  ограничено по полунорме $p_(k+1)$. Введем, как обычно, расстояние на $L$ по
  формуле $d(f,g)=sum_(k=1)^infinity 2^(-k) min{1,p_k (f-g)}$. Если ${f_i}$ —
  конечная $2^(-l)$-сеть для $M$ по полунорме $sum_(k=1)^l p_k$, то она будет
  $2^(1-l)$-сетью в смысле расстояния $d$.

  б) Разберем случай $L=cal(D)_K (Omega)$, $Omega subset RR^n$. По теореме
  Асколи — Арцела, множество $M$, ограниченное по норме
  $p_(k+1) (f)=max_(x in K,abs(l)<=k+1) abs(partial^l f(x))$, будет
  предкомпактным по норме $p_k$, так как все функции вида $partial^l f$,
  $abs(l)<=k$ будут равномерно ограничены и равностепенно непрерывны в $Omega$.
] <hint:countably-normed-heine-borel-property>

#hint[@pr:vector-valued-smooth-function-space-completeness][Если $phi_n$ —
  фундаментальная последовательность в $cal(E)(Omega,L)$, то для любого
  мультииндекса $l$ и любой точки $x in Omega$ последовательность
  $partial^l phi_n (x)$ фундаментальна в $L$. Пусть
  $psi_l (x)=lim_(n arrow.r infinity) partial^l phi_n (x)$. Докажите, что
  $psi_l (x)=partial^l psi_0 (x)$ и что $phi_n arrow.r psi_0$ в топологии
  $cal(E)(Omega,L)$. Метризуемость $cal(E)(Omega,L)$ вытекает из наличия
  счетного набора норм. (Если ${rho_j}$ — счетный набор норм, задающий топологию
  в $L$, а ${K_i}$ — счетный набор компактов, исчерпывающий область $Omega$, то
  полунормы $p_(K_i j)$ определяют топологию в $cal(E)(Omega,L)$.)
] <hint:vector-valued-smooth-function-space-completeness>

#hint[@pr:smooth-functions-exponential-law][Рассмотрите отображение
  $cal(E)(Omega_1 times Omega_2)$ в $cal(E)(Omega_1,cal(E)(Omega_2))$ по формуле
  $phi arrow.r f$, где $(f(x))(y)=phi(x, y)$. Воспользуйтесь результатами задачи
  @pr:smooth-directional-difference-quotient-limit.
] <hint:smooth-functions-exponential-law>

#hint[@pr:smooth-function-tensor-products][Используйте результат задачи
  @pr:smooth-torus-tensor-products и тот факт, что периодические функции плотны
  в $cal(E)(RR^n)$.
] <hint:smooth-function-tensor-products>

#source(344)

#hint[@pr:test-schwartz-space-tensor-analogues][Для случая $S(RR^n)$ полезен
  результат задачи @pr:countably-normed-heine-borel-property.
] <hint:test-schwartz-space-tensor-analogues>
