#import "main-defs.typ": *
#import "statements.typ": *

=== Математическая модель квантовой механики <sec:hints-quantum-mechanics-model>

#hint[@pr:quantum-expectation-commutator-time-evolution][Воспользоваться
  равенством

  $
    (dif)/(dif t)⟨ A ⟩_psi=(dif)/(dif t)(A psi,psi)
    =lr((A (dif psi)/(dif t),psi))+lr((A psi,(dif psi)/(dif t)))
  $

  и уравнением Шредингера.

  Результат этой задачи можно положить в основу альтернативного описания
  квантовой системы. А именно, можно считать, что векторы $psi$, описывающие
  состояния, не меняются со временем, а операторы, описывающие физические
  величины, меняются по закону $i ℏ (dif A)/(dif t)=[A,H]$ (_уравнение
  Гейзенберга_).

  Такой способ описания называется _картиной Гейзенберга_ в отличие от _картины
  Шредингера_, использованной нами в основном тексте.
] <hint:quantum-expectation-commutator-time-evolution>

#hint[@pr:matrix-linear-functional-trace-positive-representation][а) Функционалы
  указанного вида образуют линейное пространство. Проверить, что его размерность
  равна $n^2$. Для этого достаточно показать, что $f_A=0$ влечет $A=0$. Но
  $f_A (A^*)="tr" A A^*=sum_(i k) abs(a_(i k))^2$.

  б) При условии $A>=0$. Необходимость: $(A xi,xi)="tr"(A P_xi)=f(P_xi)>=0$.

  Достаточность: $f(X)="tr"(A X)="tr"(A^(1/2)X A^(1/2))>=0$.
] <hint:matrix-linear-functional-trace-positive-representation>

#hint[@pr:positive-bounded-operator-functional-trace-representation][#source(
    373,
  )
  Воспользуйтесь результатом и методом решения задачи
  @pr:trace-class-operators-trace-duality.
] <hint:positive-bounded-operator-functional-trace-representation>

#hint[@pr:operator-state-convex-set-extreme-points][В силу задачи
  @pr:positive-bounded-operator-functional-trace-representation $K$ состоит из
  ядерных операторов со следом $1$. Покажите, что каждый проектор $P_psi$ на
  единичный вектор $psi in H$ является крайней точкой $K$. Пусть
  $P_psi=tau A_1+(1-tau)A_2$, где $0<tau<1$ и $A_1,A_2 in K$. Тогда
  $tau_i A_i<=P_psi$, где $tau_1=tau$, $tau_2=1-tau$. Отсюда следует (см. гл.
  @ch:theory-linear-spaces-operators), что
  $abs((A_i phi_1,phi_2))^2<=tau_i^(-2)(P_psi phi_1,phi_1)(P_psi
    phi_2,phi_2)=tau_i^(-2)abs((phi_1,psi))^2 dot abs((phi_2,psi))^2$
  и, значит, $A_i=c_i P_psi$.

  Обратно, пусть $A$ — крайняя точка в $K$. Оператор $A$ по теореме Гильберта
  представим в виде $sum_k c_k P_(psi_k)$, где $psi_k$ — некоторая
  ортонормированная система в $H$. Поскольку $A>=0$ и $"tr" A=1$, имеем $c_k>=0$
  и $sum_k c_k=1$. Теперь ясно, что $A$ может быть крайней точкой, лишь если
  среди коэффициентов $c_k$ один равен единице, а остальные — нулю.
] <hint:operator-state-convex-set-extreme-points>

#hint[@pr:free-particle-position-momentum-energy-spectrum][Оператор координаты
  $hat(q)$ уже в исходном, координатном представлении является оператором
  умножения на $q$. Его спектр заполняет всю вещественную прямую. Обобщенные
  собственные функции имеют вид $delta(q-q_0)$.

  Преобразование Фурье
  $psi |-> tilde(psi)(k)=1/sqrt(2 pi)integral_(-infinity)^infinity e^(i k
  q)psi(q)dif q$
  приводит оператор импульса $hat(p)$ к виду умножения на $ℏ k$, а оператор
  энергии $hat(H)=hat(p)^2/(2 m)$ к виду умножения на $(ℏ^2 k^2)/(2 m)$. Это
  представление называется _импульсным_. Спектр $hat(p)$ — однократный и
  заполняет всю прямую, а спектр $hat(H)$ — двукратный и заполняет положительную
  полуось. Обобщенные собственные функции имеют вид $e^(-i k_0 x)$ в
  координатном представлении и $delta(k-k_0)$ — в импульсном представлении.
] <hint:free-particle-position-momentum-energy-spectrum>

#hint[@pr:free-particle-gaussian-wavepacket-evolution][В импульсном
  представлении исходное состояние имеет вид
  $tilde(psi)_(a b)(k)=root(4, a/pi)exp{-a k^2/2+i b k}$. Учитывая результат
  задачи @pr:free-particle-position-momentum-energy-spectrum, получаем:

  $ tilde(psi)_(a b)(k,t)=root(4, a/pi)exp{-a k^2/2-(i ℏ k^2)/(2 m)t+i b k}. $

  Переходя обратно к координатному представлению, получаем:

  $
    psi_(a b)(x,t)=root(4, a/pi)1/sqrt(a+(i ℏ)/m t)exp{-(x-b)^2/(2(a+(i ℏ)/m
        t))}.
  $

  Таким образом, плотность вероятности распределения частицы имеет вид

  $ abs(psi_(a b)(x,t))^2=1/sqrt(pi A)exp{-(x-b)^2/A}, $

  где $A=a+(ℏ^2 t^2)/(m^2 a)$.
] <hint:free-particle-gaussian-wavepacket-evolution>

#hint[@pr:infinite-square-well-stationary-states][#source(374)
  Оператор $hat(H)$ имеет вид $-(ℏ^2)/(2 m)(dif^2)/(dif x^2)$ и его естественная
  область определения в $L_2 (-a,a)$ состоит из функций, у которых вторая
  обобщенная производная принадлежит $L_2 (-a,a)$. Чтобы получить
  самосопряженный оператор, эту область нужно сузить, наложив дополнительные
  условия $psi(a)=psi(-a)=0$. (Математическая интерпретация физического условия
  непроницаемой отталкивающей стенки.) Стационарное уравнение Шредингера
  принимает вид

  $ psi''+(2 m E)/(ℏ^2)psi=0, quad psi(a)=psi(-a)=0. $

  Отсюда $psi(x)=alpha exp{(i sqrt(2 m E))/(ℏ)x}+beta exp{-i sqrt(2 m E)/(ℏ)x}$,
  что согласуемо с граничными условиями, лишь если $sin(2 sqrt(2 m E)/(ℏ)a)=0$,
  т. е. $E=(pi^2 ℏ^2 n^2)/(8 m a^2)$, где $n$ — натуральное число.
  Соответствующая собственная функция при нечетном $n=2 k+1$ имеет вид
  $psi_(2 k+1)(x)=1/sqrt(a)cos[(pi x)/a dot (k+1/2)]$, а при четном $n=2 k$
  $psi_(2 k)(x)=1/sqrt(a)sin((pi k x)/a)$.
] <hint:infinite-square-well-stationary-states>

#hint[@pr:finite-square-well-stationary-states][Естественная область определения
  оператора энергии состоит из функций, имеющих обобщенную вторую производную в
  $L_2 (RR)$. Поэтому собственные функции должны иметь непрерывную первую
  производную. Вне отрезка $[-a,a]$ они удовлетворяют уравнению
  $-(ℏ^2)/(2 m)psi''+(V_0-E)psi=0$. Так как $psi in L_2 (RR)$, должно быть
  $V_0-E>0$ и

  $
    psi(x)=cases(
      c_+ e^(-l x) & "при" x>a,
      c_- e^(l x) & "при" x< -a
    ),
  $

  где $l=sqrt(2 m(V_0-E))/(ℏ)$.

  Удобно исследовать отдельно четные и нечетные функции. (Поскольку оператор
  $hat(H)$ перестановочен с отражением $x |-> -x$, всякая собственная функция
  $psi$ представима в виде суммы четной и нечетной собственных функций:
  $psi(x)=(psi(x)+psi(-x))/2+(psi(x)-psi(-x))/2$. В нашем случае, когда спектр
  простой, каждая собственная функция либо четна, либо нечетна.) В четном случае
  получаем:

  $
    psi(x)=cases(
      c dot e^(-l abs(x)) & "при" abs(x)>a,
      c_1 cos k x & "при" abs(x)<a
    ),
  $
  #source(375)
  где $k=1/(ℏ)sqrt(2 m E)$. Условия непрерывности $psi$ и $psi'$ в точке $a$
  дают:

  $ c e^(-l a)=c_1 cos k a, $
  $ c l e^(-l a)=c_1 k sin k a, $

  откуда $k tan k a=l=sqrt((2 m V_0)/(ℏ^2)-k^2)$.

  Это уравнение легко решается графически и имеет конечное число решений,
  зависящее от характеристического параметра $κ=(a sqrt(2 m V_0))/(ℏ)$. В
  нечетном случае рассмотрение аналогично.

  Отметим, что собственные функции $psi$ отличны от нуля (хотя и быстро убывают)
  вне потенциальной ямы. Это значит, что с положительной, хотя и малой,
  вероятностью частица с энергией $E$ может выскочить из ямы глубиной $V_0>E$.

] <hint:finite-square-well-stationary-states>

#hint[@pr:quantum-harmonic-oscillator-stationary-states][Уравнение Шредингера
  имеет вид

  $ -(ℏ^2)/(2 m)psi''+(m omega^2)/2 x^2 psi=E psi. $

  Заменой аргумента $y=x sqrt((m omega)/(ℏ))$ оно приводится к виду

  $ -(dif^2)/(dif y^2)psi+y^2 psi=(2 E)/(omega ℏ)psi. $

  Далее см. задачу @pr:harmonic-oscillator-self-adjoint-spectral-decomposition.
  Ответ: $E=ℏ omega(n+1/2)$ ($n=0,1,2,dots$).
] <hint:quantum-harmonic-oscillator-stationary-states>

#hint[@pr:one-dimensional-scattering-transfer-matrix-properties][а) Пусть
  $phi_1$ и $phi_2$ — два линейно независимых решения уравнения Шредингера.
  Докажите, что их вронскиан
  $W(x)=det mat(phi_1 (x), phi_2 (x); phi'_1 (x), phi'_2 (x))$ не зависит от
  $x$.

  б) Воспользуйтесь тем, что если $phi(x)$ — решение уравнения Шредингера, то
  $overline(phi(x))$ — тоже решение.
] <hint:one-dimensional-scattering-transfer-matrix-properties>

#hint[@pr:scattering-transmission-reflection-unitarity][Следует из результатов
  задачи @pr:one-dimensional-scattering-transfer-matrix-properties.
] <hint:scattering-transmission-reflection-unitarity>

#hint[@pr:rectangular-barrier-scattering-amplitudes][Нужно найти решение
  $psi(x)$, имеющее вид $e^(i k x)+r(k)e^(-i k x)$ при $x < -a$ и вид
  $t(k)e^(i k x)$ при $x>a$.

  Пусть на отрезке $[-a,a]$ $psi(x)=alpha e^(i l x)+beta e^(-i l x)$, где
  $l^2=k^2-(2 m V_0)/(ℏ^2)$. Из условия непрерывности $psi$ и $psi'$ в точках
  $plus.minus a$ получаем уравнения

  $ e^(-i k a)+r(k)e^(+i k a)=alpha e^(-i l a)+beta e^(i l a), $
  $ k e^(-i k a)-k r(k)e^(+i k a)=l alpha e^(-i l a)-l beta e^(i l a), $
  $ t(k)e^(+i k a)=alpha e^(+i l a)+beta e^(-i l a), $
  $ k t(k)e^(+i k a)=l alpha e^(+i l a)-l beta e^(-i l a). $

  #source(376)
  Отсюда

  $ t(k)=e^(-2 i k a)(2 l k)/(-i(l^2+k^2)sin 2 l a+2 l k cos 2 l a), $
  $ r(k)=-(i m V_0 sin 2 l a)/(ℏ^2 k l)t(k). $
] <hint:rectangular-barrier-scattering-amplitudes>

#hint[@pr:delta-barrier-scattering-limit][Ответ:

  $
    t(k) arrow.r (ℏ^2 k)/(ℏ^2 k+i m c), quad
    r(k) arrow.r (-i m c)/(ℏ^2 k+i m c).
  $
] <hint:delta-barrier-scattering-limit>

#hint[@pr:euclidean-free-particle-generalized-eigenfunctions][Для операторов
  координат обобщенные собственные функции имеют вид $psi(x)=delta_n (x-x_0)$;
  для операторов импульса и энергии — вид $psi(x)=e^(i k x)$. (Здесь
  $delta_n (x-x_0)=delta(x^1-x_0^1)dots delta(x^n-x_0^n)$ — $n$-мерная
  $delta$-функция, через $k x$ кратко обозначена величина
  $k_1 x^1+dots+k_n x^n$).
] <hint:euclidean-free-particle-generalized-eigenfunctions>

#hint[@pr:circle-torus-free-particle-energy-levels][а) Оператор Шредингера имеет
  вид $H=-(ℏ^2)/(2 m)(dif^2)/(dif x^2)$ и действует в пространстве периодических
  функций с периодом $1$. Его собственные функции имеют вид
  $psi_n (x)=e^(2 pi i n x)$, а соответствующие уровни $E_n=(2 pi^2 ℏ^2 n^2)/m$.

  б) $psi_(n_1 dots n_m)(x_1,dots,x_m)=product psi_(n_i)(x_i)$;

  $ E_(n_1 dots n_m)=(2 pi^2 ℏ^2)/m (n_1^2+dots+n_m^2). $
] <hint:circle-torus-free-particle-energy-levels>

#hint[@pr:three-dimensional-harmonic-oscillator-energy-levels][Разделением
  переменных задача сводится к одномерной. Ответ:
  $psi_(k l m)(x,y,z)=psi_k (x)psi_l (y)psi_m (z)$, где $psi_i$ — собственные
  функции одномерного осциллятора. $E_(k l m)=ℏ omega(k+l+m+3/2)$; собственное
  значение $E=3/2 ℏ omega$ — простое, все прочие кратные. Кратность значения
  $(n+3/2)ℏ omega$ равна $((n+1)(n+2))/2$.
] <hint:three-dimensional-harmonic-oscillator-energy-levels>

#hint[@pr:indistinguishable-boson-fermion-oscillator-states][Собственные функции
  имеют вид

  $
    psi_(k_1 dots k_n)=sum_(s in S(n)) chi(s)psi_(k_(s(1)))(x_1)dots
    psi_(k_(s(n)))(x_n),
  $

  где $psi_i$ — собственные функции одномерного осциллятора, $S(n)$ — группа
  перестановок чисел $1,2,dots,n$, $chi(s)=1$ в случае бозонов и
  $chi(s)=op("sgn") s$ в случае фермионов. Мультииндекс $(k_1,dots,k_n)$ может
  быть любым в случае бозонов и состоящим из попарно различных чисел $k_i$ в
  случае фермионов. Уровни энергии имеют вид $(N+n/2)omega ℏ$, $N in ZZ_(>=0)$.
  Кратность такого уровня равна числу представлений числа $N$ в виде суммы $n$
  любых неотрицательных целых (в случае бозонов) или $n$ различных
  неотрицательных целых (в случае фермионов) слагаемых.
] <hint:indistinguishable-boson-fermion-oscillator-states>

#hint[@pr:rotation-lie-algebra-casimir-ladder-relations][#source(377)
  Воспользуйтесь правилом коммутации произведения (аналог правила Лейбница для
  дифференцирования):

  $ [A,B C]=[A,B]C+B[A,C]. $
] <hint:rotation-lie-algebra-casimir-ladder-relations>

#hint[@pr:irreducible-rotation-representation-spin-canonical-form][а) Пусть $xi$
  — собственный вектор оператора $Z$ с собственным значением $lambda$. Из
  соотношений @pr:rotation-lie-algebra-casimir-ladder-relations б) следует, что
  вектор $(X plus.minus i Y)xi$ либо нулевой, либо собственный для оператора $Z$
  с собственным значением $lambda minus.plus i$. Выведите отсюда, что существует
  такой собственный для $Z$ вектор $xi_0$ со собственным значением $lambda_0$,
  что $(X-i Y)xi_0=0$. Положим $xi_k=(X+i Y)^k xi_0$ и пусть $l$ — наименьший
  номер, для которого $xi_(l+1)=0$. Проверьте, что линейная оболочка векторов
  $xi_0,dots,xi_l$ инвариантна относительно всех трех операторов $X,Y,Z$ и,
  следовательно, совпадает с $V$. Значит, $l=dim V-1=2 s$. Далее,
  $"tr" Z="tr"(X Y-Y X)=0$. Но $Z xi_k=lambda_k xi_k$ и $lambda_k=lambda_0-k i$.
  Поэтому $"tr" Z=sum_(k=0)^(2 s) lambda_k=(2 s+1)lambda_0-(2 s(2 s+1))/2 i$.
  Отсюда $lambda_0=s i$, $lambda_k=(s-k)i$.

  б) Пусть $delta$ — собственное значение оператора $Delta$. Тогда собственное
  подпространство, отвечающее этому собственному значению, инвариантно
  относительно $X,Y,Z$ (в силу @pr:rotation-lie-algebra-casimir-ladder-relations
  а)) и, следовательно, совпадает с $V$. Для вычисления $delta$ запишите
  оператор $Delta$ в виде $Delta=(X+i Y)(X-i Y)+Z^2+i Z$ и примените его к
  вектору $xi_0$ (см. выше указание к п. а)).

  в) Соотношения @eq:rotation-representation-canonical-form можно переписать в
  виде $Z eta_k=lambda_k eta_k$,
  $(X plus.minus i Y)eta_k=c_(plus.minus)(k)eta_(k plus.minus 1)$. Поэтому для
  любого базиса ${eta_k}$ вида $eta_k=mu_k xi_k$, $mu_k in CC$, соотношения
  @eq:rotation-representation-canonical-form
  выполняются, причем $c_+(k)=mu_k mu_(k+1)^(-1)$ и
  $c_-(k)=k(k-1-2s)mu_k mu_(k-1)^(-1)$.

  Последнее из соотношений @pr:rotation-lie-algebra-casimir-ladder-relations б)
  в применении к вектору $eta_k$ дает
  $c_+(k-1)c_-(k)-c_-(k+1)c_+(k)=-2 i lambda_k=2(s-k)$. Отсюда и из равенства
  $c_+(2 s)=0$ выводится, что
  $c_+(k)c_-(k+1)=sum_(l=k+1)^(2 s) 2(s-l)=(k+1)(k-2 s)$. Полагая
  $mu_k=(-1)^k (2s-k)!/(2s)!$, получаем $c_-(k)=k$, $c_+(k)=k-2 s$.
] <hint:irreducible-rotation-representation-spin-canonical-form>

#hint[@pr:sphere-phase-space-coordinate-quantization][Функции $x,y,z$ на $S$
  подчиняются соотношениям

  $
    {x,y}=z R^(-1), quad {y,z}=x R^(-1), quad {z,x}=y R^(-1), quad
    x^2+y^2+z^2=R^2.
  $

  Поэтому их квантовые аналоги $hat(X),hat(Y),hat(Z)$ должны удовлетворять
  соотношениям

  $
    [hat(X),hat(Y)]=i ℏ hat(Z)R^(-1), quad
    [hat(Y),hat(Z)]=i ℏ hat(X)R^(-1), quad
    [hat(Z),hat(X)]=i ℏ hat(Y)R^(-1),
  $
  $ hat(X)^2+hat(Y)^2+hat(Z)^2=R^2. $

  Положим $X=R/(i ℏ)hat(X)$, $Y=R/(i ℏ)hat(Y)$, $Z=R/(i ℏ)hat(Z)$. Тогда
  операторы $X,Y,Z$ будут удовлетворять условиям задачи
  @pr:rotation-lie-algebra-casimir-ladder-relations и, кроме того, равенству
  $X^2+Y^2+Z^2=-R^4/ℏ^2$. В силу задачи
  @pr:irreducible-rotation-representation-spin-canonical-form б) последнее
  возможно лишь при $R^4=ℏ^2(s^2+s)$, где $s$ — целое или полуцелое число.

  Рассматривают также квантование, при котором жертвуют условием
  $hat(X)^2+hat(Y)^2+hat(Z)^2=R^2$, но требуют, чтобы максимальное
  #source(378)
  собственное значение операторов $hat(X),hat(Y),hat(Z)$ было равно $R$. В этом
  случае для $R^2$ возможны значения вида $s ℏ$, где $s$ — полуцелое число.
  Параметр $s$, однозначно характеризующий систему, называется ее спином.
] <hint:sphere-phase-space-coordinate-quantization>

#hint[@pr:orbital-angular-momentum-commutation-relations][Первый способ:
  воспользоваться каноническими соотношениями коммутации координат и импульсов.

  Второй способ: использовать координатные выражения

  $ L_1=i ℏ(x_2 partial/(partial x_3)-x_3 partial/(partial x_2)), $
  $ L_2=i ℏ(x_3 partial/(partial x_1)-x_1 partial/(partial x_3)), $
  $ L_3=i ℏ(x_1 partial/(partial x_2)-x_2 partial/(partial x_1)). $
] <hint:orbital-angular-momentum-commutation-relations>

#hint[@pr:two-particle-total-angular-momentum-addition][Воспользуемся
  результатами задачи @pr:rotation-lie-algebra-casimir-ladder-relations, введя
  операторы

  $ X=-1/(i ℏ)L_1, quad Y=-1/(i ℏ)L_2, quad Z=-1/(i ℏ)L_3. $

  Обозначим через $H_i$ подпространство размерности $2 l_i+1$, в котором задано
  каноническое действие операторов $X_i,Y_i,Z_i$. Речь идет о разложении
  пространства $H_1 times.o H_2$ на неприводимые подпространства относительно
  операторов

  $
    X=X_1 times.o 1+1 times.o X_2, quad Y=Y_1 times.o 1+1 times.o Y_2, quad
    Z=Z_1 times.o 1+1 times.o Z_2.
  $

  Пусть $xi_0,dots,xi_(2 l_1)$ и $eta_0,dots,eta_(2 l_2)$ — канонические базисы
  в $H_1$ и $H_2$ соответственно. Тогда ${xi_k times.o eta_l}$ — базис в
  $H_1 times.o H_2$. Оператор $X-i Y$ действует в этом базисе по формуле

  $
    (X-i Y)xi_k times.o eta_l=k xi_(k-1)times.o eta_l+l xi_k times.o eta_(l-1).
  $

  Найдем ядро этого оператора. Для этого заметим, что если отождествить $H_1$ и
  $H_2$ с пространствами многочленов от $u$ и $v$ соответственно по формулам
  $xi_k |-> u^k$, $eta_l |-> v^l$, то оператор $X-i Y$ перейдет в
  $partial/(partial u)+partial/(partial v)$ (проверьте!). Поэтому ядро $X-i Y$
  состоит из многочленов от $u-v$.

  Действие оператора $Z$ в этой реализации сводится к
  $i(l_1+l_2-u partial/(partial u)-v partial/(partial v))$. Поэтому $(u-v)^k$
  является собственным вектором для $Z$ с собственным значением $i(l_1+l_2-k)$.
  Число $k$ может меняться от $0$ до $min(2 l_1, 2 l_2)$. Каждый вектор
  $(u-v)^k$ порождает неприводимое подпространство размерности
  $2 l_1+2 l_2-2 k+1$. Отсюда вытекает, что возможными значениями полного
  момента объединенной системы являются числа

  $ ℏ(l_1+l_2), quad ℏ(l_1+l_2-1),dots,quad ℏ abs(l_1-l_2). $
] <hint:two-particle-total-angular-momentum-addition>

#hint[@pr:identical-particle-angular-momentum-addition][В решении предыдущей
  задачи нужно предположить, что $l_1=l_2$, и на многочлены от $u$ и $v$
  наложить дополнительное условие симметричности (для бозонов) или
  антисимметричности (для фермионов). Это сводится к требованию четности или
  нечетности $k$. Ответ: для бозонов возможные значения момента $2l ℏ$,
  $2(l-1)ℏ,dots,0$; для фермионов — $(2l-1)ℏ,(2l-3)ℏ,dots,ℏ$.
] <hint:identical-particle-angular-momentum-addition>
