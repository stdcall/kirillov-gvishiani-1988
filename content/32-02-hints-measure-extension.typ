#import "main-defs.typ": *
#import "statements.typ": *

==== Продолжение меры <ss:hints-measure-extension>

#hint[@pr:inner-outer-measure][
  В силу полуаддитивности внешней меры
  $ mu^*(A) + mu^*(X without A) >= mu^*(X) = 1. $
] <hint:inner-outer-measure>

#hint[@pr:inner-outer-measurability][
  Обозначим через $S$ полукольцо интервалов, принадлежащих отрезку $[0,1]$.
  Пусть существует $B in R(S)$ такое, что $mu^*(A triangle B) < epsilon$; тогда
  $mu(B)-epsilon <= mu_*(A) <= mu^*(A) <= mu(B)+epsilon$, откуда вытекает
  равенство $mu_*(A)=mu^*(A)$. С другой стороны, предположим, что
  $mu_*(A)=mu^*(A)$. Тогда $forall epsilon > 0$ существуют $B_n,C_k in R(S)$
  такие, что
  $union.big_(n=1)^infinity B_n subset A subset union.big_(k=1)^infinity C_k$
  и $mu^*(union.big_(k=1)^infinity C_k)
  - mu^*(union.big_(n=1)^infinity B_n) < epsilon/2$. Легко доказать, что
  существует $B in R(S)$ такое, что
  $mu^*(union.big_n B_n triangle B) < epsilon/2$; тогда
  $
    mu^*(A triangle B) <= mu^*((A triangle union.big_n B_n) union (union.big_n
        B_n triangle B)) < epsilon.
  $
] <hint:inner-outer-measurability>

#hint[@pr:measurable-set-cardinality][
  Любое подмножество канторова множества, имеющего мощность континуум, измеримо
  (его мера равна нулю).
] <hint:measurable-set-cardinality>

#hint[@pr:measure-algebra-cardinality][
  В каждом классе эквивалентности существует борелевское множество.
] <hint:measure-algebra-cardinality>

#hint[@pr:measure-continuity-equivalence][
  Очевидно, что а) $arrow.l.r.double$ б), а) $arrow.l.r.double$ в), г)
  $arrow.r.double$ а). Если выполнены б) и в), то имеют место следующие
  неравенства:
  $
    mu(overline(lim)_n A_n) = mu(inter.big_k union.big_(n>=k) A_n) = lim_k
    mu(union.big_(n>=k) A_n) >= overline(lim)_k mu(A_k),
  $
  $
    mu(underline(lim)_n A_n) = mu(union.big_k inter.big_(n>=k) A_n) = lim_k
    mu(inter.big_(n>=k) A_n) <= underline(lim)_k mu(A_k),
  $
  откуда следует импликация а) $arrow.r.double$ г).

  Рассмотреть следующий пример полунепрерывной сверху и снизу, но не
  счетно-аддитивной меры на полукольце $S$ подмножеств $[0,1] inter QQ$:
  $ S = \{s_(a b) = [a,b) inter [0,1) inter QQ\}, quad mu(s_(a b))=b-a. $
] <hint:measure-continuity-equivalence>

#hint[@pr:outer-measure-metric-quotient][
  Использовать неравенство
  $mu^*(A triangle C) <= mu^*((A triangle B) union (B triangle C)) <= mu^*(A
    triangle B)+mu^*(B triangle C)$, которое следует из задачи
  @pr:symmetric-difference-triangle и полуаддитивности $mu^*$.

  #source(301)
  б) Пусть $\{tilde(A)_n\}$ — фундаментальная последовательность элементов из
  $cal(M)$, $A_n in tilde(A)_n$. Тогда для любого $n in NN$ существует
  $l(n) in NN$ такое, что $rho(tilde(A)_(n'), tilde(A)_(n'')) < 1/2^n$ для любых
  $n' > l(n)$, $n'' > l(n)$. Положим $m(1)=l(1)$, $m(2)=max\{m(1)+1,l(2)\}$,
  $m(3)=max\{m(2)+1,l(3)\}$ и т. д. Несложно доказать, что
  $mu^*(overline(lim)_j A_(m(j)) without underline(lim)_j A_(m(j)))=0$
  и, следовательно, $\{tilde(A)_n\}$ имеет предел. Для измеримых представителей
  другое доказательство см. в теореме @th:l1-completeness о полноте пространства
  суммируемых функций.

  в) Если множество $B$ измеримо, то по определению $forall epsilon > 0$
  $exists A in R(S)$ такое, что $mu^*(A triangle B) < epsilon$.
] <hint:outer-measure-metric-quotient>

#hint[@pr:measure-metric-connectedness][
  Множества $A_n=union.big_(k=1)^(2^(n-1)) [(2k-1)/2^n,2k/2^n]$ задают такую
  совокупность $\{tilde(A)_n\}_(n=1,2,dots)$ элементов из $cal(M)$, что
  $rho(tilde(A)_l, tilde(A)_m)=1/2$ для любых $l != m$, откуда следует
  некомпактность $cal(M)$. Для доказательства связности $cal(M)$ используйте
  непрерывные отображения $f_(tilde(E)):[0,1] arrow.r cal(M)$, задаваемые
  формулой $f_(tilde(E)) (t)=tilde(A)_t$, где $tilde(A)_t in.rev [0,t] inter E$,
  $E in tilde(E)$.
] <hint:measure-metric-connectedness>

#hint[@pr:measurable-set-limits][
  Да, так как измеримые множества образуют $sigma$-алгебру.
] <hint:measurable-set-limits>

#hint[@pr:borel-cantelli-null-limit][
  Для любого $k$ имеем
  $ mu(inter.big_k union.big_(n>=k) A_n) <= sum_(n>=k)^infinity mu(A_n). $
  Правая часть стремится к нулю при $k arrow.r infinity$.
] <hint:borel-cantelli-null-limit>

#hint[@pr:borel-null-decomposition][
  Измеримые множества образуют $sigma$-алгебру.

  б) Пусть $A subset RR$ измеримо. Из задачи @pr:inner-outer-measurability
  следует, что для любого $epsilon > 0$ существует замкнутое множество
  $B_epsilon subset A$ такое, что $mu^*(A without B_epsilon) < epsilon$. Тогда
  $union.big_(n=1)^infinity B_(1/n)$ — искомое борелевское множество.
] <hint:borel-null-decomposition>

#hint[@pr:vertical-strip-measure-extension][
  Подмножество квадрата измеримо тогда и только тогда, когда оно имеет вид
  $A times [0,1]$, где $A subset [0,1]$ и измеримо по Лебегу.
] <hint:vertical-strip-measure-extension>

#hint[@pr:horizontal-strip-nonmeasurability][
  $mu_*(tilde(T))=0$, $mu^*(tilde(T))=1$, следовательно, $tilde(T)$ неизмеримо.
] <hint:horizontal-strip-nonmeasurability>

#hint[@pr:caratheodory-measurability][
  Из измеримости множества $A$ по Каратеодори следует, что
  $ mu(X)=mu^*(A)+mu^*(X without A)=mu^*(A)+mu(X)-mu_*(A), $
  откуда следует измеримость $A$ по Лебегу. С другой стороны, пусть $A$ измерима
  по Лебегу. Для любого подмножества $Z subset X$ существует измеримое по Лебегу
  множество $Z_1$ такое, что $X supset Z_1 supset Z$, $mu(Z_1)=mu^*(Z)$ ($Z_1$ —
  это пересечение последовательности счетных покрытий множества $Z$ элементами
  полукольца, для которой мера $mu$ ($n$-го покрытия) меньше $mu^*(Z)+1/n$).
  Имеем
  $ mu^*(Z) <= mu^*(Z inter A)+mu^*(Z without A), $
  $
    mu^*(Z)=mu(Z_1)=mu(Z_1 inter A)+mu(Z_1 without A) >= mu^*(Z inter
      A)+mu^*(Z without A),
  $
  откуда следует измеримость множества $A$ по Каратеодори.
] <hint:caratheodory-measurability>

#hint[@pr:sigma-uniqueness-measurability][
  а) Если $A$ измеримо по Лебегу, то $forall epsilon > 0$ существует такое $B$
  из минимального кольца, что $mu^*(A triangle B)<epsilon$. Отсюда следует, что
  $lambda_i (A triangle B) <= mu^*(A triangle B)<epsilon$, следовательно,
  $abs(lambda_i (A)-lambda_i (B))<epsilon$, где $i=1,2$. Так как
  $lambda_1 (B)=lambda_2 (B)$, то $abs(lambda_1 (A)-lambda_2 (A))<2epsilon$, что
  и заканчивает доказательство.

  б) Пусть $a=mu_*(Y) <= y <= mu^*(Y)=b$. Построим лебеговское расширение $nu$
  лебеговской меры $mu$, порожденной $m$, такое, что $Y$ будет $nu$-измеримо и
  $nu(Y)=y$. При $a=b$ достаточно полной меры $mu$. Пусть $a<b$. Имеются такие
  $mu$-измеримые множества $E_1$ и $E_2$, что
  $ E_1 subset Y subset E_2, quad mu(E_1)=a, quad mu(E_2)=b. $
  #source(302)
  К системе $mu$-измеримых множеств добавим все подмножества множества
  $E=E_2 without E_1$, имеющие вид $C=A(Y without E_1) union B(E_2 without Y)$,
  $A subset E$, $B subset E$, где $A,B$ измеримы и однозначно с точностью до
  множества меры $0$ определяются по множеству $C$. Положим
  $ nu(C)=(y-a)/(b-a) mu(A) + (1-(y-a)/(b-a)) mu(B). $
] <hint:sigma-uniqueness-measurability>

#hint[@pr:decimal-product-measure][
  Пусть $nu$ — мера Лебега на $[0,1]$. Будем отождествлять образы и прообразы
  при отображении $f:X arrow.r [0,1]$ (так как $f$ — почти всюду биекция). Если
  $Y=product_n Y_n$ и для бесконечного множества индексов $\{k\}$ $Y_k != X_k$,
  то $mu(Y)=nu(Y)=0$. Если
  $Y=Y_1 times dots times Y_k times X_(k+1) times X_(k+2) times dots$, то
  $mu(Y)=10^(-k) product_(i=1)^k "card" Y_i = nu(Y)$, так как $Y$ состоит из
  $product_(i=1)^k "card" Y_i$ отрезков длиной $10^(-k)$. Рассмотрим теперь
  полукольцо множеств $L$ вида $[a_k 10^(-k),b_k 10^(-k))$. Легко видеть, что
  $mu$ и $nu$ совпадают на $L$, а лебеговское продолжение с полукольца $L$
  совпадает с обычной мерой Лебега.
] <hint:decimal-product-measure>
