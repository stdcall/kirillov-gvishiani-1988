#import "main-defs.typ": *
#import "statements.typ": *

==== Интеграл Фурье <ss:hints-fourier-integral>

#hint[@pr:schwartz-creation-annihilation-hermite-basis][а) После замены
  неизвестной функции $f(x) |-> phi(x)e^(-pi norm(x)^2)$ данные уравнения
  превращаются в систему $(dif phi)/(dif x_k)=0$ ($1<=k<=n$). Отсюда
  $phi(x)="const"$.

  б) Докажите тождество

  $
    e^(-pi norm(x-a)^2)=exp{-pi norm(a)^2/2}
    times sum_(m in ZZ_(>=0)^n) (a/2)^m f_m/(m!),
  $

  где $a in RR^n$, $a^m=a_1^(m_1)dots a_n^(m_n)$, $m! =m_1! dots m_n!$
  (Воспользуйтесь соотношениями
  $f_m=(-1)^(abs(m))e^(pi norm(x)^2)partial^m e^(-2 pi norm(x)^2)$.) Проверьте,
  что ряд в правой части тождества сходится в топологии $S(RR^n)$. Поэтому
  наименьшее замкнутое подпространство $L subset S(RR^n)$, содержащее все
  функции $f_m$ ($m in ZZ_(>=0)^n$), содержит все функции вида
  $phi_a (x)=e^(-pi norm(x-a)^2)=f_0 (x-a)$. Выведите отсюда, что для любой
  функции $phi in S(RR^n)$ функция $phi ast phi_a$ принадлежит $L$. Отсюда
  вытекает, что преобразование Фурье пространства $L$ содержит все функции вида
  $phi f_0$, где $phi in S(RR^n)$. В частности, оно содержит пространство
  $cal(D)(RR^n)$, плотное в $S(RR^n)$.

  в) $N_k f_m=m_k f_m$. (Воспользуйтесь соотношениями
  $A^*_k f_m=f_(m+epsilon_k)$, $A_k f_m=c_(k,m) f_(m-epsilon_k)$, где
  $epsilon_k$ — базисные векторы в $ZZ_(>=0)^n$. Для подсчета констант $c_(k,m)$
  используйте соотношение $A_k A_k^*-A_k^* A_k=4 pi$.)

  г) Каждой функции $f in S(RR^n)$ соответствует последовательность
  $c_m=integral_(RR^n) f(x)overline(psi_m (x))dif x=(f,psi_m)_(L_2 (RR^n))$, где
  $psi_m=f_m/sqrt((4 pi)^(abs(m))m!)$ и $norm(f_0)_2=1$. Оцените значения
  полунорм, определяющих топологию $S(RR^n)$ на векторах $psi_m$, используя
  соотношения $(partial)/(partial x_k)=(A_k-A_k^*)/2$, $x_k=(A_k+A_k^*)/(4 pi)$.

  #source(360)
  д) $tilde(f)_m=(-i)^(abs(m)) f_m$. (Воспользуйтесь соотношением
  $F A_k^* F^(-1)=-2 pi i M_k+i D_k=-i A_k^*$.)
] <hint:schwartz-creation-annihilation-hermite-basis>

#hint[@pr:schwartz-coordinate-multiplication-commutant][Покажите, что если
  $f in S(RR^n)$ и $f(a)=0$, $a in RR^n$, то существуют такие функции
  $phi_k in S(RR^n)$ ($1<=k<=n$), что $f(x)=sum_(k=1)^n (x_k-a_k)phi_(k)(x)$.
  Выберите $chi in cal(D)(RR^n)$, равную единице в окрестности $a$, и положите
  $
    phi_(k)(x)=chi(x) integral_0^1 partial_(k) f(a+tau(x-a)) dif tau
    +(1-chi(x)) frac(x_k-a_k, norm(x-a)^2)f(x).
  $
  Второе слагаемое положим равным нулю около $a$. Первое слагаемое гладко и
  имеет компактный носитель, второе принадлежит $S(RR^n)$. Умножив на $x_k-a_k$
  и просуммировав, получите $f(x)$ по интегральной формуле Тейлора.
  #ed-note[
    В исходном примере интеграл без отсечки при $n>1$ может не принадлежать
    пространству Шварца. Отсечка сохраняет тождество и обеспечивает нужное
    убывание. Интегральную формулу Тейлора см. в теореме 1.36, с. 44: #cite(
      <Knapp2016a>,
      form: "full",
    ).
  ]
] <hint:schwartz-coordinate-multiplication-commutant>

#hint[@pr:schwartz-position-derivative-scalar-commutant][См. задачу
  @pr:schwartz-coordinate-multiplication-commutant и доказательство теоремы для
  случая $n=1$ в основном тексте.
] <hint:schwartz-position-derivative-scalar-commutant>

#hint[@pr:schwartz-fourier-transform-automorphism][Первый способ: обобщить
  рассуждения, приведенные в соответствующем пункте раздела «Теория». Второй
  способ: воспользоваться результатами задачи
  @pr:schwartz-creation-annihilation-hermite-basis г) и д).
] <hint:schwartz-fourier-transform-automorphism>

#hint[@pr:fourier-transform-parity-reality][а) $tilde(f)$ четна, б) $tilde(f)$
  нечетна.

  в) $tilde(f)(-lambda)=overline(tilde(f)(lambda))$,

  г) $tilde(f)$ вещественна.
] <hint:fourier-transform-parity-reality>

#hint[@pr:fourier-transform-affine-change-of-variables][
  $tilde(f)(lambda)=abs(det A)^(-1)
  tilde(f)((A')^(-1)lambda)e^(2 pi i lambda A^(-1) b)$.
] <hint:fourier-transform-affine-change-of-variables>

#hint[@pr:integrable-fourier-transform-uniqueness][Воспользуйтесь соотношением
  $f=lim_(n arrow.r infinity) f ast phi_n$, где ${phi_n}$ — дельтаобразная
  последовательность в $cal(D)(RR^n)$ (предел в норме пространства
  $L_1 (RR^n,dif x)$).
] <hint:integrable-fourier-transform-uniqueness>

#hint[@pr:fourier-sobolev-continuous-embedding][Докажите, что при $s>n/2$
  пространство $L_2 (RR^n,(1+norm(lambda)^2)^s dif lambda)$ содержится в
  $L_1 (RR^n,dif lambda)$. (Воспользуйтесь неравенством Коши — Буняковского для
  функций $f(lambda)(1+norm(lambda)^2)^(s/2)$ и $(1+norm(lambda)^2)^(-s/2)$ и
  тем фактом, что $(1+norm(lambda)^2)^(-s/2) in L_2 (RR^n,dif lambda)$ при
  $s>n/2$.) Проверьте, что в условиях задачи $tilde(f)(lambda)$ суммируема
  (воспользуйтесь неравенством Коши — Буняковского и тем фактом, что
  $(1+abs(lambda)^2)^(-s/2) in L_2 (RR^n,dif lambda)$ при $s>n/2$).
] <hint:fourier-sobolev-continuous-embedding>

#hint[@pr:fourier-sobolev-derivative-continuity][Перейдите к преобразованию
  Фурье.
] <hint:fourier-sobolev-derivative-continuity>

#hint[@pr:schwartz-space-convolution-closure][Перейдите к преобразованию Фурье.
] <hint:schwartz-space-convolution-closure>

#hint[@pr:sobolev-convolution-bounded-smoothness][Воспользуйтесь результатами
  задач @pr:fourier-sobolev-continuous-embedding и
  @pr:fourier-sobolev-derivative-continuity, а также правилом дифференцирования
  свертки.
] <hint:sobolev-convolution-bounded-smoothness>

#hint[@pr:reciprocal-polynomial-fourier-smoothness][Воспользуйтесь разложением
  $1/P(x)$ на простейшие дроби вида $1/((x-a)^2+b^2)$. Ответ в п. в): порядок
  гладкости равен $2 m-2$.
] <hint:reciprocal-polynomial-fourier-smoothness>

#hint[@pr:rational-function-fourier-exponential-decay][Представьте $f$ в виде
  суммы простейших дробей.
] <hint:rational-function-fourier-exponential-decay>

#hint[@pr:vanishing-moments-schwartz-test-function-uniqueness][а) Не следует.

  б) Следует (перейдите к преобразованию Фурье).
] <hint:vanishing-moments-schwartz-test-function-uniqueness>

#hint[@pr:bochner-positive-definite-line-representation][Рассмотрите функционал
  $F$ на $S(RR)$, действующий по формуле
  $
    chevron.l F,phi chevron.r=integral_RR f(lambda)tilde(phi)(lambda)dif lambda.
  $
  Из положительной определенности $f$ выведите
  $chevron.l F,abs(psi)^2 chevron.r>=0$ для $psi in S(RR)$, записав это
  выражение как двойной интеграл с положительно определенным ядром $f(v-u)$.

  Пусть сначала $phi in cal(D)(RR)$, $phi>=0$. Выберите вещественную
  $chi in cal(D)(RR)$, равную единице на носителе $phi$, и положите
  $psi_epsilon=chi sqrt(phi+epsilon)$, $epsilon>0$. Тогда
  $psi_epsilon in cal(D)(RR)$ и $psi_epsilon^2=phi+epsilon chi^2 arrow.r phi$ в
  $S(RR)$. Следовательно, $chevron.l F,phi chevron.r>=0$. Для произвольной
  неотрицательной $phi in S(RR)$ примените неотрицательные гладкие отсечки,
  сходящиеся к единице, и непрерывность $F$.

  Выведите отсюда, что $chevron.l F,phi chevron.r=integral_RR phi dif mu$, где
  $mu$ — положительная борелевская мера. Чтобы проверить ее конечность,
  подставьте $phi_(epsilon)(x)=exp(-epsilon pi x^2)$: при $epsilon arrow.r +0$
  $chevron.l F,phi_epsilon chevron.r arrow.r f(0)$ по свойству гауссова
  приближения единицы, а по монотонной сходимости этот предел равен $mu(RR)$.
  Применив обратное преобразование Фурье и, при необходимости, заменив меру на
  ее образ при $x |-> -x$, получите представление из условия задачи.
  #ed-note[
    Не всякая неотрицательная функция Шварца является квадратом функции Шварца;
    вместо этого использовано приближение квадратами. Теорему Бохнера и ее
    распределительную форму см. в теоремах 6.6.6 и 6.6.19, с. 552 и 565: #cite(
      <Simon2015a>,
      form: "full",
    ).
  ]
] <hint:bochner-positive-definite-line-representation>

#hint[@pr:unitary-group-matrix-coefficients-positive-definite][См. указание
  @hint:positive-definite-function-basic-inequalities к задаче
  @pr:positive-definite-function-basic-inequalities.
] <hint:unitary-group-matrix-coefficients-positive-definite>

#hint[@pr:cyclic-unitary-group-spectral-measure-model][См. указание
  @hint:positive-definite-function-basic-inequalities к задаче
  @pr:positive-definite-function-basic-inequalities.
] <hint:cyclic-unitary-group-spectral-measure-model>

#hint[@pr:paley-wiener-test-function-fourier-characterization][#source(361)
  Пусть $f in cal(D)(RR)$, $"supp" f subset [-b,b]$, $g=F f$. Тогда
  $(2 pi i lambda)^k g(lambda)=F(f^((k)))(lambda)$; откуда

  $
    abs(g(lambda))abs(lambda)^k
    = abs((2 pi)^(-k)integral_(-b)^b e^(-2 pi i lambda x)f^((k))(x)dif x) \
    <= 2 b (2 pi)^(-k) sup_x abs(f^((k))(x))
    e^(2 pi b abs("Im" lambda)).
  $

  Таким образом, $g$ обладает требуемыми свойствами с константами $a=2 pi b$ и
  $c_k=2 b (2 pi)^(-k) sup_x abs(f^((k))(x))$.

  Обратно, если $g$ удовлетворяет оценкам
  $abs(g(lambda))abs(lambda)^k<=c_k e^(a abs("Im" lambda))$, то
  $g in L_1 (RR,dif lambda)$ и можно определить непрерывную функцию $f=hat(F)g$.
  Из тех же оценок следует, что $f$ бесконечно дифференцируема. Наконец, если
  $abs(x)>a/(2 pi)$, то

  $
    abs(f(x))=abs(
      integral_(RR+i t op("sgn") x) e^(2 pi i lambda
      x)g(lambda)dif lambda
    ) \
    = abs(
      integral_RR e^(2 pi i mu x-2 pi t abs(x))g(mu+i t op("sgn") x)dif
      mu
    ) \
    <= integral_RR e^(-2 pi t abs(x)+t a)(c_0+c_2)/(1+mu^2)dif mu \
    = pi(c_0+c_2)e^(-t(2 pi abs(x)-a)).
  $

  При $t arrow.r infinity$ эта величина стремится к нулю. Значит,
  $"supp" f subset [-a/(2 pi),a/(2 pi)]$.
] <hint:paley-wiener-test-function-fourier-characterization>

#hint[@pr:radon-hyperplane-transform-uniqueness-inversion][а) Пусть $a in RR^n$,
  $b in RR$; положим

  $ phi(a, b)=integral_(RR^n) delta(a x-b)f(x)dif x. $

  Докажите тождества:

  $ integral_RR phi(a, b)e^(-2 pi i b)dif b=tilde(f)(a). $

  $phi(a, b)=abs(a)^(-1)integral_L f(x)dif mu_L$, где $L$ — гиперплоскость
  $a x=b$, $abs(a)=sqrt(a_1^2+dots+a_n^2)$. Если последний интеграл равен нулю
  для всех $L$, то $phi(a, b)=0$ при $a!=0$, а значит, $f=0$.

  б) Найдем $f(0)$. По формуле обращения

  $
    f(0)=integral_(RR^3) tilde(f)(a)dif a
    =integral_(RR^3)(integral_RR phi(a, b)e^(-2 pi i b)dif b)dif a.
  $

  Воспользуемся соотношением $phi(tau a, tau b)=abs(tau)^(-1)phi(a, b)$,
  вытекающим из определения $phi(a, b)$ и тождества
  $delta(tau x)=abs(tau)^(-1)delta(x)$. Мы получим:

  $
    f(0)=integral_(S^2)(integral_0^infinity (integral_RR phi(r alpha, b)e^(-2
        pi i b)dif b)r^2 dif r)dif sigma_alpha \
    =integral_(S^2)(integral_0^infinity (integral_RR phi(alpha, beta)e^(-2 pi
        i beta r)dif beta)r^2 dif r)dif sigma_alpha,
  $

  #source(362)
  где $r=abs(a)$, $alpha=a/abs(a) in S^2$, $dif sigma_alpha$ — элемент площади
  сферы, $beta=r^(-1)b$. Если обозначить
  $(4 pi)^(-1)integral_(S^2) phi(alpha, beta)dif sigma_alpha$ через $psi(beta)$,
  то последнее выражение будет равно

  $ 4 pi integral_0^infinity tilde(psi)(r)r^2 dif r=-1/(2 pi) psi''(0). $

  Отметим, что геометрический смысл величины $psi(beta)$ — среднее значение
  интегралов от $f$ по плоскостям, проходящим на расстоянии $beta$ от начала
  координат. Таким образом, для восстановления функции $f$ в точке $x$ нужно
  знать ее интегралы только по тем плоскостям, которые пересекаются со сколь
  угодно малой окрестностью точки $x$. Оказывается, что это свойство имеет место
  во всех нечетномерных пространствах.
] <hint:radon-hyperplane-transform-uniqueness-inversion>

#hint[@pr:restricted-xray-transform-line-intersection-inversion][Пусть заданная
  прямая $l$ является осью $x$ в $RR^3$. Прямая, пересекающая $l$ в точке
  $(t,0,0)$, имеет параметрическое представление $x=t+alpha s$, $y=beta s$,
  $z=gamma s$. Положим

  $ phi(alpha, beta, gamma, t)=integral_RR f(t+alpha s,beta s,gamma s)dif s. $

  Функция $phi$ однородная степени $-1$ по первым трем переменным:
  $phi(alpha tau, beta tau, gamma tau, t)=abs(tau)^(-1)phi(
    alpha, beta,
    gamma, t
  )$. Будем рассматривать $phi$ как регулярную обобщенную функцию и пусть
  $tilde(phi)(lambda,mu,nu,tau)$ — ее преобразование Фурье. Можно проверить, что
  $phi$ регулярна вне прямой $lambda=mu=nu=0$ в $RR^4$ и однородна степени $-2$
  по первым трем переменным. Справедливо тождество

  $
    phi(lambda, mu, nu, tau)=tilde(f)(tau,mu tau lambda^(-1),nu tau
      lambda^(-1))abs(tau lambda^(-2)).
  $

  (Для проверки примените обе части тождества к основной функции
  $psi in S(RR^4)$ и воспользуйтесь определением $phi$ и тождеством
  $⟨ tilde(phi),psi ⟩=⟨ phi,tilde(psi) ⟩$.) Поэтому $tilde(f)$ можно выразить
  через $tilde(phi)$:

  $ tilde(f)(a,b,c)=tilde(phi)(a,b,c,a)abs(a). $

  Отсюда

  $
    f(x,y,z)=-1/(2 pi^2)integral integral phi(x-s, y, z, t)(dif s dif
    t)/(s-t)^2,
  $

  где интеграл следует понимать как значение обобщенной функции $abs(a)$ на
  основной функции
  $psi(a)=integral integral phi(x-s, y, z, t)e^(2 pi i a(s-t))dif s dif t$.
] <hint:restricted-xray-transform-line-intersection-inversion>
