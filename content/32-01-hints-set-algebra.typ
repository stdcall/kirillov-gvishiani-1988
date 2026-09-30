#import "main-defs.typ": *
#import "statements.typ": *

=== Теория меры <sec:hints-measure>

==== Алгебра множеств <ss:hints-set-algebra>

#hint[@pr:symmetric-difference-triangle][
  Следует из того, что $(A triangle B) = (A without B) union (B without A)$,
  $(A without B) subset (A without C) union (C without B)$,
  $(B without A) subset (C without A) union (B without C)$.
] <hint:symmetric-difference-triangle>

#hint[@pr:set-operations-continuity][
  а) Следует из включения
  $(A_1 union A_2) without (B_1 union B_2) subset (A_1 without B_1) union (A_2
    without B_2)$.

  б) Введем обозначение для дополнения:
  $E^c = (A_1 union A_2 union B_1 union B_2) without E$, тогда
  $
    (A_1 inter A_2) triangle (B_1 inter B_2) &= (A_1^c union A_2^c) triangle
    (B_1^c union B_2^c) \
    &subset (A_1^c triangle B_1^c) union (A_2^c triangle B_2^c) \
    &= (A_1 triangle B_1) union (A_2 triangle B_2).
  $

  в) Следует из б), если учесть, что $A_1 without A_2 = A_1 inter A_2^c$.
] <hint:set-operations-continuity>

#hint[@pr:union-intersection-nonring][
  Рассмотреть систему, состоящую из одного непустого множества.
] <hint:union-intersection-nonring>

#hint[@pr:union-difference-ring][
  $A inter B = (A union B) without ((B without A) union (A without B))$,
  $A triangle B = (A without B) union (B without A)$.
] <hint:union-difference-ring>

#hint[@pr:interval-semiring][
  Объединение двух непересекающихся отрезков не является отрезком.
] <hint:interval-semiring>

#source(299)
#hint[@pr:generated-set-ring][
  Рассмотреть множество, состоящее из всех множеств, получающихся из конечного
  числа элементов системы $S$ путем применения операций объединения и разности.
] <hint:generated-set-ring>

#hint[@pr:semiring-generated-ring][
  Пусть $A = union.big_(i=1)^n A_i$, $B = union.big_(j=1)^m B_j$,
  $A_i,B_j in S$. Тогда
  $ A without B = union.big_(i=1)^n inter.big_(j=1)^m (A_i without B_j). $
  Так как $S$ — полукольцо, то существуют такие $C_1,dots,C_(n_(i j)) in S$, что
  $A_i without B_j = union.big_(k=1)^(n_(i j)) C_k$.
] <hint:semiring-generated-ring>

#hint[@pr:sigma-delta-algebras][
  Если $E$ — единица алгебры, то
  $
    union.big_n A_n = E without inter.big_n (E without A_n), quad inter.big_n
    A_n = E without union.big_n (E without A_n).
  $
] <hint:sigma-delta-algebras>

#hint[@pr:product-semirings][
  а) Рассмотрим произведение двух полуколец $S_1$ и $S_2$ (для большего числа
  сомножителей доказательство аналогично). Если $A = A_1 times A_2$,
  $B = B_1 times B_2$, где $A_i,B_i in S_i$ для $i=1,2$, то
  $A inter B = (A_1 inter B_1) times (A_2 inter B_2) in S_1 times S_2$. Пусть
  $B_1 subset A_1$, $B_2 subset A_2$; тогда существуют $B_1^((i)) in S_1$ и
  $B_2^((j)) in S_2$ такие, что $A_1 = B_1 union.dot B_1^((1)) dots B_1^((k))$,
  $A_2 = B_2 union.dot B_2^((1)) dots B_2^((l))$ и
  $
    A_1 times A_2 & = (B_1 times B_2)
                    union.dot (B_1 times union.big_(j=1)^l B_2^((j))) \
                  & union.dot ((union.big_(i=1)^k B_1^((i))) times B_2)
                    union.dot (union.big_(i=1)^k
                      union.big_(j=1)^l B_1^((i)) times B_2^((j))).
  $

  б) Пусть $P(X)$ — алгебра подмножеств множества из двух элементов
  $\{(a,a),(b,b)\} in.not P(X) times P(X)$.
] <hint:product-semirings>

#hint[@pr:set-sequence-limits][
  $overline(lim) E_n$ есть совокупность точек, принадлежащих бесконечному числу
  из множеств $E_n$; $underline(lim) E_n$ — совокупность точек, принадлежащих
  всем множествам $E_n$, кроме, может быть, конечного числа из них.
] <hint:set-sequence-limits>

#hint[@pr:unequal-set-limits][
  Пусть $A != B$; верхний предел последовательности $A,B,A,B,dots$ равен
  $A union B$, нижний — $A inter B$.
] <hint:unequal-set-limits>

#hint[@pr:complement-set-limits][
  $
    X without inter.big_n (union.big_(k>=n) E_k) = union.big_n (X without
      union.big_(k>=n) E_k) = union.big_n (inter.big_(k>=n) (X without E_k)).
  $
] <hint:complement-set-limits>

#hint[@pr:indicator-limsup-liminf][
  Рассмотрим $chi(overline(lim)_n E_n)$ ($chi(underline(lim)_n E_n)$
  рассматривается аналогично). Легко видеть, что условие $chi(x_0)=1$ (т. е.
  $x_0$ принадлежит бесконечному числу множеств из $E_n$) равносильно условию
  $overline(lim)_n chi_n (x_0)=1$.
] <hint:indicator-limsup-liminf>

#hint[@pr:set-indicator-limit][
  Из задачи @pr:indicator-limsup-liminf следует, что условия
  $overline(lim)_n E_n = underline(lim)_n E_n$ и
  $underline(lim)_n chi_n = overline(lim)_n chi_n$ равносильны.
] <hint:set-indicator-limit>

#hint[@pr:boolean-ring-indicators][
  Пересечению множеств соответствует умножение характеристических функций, а
  симметрической разности — сложение по модулю $2$.
] <hint:boolean-ring-indicators>

#hint[@pr:borel-cardinality][
  Каждому $mu in cal(M)$ (см. задачу @pr:countable-ordinal-orders) поставим в
  соответствие совокупность $B_mu$ борелевских множеств класса $mu$: $B_(mu_0)$
  — совокупность интервалов; $B_mu$ — совокупность множеств, которые получаются
  из множеств класса $< mu$ одной операцией счетного объединения, счетного
  пересечения или дополнения. Докажите, что $B = union.big_(mu in cal(M)) B_mu$
  и что все $B_mu$ имеют мощность континуума.
] <hint:borel-cardinality>

#source(300)
#hint[@pr:image-preimage-set-rings][
  а) $f^(-1)(Y_1) inter f^(-1)(Y_2) = f^(-1)(Y_1 inter Y_2)$,
  $f^(-1)(Y_1) triangle f^(-1)(Y_2) = f^(-1)(Y_1 triangle Y_2)$.

  б) Положим $A=\{a,b,c,d\}$, $B=\{a',b',d'\}$,
  $cal(A)=\{emptyset,\{a,b\},\{c,d\},\{a,b,c,d\}\}$, $f(a)=a'$, $f(b)=f(c)=b'$,
  $f(d)=d'$. Тогда $f(\{a,b\}) inter f(\{c,d\}) in.not f(cal(A))$.

  в) Если $E$ — единица в $cal(B)$, то $f^(-1)(E)$ — единица в $f^(-1)(cal(B))$
  и
  $inter.big_(n=1)^infinity f^(-1)(Y_n) = f^(-1)(inter.big_(n=1)^infinity Y_n)$.

  г) Для любых $Y_1,Y_2 subset B$ выполняется
  $f^(-1)(Y_1) inter f^(-1)(Y_2) = f^(-1)(Y_1 inter Y_2)$,
  $f^(-1)(Y_1) triangle f^(-1)(Y_2) = f^(-1)(Y_1 triangle Y_2)$.
] <hint:image-preimage-set-rings>
