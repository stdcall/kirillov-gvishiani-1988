#import "main-defs.typ": *
#import "statements.typ": *

==== Операторы в нормированных пространствах <ss:hints-normed-operators>

#hint[@pr:projection-bounded-closed-summands][
  Пусть $P$ — проектор на $L_1$ параллельно $L_2$. Тогда $1-P$ есть проекция на
  $L_2$ параллельно $L_1$. Если $P$ непрерывно, то $L_1$ и $L_2$ замкнуты. При
  этом $L_1=ker(1-P)$, $L_2=ker P$. Обратно, если $L_1$ и $L_2$ замкнуты, то
  непрерывность $P$ следует из теоремы Банаха об обратном операторе.
  (Рассмотрите естественное отображение $Q:L_1 arrow.r L/L_2$ и представьте $P$
  в виде $Q^(-1) compose pi$, где $pi$ — естественная проекция $L$ на $L/L_2$.)
] <hint:projection-bounded-closed-summands>

#hint[@pr:bounded-idempotent-projection][
  Доказать, что $ker P=op("im")(1-P)$, $ker P inter op("im")P={0}$ и
  $L=ker P+op("im")P$.
] <hint:bounded-idempotent-projection>

#hint[@pr:integrable-multiplication-operator][
  Если $p>=q$, то подходит любая функция $a(x) in L_infinity (0, 1)$; при $p<q$
  подходит только $a(x) equiv 0$.
] <hint:integrable-multiplication-operator>

#hint[@pr:operator-exponential-differential-equation][
  Воспользоваться теоремой единственности для обыкновенных дифференциальных
  уравнений.
] <hint:operator-exponential-differential-equation>

#hint[@pr:finite-dimensional-one-parameter-groups][
  Воспользоваться методом доказательства теоремы
  @th:real-line-character-duality.
] <hint:finite-dimensional-one-parameter-groups>

#hint[@pr:infinite-dimensional-group-generator][
  Контрпример: рассмотрим оператор $A(s):L_2(RR) arrow.r L_2(RR)$, который
  задается формулой: $(A(s)x)(t)=x(t+s)$, $x(t) in L_2(RR)$.
] <hint:infinite-dimensional-group-generator>

#hint[@pr:integral-operator-adjoint][
  $A':L_(q')[0,1] arrow.r L_(p')[0,1]$;
  $(A'f)(x)=integral_0^1 K(y,x) f(y) dif y$.
] <hint:integral-operator-adjoint>

#hint[@pr:restriction-operator-adjoint][
  $ (P'F)(t)=cases(F(t) quad & 0<=t<=1, F(1) quad & 1<=t<=2). $
] <hint:restriction-operator-adjoint>

#hint[@pr:quotient-map-boundedness][
  Проверяется непосредственно по определению
  (@pr:bounded-sequences-nonseparability).
] <hint:quotient-map-boundedness>

#hint[@pr:finite-rank-operator-boundedness-question][
  Нет. Рассмотреть неограниченный функционал.
] <hint:finite-rank-operator-boundedness-question>

#hint[@pr:operator-norm-attainment-question][
  Ответ отрицательный. Рассмотрите оператор умножения на функцию в пространстве
  $L_2[0,1]$.
] <hint:operator-norm-attainment-question>
