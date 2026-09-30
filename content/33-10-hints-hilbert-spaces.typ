#import "main-defs.typ": *
#import "statements.typ": *

=== Гильбертовы пространства <sec:hints-hilbert-spaces>

==== Геометрия гильбертова пространства <ss:hints-hilbert-space-geometry>

#hint[@pr:hilbert-completion-functor-universal-object][б) Рассмотрите категорию
  изометрических отображений данного предгильбертова пространства во
  всевозможные гильбертовы пространства.
] <hint:hilbert-completion-functor-universal-object>

#hint[@pr:trigonometric-hilbert-basis][Для доказательства полноты воспользуйтесь
  теоремой Вейерштрасса.
] <hint:trigonometric-hilbert-basis>

#hint[@pr:classical-orthogonal-polynomial-construction][Результатом
  ортогонализации являются с точностью до постоянного множителя следующие
  специальные функции:

  а) _многочлены Лежандра_#idx("Многочлены", "Лежандра")
  $P_n (x)=(dif/(dif x))^n [(1-x^2)^n]$;

  б) _многочлены Чебышева_ $T_n (x)=cos(n arccos x)$;

  в) _многочлены Лагерра_#idx("Многочлены", "Лагерра")
  $L_n (x)=e^x (dif/(dif x))^n (e^(-x) x^n)$;

  г) _многочлены Эрмита_ $H_n (x)=e^(x^2)(dif/(dif x))^n e^(-x^2)$.
] <hint:classical-orthogonal-polynomial-construction>

#hint[@pr:holomorphic-polynomial-orthogonalization][а)
  $f_k (z)=sqrt((k+1)/S)(z/R)^k$, где $S=pi R^2$ — площадь круга;

  б) $f_k (z)=z^k/sqrt(pi dot k!)$.
] <hint:holomorphic-polynomial-orthogonalization>

#hint[@pr:holomorphic-evaluation-reproducing-kernel][Найдите разложение искомой
  функции $g_x (z)$ по базису задачи
  @pr:holomorphic-polynomial-orthogonalization.

  Ответы:

  а) $g_x (z)=1/(pi (R-(overline(x)z)/R)^2)$;

  б) $g_x (z)=1/pi e^(overline(x)z)$.
] <hint:holomorphic-evaluation-reproducing-kernel>

#source(347)

#hint[@pr:bergman-fock-holomorphic-completions][С помощью результата задачи
  @pr:holomorphic-polynomial-orthogonalization докажите, что каждая сходящаяся в
  смысле $L_2$ последовательность аналитических функций сходится равномерно на
  любом компакте, лежащем внутри данной области.
] <hint:bergman-fock-holomorphic-completions>

#hint[@pr:trigonometric-system-interval-completeness][а) Вложите $L_2 (a,b)$ в
  $L_2 (0,1)$.

  б) Докажите, что произвольная функция из $L_2 (a,b-1)$ однозначно продолжается
  до функции из искомого ортогонального дополнения в $L_2 (a,b)$.
] <hint:trigonometric-system-interval-completeness>

#hint[@pr:almost-periodic-hilbert-completion][б) Докажите, что гильбертова норма
  оценивается через равномерную норму и что обратное неверно, как следует из
  рассмотрения последовательности $f_n (x)=sum_(k=1)^n 1/k e^(i lambda_k x)$,
  где ${lambda_k}$ — попарно различная последовательность вещественных чисел.
] <hint:almost-periodic-hilbert-completion>

#hint[@pr:counting-measure-nonseparable-hilbert-space][Пусть $f_lambda (x)$ —
  функция на $RR$, равная $1$ в точке $lambda$ и $0$ в остальных точках. Тогда
  ${f_lambda}_(lambda in RR)$ — ортонормированный базис в $L_2 (RR,mu)$.
  Соответствие $f_lambda arrow.l.r e^(i lambda x)$ устанавливает изоморфизм
  базисов, а следовательно, и гильбертовых пространств.
] <hint:counting-measure-nonseparable-hilbert-space>

#hint[@pr:orthonormal-bases-in-dense-function-subspaces][Примените процесс
  ортогонализации.
] <hint:orthonormal-bases-in-dense-function-subspaces>

#hint[@pr:polynomial-subsets-orthogonal-complements][Во всех случаях
  ортогональное дополнение равно нулю.
] <hint:polynomial-subsets-orthogonal-complements>

#hint[@pr:prehilbert-continuous-orthogonal-complements][а) Пространство функций,
  равных нулю при $x>=0$;

  б) ${0}$.
] <hint:prehilbert-continuous-orthogonal-complements>

#hint[@pr:indicator-curve-chord-angles][а) $90 degree$,

  б) $arccos sqrt(a/b)$, где $a$ — длина меньшей хорды, $b$ — длина большей
  хорды.
] <hint:indicator-curve-chord-angles>

#hint[@pr:parallelogram-inner-product-characterization][а) Непосредственная
  проверка.

  б) Пусть $K=RR$. Определим скалярное произведение формулой
  $ (x,y)=1/2 (norm(x+y)^2-norm(x)^2-norm(y)^2). $
  Равенство $(x+y,z)=(x,z)+(y,z)$ равносильно соотношению

  $
    norm(x+y+z)^2+norm(x)^2+norm(y)^2+norm(z)^2 \
    =norm(x+y)^2+norm(y+z)^2+norm(x+z)^2.
  $
  Это соотношение получается из тождества параллелограмма, примененного ко всем
  параллелограммам, которые можно составить из вершин трехмерного
  параллелепипеда. Далее, индукцией по $n$ доказывается равенство
  $(n x,z)=n(x,z)$, а из него выводится, что $(lambda x,z)=lambda(x, z)$ для
  рациональных $lambda$. Поскольку $(x,y)$ по построению непрерывно зависит от
  $x$, равенство $(lambda x,y)=lambda(x, y)$ справедливо для всех вещественных
  $lambda$. В случае комплексного поля мы можем сначала рассмотреть
  овеществление $H_RR$ гильбертова пространства $H$ (т. е. то же пространство
  $H$, в котором допускаются только операции сложения и умножения на
  вещественное число). Тогда в силу уже доказанного в $H_RR$ существует такое
  (вещественное) скалярное произведение $(x,y)_RR$, что $norm(x)^2=(x,x)_RR$.
  Определим скалярное произведение в $H$ формулой $(x,y)=(x,y)_RR+i(x,i y)_RR$.
  Проверьте, что это выражение действительно обладает нужными свойствами.
  (Воспользуйтесь соотношением
  $(x,i x)_RR=1/2 (norm(x+i x)^2-norm(x)^2-norm(i x)^2)=0$, так как
  $norm(lambda x)^2=abs(lambda)^2 norm(x)^2$.)
] <hint:parallelogram-inner-product-characterization>

#source(348)

#hint[@pr:complex-inner-product-averaging-identities][Воспользуйтесь тождеством
  $norm(x+e^(i theta)y)^2 e^(i theta)=norm(x)^2 e^(i theta)+(x,y)+(y,x)e^(2 i
  theta)+norm(y)^2 e^(i theta)$
  и соотношением $sum_(k=1)^N exp{(2 pi i k)/N}=sum_(k=1)^N exp{(4 pi i k)/N}=0$
  при $N>=3$.
] <hint:complex-inner-product-averaging-identities>

#hint[@pr:constant-pairwise-inner-products-weak-limit][Проверьте, что существует
  сильный предел $y$ последовательности $y_n=1/n sum_(i=1)^n x_i$ и что векторы
  $z_i=x_i-y$ ортогональны друг другу и вектору $y$.
] <hint:constant-pairwise-inner-products-weak-limit>

#hint[@pr:orthogonal-series-convergence-equivalences][б) $arrow.r.double$ в) по
  следствию из теоремы Банаха — Штейнгауза (об ограниченности слабо сходящейся
  последовательности).
] <hint:orthogonal-series-convergence-equivalences>

#hint[@pr:double-orthogonal-complement-closed-span][Пусть $L(S)$ — замыкание
  линейной оболочки $S$. Тогда $L(S)^perp=S^perp$. Поэтому $(S^perp)^perp=L(S)$
  по теореме об ортогональном дополнении.
] <hint:double-orthogonal-complement-closed-span>

#hint[@pr:hilbert-functional-norm-preserving-extension][Представьте $H$ в виде
  $overline(L) plus.o L^perp$.
] <hint:hilbert-functional-norm-preserving-extension>

==== Операторы в гильбертовом пространстве <ss:hints-hilbert-space-operators>

#hint[@pr:operator-real-imaginary-hermitian-decomposition][а) $Re A=1/2(A+A^*)$,
  $Im A=1/(2 i)(A-A^*)$.

  б) $A A^*-A^* A=2 i(Im A dot Re A-Re A dot Im A)$.

  в) $V V^*=(Re V)^2+i(Im V dot Re V-Re V dot Im V)+(Im V)^2$.
] <hint:operator-real-imaginary-hermitian-decomposition>

#hint[@pr:orthogonal-projection-reflection-characterization][а) Положим
  $H_1=P H$, $H_2=(1-P)H$. Проверьте, что $H_1$ и $H_2$ ортогональны, в сумме
  дают $H$ и что $P$ — оператор проектирования на $H_1$ параллельно $H_2$.

  б) Положим $P=(S+1)/2$. Проверьте, что $P$ — ортопроектор.
] <hint:orthogonal-projection-reflection-characterization>

#hint[@pr:hilbert-operator-adjoint-norm-identities][Воспользуйтесь равенством
  $norm(A)=sup_(x,y) abs((A x,y))/(norm(x) dot norm(y))$.
] <hint:hilbert-operator-adjoint-norm-identities>

#hint[@pr:positive-operator-log-convexity-quadratic-bound][а) Если $k$ и $l$
  четны, то искомое неравенство можно переписать в виде
  $(A^(k/2)x,A^(l/2)x)<=norm(A^(k/2)x) dot norm(A^(l/2)x)$. Если же $k$ и $l$
  нечетны, то введем положительную полуопределенную форму $(x,y)_A=(A x,y)$.
  Тогда нужное нам неравенство примет вид:

  $
    (A^((k-1)/2)x,A^((l-1)/2)x)_A
    <=norm(A^((k-1)/2)x)_A dot norm(A^((l-1)/2)x)_A.
  $

  б) Выведите из а) неравенство
  $norm(A x)^(2(n+1))<=(A x,x)^n times (A^(n+2)x,x)$, а из него — искомое
  неравенство.
] <hint:positive-operator-log-convexity-quadratic-bound>

#hint[@pr:monotone-operator-strong-convergence][Докажите, что последовательность
  квадратичных форм $Q_(A_n) (x)=(A_n x,x)$ стремится поточечно к некоторой
  квадратичной форме $Q_A (x)$. Затем воспользуйтесь неравенством задачи
  @pr:positive-operator-log-convexity-quadratic-bound б).
] <hint:monotone-operator-strong-convergence>

#hint[@pr:invariant-subspace-projection-relations][а) $A P=P A P$, б) $A P=P A$.
] <hint:invariant-subspace-projection-relations>

#hint[@pr:congruent-subspace-pairs-line-angles][а) Достаточно рассмотреть случай
  $dim H=2$.

  б) $cos^2 phi=tr P_1 P_2 P_1=norm(P_1 P_2 P_1)$.

  в) Пусть единичные векторы $xi_i$ порождают $L_i$, единичные векторы $eta_i$ —
  $M_i$ ($i=1,2$). Условием конгруэнтности пар $(L_1,L_2)$ и $(M_1,M_2)$
  является равенство $abs((xi_1,xi_2))=abs((eta_1,eta_2))$, равносильное
  равенству $tr P_1 P_2 P_1=tr Q_1 Q_2 Q_1$.
] <hint:congruent-subspace-pairs-line-angles>

#hint[@pr:principal-subspace-angles-congruence-gap][а) Операторы $P_1 P_2 P_1$ и
  $1-P_1 P_2 P_1=P_1 (1-P_2)P_1+(1-P_1)$ положительны.

  б) Ранг оператора $P_1 P_2 P_1$ не превосходит рангов $P_1$ и $P_2$.
  #source(349)
  в) При решении задачи можно считать, что $L_2=M_2$, заменяя, если нужно, пару
  $(M_1,M_2)$ конгруэнтной парой. Рассмотрите проекции образующих векторов в
  $L_1$ и $M_1$ на $L_2=M_2$ и на ортогональное дополнение к этому пространству.

  г) Первый способ: развить соображения предыдущего пункта. Второй способ.
  Назовем пару $(L_1,L_2)$ разложимой, если пространство $H$ представимо в виде
  $H=H prime plus.o H prime prime$ так, что
  $L_i=L_i prime plus.o L_i prime prime$, где $L_i prime=L_i inter H prime$,
  $L_i prime prime=L_i inter H prime prime$. В этом случае мы будем говорить,
  что пара $(L_1,L_2)$ является суммой пар $(L_1 prime,L_2 prime)$ и
  $(L_1 prime prime,L_2 prime prime)$. Покажите, что всякая пара является суммой
  неразложимых и что неразложимые пары бывают только при $dim H=1$ или $2$.
  Последнее видно из того, что если $xi$ — собственный вектор оператора
  $P_1 P_2 P_1$, то пространство $H prime$, натянутое на $xi$ и $P_2 xi$,
  инвариантно относительно $P_1$ и $P_2$. Значит, этим свойством обладает и
  $H prime prime=(H prime)^perp$. Отсюда вытекает, что исходная пара разложима,
  если только $dim H>2$.

  д) Раствор равен $sin phi$, где $phi$ — наибольший из углов между $L_1$ и
  $L_2$.

] <hint:principal-subspace-angles-congruence-gap>

#hint[@pr:unitary-operator-hilbert-basis-characterization][а) Если $U$ унитарен
  и ${e_alpha}_(alpha in A)$ — базис в $H_1$, то ${U e_alpha}_(alpha in A)$ —
  ортонормированная система в $H_2$. Полнота ее следует из того, что
  $x perp U e_alpha$ влечет $U^(-1)x perp e_alpha$.

  б) Если ${e_alpha}_(alpha in A)$ — ортонормированный базис в $H_1$, а
  ${U e_alpha}_(alpha in A)$ — ортонормированный базис в $H_2$, то для любых
  $x,y in H_1$, имеем
  $ x=sum_alpha (x,e_alpha)e_alpha, quad y=sum_beta (y,e_beta)e_beta. $
  Поэтому $U x=sum_alpha (x,e_alpha)U e_alpha$,
  $U y=sum_beta (y,e_beta)U e_beta$ и

  $
    (U x,U y)=sum_(alpha,beta) (x,e_alpha)overline((y,e_beta))(U e_alpha,U
      e_beta) \
    =sum_alpha (x,e_alpha)overline((y,e_alpha))=(x,y).
  $
] <hint:unitary-operator-hilbert-basis-characterization>

#hint[@pr:hilbert-operator-range-kernel-orthogonality][а) Условие $y perp im A$
  равносильно отношению $(y,A x)=0$ для всех $x in H$, а условие $y in ker A^*$
  — соотношению $(A^* y,x)=0$ для всех $x in H$. Но $(y,A x)=(A^* y,x)$.

  б) По теореме об ортогональном дополнении равенство
  $(ker A)^perp=overline((im A^*))$ равносильно равенству $ker A=(im A^*)^perp$,
  показанному в п. а) (с заменой $A$ на $A^*$).
] <hint:hilbert-operator-range-kernel-orthogonality>

#hint[@pr:weak-operator-norm-convergence-implies-strong][Воспользуйтесь
  соотношением
  $ norm((A_n-A)x)^2=norm(A_n x)^2+norm(A x)^2-2 Re(A_n x, A x). $
] <hint:weak-operator-norm-convergence-implies-strong>

#hint[@pr:hilbert-operator-star-automorphism-inner][
  Пусть $\{x_alpha\}$ — ортонормированный базис в $H$, а $E_(alpha beta)$
  переводит $x_beta$ в $x_alpha$ и остальные базисные векторы в нуль. Проверьте
  соотношения:

  + $E_(alpha beta)^*=E_(beta alpha)$;
  + $E_(alpha beta)E_(gamma delta)=E_(alpha delta)$ при $beta=gamma$ и равно
    нулю в остальных случаях;
  + если $P$ — ортопроектор и $E_(alpha alpha)P=P$, то $P=0$ или
    $P=E_(alpha alpha)$.

  Потребуйте также $E_(alpha alpha)!=0$ и полноту:
  $sum_(alpha in F)E_(alpha alpha)->I$ сильно, когда конечное множество индексов
  $F$ возрастает. Выбрав единичный $y_(alpha_0) in op("im")E_(alpha_0 alpha_0)$,
  положите $y_alpha=E_(alpha alpha_0)y_(alpha_0)$. Эти векторы образуют
  ортонормированный базис и $E_(alpha beta)y_gamma=delta_(beta gamma)y_alpha$.
  #source(350)
  Примените это к системе $sigma(E_(alpha beta))$. Ненулевость и минимальность
  проекций следуют из инъективности автоморфизма. Для полноты пусть $P$ —
  ортопроектор на ортогональное дополнение суммы их образов. Тогда
  $E_(alpha alpha)sigma^(-1)(P)=0$ для всех $alpha$, а полнота исходной системы
  дает $sigma^(-1)(P)=0$, следовательно, $P=0$. Унитарный оператор
  $U:x_alpha|->y_alpha$ осуществляет $sigma(A)=U A U^*$: это равенство
  проверяется по матричным коэффициентам
  $E_(alpha alpha)A E_(beta beta)$.#ed-note[
    Уточнены ненулевость и полнота системы матричных единиц. Доказательство
    применимо и к несепарабельному $H$, с сетью конечных сумм проекций. Ср.
    лемму 3, с.331: #cite(<Kadison1974>, form: "full"). Для $*$-автоморфизма
    реализующий оператор из этой леммы унитарен, поскольку
    $norm(T)=norm(T^(-1))=1$. Аргумент с матричными единицами приведен
    самостоятельно.
  ]
] <hint:hilbert-operator-star-automorphism-inner>

#hint[@pr:separable-hilbert-operator-closed-ideals][Если идеал $I$ содержит хотя
  бы один ненулевой оператор, то он содержит все операторы конечного ранга и,
  значит, все компактные операторы. Если $I$ содержит некомпактный оператор, то
  он содержит ортопроектор на бесконечное пространство и, следовательно, все
  операторы. Ответ: ${0}$, $cal(K)(H)$, $cal(L)(H)$.
] <hint:separable-hilbert-operator-closed-ideals>

#hint[@pr:compact-hermitian-eigenvalue-interlacing][Для положительной ветви
  спектра воспользуйтесь приведенными ниже соотношениями на подпространствах,
  где верхняя грань отношения Релея неотрицательна; нулевые векторы в этих
  отношениях исключаются, а векторы из $ker P$ дают значение нуль. Для
  отрицательной ветви примените тот же аргумент к $-A$.

  Воспользуйтесь соотношениями

  $
    sup_(x in L) frac(lr((P A P x,x)), lr((x,x)))
    =sup_(x in L) frac(lr((A P x,P x)), lr((P x,P x))) dot frac(
      lr(
        (P x,P
          x)
      ), lr((x,x))
    )
    <=sup_(y in P L) frac(lr((A y,y)), lr((y,y))),
  $
  $
    sup_(x in L) frac(lr((P A P x,x)), lr((x,x)))
    >=sup_(x in L inter P H) frac(lr((P A P x,x)), lr((x,x)))
    =sup_(x in L inter P H) frac(lr((A x,x)), lr((x,x))).
  $
] <hint:compact-hermitian-eigenvalue-interlacing>

#hint[@pr:positive-operator-square-root-iteration][а) Докажите по индукции
  соотношения $norm(A)^(1/2) dot 1>=B_n>=0$, $B_n^2<=A$ и воспользуйтесь
  результатом задачи @pr:monotone-operator-strong-convergence.

  б) Единственность сначала докажите для случая $ker A=0$, пользуясь тем, что
  построенный квадратный корень $B$ является пределом многочлена от $A$ и,
  следовательно, перестановочен с любым другим квадратным корнем $C$; это влечет
  равенство $(B+C)(B-C)x=0$, откуда $(B-C)x=0$. Общий случай следует из
  соотношения $ker C=ker C^2$, верного для любых $C>=0$.
] <hint:positive-operator-square-root-iteration>

#hint[@pr:finite-dimensional-polar-decomposition][б) Операторы $R$ и $S$
  удовлетворяют соотношениям $R^2=A A^*$, $S^2=A^* A$. Оператор $V$ однозначно
  определен лишь на $im S$, оператор $U$ определен по модулю $ker R$.

  в) Операторы $A$, допускающие искомую запись, обладают свойством
  $dim ker A=dim ker A^*$. Однако $dim ker T!=dim ker T^*$.
] <hint:finite-dimensional-polar-decomposition>

#hint[@pr:partial-isometry-projection-characterization][$U^* U=P_1$;
  $U U^*=P_2$.
] <hint:partial-isometry-projection-characterization>

#hint[@pr:hilbert-polar-decomposition][Положим $R=(A A^*)^(1/2)$ и определим $U$
  на $im A^*$ равенством $U A^* x=R x$.
] <hint:hilbert-polar-decomposition>

#hint[@pr:hilbert-schmidt-basis-norm-tensor-characterization][а) Воспользуйтесь
  тем, что для любых двух базисов ${x_beta}_(beta in B)$ и
  ${y_gamma}_(gamma in Gamma)$ справедливо равенство:

  $
    sum_(beta in B) norm(A x_beta)^2
    =sum_(beta in B) sum_(gamma in Gamma) abs((A x_beta,y_gamma))^2 \
    =sum_(gamma in Gamma) sum_(beta in B) abs((x_beta,A^* y_gamma))^2
    =sum_(gamma in Gamma) norm(A^* y_gamma)^2.
  $

  б) Сходимость ряда $sum_(gamma in Gamma) (A y_gamma,B y_gamma)_H$ вытекает из
  неравенства Коши — Буняковского, примененного дважды: один раз для скалярного
  произведения в $H$, другой раз — для скалярного произведения в $l_2 (Gamma)$.

  в) Пусть $Gamma_0$ — конечное подмножество в $Gamma$, $P_(Gamma_0)$ — проектор
  на соответствующее подпространство в $H$. Оцените норму разности $A$ и $P A P$
  в $L_2 (H)$.

  г) Отображение $H times.o H prime$ в $L_2 (H)$ переводит вектор $x times.o f$
  в оператор $A:y arrow.r f(y)x$.

  д) Пусть ${f_beta}_(beta in B)$ — базис в $L_2 (X,mu)$. Покажите, что $A$
  задается ядром $K(x_1,x_2)=sum_(beta_1,beta_2) (A f_(beta_1),f_(beta_2))
  f_(beta_2) (x_1)overline(f_(beta_1) (x_2))$.
] <hint:hilbert-schmidt-basis-norm-tensor-characterization>

#hint[@pr:trace-class-operators-trace-duality][а) Следует из определения.
  #source(351)
  б) Докажите, что умножение справа на ограниченный оператор $B in L_2 (H)$
  является ограниченным оператором в $L_2 (H)$. Обозначим его $M(B)$. Докажите,
  что $M(B)^*=M(B^*)$.

  в) Проверьте равенство $norm(A)_1=sup_(U,V) abs(tr U A V)$, где $U$ и $V$
  пробегают совокупность всех частично изометрических операторов.

  г) Каждый оператор $A in cal(L)_1 (H)$ определяет линейный функционал $f_A$ на
  $cal(K)(H)$: $f_A (K)=tr A K$. Каждый ограниченный оператор $B$ определяет
  линейный функционал $F_B$ на $cal(L)_1 (H)$: $F_B (A)=tr A B$. Для
  доказательства того, что это полный набор функционалов, воспользуйтесь тем,
  что в $cal(K)(H)$ и $cal(L)_1 (H)$ операторы конечного ранга образуют плотное
  множество.
] <hint:trace-class-operators-trace-duality>

#hint[@pr:continuous-hilbert-basis-coherent-trace][а) Воспользуйтесь функциями
  $g_x (z)$, построенными в задаче
  @pr:holomorphic-evaluation-reproducing-kernel.

  в) Представьте $dim H$ в виде $sum_k abs(xi_k)^2$, где ${xi_k}$ — базис в $H$.

  г) Начните с операторов ранга $1$.
] <hint:continuous-hilbert-basis-coherent-trace>

#hint[@pr:continuous-trace-class-kernel-diagonal-trace][Пусть
  $l_n (x)=e^(2 pi i n x)$ — базис в $L_2 [0,1]$,

  $
    tr_N (A)=sum_(n=-N)^(+N) (A l_n,l_n),
    quad s_k (A)=1/k sum_(N=1)^k tr_N (A).
  $
  Докажите, что для $A in cal(L)_1 (H)$ $lim_(k arrow.r infinity) s_k (A)=tr A$.
  Проверьте, что для интегрального оператора с ядром $K(x,y)$ справедливо
  соотношение
  $
    s_k (A)=integral_0^1 integral_0^1 K(x,y)C_k (x-y)dif x dif y,
  $

  где

  $ C_k (t)=1/k [(sin((k+1)pi t))/(sin pi t)]^2-1/k. $

  Для непрерывного ядра отсюда вытекает, что
  $lim_(k arrow.r infinity) s_k (A)=integral_0^1 K(x,x) dif x$.
] <hint:continuous-trace-class-kernel-diagonal-trace>
