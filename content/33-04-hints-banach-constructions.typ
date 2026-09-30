#import "main-defs.typ": *
#import "statements.typ": *

==== Конструкции банаховых пространств <ss:hints-banach-constructions>

#hint[@pr:banach-quotient-completeness][
  а) Для доказательства $norm(x)=0 arrow.l.r x=0$ использовать замкнутость $L_0$
  в $L$.

  б) Выбрать из фундаментальной в $L_1$ последовательности $y_n$
  подпоследовательность $y_(n_k)$ так, чтобы
  $sum_k norm(y_(n_k)-y_(n_(k+1)))_(L_1)<infinity$. Положить
  $alpha_k=y_(n_(k+1))-y_(n_k)$ и выбрать $a_k in phi^(-1)(alpha_k)$ ($phi$ —
  факторотображение $L arrow.r L_1$), так, чтобы
  $norm(a_k)_L<=norm(alpha_k)_(L_1)+2^(-k)$. Рассмотреть $S_k=a_1+dots+a_k$.
  Доказать, что $lim y_k=phi(lim S_k)+y_(n_1)$.
] <hint:banach-quotient-completeness>

#hint[@pr:banach-extension-completeness][
  Пусть $phi$ — факторотображение $L$ на $L_1$, $z_n$ — фундаментальная
  последовательность в $L$. Тогда $y_n=phi(z_n)$ фундаментальна в $L_1$,
  следовательно, существует $y=lim y_n$, откуда $norm(y-y_n)_(L_1) arrow.r 0$.
  Таким образом, существуют $r_n in phi^(-1)(y-y_n)=phi^(-1)(y)-phi^(-1)(y_n)$
  такие, что $norm(r_n)_L arrow.r 0$. Выберем в $phi^(-1)(y)$ фиксированный
  элемент $f$, тогда $r_n=f-f_n$, $f_n in phi^(-1)(y_n)$.

  Следовательно, $f_n arrow.r f$, но $z_n in phi^(-1)(y_n)$, поэтому
  $f_n-z_n=x_n$ — фундаментальная последовательность в $L_0$.
] <hint:banach-extension-completeness>

#hint[@pr:separable-banach-summable-quotient][
  Пусть $X$ — сепарабельное банахово пространство, $\{x_n\}$ — счетное всюду
  плотное множество в его единичном шаре. Положим
  $A:\{alpha_n\} |-> sum_(n=1)^infinity alpha_n x_n$,
  $\{alpha_n\} in l_(1) (K)$.
  #source(324)
  а) Докажите, что $A$ непрерывно и $norm(A)<=1$.

  б) При $norm(x)=1$ выберем $x_(n(i))$ так, чтобы
  $norm(x-sum_(i=1)^k 2^(-i+1) x_(n(i)))<=2^(-k)$. Отсюда $op("im")A=X$.

  в) Замените обе степени 2 степенями $1/rho$, где $0<rho<1$. Остаток после $k$
  шагов имеет норму не более $rho^k$, а сумма модулей коэффициентов не
  превосходит $(1-rho)^(-1)$. Поэтому норма класса $x$ в факторпространстве не
  превосходит $(1-rho)^(-1)$. Переходя к пределу при $rho->0$ и учитывая
  $norm(A)<=1$, получаем равенство норм и изометрию
  $hat(A):frac(l_1 (K), ker A)->X$.#ed-note[
    Уточнен предельный шаг для равенства факторнормы; ср. §5.5, упражнение
    13(b), с.428, и §5.7, упражнение 9(a), с.445: #cite(
      <Simon2015a>,
      form: "full",
    ).
  ]
] <hint:separable-banach-summable-quotient>

#hint[@pr:complemented-banach-subspaces][
  Пусть $L$ — банахово пространство, $L_0$ — подпространство. Тогда: 1)
  $(L_0)'=L'/L_0^perp$, $(L/L_0)'=L_0^perp$, 2) $L_0$ дополняемо
  $arrow.l.r L_0=P L$, где $P$ — непрерывный проектор.

  а) $L_0$ конечномерное. Выбрав базис $e_1,dots,e_n$ в $L_0$, показать, что
  существуют такие $f_1,dots,f_n in L'$, что $(f_i,e_j)=delta_(i j)$.
  Рассмотреть $P:L arrow.r L_0$, $P x=sum_i (f_i,x)e_i$.

  в) Пусть $phi$ — изоморфизм $l_infinity (k)$ и $L_0 subset L$,
  $phi_i=e_i dot phi^(-1)$, где $e_i$ — стандартный базис в
  $l_1 subset (l_infinity)'$. Обозначим через $tilde(phi)_i$ продолжение $phi_i$
  на $L$ без увеличения нормы. Тогда $norm(tilde(phi)_i)<=norm(phi^(-1))$
  ($i=1,2,dots$). Определим отображение $P:L arrow.r L_0$ по формуле
  $P x=phi(\{tilde(phi)_i, x\})$. Доказать, что $P$ — непрерывный проектор.

  б) и г) следуют из а), в) и 1), 2).
] <hint:complemented-banach-subspaces>

#hint[@pr:algebraic-bilinear-tensor-universal-object][
  См. @pr:tensor-product-universal-object.
] <hint:algebraic-bilinear-tensor-universal-object>

#hint[@pr:projective-tensor-universal-object][
  Если $S$ — произвольная $(p,q)$-кросс-норма, то $S<=p times.o q$.
] <hint:projective-tensor-universal-object>

#hint[@pr:projective-tensor-matrix-nuclear-norm][
  Пусть $n<=m$, $z=sum_(i=1)^k x_i times.o y_i$,
  $z arrow.r A_z=sum_(i=1)^k x_i y_i$. Выберем собственный базис $e_1,dots,e_n$
  для оператора $A_z A'_z$, $tilde(e)_j$ — базис в $L_2$.

  $
    A_z A'_z & =(sum_(i,j) lambda_(i j) e_i tilde(e)_j)(sum_(k,m) lambda_(k
                 m) tilde(e)_m^T e_k^T) \
             & =sum lambda_(i j) lambda_(k m) e_i tilde(e)_j tilde(e)'_m e'_k \
             & =sum lambda_(i j) lambda_(k m) delta_(m j) e_i e'_k \
             & =sum_j lambda_(i j) lambda_(k j) E_(i k).
  $
  Положим $a_(i k)=sum_(j=1)^m lambda_(i j) lambda_(k j)$; в силу того, что
  $e_1,dots,e_n$ — собственный базис для $A_z A'_z$, $a_(i k)=0$ при $i!=k$;
  $a_(i i)=sum_(j=1)^m lambda_(i j) lambda_(i j)=sum_j lambda_(i j)^2$. Из
  представления $z=sum_(i=1)^n e_i times.o y_i$, где
  $y_i=sum_(j=1)^m lambda_(i j) tilde(e)_j$, следует, что
  $norm(z)=sum_(i=1)^n norm(y_i)$ не меньше кросс-нормы на $L_1 times.o L_2$.
  Осталось доказать, что $norm(z)$ — кросс-норма; тогда $norm(dot)$ — норма на
  $L_1 times.o L_2$ в силу предыдущей задачи.
] <hint:projective-tensor-matrix-nuclear-norm>

#hint[@pr:injective-tensor-matrix-operator-norm][
  Воспользоваться явным видом нормы на $L_1 times.o L_2$.
] <hint:injective-tensor-matrix-operator-norm>

#hint[@pr:injective-tensor-operator-embedding][
  Пространство $L'_1 times.o L_2$ при помощи соответствия
  $x times.o y arrow.r A_(x,y) in cal(L)(L_1,L_2)$; $A_(x,y)(z)=(x,z)y$,
  $x in L'_1$, $y in L_2$, $z in L_1$ отождествляется с пространством операторов
  конечного ранга. Доказать, что норма на $L'_1 times.o L_2$ совпадает с обычной
  нормой оператора (см. предыдущую задачу).
] <hint:injective-tensor-operator-embedding>

#source(325)
#hint[@pr:summable-projective-tensor][
  Доказать, что норма на $l_1 (m dot n,RR)$ является кросс-нормой для норм
  $l_1 (n,RR)$ и $l_1 (m,RR)$ (см. также
  @pr:algebraic-bilinear-tensor-universal-object).
] <hint:summable-projective-tensor>

#hint[@pr:bounded-injective-tensor][
  Доказать, что норма на $l_infinity (m dot n,RR)$ является кросс-нормой на
  $l_infinity (n,RR)$ и $l_infinity (m,RR)$.
] <hint:bounded-injective-tensor>
