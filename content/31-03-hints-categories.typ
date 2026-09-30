#import "main-defs.typ": *
#import "statements.typ": *

=== Категории и функторы <sec:hints-categories>

#source(295)
#hint[@pr:subset-contravariant-functor][
  Каждому множеству сопоставить его дополнение.
] <hint:subset-contravariant-functor>

#hint[@pr:initial-objects][
  Ответ на все вопросы — «да».
] <hint:initial-objects>

#hint[@pr:marked-cyclic-group-universal-object][
  Универсальный отталкивающий объект в $G_1$ — группа целых чисел $ZZ$, а в
  $G_1^0$ — единичная группа.
] <hint:marked-cyclic-group-universal-object>

#hint[@pr:free-group-universal-object][
  Универсальное свойство легко следует из любой известной конструкции свободной
  группы. Приведем одну конструкцию свободной группы $F_2$ с образующими $a$ и
  $b$.

  Пусть $"Ц"_a$ и $"Ц"_b$ — бесконечные циклические группы с образующими $a$ и
  $b$. Элементы $F_2$ — это *слова* $(x_1,x_2,dots,x_n)$, где $x_k$ при
  $k=1,2,dots,n$ принадлежит одной из групп $"Ц"_a$ или $"Ц"_b$, любые два
  последовательных члена принадлежат разным группам и ни один член не является
  единичным элементом своей группы; число $n$ назовем *длиной* слова. Длина
  слова может быть равна $0$, т. е. $F_2$ содержит пустое слово $emptyset$.
  Умножение слов определим с помощью индукции по длине. Положим
  $emptyset dot emptyset = emptyset$,
  $emptyset dot (x_1,dots,x_n) = (x_1,dots,x_n) dot emptyset = (x_1,dots,x_n)$
  (т. е. $emptyset$ будет единичным элементом $F_2$). Произведение
  $(x_1,dots,x_n)(y_1,dots,y_m)$ определим отдельно в трех случаях:

  1) если $x_n$ и $y_1$ лежат в разных группах, то
  $ (x_1,dots,x_n)(y_1,dots,y_m) = (x_1,dots,x_n,y_1,dots,y_m); $

  2) если $x_n$ и $y_1$ лежат в одной группе и $x_n != y_1^(-1)$, то
  $ (x_1,dots,x_n)(y_1,dots,y_m) = (x_1,dots,x_(n-1),x_n y_1,y_2,dots,y_m); $

  3) если $x_n = y_1^(-1)$, то
  $ (x_1,dots,x_n)(y_1,dots,y_m) = (x_1,dots,x_(n-1))(y_2,dots,y_m) $
  (произведение в правой части определено в силу индуктивного предположения).

  Проверьте, что $F_2$ с этим умножением является группой с двумя образующими
  $a$ и $b$ и что она и есть искомый универсальный объект.
] <hint:free-group-universal-object>

#hint[@pr:free-abelian-group-universal-object][
  Свободная абелева группа с образующими $a$ и $b$ может быть определена как
  прямое произведение бесконечных циклических групп $"Ц"_a$ и $"Ц"_b$. Другой
  способ ее построения — взять факторгруппу свободной группы с двумя образующими
  (см. задачу @pr:free-group-universal-object) по ее коммутанту.
] <hint:free-abelian-group-universal-object>

#hint[@pr:tensor-algebra-universal-object][
  Приведем одну конструкцию универсального объекта. Рассмотрим векторное
  пространство $A_n$ над $K$ с базисом $e_I$, где $I$ пробегает конечные
  последовательности $(k_1,dots,k_N)$ $(k_i in \{1,2,dots,n\})$; если
  рассматриваются алгебры с единицей, то допускается пустая последовательность
  $I=emptyset$. Умножение в $A_n$, превращающее ее в $K$-алгебру, определяется
  правилом $e_I dot e_(I') = e_(I I')$, где $I I'$ получается приписыванием $I'$
  вслед за $I$. Проверить, что $A_n$ является ассоциативной $K$-алгеброй с $n$
  отмеченными образующими $e_((1)),e_((2)),dots,e_((n))$ и что это и есть
  универсальный объект.
] <hint:tensor-algebra-universal-object>

#hint[@pr:commutative-algebra-universal-object][
  Универсальный объект в $C A_n (K)$ может быть определен как факторалгебра
  универсального объекта в $A_n (K)$ (см. задачу
  @pr:tensor-algebra-universal-object) по двустороннему идеалу, натянутому на
  элементы вида $x y-y x$.
] <hint:commutative-algebra-universal-object>

#source(296)
#hint[@pr:free-lie-algebra-universal-object][
  Приведем конструкцию свободной алгебры Ли с $n$ образующими $e_1,dots,e_n$.
  Определим по индукции семейство множества $E_n$ $(n >= 1)$, полагая
  $E_1=\{e_1,dots,e_n\}$, а при $n >= 2$
  $E_n = op("∐", limits: #true)_(k+l=n) E_k times E_l$. Положим
  $M = op("∐", limits: #true)_n E_n$ и определим умножение $M times M arrow.r M$
  посредством отображений $E_k times E_l arrow.r E_(k+l) subset M$ (стрелка —
  каноническое включение, вытекающее из определения $E_(k+l)$). Пусть $K[M]$ —
  векторное пространство над $K$ с базисом $M$; введенное умножение на $M$
  превращает $K[M]$ в $K$-алгебру. Свободная алгебра Ли с $n$ образующими может
  быть определена как факторалгебра $K[M]$ по двустороннему идеалу, натянутому
  на элементы вида $a dot a$ и $(a b)c+(b c)a+(c a)b$. Проверьте универсальное
  свойство.

  Заметим, что универсальные объекты задач @pr:tensor-algebra-universal-object и
  @pr:commutative-algebra-universal-object могут быть получены аналогичной
  конструкцией, т. е. факторизацией $K[M]$ по подходящему двустороннему идеалу.
] <hint:free-lie-algebra-universal-object>

#hint[@pr:universal-enveloping-algebra][
  Определим $V(frak(g))$ как тензорную алгебру пространства $frak(g)$,
  профакторизованную по двустороннему идеалу, натянутому на элементы вида
  $x circle.small y-y circle.small x-[x,y]$, $x,y in frak(g)$.

  Доказать универсальность $V(frak(g))$, исходя из универсальности тензорной
  алгебры (см. задачу @pr:tensor-algebra-universal-object).
] <hint:universal-enveloping-algebra>

#hint[@pr:free-lie-enveloping-algebra][
  Пусть $frak(g)$ — свободная алгебра Ли с $n$ образующими. Используя
  универсальное свойство $frak(g)$ (задача
  @pr:free-lie-algebra-universal-object) и универсальное свойство $V(frak(g))$
  (задача @pr:universal-enveloping-algebra), доказать, что $V(frak(g))$ есть
  универсальный объект в категории $A_n (K)$ (см. задачу
  @pr:tensor-algebra-universal-object).
] <hint:free-lie-enveloping-algebra>

#hint[@pr:categorical-coproducts][
  Сумма в категории множеств — дизъюнктивное объединение; в категории линейных
  пространств — прямая сумма ($op("∐", limits: #true)_(alpha in A) V_alpha$ —
  подпространство в декартовом произведении $product_(alpha in A) V_alpha$,
  состоящее из векторов, у которых лишь конечное число ненулевых компонент).
] <hint:categorical-coproducts>

#hint[@pr:categorical-products][
  Произведение в категориях множеств и линейных пространств — обычное декартово
  произведение.
] <hint:categorical-products>

#hint[@pr:finite-direct-sum-product][
  См. указания к задачам @pr:categorical-coproducts и @pr:categorical-products.
] <hint:finite-direct-sum-product>

#hint[@pr:tensor-product-universal-object][
  $L_1 times.o L_2$ может быть определено как факторпространство $L'/L''$, где
  $L'$ — векторное пространство над $K$ с базисом $(e_((a,b)))$
  $(a in L_1,b in L_2)$ (т. е. множество индексов равно $L_1 times L_2$), а
  $L''$ — подпространство в $L'$, натянутое на векторы вида
  $e_((lambda a+mu b,c))-lambda e_((a,c))-mu e_((b,c))$,
  $e_((a,lambda b+mu c))-lambda e_((a,b))-mu e_((a,c))$; $lambda,mu in K$.
] <hint:tensor-product-universal-object>

#hint[@pr:finite-group-torsion-product][
  Пусть $d$ — наибольший делитель чисел $m$ и $n$. Проверьте, что $"Ц"_d$ с
  каноническим морфизмом $"Ц"_m times "Ц"_n arrow.r "Ц"_d$, переводящим
  $(a mod m,b mod n)$ в $a b mod d$, является универсальным объектом (и,
  следовательно, $"Tor"("Ц"_m,"Ц"_n) = "Ц"_d$). В общем случае воспользуйтесь
  тем, что любая конечная абелева группа является прямой суммой циклических, и
  тем, что функтор $"Tor"$ аддитивен по каждому аргументу.
] <hint:finite-group-torsion-product>

#hint[@pr:inductive-projective-limits][
  а) Положим $A$ равным множеству натуральных чисел и превратим $A$ в
  направленное множество с помощью делимости ($alpha <= beta$, если
  $alpha divides beta$). Пусть $X_alpha = ZZ$ для всех $alpha in A$ и
  $phi_(alpha beta)$ при $alpha < beta$ есть умножение на $beta/alpha$.
  Проверить, что индуктивный предел этого семейства изоморфен аддитивной группе
  $QQ$ (морфизмы $phi_alpha : X_alpha arrow.r QQ$ задаются формулами
  $phi_alpha (k)=k/alpha$).

  б) Доказать, что вложение $ZZ arrow.r ZZ_p$ индуцирует изоморфизм
  $ZZ / (p^n ZZ) approx ZZ_p / (p^n ZZ_p)$.
] <hint:inductive-projective-limits>

#source(297)
#hint[@pr:restriction-of-scalars-functor][
  Непосредственно следует из определения.
] <hint:restriction-of-scalars-functor>

#hint[@pr:complexification-functor][
  Если $\{xi_alpha\}_(alpha in A)$ — базис в $L$ (см. задачу
  @pr:zorn-basis-existence), то он же является базисом в $L times.o_RR CC$.
] <hint:complexification-functor>

#hint[@pr:real-complex-categories-inequivalent][
  Воспользоваться тем, что функтор $F$, осуществляющий эквивалентность
  категорий, задает изоморфизм полугруппы эндоморфизмов $"End"(A)$ и
  $"End"(F(A))$, и тем, что полугруппа вещественных чисел не изоморфна ни одной
  из полугрупп матриц с комплексными коэффициентами.
] <hint:real-complex-categories-inequivalent>

#hint[@pr:group-algebra-functor][
  Следует из определений.
] <hint:group-algebra-functor>

#hint[@pr:topological-net-limit][
  Точка $x in X$ является пределом направленности $\{x_alpha\}_(alpha in A)$,
  если для любой окрестности $U$ точки $x$ существует такой элемент $beta in A$,
  что $x_alpha in U$ для всех $alpha >= beta$.
] <hint:topological-net-limit>

#hint[@pr:continuity-limit-characterization][
  а) Пусть $f$ непрерывна в точке $x$. Тогда для любого $epsilon > 0$ существует
  такое $delta > 0$, что $abs(f(y)-f(x)) < epsilon$, как только
  $d(x,y) < delta$. Если $x = lim x_n$, то существует такой номер $N$, что
  $d(x,x_n) < delta$ при $n > N$. Отсюда видно, что $f(x_n)$ имеет своим
  пределом $f(x)$.

  Если же $f$ разрывна в точке $x$, то существует такое $epsilon > 0$, что как
  угодно близко от $x$ найдется точка $y$, для которой
  $abs(f(x)-f(y)) >= epsilon$. Из таких точек $y$ можно составить
  последовательность $\{x_n\}$, сходящуюся к $x$. Соотношение
  $f(lim x_n) = lim f(x_n)$ для этой последовательности не выполняется.

  б) Переделайте рассуждения, приведенные в указании к п. а), заменяя
  последовательности $\{x_n\}$ на направленности $\{x_alpha\}_(alpha in A)$, где
  $A$ — множество окрестностей точки $x$, упорядоченное обратно включению (т. е.
  $U_1 >= U_2$, если $U_1 subset U_2$).

  в) Неверно. Противоречащие примеры (показывающие, что топология пространства
  не определяется, вообще говоря, классом сходящихся последовательностей) можно
  найти в теории интеграла (теорема Лебега о переходе к пределу под знаком
  интеграла) и в теории банаховых пространств (см. задачи
  @pr:weak-strong-topologies-distinct, @pr:schur-property).
] <hint:continuity-limit-characterization>

#hint[@pr:topological-space-category][
  Непосредственная проверка определений. Единственное нетривиальное утверждение:
  композиция двух непрерывных отображений является непрерывным отображением. Это
  легко следует из задачи @pr:continuity-limit-characterization б).
] <hint:topological-space-category>

#hint[@pr:metric-topology-functor][
  В качестве базы топологии можно взять совокупность открытых шаров.
] <hint:metric-topology-functor>

#hint[@pr:topological-products-coproducts][
  В качестве суммы семейства объектов $\{X_alpha\}_(alpha in A)$ можно взять их
  дизъюнктное объединение $op("∐", limits: #true)_(alpha in A) X_alpha$.
  Открытым множеством в этом объединении назовем множество вида
  $op("∐", limits: #true)_(alpha in A) U_alpha$, где $U_alpha$ — открытое
  подмножество в $X_alpha$.

  В качестве произведения семейства $\{X_alpha\}_(alpha in A)$ можно взять
  теоретико-множественное произведение $product_(alpha in A) X_alpha$. В
  качестве базы топологии нужно взять произведения вида
  $product_(alpha in A) U_alpha$, где $U_alpha$ — открытое подмножество в
  $X_alpha$, причем $U_alpha != X_alpha$ лишь для конечного множества индексов
  $alpha$.
] <hint:topological-products-coproducts>

#hint[@pr:closure-net-characterization][
  Пусть $M$ замкнуто и $\{x_alpha\}_(alpha in A)$ — последовательность точек
  $M$, сходящихся к $x$. Если $x in.not M$, то из открытости $X without M$
  вытекает, что $x_alpha in.not M$ для достаточно больших индексов $alpha$.
  Противоречие.

  Обратно, пусть $M$ незамкнуто. Тогда $X without M$ не открыто. Значит, одна из
  точек $x in X without M$ обладает свойством: в любой ее окрестности
  #source(298)
  $U$ есть точки из $M$. Пусть $x_U$ — одна из таких точек. Постройте
  направленность $\{x_U\}$, сходящуюся к $x$ (см. задачу
  @pr:continuity-limit-characterization б)).
] <hint:closure-net-characterization>

#hint[@pr:continuous-compact-connected-images][
  а) Воспользуйтесь результатом предыдущей задачи.

  б) Воспользуйтесь основным свойством непрерывных отображений: прообраз
  открытого множества открыт.
] <hint:continuous-compact-connected-images>

#hint[@pr:hausdorff-precompactness-criterion][
  Пусть $A$ предкомпактно. Тогда $overline(A)$ — компакт. Рассмотрим покрытие
  $overline(A)$ всевозможными открытыми шарами радиуса $epsilon$. В силу
  компактности $overline(A)$ у этого покрытия есть конечное подпокрытие. Центры
  шаров, входящих в это подпокрытие, образуют искомую $epsilon$-сеть для $A$.

  Обратно, пусть $overline(A)$ — не компакт. Это значит, что существует
  бесконечное открытое покрытие множества $overline(A)$, из которого нельзя
  выбрать конечного подпокрытия. Рассмотрим теперь всевозможные замкнутые шары в
  $overline(A)$ и назовем шар плохим, если он не покрывается никаким конечным
  числом элементов нашего покрытия. По условию для любого $epsilon > 0$
  $overline(A)$ можно представить в виде объединения конечного числа шаров
  радиуса $epsilon$. Хотя бы один из этих шаров должен быть плохим.

  Получите противоречие, построив стягивающуюся последовательность плохих шаров.
] <hint:hausdorff-precompactness-criterion>

#hint[@pr:precompact-cauchy-subsequences][
  а) $arrow.r.double$ б) Пусть $A$ предкомпактно и $\{x_n\}$ —
  последовательность точек из $A$. Назовем шар в $overline(A)$ богатым, если он
  содержит бесконечное число членов последовательности. Постройте стягивающуюся
  последовательность богатых шаров, следуя методу, предложенному в указании к
  задаче @pr:hausdorff-precompactness-criterion.

  б) $arrow.r.double$ а) Если $A$ не предкомпактно, то для некоторого
  $epsilon > 0$ оно содержит бесконечное число попарно непересекающихся шаров
  радиуса $epsilon$. Центры этих шаров дают пример последовательности, из
  которой нельзя выбрать фундаментальную подпоследовательность.
] <hint:precompact-cauchy-subsequences>

#hint[@pr:compact-sequential-characterization][
  Следует из предыдущей задачи.
] <hint:compact-sequential-characterization>
