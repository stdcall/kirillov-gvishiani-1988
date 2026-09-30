#import "main-defs.typ": *
#import "statements.typ": *
#import "diagrams/hints-peano.typ": peano-subdivisions

==== Функции ограниченной вариации и интеграл Лебега — Стилтьеса
<ss:hints-bounded-variation>

#hint[@pr:total-variation-properties][
  Тривиальная проверка.
] <hint:total-variation-properties>

#hint[@pr:bounded-variation-discontinuities,
  @pr:bounded-variation-measurability][
  Следует из справедливости утверждения задач для монотонных функций.
] <hint:bounded-variation-discontinuities>

#hint[@pr:bounded-derivative-variation][
  Использовать теорему Лагранжа.
] <hint:bounded-derivative-variation>

#hint[@pr:variation-integral-derivative][
  Использовать интегральные суммы Дарбу и теорему Лагранжа.
] <hint:variation-integral-derivative>

#hint[@pr:bounded-variation-jump-decomposition][
  $\{a_k\}$ — это точки разрыва,
  $ c_k=Phi(a_k+0)-Phi(a_k). $
] <hint:bounded-variation-jump-decomposition>

#hint[@pr:bounded-variation-product-reciprocal][
  2\. Используйте оценки:

  а)
  $
    abs(f dot g(x_(n+1))-f dot g(x_n)) &<=
    abs(f(x_(n+1))g(x_(n+1))-f(x_n)g(x_(n+1))) \
    &quad + abs(f(x_n)g(x_(n+1))-f(x_n)g(x_n)) <=
  $
  $
    <= abs(f(x_(n+1))-f(x_n)) sup\{abs(g(x))\} + abs(g(x_(n+1))-g(x_n))
    sup\{abs(f(x))\};
  $

  б)
  $
    abs(1/f(x_(n+1))-1/f(x_n)) =
    abs(f(x_n)-f(x_(n+1)))/(abs(f(x_(n+1)))abs(f(x_n))) <= alpha^(-2)
    abs(f(x_(n+1))-f(x_n)).
  $
] <hint:bounded-variation-product-reciprocal>

#hint[@pr:bounded-variation-composition][
  а) Нет. Рассмотреть функции
  $ f(x)=x, quad phi(x)=cases(x sin(1/x) & x != 0, 0 & x=0). $

  б) Нет. Постройте монотонную функцию $phi(x)$, чтобы $phi(1/2^n)=1/n$ при
  $n=1,2,3,dots$, $phi(0)=0$, и $f(x)$ с ограниченным изменением на отрезке
  $[0,1]$, чтобы для некоторой последовательности $1>x_1>y_1>x_2>y_2>dots>0$
  выполнялось $f(x_n)=2^(-n)$, $f(y_n)=0$. Тогда неограниченность вариации
  $phi(f)$ следует из расходимости ряда $sum_(n=1)^infinity 1/n$.
] <hint:bounded-variation-composition>

#hint[@pr:indicator-bounded-variation-boundary][
  #source(314)
  Рассуждайте от противного.
] <hint:indicator-bounded-variation-boundary>

#hint[@pr:bounded-variation-curve-not-space-filling][
  Пусть $phi:I=[a,b] arrow.r S=[0,1] times [0,1]$ является отображением на $S$,
  задаваемым формулой $phi(x)=(f(x),g(x))$. Рассмотрим $n^2$ точек из $S$ вида
  $(k/n,l/n)$, где $k,l=1,dots,n$, и их прообразы $a<=x_1<dots<x_(n^2)<=b$,
  $phi(x_i)!=phi(x_j)$ при $i != j$. Имеем
  $
    "Var"_a^b [f(x)]+"Var"_a^b [g(x)] >= sum_(i=1)^(n^2-1)
    [abs(f(x_(i+1))-f(x_i))+abs(g(x_(i+1))-g(x_i))] >= (n^2-1)/n,
  $
  что противоречит ограниченности вариаций $f(x)$ и $g(x)$.

  Без требования ограниченности вариаций $f$ и $g$ утверждение задачи неверно.
  Для $n=1,2,3,dots$ разбейте $S$ и $I$ на $4$ равных #figure(
    peano-subdivisions(),
    caption: [],
  ) <fig:hint-peano-construction>
  замкнутых квадрата и интервала соответственно и установите соответствие между
  этими квадратами и интервалами так, что если некоторый квадрат соответствует
  некоторому интервалу, то его подквадраты соответствуют подынтервалам
  указанного интервала (@fig:hint-peano-construction). Если $x in I$, то $x$
  является точкой пересечения некоторой последовательности замкнутых интервалов,
  которой соответствует последовательность вложенных замкнутых квадратов, точку
  пересечения которых возьмите в качестве $phi(x)$.
] <hint:bounded-variation-curve-not-space-filling>

#hint[@pr:stieltjes-integral-bound-additivity][
  Проверить для интегральных сумм и перейти к пределу.
] <hint:stieltjes-integral-bound-additivity>

#hint[@pr:stieltjes-common-discontinuity-obstruction][
  Из интегрируемости следует, что при измельчении разбиения произведение
  $abs(Phi(v)-Phi(u))$ на колебание $f$ на $[u,v]$ стремится к нулю: сравните
  две интегральные суммы, различающиеся только отмеченной точкой этого отрезка.
  Положим $J_-=Phi(c)-Phi(c-0)$, $J_+=Phi(c+0)-Phi(c)$. Если $J_-+J_+!=0$,
  примените это свойство к отрезкам $[u,v]$, где $u<c<v$, стягивающимся к $c$.
  Если $J_-+J_+=0$, то из разрывности следует $J_-=-J_+!=0$; примените его
  отдельно к $[u,c]$ и $[c,v]$. В обоих случаях $f(x)->f(c)$ при
  $x->c$.#ed-note[
    Исходный аргумент пропускает устранимый разрыв интегратора, например
    $Phi=chi_(\{c\})$. Добавлено сравнение сумм на соседних интервалах. Ср.
    общий критерий и сравнение интегральных сумм в теоремах 6.6–6.7, с.114–115,
    и интегрирование скачков в теоремах 6.15–6.16, с.120–121: #cite(
      <Rudin1976>,
      form: "full",
    ).
  ]
] <hint:stieltjes-common-discontinuity-obstruction>

#hint[@pr:stieltjes-countable-point-integrator][
  По @pr:stieltjes-integral-bound-additivity, б),
  $
    integral_a^b f(x) dif Phi(x) = integral_a^b f(x) dif Phi_N (x) +
    integral_a^b f(x) dif tilde(Phi)_N (x),
  $
  где $Phi_N (x)$ отлична от нуля в первых $N$ точках,
  #source(315)
  $tilde(Phi)_N (x)$ — в остальных точках. Очевидно, что первый интеграл равен
  нулю, ко второму интегралу применить оценку
  @pr:stieltjes-integral-bound-additivity, а).
] <hint:stieltjes-countable-point-integrator>

#hint[@pr:stieltjes-jump-values-independence][
  Пусть $Psi$ имеет ограниченную вариацию и отличается от $Phi$ лишь в точках
  разрыва. $Phi-Psi$ отлична от нуля не более чем в счетном числе точек.
  Примените @pr:stieltjes-integral-bound-additivity, б), и
  @pr:stieltjes-countable-point-integrator.
] <hint:stieltjes-jump-values-independence>

#hint[@pr:stieltjes-integration-by-parts][
  Рассмотрите два разбиения: $x_0,x_1,dots,x_n$ и $xi_0=a,xi_1,dots,xi_(n+1)=b$,
  где $x_(i-1)<=xi_i<=x_i$ при $i=1,dots,n$. Имеем
  $
    sum_(i=1)^n f(xi_i)[g(x_i)-g(x_(i-1))] = f(b)g(b)-f(a)g(a)-sum_(i=1)^(n+1)
    g(x_(i-1))[f(xi_i)-f(xi_(i-1))].
  $
] <hint:stieltjes-integration-by-parts>

#hint[@pr:stieltjes-piecewise-smooth-integrator][
  Составьте интегральную сумму и рассмотрите отрезки разбиения, содержащие
  внутри себя точки $\{c_k\}$.
] <hint:stieltjes-piecewise-smooth-integrator>

#hint[@pr:lebesgue-stieltjes-first-moment][
  См. @pr:stieltjes-jump-values-independence и
  @pr:stieltjes-integration-by-parts. Ответ:
  $b phi(b)-a phi(a)-integral_a^b phi(x) dif x$.
] <hint:lebesgue-stieltjes-first-moment>

#hint[@pr:banach-indicatrix-variation][
  Разобьем отрезок $[0,1]$ на $2^n$ равных частей, включая левый конец каждой
  части и исключая правый, кроме конца $1$. Для $y in [min f(x),max f(x)]$
  определим $N_n (y)$ как число тех частей, в которых есть хотя бы один корень
  уравнения $f(x)=y$. Функции $N_n (y)$ измеримы, так как имеют не более чем
  конечное число разрывов. Докажите, что $N_f (y)=sup N_n (y)$. Равенство
  интеграла и вариации проверяется непосредственно.
] <hint:banach-indicatrix-variation>

#hint[@pr:cantor-staircase-stieltjes-integrals][
  а) Обозначим $integral_0^1 x^k dif Phi(x)$ через $a_k$. Воспользуемся тем, что
  функция $Phi(x)$ обладает свойствами $Phi(x/3)=1/2 Phi(x)$,
  $Phi(2/3+x/3)=1/2+1/2 Phi(x)$, легко вытекающими из ее определения. Поэтому
  $
    a_k & = integral_0^(1/3) x^k dif Phi(x) + integral_(2/3)^1 x^k dif Phi(x) \
        & = 1/3^k dot 1/2 [integral_0^1 y^k dif Phi(y)
            + integral_0^1 (2+y)^k dif Phi(y)] \
        & = a_k/3^k+1/(2 dot 3^k) sum_(s=1)^k C_k^s dot 2^s a_(k-s).
  $
  Отсюда
  $ a_k=1/(2(3^k-1)) sum_(s=1)^k C_k^s dot 2^s a_(k-s). $
  Зная, что $a_0=1$, получаем последовательно $a_1=1/2$, $a_2=3/8$, $a_3=5/16$,
  $a_4=87/320$, $dots$

  б) Обозначим $integral_0^1 e^(a x) dif Phi(x)$ через $Psi(a)$ и воспользуемся
  #source(316)
  методом решения задачи а). Имеем
  $
    Psi(a) & = integral_0^(1/3) e^(a x) dif Phi(x)+integral_(2/3)^1 e^(a x) dif
             Phi(x) \
           & =1/2 integral_0^1 e^(a y/3) dif Phi(y)
             +1/2 integral_0^1 e^(2a/3+a y/3) dif Phi(y) \
           & =1/2(1+e^(2a/3)) Psi(a/3)=e^(a/3) op("ch")(a/3) Psi(a/3).
  $
  Итерируя полученную формулу, получаем
  $
    Psi(a)=e^(a/3)e^(a/9) dots e^(a dot 3^(-k)) op("ch")(a/3) op("ch")(a/9)
    dots op("ch")(a/3^k) Psi(a/3^k).
  $
  При $a arrow.r 0$, очевидно, $Psi(a) arrow.r 1$. Поэтому
  $ Psi(a)=e^(a/2) product_(k=1)^infinity op("ch")(a/3^k). $

  в) Из результата задачи б) следует, что
  $
    integral_0^1 sin(pi x) dif Phi(x)=1/(2i)[Psi(pi i)-Psi(-pi i)] =
    product_(k=1)^infinity cos(pi/3^k).
  $
] <hint:cantor-staircase-stieltjes-integrals>
