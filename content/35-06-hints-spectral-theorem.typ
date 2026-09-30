#import "main-defs.typ": *
#import "statements.typ": *

==== Спектральная теорема <ss:hints-spectral-theorem>

#hint[@pr:projection-measure-riemann-lebesgue-integral-agreement][а) Пусть
  $w(t)$ — _модуль непрерывности_ функции $f$ (т. е.
  $abs(f(x)-f(y))<=w(abs(x-y))$). Докажите оценку

  $ norm(S(f,T,xi)-S(f,T,eta))<=w(delta(T)). $

  б) Воспользуйтесь тем, что интегральная сумма $S(f,T,xi)$ совпадает с
  интегралом Лебега от ступенчатой функции

  $ f_(T xi)(x)=sum_(k=0)^(n-1) f(xi_k)chi_(I_k)(x), $

  где $I_k=[t_k,t_(k+1))$ при $0<=k<n-1$, а $I_(n-1)=[t_(n-1),t_n]$.
] <hint:projection-measure-riemann-lebesgue-integral-agreement>

#hint[@pr:projection-measure-integral-algebraic-convergence-properties][Для
  доказательства свойств а), в), г) полезно использовать равенство

  $
    lr((integral_X f(x)dif lambda(x)xi,eta))=integral_X f(x)dif lambda_(xi eta)
  $

  для любых $xi,eta in H$. Равенство б) проверьте сначала для характеристических
  функций, а затем используйте а). Для доказательства свойства д) воспользуйтесь
  б) и задачей @pr:weak-operator-norm-convergence-implies-strong.
] <hint:projection-measure-integral-algebraic-convergence-properties>

#hint[@pr:projection-measure-axiom-redundancy][а) Воспользуйтесь соотношением

  $ X without (E_1 union E_2)=(X without E_1)inter(X without E_2). $

  б) Рассмотрим сначала случай $E_1 inter E_2=emptyset$. Пусть
  $lambda(E_1)=alpha$ и $lambda(E_2)=beta$. Поскольку $alpha,beta$ —
  ортогональные проекции, $alpha^2=alpha$, $beta^2=beta$ и
  $(alpha+beta)^2=alpha+beta$. Отсюда
  #source(371)
  следует, что $alpha beta+beta alpha=0$. Умножая это равенство слева, справа и
  с обеих сторон на $alpha$, получаем $alpha beta+alpha beta alpha=0$,
  $alpha beta alpha+beta alpha=0$ и $2 alpha beta alpha=0$. Таким образом,
  $alpha beta=beta alpha=0$. Переходя к общему случаю, используем соотношения
  $E_1=(E_1 inter E_2) union.sq (E_1 without E_2)$,
  $E_2=(E_1 inter E_2) union.sq (E_2 without E_1)$. Тогда
  $lambda(E_1)lambda(E_2)=[lambda(E_1 inter E_2)+lambda(
      E_1 without
      E_2
    )][lambda(E_1 inter E_2)+lambda(E_2 without E_1)]$. По доказанному выше,
  последнее выражение равно $lambda(E_1 inter E_2)$.

] <hint:projection-measure-axiom-redundancy>

#hint[@pr:interval-square-multiplication-projection-measure-equivalence][
  Существует. Воспользуйтесь отображением отрезка на квадрат, сохраняющим меру
  (см. задачу @pr:cantor-square-measure-isomorphism).
] <hint:interval-square-multiplication-projection-measure-equivalence>

#hint[@pr:quadratic-vector-measures-projection-measure-question][Верно.
  Используйте тот факт, что соответствие $xi |-> sqrt(mu_xi (E))$ задает в $H$
  полунорму, удовлетворяющую тождеству параллелограмма.
] <hint:quadratic-vector-measures-projection-measure-question>

#hint[@pr:continuous-function-algebra-representation-spectral-measure][Примените
  утверждение предыдущей задачи к мере $mu_xi$, представляющей функционал
  $f |-> (phi(f)xi,xi)$.
] <hint:continuous-function-algebra-representation-spectral-measure>

#hint[@pr:spectral-projection-subspace-invariance-restriction-spectrum][а)
  Следует из того, что $lambda(E)$ и $A$ коммутируют, что, в свою очередь,
  следует из конструкции $lambda$.

  б), в) Следует из рассмотрения реализации, в которой $A$ есть оператор
  умножения на функцию.
] <hint:spectral-projection-subspace-invariance-restriction-spectrum>

#hint[@pr:self-adjoint-spectrum-spectral-measure-support][Аналогично
  @pr:spectral-projection-subspace-invariance-restriction-spectrum в).
] <hint:self-adjoint-spectrum-spectral-measure-support>

#hint[@pr:weyl-self-adjoint-spectrum-approximate-eigenvectors][Если
  $(A-a dot 1)^(-1)$ существует, то
  $norm(A xi-a xi)>=norm((A-a dot 1)^(-1))^(-1) dot norm(xi)$. Если точка $a$
  принадлежит спектру, воспользуйтесь результатом задачи
  @pr:self-adjoint-spectrum-spectral-measure-support.
] <hint:weyl-self-adjoint-spectrum-approximate-eigenvectors>

#hint[@pr:essential-spectrum-compact-perturbation-invariance][Используйте тот
  факт, что всякая ортонормированная система слабо сходится к нулю.
] <hint:essential-spectrum-compact-perturbation-invariance>

#hint[@pr:stone-resolvent-spectral-projection-formula][Пусть
  $I_epsilon (t)=epsilon/pi integral_a^b (dif lambda)/((t-lambda)^2+epsilon^2)$.

  Убедитесь прямым вычислением с помощью замены переменных
  $lambda |-> (lambda-t)/epsilon$, что

  $
    lim_(epsilon arrow.r 0) I_epsilon (t)=cases(
      0 & "если" t in.not [a,b],
      1/2 & "если" t=a "или" t=b,
      1 & "если" t in (a,b)
    ).
  $
] <hint:stone-resolvent-spectral-projection-formula>

#hint[@pr:unitary-operator-circle-spectral-measure][Первый способ: представьте
  $U$ в виде $"Re" U+i "Im" U$. Второй способ: используйте результаты задач
  @pr:unbounded-self-adjoint-cayley-transform,
  @pr:unbounded-inverse-cayley-transform-self-adjointness.
] <hint:unitary-operator-circle-spectral-measure>

#hint[@pr:von-neumann-mean-ergodic-theorem][Используйте результат задачи
  @pr:unitary-operator-circle-spectral-measure и соотношение

  $
    1/N sum_(k=1)^N e^(2 pi i k t) arrow.r cases(
      1 & "при" t=0, 0 & "при"
      t!=0
    ), quad t in TT=RR/ZZ
  $

  при $N arrow.r infinity$.
] <hint:von-neumann-mean-ergodic-theorem>

#hint[@pr:holomorphic-contour-functional-calculus][а) Для доказательства
  мультипликативности воспользуйтесь _тождеством Гильберта_
  $R_lambda (A)dot R_mu (A)=(R_lambda (A)-R_mu (A))/(lambda-mu)$ и предположите,
  что контур $C$, пробегаемый переменной $lambda$, содержит контур $C'$,
  пробегаемый переменной $mu$ в интеграле

  $
    -1/(4 pi^2)integral_C integral_(C') f_1 (lambda)f_2 (mu)R_lambda (A)R_mu
    (A)dif lambda dif mu.
  $

  #source(372)
  б) Воспользуйтесь тем, что интеграл является пределом римановых интегральных
  сумм и что соответствующие числовые интегральные суммы сходятся к интегралу
  $i/(2 pi)integral_C f(lambda)/(t-lambda) dif lambda=f(t)$.
] <hint:holomorphic-contour-functional-calculus>

#hint[@pr:commuting-self-adjoint-family-simultaneous-multiplication-model][См.
  указания @hint:separable-space-continuous-interval-embedding и
  @hint:commuting-self-adjoint-pair-single-generator к задачам
  @pr:separable-space-continuous-interval-embedding и
  @pr:commuting-self-adjoint-pair-single-generator.
] <hint:commuting-self-adjoint-family-simultaneous-multiplication-model>

#hint[@pr:unbounded-borel-functional-calculus-normality][Рассмотрите сначала
  случай циклического подпространства.
] <hint:unbounded-borel-functional-calculus-normality>

#hint[@pr:translation-unitary-group-self-adjoint-generator][Ответ:
  $A=-i dif/(dif x)$.
] <hint:translation-unitary-group-self-adjoint-generator>

#hint[@pr:periodic-unitary-group-generator-integral-spectrum][Воспользуйтесь
  теоремой Стоуна и реализацией $U(t)$ в виде оператора умножения на $e^(i t x)$
  в прямой сумме пространств вида $L_2 (RR,mu)$.
] <hint:periodic-unitary-group-generator-integral-spectrum>

#hint[@pr:unitary-operator-continuous-group-embedding][Да. Используйте задачу
  @pr:unitary-operator-circle-spectral-measure.
] <hint:unitary-operator-continuous-group-embedding>

#hint[@pr:harmonic-oscillator-self-adjoint-spectral-decomposition][Проверьте,
  что функция $f_0 (x)=e^(-x^2/2)$ является собственной для $A$ и что оператор

  $ B=-(dif)/(dif x)+x $

  переводит собственную функцию для $A$ с собственным значением $lambda$ в
  собственную функцию с собственным значением $lambda+2$. Ответ:

  $ A=sum_(k=0)^infinity (2 k+1)P_k, $

  где $P_k$ — проектор на подпространство, порожденное функцией $f_k=B^k f_0$.
  Далее используйте задачи @pr:classical-orthogonal-polynomial-construction г) и
  @pr:real-line-integrable-dense-approximants в).
] <hint:harmonic-oscillator-self-adjoint-spectral-decomposition>
