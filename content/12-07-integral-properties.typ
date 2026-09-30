#import "main-defs.typ": *
#import "statements.typ": *

==== Свойства интеграла Лебега <ss:theory-lebesgue-integral-properties>

Некоторые важные свойства интеграла Лебега были уже описаны выше (см.
теорему~@th:lebesgue-integral-linear-properties); мы будем постоянно
пользоваться этими результатами. Здесь мы рассмотрим свойства интеграла,
связанные с предельными переходами, произведениями мер и дифференцированием
зарядов.

#theorem(title: [Теорема Лебега об ограниченной сходимости])[
  #idx("Теорема", "Лебега об ограниченной сходимости")Пусть ${f_n}$ —
  последовательность $mu$-суммируемых функций на множестве $X$, ограниченная по
  модулю фиксированной неотрицательной $mu$-суммируемой на $X$ функцией $phi$ и
  сходящаяся $mu$-почти всюду на $X$ к функции $f$.

  Тогда $f$ $mu$-суммируема на $X$ и

  $ lim_(n -> infinity) integral_A f_n dif mu = integral_A f dif mu $

  для любого $mu$-измеримого множества $A$.
] <th:dominated-convergence>

#proof[
  #source(48)Положим для любого измеримого множества $A$
  $nu(A) = integral_A phi dif mu(x)$. По
  теореме~@th:lebesgue-integral-linear-properties $nu$ — конечная мера на $X$.

  #lemma(numbered: false)[
    Если функция $g$ измерима и ограничена на $X$, то функция $f = phi g$
    $mu$-суммируема и
    $integral_A f(x) dif mu(x) = integral_A g(x) dif nu(x)$
    для любого $mu$-измеримого множества $A$.
  ] <lem:weighted-measure-integral>

  #proof[
    Рассмотрим множество $M$ тех функций $g$ на $X$, для которых утверждение
    леммы справедливо. Очевидно, $M$ содержит все характеристические функции
    измеримых множеств. В самом деле, если $g = chi_B$, то

    $
      integral_A f dif mu & = integral_A phi chi_B dif mu
                            = integral_(A inter B) phi dif mu \
                          & = nu(A inter B) = integral_A g dif nu.
    $

    Значит, $M$ содержит и конечные линейные комбинации таких функций. Пусть
    теперь $g$ — любая ограниченная измеримая функция на $X$. Положим
    $g_(-)(x) = 1/n [n g(x)]$, $g_(+)(x) = g_(-)(x) + 1/n$. Тогда
    $g_(plus.minus) in M$ и $g_(-)(x) <= g(x) <= g_(+)(x)$. Поэтому

    $
      integral_A g_- dif nu
      &= integral_A phi g_(-)(x) dif mu(x) <= integral_A phi g dif mu \
      &<= integral_A phi g_+ dif mu = integral_A g_+ dif nu.
    $

    При $n -> infinity$ первый и последний члены этого соотношения стремятся к
    $integral_A g dif nu$. Значит, $g in M$, и лемма доказана.
  ]

  Вернемся к доказательству теоремы~@th:dominated-convergence. Определим функции

  $
    g_(n)(x) = cases(
      f_(n)(x) slash phi(x) & quad "если" phi(x) != 0,
      0 & quad "если" phi(x) = 0,
    )
  $

  $
    g(x) = cases(
      f(x) slash phi(x) & quad "если" phi(x) != 0,
      0 & quad "если" phi(x) = 0.
    )
  $

  По предположению теоремы, функции $g_(n)(x)$ обладают свойствами
  $abs(g_(n)(x)) <= 1$, $g_(n)(x) arrow.r^op("п.в.") g$. Мы должны доказать, что
  $lim_(n -> infinity) integral_A f_(n)(x) dif mu = integral_A f dif mu$. В силу
  леммы, это равносильно утверждению
  $lim_(n -> infinity) integral_A g_(n)(x) dif nu = integral_A g dif nu$. Таким
  образом, мы свели доказательство теоремы Лебега к частному случаю, #source(
    49,
  )когда мера пространства $X$ конечна, а рассматриваемые функции ограничены по
  модулю одной и той же константой. В этом случае утверждение теоремы без труда
  выводится из теоремы Егорова.
]

#theorem(title: [Теорема Б. Леви о монотонной сходимости])[
  Пусть ${f_n}$ — монотонно возрастающая последовательность $mu$-суммируемых
  функций на множестве $X$. Положим $f(x) = lim_(n -> infinity) f_(n)(x)$
  (допуская значение $+infinity$).

  + Если интегралы $integral_X f_(n)(x) dif mu(x)$ ограничены в совокупности, то
    $f(x)$ суммируема и $integral_X f(x) dif mu(x)
    = lim_(n -> infinity) integral_X f_(n)(x) dif mu(x)$.
  + Если $lim_(n -> infinity) integral_X f_(n)(x) dif mu(x) = +infinity$, то
    функция $f(x)$ несуммируема.
] <th:monotone-convergence>

#proof[
  1) Вычитая из всех $f_n$ и из $f$ функцию $f_1$, мы можем считать, что
  $f_n >= 0$ и $f >= 0$. Пусть $E$ — множество, где $f(x)$ принимает значение
  $+infinity$. Тогда $E = inter_N union_n E_(N n)$, где
  $E_(N n) = {x in X: f_(n)(x) >= N}$. Имеем
  $integral_(E_(N n)) f_(n)(x) dif mu >= N dot mu(E_(N n))$. Так как
  $integral_X f_(n)(x) dif mu <= C$ для всех $n$, мы получаем
  $mu(E_(N n)) <= C/N$; отсюда
  $mu(E) = lim_(N -> infinity) lim_(n -> infinity) mu(E_(N n)) = 0$.

  Итак, функция $f$ почти всюду конечна. Докажем, что она суммируема. Проще
  всего воспользоваться результатом
  задачи~@pr:integrability-finite-measure-restrictions. Пусть $A$ — такое
  множество конечной меры, на котором $f(x)$ ограничена сверху. Тогда

  $
    integral_A f dif mu = lim_(n -> infinity) integral_A f_n dif mu
    <= lim_(n -> infinity) integral_X f_n dif mu <= C,
  $

  что и доказывает суммируемость $f$. Оставшаяся часть утверждения 1) и
  утверждение 2) вытекают из теоремы Лебега об ограниченной сходимости.
]

#lemma(title: [Фату], numbered: false)[
  Если последовательность ${f_n}$ $mu$-суммируемых неотрицательных функций
  обладает свойствами:

  + $integral_X f_(n)(x) dif mu <= C$ для всех $n$;
  + $f_(n)(x) -> f(x)$ почти всюду на $X$,

  то $f$ — $mu$-суммируемая функция и $integral_X f dif mu <= C$.
] <lem:fatou>

#source(50)#remark[
  Сходимость $integral_X f_n dif mu -> integral_X f dif mu$ в условиях леммы
  Фату может не иметь места.
] <rem:fatou-integral-limit>

#proof[
  Заменим предельный переход $f_n -> f$ двумя монотонными предельными
  переходами. А именно, положим

  $
    g_(k n)(x) = min{f_(n)(x), f_(n+1)(x), dots, f_(n+k)(x)}, \
    g_(n)(x) = lim_(k -> infinity) g_(k n)(x).
  $

  Тогда $lim_(n -> infinity) g_(n)(x) = f(x)$ для почти всех $x$. Из
  монотонности интеграла следует, что $integral_X g_n dif mu <= C$, а из
  теоремы~@th:monotone-convergence вытекает, что $f$ суммируема и
  $integral_X f dif mu <= C$, что и доказывает лемму.
]

Выведем из полученных свойств интеграла упоминавшуюся выше полноту пространства
$L_(1)(X, mu)$.

#theorem[
  Пространство $L_(1)(X, mu)$ полно.
] <th:l1-completeness>

#proof[
  Пусть ${f_n}$ — фундаментальная последовательность в $L_(1)(X, mu)$. Переходя,
  если нужно, к подпоследовательности, можно считать, что ${f_n}$ обладает
  свойством $d_(1)(f_n, f_(n+1)) < 1/2^n$. Положим $phi_1 = f_1$,
  $phi_n = f_n - f_(n-1)$ при $n >= 2$. Ряд $sum_(n=1)^infinity abs(phi_(n)(x))$
  по теореме~@th:monotone-convergence сходится всюду к некоторой почти всюду
  конечной суммируемой функции $phi(x)$. Значит, ряд $sum phi_(n)(x)$ сходится
  почти всюду к некоторой функции $f(x)$. Отсюда вытекает, что $f_n -> f$ почти
  всюду на $X$. Кроме того, все функции $f_n$ ограничены по модулю функцией
  $phi(x)$. По теореме об ограниченной сходимости (см.
  теорему~@th:dominated-convergence)
  $lim_(n -> infinity) integral_X abs(f_(n)(x) - f(x)) dif mu = 0$. Значит,
  $f_n -> f$ в пространстве $L_(1)(X, mu)$. Теорема доказана.
]

Еще одно полезное свойство интеграла Лебега — его так называемая #idx(
  "Абсолютная непрерывность интеграла Лебега",
)_абсолютная непрерывность_.

#theorem[
  Пусть $f in L_(1)(X, mu)$. Тогда для любого $epsilon > 0$ существует такое
  $delta > 0$, что из $mu(A) < delta$ следует
  $abs(integral_A f(x) dif mu) < epsilon$.
] <th:lebesgue-integral-absolute-continuity>

#proof[
  Утверждение теоремы означает по существу непрерывность отображения
  $I_f: A -> integral_A f(x) dif mu$, #source(51)действующего из метрического
  пространства $L(X)$ измеримых множеств (см.
  задачу~@pr:outer-measure-metric-quotient) в $RR$. Если $chi$ —
  характеристическая функция измеримого подмножества конечной меры в $X$, то
  отображение $I_chi$, очевидно, непрерывно. То же самое верно для $I_f$, если
  $f$ — линейная комбинация характеристических функций. Далее, если $f_n -> f$ в
  $L_(1)(X, mu)$, то $I_(f_n) -> I_f$ равномерно на $L(X)$. Остается
  воспользоваться известным фактом: равномерный предел непрерывных функций
  является непрерывной функцией. Теорема доказана.
]

Вернемся теперь к доказательству
теоремы~@th:product-measure-countable-additivity §~@sec:theory-measure,
п.~@ss:theory-measure-constructions, о произведении мер. Пусть $(X, S, mu)$,
$(Y, T, nu)$ означают то же, что и в указанной теореме. Для каждого множества
$C = A times B$ из полукольца $S times T$ положим $f_(C)(x) = chi_(A)(x) nu(B)$.
Ясно, что $(mu times nu)(C) = mu(A) times nu(B)
= integral_X f_(C)(x) dif mu$. Если множество $C$ представлено в виде
$C = union.sq_(k=1)^infinity C_k$, $C_k in S times T$, то из счетной
аддитивности $nu$ вытекает равенство $f_(C)(x) = sum_k f_(C_k)(x)$. По теореме
Лебега об ограниченной сходимости отсюда следует равенство

$
  integral_X f_(C)(x) dif mu(x)
  = sum_(k=1)^infinity integral_X f_(C_k)(x) dif mu(x),
$

и значит,

$ (mu times nu)(C) = sum_(k=1)^infinity (mu times nu)(C_k). $

Теорема~@th:product-measure-countable-additivity доказана.

Изучим подробнее отображение $C arrow.r.bar f_C$, определенное выше.
Распространим его на кольцо $R(S times T)$ по формуле

$ f_(union.sq_(k=1)^n C_k) = sum_(k=1)^n f_(C_k). $

Легко проверяется оценка

$
  norm(f_(C_1) - f_(C_2))_(L_(1)(X, mu))
  <= (mu times nu)(C_1 Delta C_2).
$

(В самом деле, если $C_1 = A_1 union.sq B$, $C_2 = A_2 union.sq B$, где
$B = C_1 inter C_2$, то $f_(C_1) - f_(C_2) = f_(A_1) - f_(A_2)$,
$f_(C_1 Delta C_2) = f_(A_1) + f_(A_2)$.) Поэтому соответствие
$C arrow.r.bar f_C$ продолжается до отображения всей $sigma$-алгебры
$(mu times nu)$-измеримых множеств #source(52)$L(X times Y)$ в $L_(1)(X, mu)$ по
формуле $f_(lim_n C_n) = lim_n f_(C_n)$ (первый предел рассматривается в
$L(X times Y)$, второй — в $L_(1)(X, mu)$).

#lemma(numbered: false)[
  Пусть $C in L(X times Y)$. Для почти всех $x in X$ множество $C_x subset Y$,
  задаваемое формулой $C_x = {y in Y: (x, y) in C}$, измеримо по мере $nu$ и
  $nu(C_x) = f_(C)(x)$.
] <lem:measurable-set-sections>

#proof[
  Для элементарных множеств (т. е. множеств из кольца $R(S times T)$) это верно
  по определению $f_C$. Далее, если ${C^(n)}$ — монотонная последовательность
  множеств, то в силу счетной аддитивности меры $nu$ справедливо равенство
  $nu(lim_n C_x^(n)) = lim_n nu(C_x^(n))$. Поэтому свойство $nu(C_x) = f_(C)(x)$
  сохраняется при монотонных предельных переходах. Но всякое измеримое множество
  $C$ может быть с точностью до множества меры нуль получено из элементарных
  множеств двумя монотонными предельными переходами. В самом деле, пусть $C_n$ —
  элементарное множество, аппроксимирующее $C$ с точностью до $2^(-n)$ по мере
  $mu times nu$. Положим
  $tilde(C) = inter_(n=1)^infinity union_(k=1)^infinity C_(n+k)$. Тогда

  $
    (mu times nu)(C without union_(k=1)^infinity C_(n+k)) = 0,
    \
    (mu times nu)((union_(k=1)^infinity C_(n+k)) without C) <= 2^(-n).
  $

  Отсюда $(mu times nu)(tilde(C) Delta C) = 0$.

  Значит, $f_C$ и $f_(tilde(C))$ совпадают почти всюду и, следовательно, для
  почти всех $x in X$ $f_(C)(x) = f_(tilde(C))(x) = nu(tilde(C)_x) = nu(C_x)$.
  Лемма доказана.
]

#theorem[
  Пусть $mu$ и $nu$ — $sigma$-конечные меры, $C$ — $(mu times nu)$-измеримое
  подмножество в $X times Y$. Положим $C_x = {y in Y: (x, y) in C}$. Тогда для
  $mu$-почти всех $x in X$ множество $C_x$ $nu$-измеримо, функция
  $f_(C)(x) = nu(C_x)$ $mu$-измерима и справедливо равенство

  $ (mu times nu)(C) = integral_X f_(C)(x) dif mu(x), $
  <eq:product-measure-section-integral>

  в котором обе части могут одновременно принимать значение $+infinity$.
] <th:product-measure-sections>

#proof[
  Если множество $C$ имеет конечную меру, то утверждения теоремы вытекают из
  доказанной выше леммы и из того факта, что
  равенство~@eq:product-measure-section-integral сохраняется при переходе к
  пределу (слева в пространстве $L(X times Y)$, справа в пространстве
  $L_(1)(X, mu)$).

  Если мера множества $C$ бесконечна, то существует возрастающее семейство
  подмножеств конечной меры $C_n subset C$, для которого $union C_n = C$ и
  $(mu times nu)(C_n) -> infinity$. Тогда #source(
    53,
  )$f_(C)(x) = lim_n f_(C_n)(x)$ и

  $ integral_X f_(C_n)(x) dif mu = (mu times nu)(C_n) -> infinity. $

  Поэтому $f_C$ измерима и несуммируема. Теорема доказана.
]

Эта теорема, в частности, обосновывает хорошо известный способ вычисления
площадей плоских фигур (соответственно объемов пространственных тел) с помощью
интегрирования длин (соответственно площадей) их сечений.

#remark(numbered: true)[
  Поскольку пространства $(X, mu)$ и $(Y, nu)$ входят в условие
  теоремы~@th:product-measure-sections симметрично, заключение теоремы останется
  верным, если поменять их местами. Таким образом,

  $ (mu times nu)(C) = integral_Y mu(C'_y) dif nu(y), $
  <eq:product-measure-transposed-section-integral>

  где $C'_y = {x in X: (x, y) in C}$. Отсюда следует также, что

  $ integral_X nu(C_x) dif mu(x) = integral_Y mu(C'_y) dif nu(y). $
  <eq:section-integrals-equality>
] <rem:section-symmetry>

#remark(numbered: true)[
  Аналогичная теорема справедлива для произведения любого конечного числа
  пространств. В случае трех пространств $(X, mu)$, $(Y, nu)$, $(Z, lambda)$ она
  имеет вид

  $
    (mu times nu times lambda)(C)
    &= integral_(X times Y) lambda(C_(x,y)) dif (mu times nu)(x, y) \
    &= integral_Z (mu times nu)(C_z) dif lambda(z),
  $ <eq:triple-product-section-integrals>

  где

  $
    C_(x,y) = {z in Z: (x, y, z) in C}, \
    C_z = {(x, y) in X times Y: (x, y, z) in C}.
  $
] <rem:multiple-product-sections>

#theorem(title: [Фубини], numbered: false)[
  #idx("Теорема", "Фубини")Пусть $f(x, y)$ — суммируемая функция на произведении
  пространств $(X, mu)$ и $(Y, nu)$. Тогда справедливы следующие утверждения:

  + Для $mu$-почти всех $x in X$ функция $f(x, y)$ суммируема на $Y$ и ее
    интеграл по $Y$ является суммируемой функцией на $X$.
  + Для $nu$-почти всех $y in Y$ функция $f(x, y)$ суммируема на $X$, а ее
    интеграл по $X$ является суммируемой функцией на $Y$.
  + #source(54)Справедливы равенства

    $
      integral_(X times Y) f(x, y) dif (mu times nu)(x, y)
      &= integral_X (integral_Y f(x, y) dif nu(y)) dif mu(x) \
      &= integral_Y (integral_X f(x, y) dif mu(x)) dif nu(y).
    $ <eq:fubini-iterated-integrals>

  + Для неотрицательных $(mu times nu)$-измеримых функций существование одного
    из повторных интегралов в~@eq:fubini-iterated-integrals влечет суммируемость
    $f$ на $X times Y$.
] <th:fubini>

#proof[
  Разложение $f = f_+ - f_-$ сводит доказательство к случаю неотрицательной
  функции. Рассмотрим произведение пространств $(X, mu)$, $(Y, nu)$,
  $(RR, lambda)$, где $lambda = dif z$ — обычная мера Лебега, и множество
  $C subset X times Y times RR$, заданное условием

  $ C = {(x, y, z) in X times Y times RR: 0 <= z <= f(x, y)}. $

  Применим к этому случаю соотношение~@eq:triple-product-section-integrals.
  Имеем

  $
    C_(x y) = {z in RR: 0 <= z <= f(x, y)}; quad
    lambda(C_(x y)) = f(x, y), \
    C_x = {(y, z) in Y times RR: 0 <= z <= f(x, y)}; \
    (nu times lambda)(C_x) = integral_Y f(x, y) dif nu(y).
  $

  Отсюда непосредственно вытекают все утверждения теоремы.
]

Отметим существенность условий суммируемости $f$ в пп. 1), 2), 3) и условия
неотрицательности в п. 4).

#definition[
  Пусть заданы множество $X$, $sigma$-алгебра $frak(A) subset P(X)$,
  $sigma$-конечная мера $mu$ и конечный заряд $nu$ на $frak(A)$. Заряд $nu$
  называется #idx("Заряд", "абсолютно непрерывный") _абсолютно непрерывным
  относительно_ $mu$, если из условия $mu(A) = 0$ следует $nu(A) = 0$. Два
  заряда $nu_1$ и $nu_2$ называются #idx(
    "Заряды эквивалентные",
  )_эквивалентными_, если условие $abs(nu_1)(A) = 0$ равносильно условию
  $abs(nu_2)(A) = 0$.
] <def:absolutely-continuous-charge>

#theorem(title: [Радона — Никодима], numbered: false)[
  #idx("Теорема", "Радона — Никодима")Всякий конечный заряд $nu$, абсолютно
  непрерывный относительно меры $mu$, имеет вид

  $ nu(A) = integral_A f(x) dif mu(x), $ <eq:radon-nikodym-density>

  где $f$ — некоторая функция из $L_(1)(X, mu)$. Функция $f$ (как элемент
  пространства $L_(1)(X, mu)$) однозначно определяется зарядом $nu$.
] <th:radon-nikodym>

#proof[
  Для любого рационального числа $r$ положим $nu_r = nu - r mu$. В силу
  результата задачи~@pr:hahn-positive-negative-measures #source(55)множество $X$
  представляется в виде $A_r^+ union.sq A_r^-$ так, что заряд $nu_r$
  неотрицателен на $A_r^+$ и неположителен на $A_r^-$. Для любого вещественного
  числа $c$ положим $A_c = union_(r>c) A_r^+$. Ясно, что ${A_c}$ — убывающее
  семейство измеримых множеств: $A_(c_1) subset A_(c_2)$ при $c_1 > c_2$.
  Покажем, что $A_(-infinity) = inter_c A_c$ и дополнение к
  $A_infinity = union_c A_c$ имеют меру нуль. В самом деле, если
  $A subset A_(-infinity)$, то $nu_(r)(A) >= 0$ для всех $r$, что возможно лишь
  при $mu(A) = 0$. Если же $A subset X without A_infinity$, то $nu_(r)(A) <= 0$
  для всех $r$, что также возможно лишь при $mu(A) = 0$. Далее, семейство
  ${A_c}$ по построению непрерывно справа:
  $A_c = union_(epsilon>0) A_(c+epsilon)$. Поэтому существует такая функция $f$
  на $X$, что $A_c = {x in X: f(x) > c}$. Функция $f$ измерима, так как все
  множества $A_c$ измеримы по построению.

  Пусть теперь $E$ — любое множество конечной меры. Тогда (см.
  задачу~@pr:lebesgue-integral-sums)

  $
    integral_E f(x) dif mu
    &= lim_(n -> infinity) sum_k k/n mu(E inter A_(k/n) without A_((k+1)/n)) \
    &= lim_(n -> infinity) sum_k (k+1)/n
    mu(E inter A_(k/n) without A_((k+1)/n)).
  $

  С другой стороны, по определению $A_c$, справедливы оценки

  $
    k/n mu(E inter A_(k/n) without A_((k+1)/n))
    &<= nu(E inter A_(k/n) without A_((k+1)/n)) \
    &<= (k+1)/n mu(E inter A_(k/n) without A_((k+1)/n)).
  $

  Чтобы доказать суммируемость $f$ на $E$, положим $E = E_+ union.sq E_-$, где
  для всех $x in E_+$ $f(x) >= 0$, а для всех $x in E_-$ $f(x) < 0$. Проведенное
  рассуждение показывает, что $integral_(E_+) f dif mu = nu(E_+) < infinity$,
  $integral_(E_-) f dif mu = nu(E_-) > -infinity$. Таким образом,
  $f in L_(1)(E, mu)$. Это доказывает~@eq:radon-nikodym-density для множеств
  конечной меры. Действительно,

  $
    sum_k nu(E inter (A_(k/n) without A_((k+1)/n)))
    = nu(E inter tilde(X)) = nu(E),
  $

  так как $nu$ абсолютно непрерывен, а $mu(X without tilde(X)) = 0$. Теперь
  #source(56)из конечности заряда $nu$ (см. задачу~@pr:charge-boundedness)
  вытекает суммируемость и справедливость~@eq:radon-nikodym-density в общем
  случае. Единственность $f$ (как элемента $L_(1)(X, mu)$) следует из результата
  задачи~@pr:nonnegative-integral-zero-criterion. Теорема доказана.
]

#corollary(numbered: false)[
  Если $mu$ — мера на $X$, $nu$ — конечный заряд, абсолютно непрерывный по мере
  $mu$, то для любого $epsilon > 0$ существует такое $delta > 0$, что из
  $mu(A) < delta$ следует $abs(nu)(A) < epsilon$.
] <cor:charge-absolute-continuity-epsilon-delta>

В самом деле, по теореме Радона — Никодима существует такая функция
$f in L_(1)(X, mu)$, что $nu(A) = integral_A f dif mu$. Тогда
$abs(nu)(A) = integral_A abs(f) dif mu$ и утверждение вытекает из
теоремы~@th:lebesgue-integral-absolute-continuity.
