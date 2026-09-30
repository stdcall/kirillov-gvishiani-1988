#import "main-defs.typ": *
#import "statements.typ": *

==== Конструкции мер <ss:hints-measure-constructions>

#hint[@pr:nonmeasurable-real-set][
  Определим на интервале $[0,1]$ отношение эквивалентности: $x tilde.op y$, если
  $x-y in QQ$. Пусть $A$ является подмножеством $(0,1]$, содержащим по одному
  элементу из каждого класса эквивалентности. Для $r in (0,1]$ определим
  множество $A_r subset (0,1]$, получающееся из $A$ сдвигом на $r$ по модулю
  $1$:
  $ A_r = ([r+A] union [(r-1)+A]) inter (0,1]. $
  Легко видеть, что интервал $(0,1]$ является объединением совокупности попарно
  непересекающихся множеств $\{A_r\}$, где $r in QQ inter (0,1]$. Привести к
  противоречию предположение об измеримости $A$.
] <hint:nonmeasurable-real-set>

#hint[@pr:nonmeasurable-projections][
  Пусть $A subset [0,1)$ неизмеримо. Рассмотреть множество
  $\{A times \{0\}\} union \{\{0\} times A\} subset [0,1] times [0,1]$.
] <hint:nonmeasurable-projections>

#hint[@pr:lebesgue-density-points][
  По поводу указаний к решению этой задачи без использования понятия интеграла
  читатель отсылается к книге @bib:Bourbaki1967, гл. V, § 6, упражнение 15.
  Отметим также, что если использовать понятие интеграла, то задача не
  представляет трудности, ибо если $phi$ — характеристическая функция множества
  $A$, $Phi(x)=integral_0^x phi(t) dif t$, то утверждение задачи легко следует
  из того, что $Phi'(x)=phi(x)$ почти всюду.
] <hint:lebesgue-density-points>

#hint[@pr:riemann-integrable-indicators][
  Из теоремы Лебега об интегрируемости по Риману следует необходимое и
  достаточное условие: граница множества имеет меру $0$.
] <hint:riemann-integrable-indicators>

#hint[@pr:null-set-sigma-ring][
  а) Тривиальная проверка.

  б) Первая часть является следствием из задачи @pr:null-set-sigma-ring а).
] <hint:null-set-sigma-ring>

#hint[@pr:charge-space-completeness][
  Для фундаментальной последовательности $\{nu_n\}$ положим
  $(lim_(n -> infinity) nu_n)(A)=lim_(n -> infinity) nu_n (A)$ для любого
  $A in frak(A)$. Счетная аддитивность
  #source(303)
  функции множеств $lim_(n -> infinity) nu_n$ следует из равенства
  $ lim_(n -> infinity) sum_i nu_n (A_i)=sum_i lim_(n -> infinity) nu_n (A_i), $
  где $A=union.big_i A_i$, $A_k inter A_l=emptyset$ при $k != l$, которое
  следует из равномерной сходимости рядов $sum_i nu_n (A_i)$ по $n$.
] <hint:charge-space-completeness>

#hint[@pr:steinhaus-difference-neighborhood][
  Непосредственно из определения измеримого множества несложно доказать, что
  существует такой параллелепипед $B$, что
  $ 0.75 mu(B) <= mu(M inter B). $
  Выберем открытый параллелепипед $B'$ с центром в точке $0 in RR^n$,
  гомотетичный $B$ с достаточно малым коэффициентом, чтобы
  $mu(B union (b+B))<1.5mu(B)$ для всех $b in B'$. Положим $N=M inter B$. Тогда
  для любого $b in B'$
  $ mu(N inter (b+N)) >= 2mu(N)-mu(B union (b+B))>0. $
  Поэтому $B' subset M-M$.#ed-note[
    Оценка меры в исходном рассуждении относится к $M inter B$, а не к
    $M inter B'$. Для прямой аналогичный аргумент приведен в упражнениях 30–31
    первой главы: #cite(<Folland1999>, form: "full").
  ]
] <hint:steinhaus-difference-neighborhood>

#hint[@pr:countable-probability-measure][
  Непосредственная проверка с использованием свойств двойного абсолютно
  сходящегося ряда.
] <hint:countable-probability-measure>

#hint[@pr:finitely-additive-noncountable-measure][
  Пусть $X=QQ inter [0,1]$. Рассмотреть кольцо подмножеств $X$, порожденное
  отрезками, с обычной мерой; $X$ состоит из счетного числа точек, каждая из
  которых имеет меру $0$.
] <hint:finitely-additive-noncountable-measure>

#hint[@pr:wiener-endpoint-signs][
  Множество, о котором идет речь в задаче, является частным случаем множества
  вида $chi(t_1, t_2; Delta_1, Delta_2)$, при $t_1=a$, $t_2=b$,
  $Delta_1=(-infinity,0)$, $Delta_2=(0,infinity)$. Поэтому искомая мера равна
  $
    1/sqrt(pi(b-a)) integral_(-infinity)^0 integral_0^infinity
    exp\{-(sigma-tau)^2/(b-a)\} dif sigma dif tau =
  $
  $
    = 1/sqrt(pi(b-a)) integral_0^infinity s dot exp\{-s^2/(b-a)\} dif s
    = sqrt(b-a)/(2sqrt(pi)).
  $
] <hint:wiener-endpoint-signs>

#hint[@pr:gauss-invariant-measure][
  Обозначим $f:x arrow.r \{1/x\}$. Имеем
  $ mu f^(-1)([alpha,beta]) = $
  $
    = sum_(n=1)^infinity [log_2 (alpha+n+1)+log_2 (beta+n) \
      - log_2 (beta+n+1)-log_2 (alpha+n)] \
    = log_2 (1+beta)-log_2 (1+alpha) = mu([alpha,beta]).
  $
] <hint:gauss-invariant-measure>

#hint[@pr:continued-fraction-cylinder-measure][
  а)
  $
    f(1/(n_1+1/(n_2+dots))) = \{n_1+1/(n_2+1/(n_3+dots))\} =
    1/(n_2+1/(n_3+dots)).
  $
  Мера цилиндрического множества, состоящего из всех последовательностей, одна
  координата которых фиксирована: $n_k=n$, задается формулой
  $p(n)=log_2 ((n+1)^2/(n(n+2)))$.
] <hint:continued-fraction-cylinder-measure>

#hint[@pr:charge-absolute-convergence][
  Если сумма ряда не зависит от порядка суммирования, то ряд сходится абсолютно.
] <hint:charge-absolute-convergence>

#hint[@pr:complex-charge-variation][
  а) $abs(nu)(X)=mu_1 (X)+mu_2 (X)$;

  б) $abs(nu)(X)=sqrt(2) mu_1 (X)$.
] <hint:complex-charge-variation>

#hint[@pr:complex-charge-real-imaginary-parts][
  #source(304)
  Определим комплексно сопряженный заряд, положив
  $overline(nu)(A)=overline(nu(A))$ для любого $A in frak(A)$. Тогда
  $"Re" nu=(nu+overline(nu))/2$, $"Im" nu=(nu-overline(nu))/(2i)$.
] <hint:complex-charge-real-imaginary-parts>

#hint[@pr:charge-boundedness][
  Для любого $A in frak(A)$ положим
  $f(A)=sup\{abs(nu(A')):A' subset A,A' in frak(A)\}$. Предположим, что
  $sup_(A in frak(A)) abs(nu(A))=infinity$, тогда существует $A_0 in frak(A)$,
  $f(A_0)=infinity$. По индукции выберем последовательность
  $A_0 supset A_1 supset A_2 supset dots$ такую, что $f(A_n)=infinity$,
  $abs(nu(A_n)) >= n$. (Пусть $B subset A_(n-1)$ и
  $abs(nu(B)) >= abs(nu(A_(n-1)))+n$; если $f(B)=infinity$, то положим $A_n=B$,
  в противном случае $A_n=A_(n-1) without B$.)

  По свойству непрерывности счетно-аддитивной функции получаем противоречие:
  $abs(nu(inter.big_(n=0)^infinity A_n))
  =lim_(n -> infinity) abs(nu(A_n))=infinity$, в то время как
  $C=inter.big_(n=0)^infinity A_n in frak(A)$ и, значит,
  $abs(nu(C)) != infinity$.
] <hint:charge-boundedness>

#hint[@pr:hahn-decomposition-extrema][
  Множество $E in frak(A)$ назовем *отрицательным относительно* $nu$, если
  $nu(E inter F) <= 0$ для любого $F in frak(A)$; аналогично определяется
  *положительное* множество. Докажем существование отрицательного множества
  $A_-$ такого, что $A_+=X without A_-$ положительно, откуда следует утверждение
  задачи.

  Пусть $\{A_n\}$ — последовательность отрицательных множеств и
  $lim_(n -> infinity) nu(A_n)=a=inf\{nu(A):A "отрицательно"\}$. Тогда
  $A_-=union.big_n A_n$ отрицательно и $nu(A_-)=a$. Если $A_+=X without A_-$
  неположительно, то существует $C_0 subset A_+$, $nu(C_0)<0$. Если $C_0$
  отрицательно, положим $F_0=C_0$. В противном случае существует наименьшее
  натуральное $k_1$, для которого существует $C_1 subset C_0$, $nu(C_1)>=1/k_1$.
  Повторим операцию для $C_0 without C_1$, получив $C_2$ и $k_2>=k_1$, и т. д.
  Если очередной остаток отрицателен, остановимся и обозначим его через $F_0$.
  При бесконечном процессе положим
  $F_0=C_0 without union.big_(i=1)^infinity C_i$. Из абсолютной сходимости
  $sum_i nu(C_i)$ следует $k_i->infinity$; по минимальности $k_i$ всякое
  подмножество $F_0$ имеет неположительный заряд. При этом
  $nu(F_0)=nu(C_0)-sum_i nu(C_i)<0$. Поэтому отрицательное множество
  $A_- union F_0$ имеет заряд меньше $a$, что противоречит определению $a$.
  Значит, $A_+$ положительно.#ed-note[
    Добавлен случай конечной остановки удаления положительных подмножеств. Ср.
    доказательство теоремы 3.3, с.86–87: #cite(<Folland1999>, form: "full").
  ]
] <hint:hahn-decomposition-extrema>

#hint[@pr:hahn-positive-negative-measures][
  Любое подмножество $A_+$ (соответственно $A_-$) является положительным
  (соответственно отрицательным).
] <hint:hahn-positive-negative-measures>

#hint[@pr:hahn-charge-splitting][
  Если подмножество $E in frak(A)$ лежит в $X without (A_+ union A_-)$, то
  $nu(E)=0$.
] <hint:hahn-charge-splitting>

#hint[@pr:charge-variation-additivity][
  $nu_+(E)=nu(E inter A_+)$, $nu_-(E)=-nu(E inter A_-)$. Применить задачи
  @pr:charge-boundedness–@pr:hahn-charge-splitting.
] <hint:charge-variation-additivity>
