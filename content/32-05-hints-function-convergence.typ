#import "main-defs.typ": *
#import "statements.typ": *

==== Сходимость измеримых функций <ss:hints-function-convergence>

#hint[@pr:pointwise-not-uniform-rational-sequence][
  Сходимость очевидна. Неравномерность сходимости следует из того, что
  $f_n (n)=1/2$.
] <hint:pointwise-not-uniform-rational-sequence>

#hint[@pr:power-sequence-convergence][
  Последовательность сходится к разрывной функции
  $ f(x)=cases(0 & "при" 0<=x<1, 1 & "при" x=1), $
  следовательно, сходимость неравномерная.
] <hint:power-sequence-convergence>

#hint[@pr:continuous-almost-everywhere-equality][
  Несовпадение непрерывных функций в одной точке влечет несовпадение в некоторой
  окрестности.
] <hint:continuous-almost-everywhere-equality>

#hint[@pr:no-continuous-equivalent-function][
  $ f(x)=cases(x^(-1) & "при" 0<x<=1, 0 & "при" x=0). $
] <hint:no-continuous-equivalent-function>

#hint[@pr:almost-everywhere-limit-uniqueness][
  Пусть последовательность $\{f_n\}$ не сходится к $f$ на множестве $F$, а к
  функции $g$ — на множестве $G$. Тогда $f$ и $g$ могут отличаться только на
  множестве $F union G$.
] <hint:almost-everywhere-limit-uniqueness>

#hint[@pr:rational-gaussian-measure-convergence][
  Множество тех точек $x in RR$, где $f_n (x)>=epsilon$, при $0<epsilon<1$
  является отрезком длины $2sqrt(ln(epsilon^(-1)))/q_k$. Эта величина стремится
  к нулю при $k arrow.r infinity$. Значит, $f_k arrow.r 0$ по мере.
  #source(307)
  Для любой точки $x in [0,1]$ рассмотрим подпоследовательность рациональных
  чисел $\{r_(k_n)\}$, для которой $lim_(n -> infinity) r_(k_n)$ существует и не
  равен $x$. Тогда $(p_(k_n)-x q_(k_n))^2 arrow.r infinity$ при
  $n arrow.r infinity$ и, значит, $f_(k_n) (x) arrow.r 0$ при
  $n arrow.r infinity$. Далее, существует подпоследовательность $\{r_(k'_n)\}$,
  для которой $abs(p_(k'_n)/q_(k'_n)-x)<=1/q_(k'_n)$. Для этой
  подпоследовательности $f_(k'_n) (x)>=e^(-1)$. Значит,
  $lim_(n -> infinity) f_n (x)$ не существует.

  б) Выбрать $\{k_l\}$ $(l=1,2,dots)$ так, чтобы отрезки, на которых
  $f_(k_l) >1/l$, не пересекались.
] <hint:rational-gaussian-measure-convergence>

#hint[@pr:typewriter-measure-convergence][
  Достаточно заметить, что самый естественный способ нумерации множества
  $\{f_i^((k)) (x)\}$ задается условием $n=k(k-1)/2+i$. Очевидно, что
  $mu(f_i^k (x)!=0)=1/k$,
  $
    overline(lim)_(n -> infinity) g_n (x)=1, quad underline(lim)_(n ->
    infinity) g_n=0.
  $
] <hint:typewriter-measure-convergence>

#hint[@pr:measure-limit-uniqueness][
  Применить соотношения
  $
    E(abs(h-g)>=delta) subset E(abs(f_n-h)>=delta/2) union
    E(abs(f_n-g)>=delta/2),
  $
  $ E(h != g)=union.big_(n=1)^infinity E(abs(h-g)>=1/n). $
] <hint:measure-limit-uniqueness>

#hint[@pr:luzin-continuous-approximation][
  Применить теорему Егорова.
] <hint:luzin-continuous-approximation>

#hint[@pr:monotone-continuous-approximation-question][
  Рассмотреть функцию $f(x)=tan x$ при $-pi/2<x<pi/2$, положив на концах
  $f(x)=0$. Пусть $M=max_([-pi/2,pi/2]) abs(f_1(x))$. Если последовательность
  $f_n$ возрастает, то она не может сходиться к $f$ при $-pi/2<x<-arctan M$;
  если убывает — при $arctan M<x<pi/2$.

  *Замечание.* Используя теорему Леви, легко доказать, что любую измеримую
  функцию $f(x)=f_+(x)-f_-(x)$ такую, что
  $integral_([a,b]) f_+(x) dif x = integral_([a,b]) f_-(x) dif x = +infinity$,
  нельзя представить в виде монотонного предела последовательности суммируемых
  функций.
] <hint:monotone-continuous-approximation-question>

#hint[@pr:dirichlet-function-iterated-limits][
  Приведем к противоречию предположение о том, что
  $phi(x)=lim_(n -> infinity) phi_n (x)$, где $phi_n (x)$ непрерывны. Положим
  $F_n=E(phi_n<=0.5)$ — это множество таких точек $x$, что $phi_n (x)<=0.5$.
  Имеем $E(phi<0.5)=underline(lim)_n F_n$, что противоречит тому, что множество
  иррациональных чисел не является объединением счетного числа замкнутых
  множеств.

  *Замечание.* Не непрерывные функции, представимые в виде предела
  последовательности непрерывных функций, называются функциями 1-го класса Бэра.
  Функция Дирихле принадлежит ко 2-му классу Бэра (двукратный предельный
  переход).
] <hint:dirichlet-function-iterated-limits>

#hint[@pr:simple-function-level-measurability][
  Необходимость (для любой измеримой функции) очевидна. Достаточность следует из
  того, что прообраз любого борелевского множества есть объединение не более чем
  счетного множества уровней. Рассмотреть следующий пример неизмеримой функции:
  $f_E:RR arrow.r RR$, где $E subset RR$ — неизмеримое множество:
  $ f_E (x)=cases(x & "если" x in E, -x & "если" x in.not E). $
] <hint:simple-function-level-measurability>

#hint[@pr:uniform-simple-function-approximation][
  #source(308)
  Для функции $f(x)$ рассмотреть последовательность $\{f_n (x)\}$, где
  $f_n (x)=m/n$, если $m/n<=f(x)<(m+1)/n$ $(n in NN,m in ZZ)$.
] <hint:uniform-simple-function-approximation>

#hint[@pr:decimal-digit-maxima][
  Мера множества чисел из $[0,1]$, в десятичной записи которых есть цифра $9$,
  равна $10^(-1)+9(10^(-2)+9(10^(-3)+dots))=1$.

  б) $f(x)$ измерима как предел измеримых функций и почти всюду равна $9$.
] <hint:decimal-digit-maxima>

#hint[@pr:wiener-integral-functional-measurability,
  @pr:wiener-continuous-functionals-measurability][
  Функции $f(x)$ непрерывны в топологии равномерной сходимости, $mu$ определена
  на борелевских множествах относительно этой топологии.
] <hint:wiener-integral-functional-measurability>

#hint[@pr:padic-continuous-function-measurability][
  Достаточно доказать, что любое открытое множество принадлежит $frak(A)$. Это
  следует из того, что каждый шар принадлежит $S$, шары составляют базис
  окрестностей и что различных шаров в $X$ счетное число (различных радиусов
  счетное число, в каждом шаре содержится натуральное число).
] <hint:padic-continuous-function-measurability>

#hint[@pr:padic-ball-measure][
  Из открытости множества $A$ следует, что его можно представить в виде
  объединения некоторой совокупности шаров, из которой можно выбрать конечное
  подпокрытие, так как $A$ — замкнутое подмножество $X$ и, следовательно,
  компактно. Счетную аддитивность $mu$ достаточно проверить для полукольца всех
  шаров.
] <hint:padic-ball-measure>

#hint[@pr:padic-haar-measure-uniqueness][
  Свойства а) и б) достаточно проверить для полукольца шаров. Единственность
  меры следует из того, что каждый шар радиуса $p^(-k)$ $(k=0,1,2,dots)$ состоит
  из $p$ шаров радиуса $p^(-(k+1))$, меры которых совпадают по свойству б).
] <hint:padic-haar-measure-uniqueness>
