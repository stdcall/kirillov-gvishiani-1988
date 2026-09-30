#import "main-defs.typ": *
#import "statements.typ": *

==== Преобразование Фурье обобщенных функций <ss:hints-fourier-distributions>

#hint[@pr:homogeneous-distribution-fourier-degree][Воспользуйтесь результатом
  задачи @pr:fourier-transform-affine-change-of-variables. Ответ:
  $(-1-lambda,epsilon)$.
] <hint:homogeneous-distribution-fourier-degree>

#hint[@pr:circle-distribution-periodic-lift-fourier-relation][Ответ:
  $F(lambda)=sum_(l in ZZ) tilde(f)(l)delta(lambda-l)$.
] <hint:circle-distribution-periodic-lift-fourier-relation>

#hint[@pr:ball-integral-quasiperiodic-functions][а) Воспользуйтесь тождеством

  $ (dif)/(dif x)integral_x^(x+R) f(t)dif t=f(x+R)-f(x). $
  #source(363)
  б) Функция $e^(i lambda x)$ будет квазипериодической с периодом $R$, если
  $lambda in RR^n$ удовлетворяет условию
  $integral_(norm(x)<=R) e^(i lambda x)dif x=0$. Последнее равносильно тому, что
  число $R norm(lambda)$ — корень уравнения $I_(n/2)(x)=0$, где $I_(n/2)$ —
  _функция Бесселя_,

  $
    I_nu (x)=sum_(k=0)^infinity ((-1)^k)/(k! Gamma(nu+k+1))
    (x/2)^(nu+2 k).
  $

  Для целого $n>=0$ справедливо интегральное представление

  $ I_n (x)=1/pi integral_0^pi cos(n theta-x sin theta)dif theta. $

  Известно, что это уравнение имеет счетное число корней на положительной
  полуоси, для которых справедлива асимптотическая формула
  $x_(m n) approx (m+(n-1)/4)pi$ при $m arrow.r infinity$. Если $n$ нечетно,
  функция $I_(n/2)$ выражается через элементарные. В частности, при $n=3$

  $ I_(3/2)(x)=sqrt(2/(pi x))(sin x/x-cos x), $

  так что уравнение на $lambda$ принимает в этом случае вид

  $ R dot norm(lambda)=tan(R dot norm(lambda)). $

  в) Может; см. указание к б).

] <hint:ball-integral-quasiperiodic-functions>

#hint[@pr:complex-gaussian-distribution-fourier-transform][Ответ:
  $tilde(f)(lambda)=(det A)^(-1/2)e^(-pi lr(((A')^(-1)lambda,lambda)))$, где
  аргумент $det A$ выбирается по непрерывности на пути, линейно соединяющем $A$
  с единичной матрицей.
] <hint:complex-gaussian-distribution-fourier-transform>

#hint[@pr:oscillatory-gaussian-distribution-fourier-transform][Ответ:
  $tilde(f)(lambda)=abs(det A)^(-1/2)e^(i pi s/4)e^(-i pi
  lr((A^(-1)lambda,lambda)))$, где $s$ — _сигнатура матрицы_ $A$ (разность числа
  положительных и отрицательных собственных значений).
] <hint:oscillatory-gaussian-distribution-fourier-transform>

#hint[@pr:paley-wiener-compact-distribution-characterization][Константа $R$
  связана с размерами носителя, а константа $N$ — с порядком преобразуемой
  функции. (Ср. теорему Пэли — Винера в задаче
  @pr:paley-wiener-test-function-fourier-characterization.)
] <hint:paley-wiener-compact-distribution-characterization>

#hint[@pr:tempered-laplacian-positive-eigenvalue-impossibility][Перепишите
  уравнение в терминах преобразований Фурье.
] <hint:tempered-laplacian-positive-eigenvalue-impossibility>

#hint[@pr:heat-equation-integrable-initial-data-kernel][Ответ:
  $f_t (x)=1/sqrt(4 pi t)e^(-x^2/(4 t))$.
] <hint:heat-equation-integrable-initial-data-kernel>

#hint[@pr:fourier-translation-modulation-conjugacy][Проверьте эти соотношения в
  пространстве $S(RR^n)$.
] <hint:fourier-translation-modulation-conjugacy>

#hint[@pr:radial-tempered-function-fourier-kernel][$k(r)=(2 sin 2 pi r)/r$ при
  $r!=0$, $k(0)=4 pi$.
] <hint:radial-tempered-function-fourier-kernel>
