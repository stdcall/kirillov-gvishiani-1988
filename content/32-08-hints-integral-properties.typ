#import "main-defs.typ": *
#import "statements.typ": *

==== Свойства интеграла Лебега <ss:hints-integral-properties>

#hint[@pr:integrable-functions-metric][
  Проверяется непосредственно.
] <hint:integrable-functions-metric>

#hint[@pr:uniform-convergence-implies-integral-convergence][
  Нет. Рассмотрите пример: $X=RR$, $mu$ — мера Лебега,
  $ f_n (x)=1/n chi_([-n^2,n^2]). $
] <hint:uniform-convergence-implies-integral-convergence>

#hint[@pr:pointwise-zero-nonvanishing-integral][
  $f_n (x)=n chi_((0,1/n])$.
] <hint:pointwise-zero-nonvanishing-integral>

#hint[@pr:convergence-in-measure-complete-metric][
  а) Для вывода неравенства треугольника используйте неравенство
  $lambda <= (lambda a+mu b)/(a+b) <=mu$ при $lambda<=mu$, $a>=0$, $b>=0$,
  $a+b>0$.

  б) Фундаментальность по мере последовательности Коши из $M[0,1]$ следует из
  неравенства
  $
    rho(f, g)>=sigma/(1+sigma) mu\{x in X: abs(f(x)-g(x))>=sigma\}, quad
    sigma>0.
  $
  Обратное очевидно. Полнота пространства $M[0,1]$ следует из того, что из
  последовательности фундаментальной по мере, с помощью теоремы
  @th:measure-convergence-almost-everywhere-subsequence можно выбрать
  последовательность, сходящуюся почти всюду.

  в) Решение аналогично @pr:convergence-in-measure-complete-metric, а).
] <hint:convergence-in-measure-complete-metric>

#hint[@pr:scheffe-integral-convergence][
  Пусть $integral_X f(x) dif mu=A$. Для любого $epsilon>0$ существует
  подмножество $E_1$ конечной меры в $X$, для которого
  $integral_(E_1) f(x) dif mu>A-epsilon$. По теореме
  @th:lebesgue-integral-absolute-continuity существует такое $delta(epsilon)>0$,
  что $integral_E f(x) dif mu<epsilon$ для всех множеств $E$ меры
  #source(317)
  $<delta(epsilon)$. По @th:egorov сходимость $f_n$ к $f$ равномерна на
  некотором подмножестве $E_2 subset E_1$, обладающем свойством
  $mu(E_1 without E_2)<delta(epsilon)$. Далее, существуют такие номера
  $n_1 (epsilon)$ и $n_2 (epsilon)$, что
  $integral_(E_2) abs(f_N (x)-f(x)) dif mu<epsilon$ при $N>n_1 (epsilon)$ и
  $abs(integral_X f_N (x) dif mu-A)<epsilon$ при $N>n_2 (epsilon)$. Пусть
  $n(epsilon)=max\{n_1 (epsilon),n_2 (epsilon)\}$. Из всего предыдущего следует,
  что
  $
    integral_X abs(f_N-f) dif mu &<= integral_(E_2) abs(f_N-f) dif
    mu+integral_(X without E_2) f_N dif mu+integral_(X without E_2) f dif mu
    \
    &<=epsilon+integral_X f_N dif mu-integral_(E_2) f_N dif mu+integral_X f dif
    mu-integral_(E_2) f dif mu
    \
    &<=epsilon+A+epsilon-(A-3epsilon)+A-(A-2epsilon)=7epsilon quad "при"
    N>n(epsilon).
  $
] <hint:scheffe-integral-convergence>

#hint[@pr:monotone-rearrangement-integral-extrema][
  Возьмите функцию $g$ из задачи @pr:monotone-equimeasurable-rearrangement. Она
  равноизмерима с $f$, поэтому $g in L_1(0,1)$. Пусть $0<t<1$, $a=g(t)$,
  $b=mu\{f<a\}$ и $d=mu\{f<=a\}$. Тогда $b<=t<=d$. Отсутствие атомов позволяет
  выбрать $B subset \{f=a\}$ меры $t-b$. Положим $A_t=\{f<a\} union B$. Для
  любого $A$ меры $t$
  $ integral_X (chi_A-chi_(A_t))(f-a) dif mu>=0, $
  поскольку на $A without A_t$ функция $f-a$ неотрицательна, а на
  $A_t without A$ неположительна. Следовательно, минимум достигается на $A_t$.
  По равноизмеримости
  $ integral_(A_t) f dif mu=integral_0^t g(tau) dif tau. $
  Максимум получается переходом к дополнению множества меры $1-t$. Случаи $t=0$
  и $t=1$ непосредственны.#ed-note[
    Мера должна быть без атомов, иначе множества заданной меры могут не
    существовать. Обычная обратная к функции распределения заменена обобщенной;
    при скачке отбирается часть множества $\{f=a\}$. Построение обобщенной
    обратной см. в теореме 1 гл. III, § 8: #cite(<Shiryaev2021>, form: "full").
  ]
] <hint:monotone-rearrangement-integral-extrema>

#hint[@pr:translation-quasiinvariant-measure][
  Пусть $mu_0$ — мера Лебега, $mu$ — квазиинвариантная мера и $X$ — любое
  борелевское подмножество на прямой. Рассмотрим множество $Y$ на плоскости
  $RR^2$, состоящее из пар $(x_1,x_2)$, для которых $x_1-x_2 in X$. Применяя к
  этому множеству @th:fubini
  #source(318)
  для произведения мер $mu times mu_0$, получаем
  $
    integral_(-infinity)^infinity mu_0 (x_1-X) dif
    mu(x_1)=integral_(-infinity)^infinity mu (x_2+X) dif mu_0 (x_2).
  $
  Отсюда, если $mu_0 (x_1-X)=mu_0 (X)=0$, то $mu (x_2+X)=0$ для почти всех
  $x_2$
  и, значит, $mu (X)=0$. Если же $mu_0 (X)!=0$, то слева стоит
  $mu_0 (X) mu (RR)$ и, значит, $mu (x_2+X)!=0$, т. е. $mu (X)!=0$. Таким
  образом, меры $mu$ и $mu_0$ эквивалентны.#ed-note[
    $sigma$-конечность нужна для применения теоремы Фубини. Без нее считающая
    мера на $RR$ квазиинвариантна, но не эквивалентна мере Лебега. См. теоремы
    2.36 и 2.39: #cite(<Folland1999>, form: "full").
  ]
] <hint:translation-quasiinvariant-measure>

#hint[@pr:density-charge-equivalence][
  Вариация заряда $nu_i$ равна $abs(nu_i)=abs(f_i)mu$. Поэтому условия
  $abs(nu_1)(A)=0$ и $abs(nu_2)(A)=0$ равносильны тогда и только тогда, когда
  равносильны условия $mu(A inter N_1)=0$ и $mu(A inter N_2)=0$. Последнее верно
  при всех $A$ тогда и только тогда, когда $mu(N_1 triangle N_2)=0$.
] <hint:density-charge-equivalence>

#hint[@pr:radon-nikodym-density][
  Для каждого подмножества $A$ конечной меры $mu$ по @th:radon-nikodym
  существует измеримая функция $rho_A (x)$, обладающая свойством
  $nu(B)=integral_B rho_A (x) dif mu(x)$ для любого измеримого $B subset A$.
  Пусть теперь $X=union X_i$, $mu(X_i)<infinity$ и $rho_i=rho_(X_i)$. Легко
  видеть, что функции $rho_i$ и $rho_j$ совпадают почти всюду на
  $X_i inter X_j$. Поэтому существует измеримая функция $rho$ на $X$,
  совпадающая с $rho_i$ почти всюду на $X_i$. Она обладает нужным свойством.
] <hint:radon-nikodym-density>

#hint[@pr:no-uniform-half-density-set][
  Предположим противное. Тогда $mu(A inter [0,1])=1/2$ и существует покрытие
  множества $A inter [0,1]$ непересекающимися интервалами
  $\{Delta_n\}_(n=1,2,dots)$ такое, что $sum_n mu(Delta_n)<1$. Получаем
  противоречие:
  $ 1/2=mu(A inter [0,1])<=sum_n mu(A inter Delta_n)<1/2. $
] <hint:no-uniform-half-density-set>

#hint[@pr:indefinite-integral-derivative][
  Воспользоваться тем, что $F(x)=integral_0^x f(t) dif t$ — абсолютно
  непрерывная функция (это следует из абсолютной непрерывности интеграла).
] <hint:indefinite-integral-derivative>

#hint[@pr:absolute-continuity-fundamental-theorem][
  Воспользоваться @th:radon-nikodym.
] <hint:absolute-continuity-fundamental-theorem>

#hint[@pr:integrable-functions-dense-approximants][
  а) Непосредственное следствие из определений. б) Этими функциями можно
  приблизить любую функцию $phi$ из $S$. в), г) Многочлены и тригонометрические
  многочлены плотны (даже в смысле равномерной сходимости) в пространстве
  непрерывных функций, которые плотны в $L_1[0,1]$ по п. б).
] <hint:integrable-functions-dense-approximants>

#hint[@pr:real-line-integrable-dense-approximants][
  а) Следует из определения метрики в $L_1 (RR)$.

  б) Заметить, что всякая кусочно-постоянная финитная функция приближается по
  метрике $L_1 (RR)$ кусочно-линейной финитной функцией, и воспользоваться п.
  а).

  в) Рассмотрим совокупность $L_0$ всех функций $f in L_2 (RR)$, обладающих
  свойством $integral_RR e^(-x^2) x^k f(x) dif x=0$ для всех целых
  неотрицательных $k$. Покажем, что функции $f$ характеризуются условием
  $ phi_f (lambda)=integral_RR e^(-x^2+lambda x) f(x) dif x=0 $
  #source(319)
  для всех $lambda in CC$. В самом деле, из суммируемости функций
  $e^(-x^2+lambda x) f(x)$ и $x e^(-x^2+lambda x) f(x)$ вытекает, что
  $phi_f (lambda)$ дифференцируема при всех $lambda in CC$. Значит, она
  аналитична. Так как $phi_f^((k)) (0)=integral_RR e^(-x^2) x^k f(x) dif x$,
  условия $f in L_0$ и $phi_f equiv 0$ равносильны. Пусть $a(lambda)$ — любая
  суммируемая функция на $RR$. Тогда
  $
    0=integral_RR a(lambda) phi_f (i lambda) dif lambda
    =integral_RR integral_RR a(lambda) e^(-x^2+i lambda x) f(x) dif x dif lambda
    =integral_RR e^(-x^2) b(x) f(x) dif x,
  $
  где $b(x)=integral_RR a(lambda) e^(i lambda x) dif lambda$. Покажем, что,
  подбирая подходящим образом $a(lambda)$, можно в качестве $b(x)$ получить
  любую непрерывную кусочно-линейную финитную функцию. Отсюда будет следовать,
  что $e^(-x^2) f(x)=0$ почти всюду и, следовательно, $f(x)=0$ почти всюду.

  Заметим, что умножение $a(lambda)$ на $e^(i lambda t)$ приводит к сдвигу
  $b(x)$ на $t$. Кроме того, соответствие между $a(lambda)$ и $b(x)$ линейно.
  Поэтому достаточно в качестве $b(x)$ получить элементарную функцию, равную 0
  вне $[-1,1]$ и равную $1-abs(x)$ на этом отрезке. Оказывается, для этого
  достаточно взять $a(lambda)=2/pi (sin(lambda/2))^2/lambda^2$. (Ср. теорему
  @th:fourier-inversion гл.~@ch:theory-fourier-harmonic-analysis и задачу
  @pr:integrable-fourier-transform-uniqueness.)
] <hint:real-line-integrable-dense-approximants>

#hint[@pr:integrable-translation-continuity][
  Докажите, что множество функций, для которых выполнено условие непрерывности
  сдвига, замкнуто в $L_1 (RR)$. Проверьте это условие для непрерывных финитных
  функций.
] <hint:integrable-translation-continuity>

#hint[@pr:integrable-convolution-continuity][
  а) Покажите, что $f_1 (t) f_2 (x-t)$ — функция, измеримая относительно меры
  Лебега на плоскости $(x,t)$, и примените @th:fubini для $sigma$-конечных мер.
  Использования @th:fubini можно избежать, рассмотрев сначала свертку на плотном
  в $L_1$ пространстве непрерывных финитных функций, затем случай ограниченной
  функции $f_1 (t) in L_1$, наконец, приближая $f_1 (t)$ ограниченными
  функциями.

  б) Рассмотрите неравенство
  $
    abs(f(x+h)-f(x))<=sup abs(f_1 (t)) integral_(-infinity)^infinity abs(
      f_2
      (t+h)-f_2 (t)
    ) dif t.
  $
] <hint:integrable-convolution-continuity>
