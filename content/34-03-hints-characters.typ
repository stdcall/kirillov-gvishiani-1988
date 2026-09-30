#import "main-defs.typ": *
#import "statements.typ": *

=== Преобразование Фурье <sec:hints-fourier-transform>

==== Характеры коммутативной группы <ss:hints-commutative-group-characters>

#hint[@pr:cyclic-group-character-formula][$chi_k (l mod n)=e^(2 pi i k l/n)$
  ($k=1,2,dots,n$).
] <hint:cyclic-group-character-formula>

#hint[@pr:finite-abelian-group-self-duality][Используйте результат задачи
  @pr:cyclic-group-character-formula и тот факт, что всякая конечная
  коммутативная группа является прямой суммой циклических групп.
] <hint:finite-abelian-group-self-duality>

#hint[@pr:generalized-nonunitary-group-characters][а) $chi_z (n)=z^n$,
  $z in CC^*$;

  б) $chi_lambda (x)=e^(lambda x)$, $lambda in CC$;

  в) $chi_(v w) (z)=e^(v z+w overline(z))$, $v,w in CC$;

  г) $chi_(lambda epsilon) (x)=abs(x)^lambda (op("sgn") x)^epsilon$,
  $lambda in CC$, $epsilon=0,1$;

  д) $chi_(lambda n) (z)=abs(z)^lambda (op("sgn") z)^n$, $lambda in CC$,
  $n in ZZ$, $op("sgn") z=z/abs(z)$.
] <hint:generalized-nonunitary-group-characters>

#hint[@pr:compact-group-discrete-dual][Пусть $U_epsilon$ — окрестность характера
  $chi_0$, задаваемая неравенством $abs(chi(x)-chi_0 (x))<epsilon$ для всех
  $x in G$. Докажите, что при $epsilon<=sqrt(3)$ эта окрестность не содержит
  точек $hat(G)$, отличных от $chi_0$. (Воспользуйтесь для этого тем, что
  множество комплексных чисел вида $chi(x)overline(chi_0 (x))$ образуют
  подгруппу в $T$.)
] <hint:compact-group-discrete-dual>

#source(355)

#hint[@pr:discrete-group-compact-dual][Докажите, что $hat(G)$ отождествляется с
  замкнутым подмножеством в произведении $product_(g in G) T$, которое является
  компактом относительно покоординатной сходимости (_теорема Тихонова_).
] <hint:discrete-group-compact-dual>

#hint[@pr:real-group-character-differential-equation][Докажите, что обобщенная
  функция $chi'(x)$ принадлежит одномерному пространству, порожденному $chi(x)$.
] <hint:real-group-character-differential-equation>

#hint[@pr:character-convolution-fourier-coefficient][Сделайте замену переменных
  в интеграле, определяющем свертку.
] <hint:character-convolution-fourier-coefficient>

#hint[@pr:compact-group-character-convolution-orthogonality][Воспользуйтесь
  результатом задачи @pr:character-convolution-fourier-coefficient.
] <hint:compact-group-character-convolution-orthogonality>

#hint[@pr:torus-characters-integer-frequencies][Воспользуйтесь результатами
  задач @pr:compact-group-character-convolution-orthogonality и
  @pr:trigonometric-smooth-function-density.
] <hint:torus-characters-integer-frequencies>

#hint[@pr:abelian-group-duality-contravariant-functor][Каждому гомоморфизму
  $phi:G arrow.r H$ соответствует гомоморфизм $hat(phi):hat(H) arrow.r hat(G)$,
  действующий по формуле

  $ hat(phi)(chi)(x)=chi(phi(x)), quad chi in hat(H), quad x in G. $
] <hint:abelian-group-duality-contravariant-functor>

#hint[@pr:real-topological-vector-space-character-dual][Ответ: $hat(L)$
  совпадает с сопряженным пространством $L'$. Для доказательства рассмотрите
  ограничения характера на одномерные подпространства в $L$ и докажите, что
  $chi$ имеет вид $chi(x)=e^(i f(x))$, где $f in L'$.
] <hint:real-topological-vector-space-character-dual>

#hint[@pr:padic-additive-group-duals][а) Всякий характер $chi in hat(Q)_p$ имеет
  вид $chi_lambda=e^(2 pi i {lambda x})$, где $lambda in Q_p$, а ${dot}$ —
  отображение $Q_p$ в $Q_p/Z_p subset QQ/ZZ$ («дробная часть»). Ответ:
  $hat(Q)_p=Q_p$.

  б) Всякий характер $chi in hat(Z)_p$ имеет вид $chi_r (x)=e^(2 pi i {r x})$,
  где $r$ — рациональное число вида $m/p^n$, определенное по $mod 1$. Ответ:
  $hat(Z)_p approx Q_p/Z_p$.

  в) Характеры группы $Q_p/Z_p$ отождествляются с характерами группы $Q_p$,
  тривиальными на $Z_p$. Ответ: $hat(Q_p/Z_p) approx Z_p$.
] <hint:padic-additive-group-duals>

#hint[@pr:abelian-duality-exact-sequence][Точность в члене $hat(G)_1$ означает,
  что $hat(p)$ — мономорфизм, т. е. каждый нетривиальный характер $G_1=G/G_0$
  определяет нетривиальный характер $G$. Точность в члене $hat(G)$ означает, что
  в виде $hat(p)(chi_1)$ представимы те и только те характеры $G$, которые
  тривиальны на $G_0$. Наконец, точность в члене $hat(G)_0$ означает, что любой
  характер группы $G_0$ получается ограничением из некоторого характера группы
  $G$. Это утверждение доказывается подобно теореме Хана — Банаха с помощью
  трансфинитной индукции (группа $G_0$ расширяется до $G$ с помощью операций
  присоединения элемента и замыкания).
] <hint:abelian-duality-exact-sequence>

#hint[@pr:rational-quotient-character-dual][Воспользуйтесь тем, что группа
  $QQ/ZZ$ изоморфна прямой сумме групп $Q_p/Z_p$ по всем простым числам $p$
  (каждая дробь $m/n$ однозначно представима в виде суммы дробей, знаменатели
  которых — степени простых чисел). Ответ: $hat(QQ/ZZ) approx product_p Z_p$.
] <hint:rational-quotient-character-dual>

#hint[@pr:binary-sequence-product-character-dual][б) Воспользуйтесь разложением
  чисел отрезка $[0,1]$ в бесконечную двоичную дробь.
] <hint:binary-sequence-product-character-dual>

#hint[@pr:irrational-rotation-invariant-integrable-function][Преобразование
  Фурье функции $f$ инвариантно относительно умножения на последовательность
  ${e^(2 pi i n alpha)}$.
] <hint:irrational-rotation-invariant-integrable-function>

#hint[@pr:riemann-lebesgue-group-fourier-decay][Докажите требуемое утверждение
  для ступенчатых функций.
] <hint:riemann-lebesgue-group-fourier-decay>

#hint[@pr:padic-test-functions-fourier-invariance][Пусть $chi$ —
  характеристическая функция множества $Z_p subset Q_p$.

  Всякий элемент $cal(D)(G)$ является линейной комбинацией вида
  $sum c_k chi(a_k x+b_k)$, где $c_k in CC$, $a_k,b_k in Q_p$. Докажите, что при
  #source(356) отождествлении $hat(Q)_p$ с $Q_p$, указанном в задаче
  @pr:padic-additive-group-duals а), функция $chi$ переходит в себя при
  преобразовании Фурье.
] <hint:padic-test-functions-fourier-invariance>

#hint[@pr:smooth-torus-rapid-sequence-fourier-isomorphism][Воспользуйтесь
  эквивалентностью систем полунорм

  $
    p_k (f)=sup_(t in T) abs(f^((k))(t)) quad "и" quad
    p'_k (f)=integral_T abs(f^((k))(t))dif t.
  $
] <hint:smooth-torus-rapid-sequence-fourier-isomorphism>

#hint[@pr:positive-definite-function-basic-inequalities][а) Матрица
  $mat(f(0), f(x); f(-x), f(0))$ положительно определена тогда и только тогда,
  когда $f(0)>=0$, $f(x)=overline(f(-x))$ и $f(0)^2-abs(f(x))^2>=0$.

  б) Воспользуйтесь условием положительности матрицы

  $ mat(f(0), f(x), f(x-y); f(-x), f(0), f(-y); f(y-x), f(y), f(0)). $
] <hint:positive-definite-function-basic-inequalities>

#hint[@pr:positive-definite-function-constructions][а) Положительная
  определенность матрицы $A$ означает, что
  $sum_(k,j) a_(k j) z_k overline(z)_j>=0$ для всех наборов ${z_k} in CC^n$.

  б) Покомпонентное произведение положительно определенных матриц положительно
  определено. (Для доказательства воспользуйтесь тем, что положительно
  определенная матрица является суммой матриц ранга $1$, обладающих тем же
  свойством.)

  в) Преобразуйте выражение $sum (phi ast phi^*)(x_k-x_j)z_k overline(z)_j$ к
  виду $integral_G abs(f(x))^2 dif x$, где $f(y)=sum_k z_k phi(y-x_k)$.
] <hint:positive-definite-function-constructions>

#hint[@pr:finite-group-positive-definiteness-fourier-criterion][Матрица $A$,
  соответствующая набору всех элементов $G$, является матрицей оператора $S(f)$.
  При преобразовании Фурье этот оператор переходит в оператор умножения на
  $tilde(f)$.
] <hint:finite-group-positive-definiteness-fourier-criterion>

#hint[@pr:nonnegative-function-positive-definite-transform][$sum_(k,j)
  tilde(phi)(chi_k chi_j^(-1))z_k overline(z)_j=integral_G phi(x)abs(
    sum_k z_k
    chi_k (x)
  )^2 dif mu(x)$.
] <hint:nonnegative-function-positive-definite-transform>
