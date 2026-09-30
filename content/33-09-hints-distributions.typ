#import "main-defs.typ": *
#import "statements.typ": *

==== Обобщенные функции <ss:hints-distributions>

#hint[@pr:test-functions-embed-into-distributions][Нужно проверить, что если
  интеграл $integral_RR phi(x)psi(x) dif x$ равен нулю для всех
  $psi in cal(D)(RR)$, то $phi in cal(D)(RR)$ тождественно равна нулю.
] <hint:test-functions-embed-into-distributions>

#hint[@pr:rapid-sine-distribution-limit][Существует и равен $0$.
] <hint:rapid-sine-distribution-limit>

#hint[@pr:regular-distribution-almost-everywhere-uniqueness][Воспользуйтесь тем,
  что $cal(D)(RR)$ плотно в $L_p (RR,dif x)$.
] <hint:regular-distribution-almost-everywhere-uniqueness>

#hint[@pr:dirac-distribution-nonregularity][Пусть $p(x)$ — локально суммируемая
  функция. Для любого отрезка $[a,b]$, не содержащего начала координат,
  существует последовательность $phi_n in cal(D)(RR)$, сходящаяся к
  $chi_([a,b]) (x)$ и имеющая носитель в отрезке $[a-epsilon,b+epsilon]$, также
  не содержащем начала. Из равенства $0=phi_n (0)=integral_RR phi(x)p(x) dif x$
  вытекает, что $integral_a^b p(x) dif x=0$ для любых $a$ и $b$ одного знака. Но
  функция $q(x)=integral_0^x p(t) dif t$ непрерывна по $x$. Отсюда
  $q(x)=op("const")$ и $p(x)=0$ почти всюду.
] <hint:dirac-distribution-nonregularity>

#hint[@pr:torus-exponential-series-dirac-distribution][Заметим, что всякая
  функция $phi in cal(D)(T^n)$ представляется равномерно сходящимся рядом:
  $phi(t)=sum_(k in ZZ^n) c_k e^(2 pi i k t)$. Поэтому

  $
    chevron.l e^(2 pi i k t),phi chevron.r=c_(-k) quad "и" quad
    chevron.l sum_(k in ZZ^n) e^(2 pi i k t),phi chevron.r
    =sum_(k in ZZ^n) c_(-k)=phi(0).
  $
] <hint:torus-exponential-series-dirac-distribution>

#hint[@pr:torus-distribution-finite-order][В качестве определяющей системы
  полунорм в $cal(D)(T^n)$ можно взять нормы пространств $C^k (T^n)$.
] <hint:torus-distribution-finite-order>

#hint[@pr:distribution-unbounded-derivative-order][Пусть
  $phi(x)=e^(2 x) dot omega(x) in cal(D)(RR)$, где $omega in cal(D)(RR)$ —
  функция с носителем $[-1/3,1/3]$, тождественно равная $1$ на $[-1/6,1/6]$.
  Рассмотрите действие $F$ на сдвиги $phi(x plus.minus k)$.
] <hint:distribution-unbounded-derivative-order>

#hint[@pr:sokhotski-distribution-identity][Один из способов: разложите
  $1/(x plus.minus i 0)$ в сумму четной и нечетной компонент и воспользуйтесь
  тем, что

  $
    lim_(epsilon arrow.b 0) 1/sqrt(epsilon) e^(-x^2/epsilon)=sqrt(pi)delta(x),
    quad lim_(epsilon arrow.b 0) epsilon/(x^2+epsilon^2)=pi delta(x).
  $
] <hint:sokhotski-distribution-identity>

#hint[@pr:boundary-value-distribution-first-order][См. задачу
  @pr:sokhotski-distribution-identity.
] <hint:boundary-value-distribution-first-order>

#hint[@pr:weak-star-dual-evaluation-regular-density][Воспользуйтесь следующей
  леммой из линейной алгебры.

  #lemma(numbered: false)[
    Пусть даны линейные функционалы $f_1,dots,f_n$ и $f$ на линейном
    пространстве $L$. Если условия $f_1 (x)=0,dots,f_n (x)=0$ влекут $f(x)=0$,
    то $f$ является линейной комбинацией $f_1,dots,f_n$.
  ] <lem:finite-functional-kernel-inclusion>

  б) Воспользуйтесь п. а) и теоремой Хана — Банаха для ЛВП.
] <hint:weak-star-dual-evaluation-regular-density>

#hint[@pr:normalized-positive-power-distribution-continuation][а) Примените
  интегрирование по частям.

  б) Воспользуйтесь теоремой о слабой $*$-полноте $cal(D) prime(RR)$.

  в) Воспользуйтесь соотношениями
  $dif/(dif x)
  (x_+^(lambda-1)/(Gamma(lambda)))=x_+^(lambda-2)/(Gamma(lambda-1))$
  и «начальным условием» $x_+^0/Gamma(1)=theta(x)$.

  Ответ: $x_+^(-n-1)/Gamma(-n)=delta^((n))(x)$.
] <hint:normalized-positive-power-distribution-continuation>

#hint[@pr:schwartz-distribution-kernel-theorem][Используйте изоморфизм
  $cal(L)(L_1,L_2 prime) approx (L_1 hat(times.o) L_2) prime$ и результаты
  задачи @pr:test-schwartz-space-tensor-analogues.
] <hint:schwartz-distribution-kernel-theorem>

#source(345)

#hint[@pr:identity-point-evaluation-distribution-kernels][а)
  $K(x,y)=delta(x-y)$;

  б) $K(x,y)=delta(x-a) times delta(y-b)$.
] <hint:identity-point-evaluation-distribution-kernels>

==== Действия над обобщенными функциями <ss:hints-distribution-operations>

#hint[@pr:distribution-product-derivative-identities][Проверяется
  непосредственно из определения прямого произведения и производной обобщенных
  функций.
] <hint:distribution-product-derivative-identities>

#hint[@pr:zero-derivative-distribution-constant][Докажите, что всякая функция
  $phi in cal(D)(RR)$, обладающая свойством $integral_RR phi(x) dif x=0$, имеет
  вид $phi=psi prime$, где $psi in cal(D)(RR)$.
] <hint:zero-derivative-distribution-constant>

#hint[@pr:coordinate-annihilated-distribution-dirac][Докажите, что всякая
  функция $phi in cal(D)(RR)$, обладающая свойством $phi(0)=0$, имеет вид
  $phi(x)=x psi(x)$, $psi in cal(D)(RR)$.
] <hint:coordinate-annihilated-distribution-dirac>

#hint[@pr:point-supported-distribution-derivatives][Пусть искомая функция $F$ на
  отрезке $[a-epsilon,a+epsilon]$ является производной порядка $k$ от
  непрерывной функции $f$. Докажите, что $f(x)$ совпадает с некоторым
  многочленом $P_- (x)$ на $[a-epsilon,a]$ и с некоторым многочленом $P_+ (x)$
  на $(a,a+epsilon]$, причем $deg P_(plus.minus)<k$.

  Пусть $P(x)=P_+ (x)-P_- (x)$. Тогда

  $
    F(x)=(dif/(dif x))^k [P(x)theta(x-a)]
    =sum_(j=0)^(k-1) P^((k-1-j))(a)delta^((j))(x-a).
  $
] <hint:point-supported-distribution-derivatives>

#hint[@pr:dirac-derivative-diffeomorphism-pullback][$
    delta prime(g(x))=op("sgn") h prime(0)
    [-h prime prime(0)delta(x-h(0))+h prime(0)^2 delta prime(x-h(0))].
  $
] <hint:dirac-derivative-diffeomorphism-pullback>

#hint[@pr:homogeneous-distribution-euler-equation][Воспользуйтесь соотношением
  $lim_(t arrow.r 1) (F(t x)-F(x))/(t-1)=x F prime(x)$, которое доказывается
  исходя из определения $F(t x)$.
] <hint:homogeneous-distribution-euler-equation>

#hint[@pr:homogeneous-line-distribution-uniqueness][Воспользуйтесь задачей
  @pr:normalized-positive-power-distribution-continuation.
] <hint:homogeneous-line-distribution-uniqueness>

#hint[@pr:translation-invariant-distributions-constant][Пусть
  $phi in cal(D)(RR)$ и $integral_RR phi(x) dif x=0$. Докажите, что существуют
  такие $psi_n in cal(D)(RR)$ и $a_n in RR$, что
  $ phi(x)=lim_(n arrow.r infinity) [psi_n (x+a_n)-psi_n (x)]. $
  (Например, можно положить $a_n=1/n$,
  $psi_n (x)=n integral_(-infinity)^x phi(t) dif t$.)
] <hint:translation-invariant-distributions-constant>

#hint[@pr:one-direction-translation-invariant-distribution][а) Докажите, что
  если $phi in cal(D)(RR^2)$ обладает свойством $integral_RR phi(x, y) dif x=0$
  при всех $y in RR$, то $phi=(partial psi)/(partial x)$ для некоторой
  $psi in cal(D)(RR^2)$;

  б) $F=1 times f$.
] <hint:one-direction-translation-invariant-distribution>

#hint[@pr:segment-supported-distribution-normal-derivatives][а) Обобщите метод,
  описанный в указании @hint:one-direction-translation-invariant-distribution к
  задаче @pr:one-direction-translation-invariant-distribution.

  б) $F=sum_(i=0)^N f_i times delta^((i))$.
] <hint:segment-supported-distribution-normal-derivatives>

#hint[@pr:oscillatory-tempered-distribution-derivative][Функция $f prime(x)$ не
  является регулярной обобщенной функцией умеренного роста, так как
  $abs(f prime(x))=e^x$ растет быстрее любого многочлена. К интегралу
  $integral_RR f(x)phi prime(x) dif x$ неприменима процедура интегрирования по
  частям.
] <hint:oscillatory-tempered-distribution-derivative>

#hint[@pr:sine-annihilated-distributions][Ответ:
  $sum_(k in ZZ) c_k delta(x-k pi)$, где ${c_k}$ — любая числовая двусторонняя
  последовательность.
] <hint:sine-annihilated-distributions>

#source(346)

#hint[@pr:rotation-invariant-sphere-supported-distribution][Пусть $L$ —
  подпространство в $cal(D)(RR^n)$, порожденное функциями вида
  $(sum_(i=1)^n x_i^2-R^2)phi(x)$,
  $x_i (partial phi)/(partial x_j)-x_j (partial phi)/(partial x_i)$
  ($1<=i<j<=n$, $phi in cal(D)(RR^n)$). Докажите, что $F$ аннулирует $L$ и что
  $L$ имеет коразмерность $1$ в $cal(D)(RR^n)$. (Для простоты разберите случай
  $n=2$.)
] <hint:rotation-invariant-sphere-supported-distribution>

#hint[@pr:periodic-modulation-invariant-dirac-comb][Воспользуйтесь результатом
  задачи @pr:sine-annihilated-distributions.
] <hint:periodic-modulation-invariant-dirac-comb>

#hint[@pr:distribution-first-order-equation-regularity][Докажите, что функция
  $phi=e^(-A(x))F(x)-B(x)$, где $A prime=a$, а $B prime=e^(-A)b$, удовлетворяет
  уравнению $phi prime=0$.
] <hint:distribution-first-order-equation-regularity>

#hint[@pr:square-integrable-derivative-sobolev-embedding][Воспользуйтесь
  преобразованием Фурье и формулой Планшереля.
] <hint:square-integrable-derivative-sobolev-embedding>

#hint[@pr:fourier-series-distribution-convergence][Существуют такие константы
  $C$ и $N$, что $abs(c_n)<=C abs(n)^N$ при $n!=0$. (Или последовательность
  $ln abs(c_n)/ln abs(n)$ при $abs(n)>=2$ ограничена сверху, причем
  $ln 0=-infinity$; коэффициент $c_0$ рассматривается отдельно.)
] <hint:fourier-series-distribution-convergence>

#hint[@pr:distribution-multiplication-impossibility][Нет. (Например,
  $lim_(n arrow.r infinity) phi_n (x)delta(x)$, где $phi_(n) (x)=n rho(n x)$,
  $rho in cal(D)(RR)$, $rho>=0$, $integral_RR rho(x) dif x=1$ и $rho(0)>0$:
  тогда $phi_n delta=n rho(0)delta$ и предел не существует.)
] <hint:distribution-multiplication-impossibility>
