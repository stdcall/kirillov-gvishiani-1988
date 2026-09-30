#import "main-defs.typ": *
#import "statements.typ": *

=== Свертки на коммутативной группе <sec:hints-commutative-group-convolution>

==== Свертки основных функций <ss:hints-function-convolution>

#hint[@pr:finite-group-algebra-center-conjugacy-classes][а) Обозначим через
  $delta_g$ элемент $K[G]$, соответствующий функции, равной $1$ в точке $g$ и
  $0$ в остальных точках. Выпишите явно условие перестановочности $a in K[G]$ и
  $delta_g$.

  б) Условие $a(g h)=a(h g)$ можно переписать в виде $a(h)=a(g h g^(-1))$.

  в) Верно.
] <hint:finite-group-algebra-center-conjugacy-classes>

#hint[@pr:cyclic-group-algebra-decomposition][а) Пусть $epsilon=e^(2 pi i/n)$,
  $a$ — образующий элемент группы $"Ц"_n$ (в аддитивной записи). Положим
  $e_k=1/n sum_(h=1)^n epsilon^(k h) delta_(h a)$. Проверьте равенства
  $e_k ast e_j=0$ при $k!=j$, $e_k ast e_k=e_k$.

  #source(352)
  б) При $n<=2$ верно. При больших $n$ неверно. Можно проверить, что
  $
    RR["Ц"_(2 k)] approx RR+RR+underbrace(CC+dots+CC, k-1), quad
    RR["Ц"_(2 k+1)]=RR+underbrace(CC+dots+CC, k).
  $
] <hint:cyclic-group-algebra-decomposition>

#hint[@pr:symmetric-group-real-algebra-decomposition][Каждой функции $a^k (g)$
  поставим в соответствие числа $a_0=sum_(g in S_3) a(g)$ и
  $a_1=sum_(g in S_3) a(g) op("sgn") g$, где $op("sgn") g$ — четность
  перестановки $g$: $op("sgn") g=product_(i<j) (g(i)-g(j))/(i-j)$. Докажите, что
  отображения $a arrow.r a_0$ и $a arrow.r a_1$ являются гомоморфизмами
  $RR(S_3)$ на $RR$. Далее, пусть $e_1,e_2,e_3$ — три вектора на плоскости, в
  сумме равные нулю, причем $e_1,e_2$ линейно независимы. Принимаем
  $(g h)(i)=g(h(i))$. Каждому элементу $g in S_3$ соответствует линейное
  преобразование плоскости $T(g)$, действующее по формуле $T(g)e_i=e_(g(i))$.
  Докажите, что отображение $a arrow.r sum a(g) T(g)$ является гомоморфизмом
  $RR[S_3]$ на $"Mat"_2 RR$. Используйте эти гомоморфизмы для построения
  искомого изоморфизма.
] <hint:symmetric-group-real-algebra-decomposition>

#hint[@pr:group-algebra-universal-object][Пусть $phi$ — отображение $G$ в
  $K$-алгебру $A$ с единицей, обладающее свойствами
  $phi(g_1 g_2)=phi(g_1)phi(g_2)$ и $phi(1)=1$. Тогда оно однозначно
  продолжается до гомоморфизма $f:K[G] arrow.r A$ по формуле
  $a arrow.r sum_g a(g)phi(g)$.

  Если отказаться от условия $phi(1)=1$, то тривиальное отображение $G$ в
  нулевую алгебру становится универсальным объектом.
] <hint:group-algebra-universal-object>

#hint[@pr:bounded-integrable-convolution-continuity][Свертка
  $chi_([a,b]) ast chi_([c,d])$ ($chi$ — характеристическая функция) есть
  кусочно-линейная непрерывная финитная функция на прямой. График этой функции —
  ломаная с вершинами $(a+c,0)$, $(b+c,b-a)$, $(a+d,b-a)$, $(b+d,0)$. (Здесь
  $a<=b$, $c<=d$, $b-a<=d-c$.) Для ступенчатых функций отсюда вытекает искомое
  утверждение. Общий случай получается из оценки
  $norm(f ast g)_infinity<=norm(f)_infinity dot norm(g)_1$.
] <hint:bounded-integrable-convolution-continuity>

#hint[@pr:compact-smooth-convolution-differentiability][См. доказательство
  теоремы @th:test-function-convolution-smoothing.
] <hint:compact-smooth-convolution-differentiability>

#hint[@pr:translation-invariant-space-convolution-bound][Установите равенство
  $S(phi)=integral_G phi(g)T(g)dif mu(g)$.
] <hint:translation-invariant-space-convolution-bound>

#hint[@pr:delta-like-sequence-constructions][а) Свойство 3 следует из абсолютной
  непрерывности интеграла Лебега.

  б) Свойство 3 достаточно проверить для шаровых окрестностей.
] <hint:delta-like-sequence-constructions>

#hint[@pr:delta-like-convolution-translation-limit][Представьте $S(f_k)-T(a)$ в
  виде $integral_G f_k (g)[T(g)-T(a)]dif mu(g)$.
] <hint:delta-like-convolution-translation-limit>

#hint[@pr:polynomial-cutoff-convolution-support][Воспользуйтесь формулой
  $partial^k (phi ast psi)=(partial^k phi) ast psi$.
] <hint:polynomial-cutoff-convolution-support>

#hint[@pr:multidimensional-weierstrass-polynomial-approximation][Используйте
  результаты задач @pr:delta-like-sequence-constructions,
  @pr:delta-like-convolution-translation-limit,
  @pr:polynomial-cutoff-convolution-support.
] <hint:multidimensional-weierstrass-polynomial-approximation>

#hint[@pr:integrable-convolution-hilbert-adjoint][Используйте задачу
  @pr:translation-invariant-space-convolution-bound. Ответ:
  $S(f)^*=S(overline(f(-x)))$ (ср. задачу
  @pr:convolution-involution-inner-product).
] <hint:integrable-convolution-hilbert-adjoint>

#hint[@pr:square-integrable-convolution-boundedness][Существование $f_1 ast f_2$
  вытекает из того, что при каждом $x$ $f(x-y)$ принадлежит $L_2 (G,mu)$ как
  функция $y$. Измеримость следует из определения интеграла как предела
  интегральных сумм, ограниченность — из неравенства Коши — Буняковского.
] <hint:square-integrable-convolution-boundedness>

#hint[@pr:convolution-involution-inner-product][Проделайте подходящие замены
  переменных.
] <hint:convolution-involution-inner-product>

#hint[@pr:torus-character-convolution-idempotents][Доказывается непосредственным
  вычислением.
] <hint:torus-character-convolution-idempotents>

#hint[@pr:trigonometric-polynomials-convolution-ideal][Воспользуйтесь
  результатом задачи @pr:torus-character-convolution-idempotents и докажите
  равенство $f ast e_k=(f,e_k)e_k$ для любой функции $f in L_1 (G,mu)$.
] <hint:trigonometric-polynomials-convolution-ideal>

#source(353)

#hint[@pr:torus-trigonometric-approximate-identity][Можно, например, положить
  $f_k (t)=product_(j=1)^n phi_k (t_j)$, где

  $
    phi_k (t)=1/(2 k+1) sum_(s=-2 k)^(2 k) (2 k+1-abs(s))e_s (t) \
    =1/(2 k+1)[(sin ((2 k+1)pi t))/(sin pi t)]^2,
    quad e_s (t)=e^(2 pi i s t).
  $
] <hint:torus-trigonometric-approximate-identity>

#hint[@pr:trigonometric-smooth-function-density][Используйте задачи
  @pr:delta-like-convolution-translation-limit,
  @pr:torus-trigonometric-approximate-identity.
] <hint:trigonometric-smooth-function-density>

#hint[@pr:half-line-power-exponential-convolutions][а)
  $B(alpha+1,beta+1)theta(x)x^(alpha+beta+1)$.

  б) $cases(
    (e^(b x)-e^(a x))/(b-a) theta(x) quad & a!=b,
    x e^(a x)theta(x) quad & a=b
  ).$
] <hint:half-line-power-exponential-convolutions>

#hint[@pr:young-convolution-integrability][Покажите, что если $f in L_p (G,mu)$,
  $g in L_q (G,mu)$, $h in L_s (G,mu)$, то функция $phi(x, y)=f(x-y)g(y)h(x)$
  принадлежит $L_t (G times G,mu times mu)$, где $2/t=1/p+1/q+1/s$. (Ср. задачу
  @pr:triple-holder-product-integrability.)

  Выведите отсюда нужное утверждение, полагая $1/s=1-1/r$, $t=1$.
] <hint:young-convolution-integrability>
