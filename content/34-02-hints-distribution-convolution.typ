#import "main-defs.typ": *
#import "statements.typ": *

==== Свертки обобщенных функций <ss:hints-distribution-convolution>

#hint[@pr:constant-coefficient-differential-convolution][$L f=(sum_(k=0)^n
    c_k delta^((k))) ast f$.
] <hint:constant-coefficient-differential-convolution>

#hint[@pr:compact-distribution-constant-convolution][Воспользуйтесь тождествами
  $⟨ f,1 ast phi ⟩=⟨ f ast 1,phi ⟩$ и $1 ast phi=⟨ 1,phi ⟩ dot 1$ для
  $phi in cal(D)(RR)$.
] <hint:compact-distribution-constant-convolution>

#hint[@pr:distribution-convolution-reflection][Можно воспользоваться формулой
  $⟨ f_1 ast f_2,phi ⟩=⟨ f_1 times f_2,phi ⟩$ и соотношениями
  $f_1^∨ times f_2^∨=(f_1 times f_2)^∨$, $⟨ f^∨,phi^∨ ⟩=⟨ f,phi ⟩$.
] <hint:distribution-convolution-reflection>

#hint[@pr:tempered-schwartz-convolution-regularity,
  @pr:compact-distribution-smooth-convolution][Докажите, что $f ast phi$ задает
  непрерывный функционал на $L_1 (RR,dif x)$.
] <hint:tempered-schwartz-convolution-regularity>

#hint[@pr:distribution-test-convolution-continuity][Воспользуйтесь определением
  топологии в $cal(E)(RR^n)$ и $cal(D)(RR^n)$ и теоремой о представлении $f$ в
  виде производной от регулярной функции.
] <hint:distribution-test-convolution-continuity>

#hint[@pr:torus-distribution-smooth-convolution][Положите
  $⟨ f_1 ast f_2,phi ⟩=integral_(T^n) integral_(T^n) f_1 (t)f_2
  (s)phi(t+s)dif t dif s$.
] <hint:torus-distribution-smooth-convolution>

#hint[@pr:trigonometric-polynomials-torus-distribution-density][Используйте
  результаты задачи @pr:trigonometric-polynomials-convolution-ideal.
] <hint:trigonometric-polynomials-torus-distribution-density>

#hint[@pr:multidimensional-torus-polynomial-distribution-density][Используйте
  указание @hint:trigonometric-polynomials-torus-distribution-density к задаче
  @pr:trigonometric-polynomials-torus-distribution-density.
] <hint:multidimensional-torus-polynomial-distribution-density>

#hint[@pr:radial-planar-convolution-formula][Докажите, что $f$ выражается через
  $f_1$ и $f_2$ с помощью формулы
  $f(r)=integral_0^infinity integral_0^infinity K(r_1,r_2;r)f_1 (r_1)f_2
  (r_2)dif r_1 dif r_2$, где $K(r_1,r_2;r)$ — некоторая локально суммируемая
  функция. Ответ: $K(r_1,r_2;r)=0$, если отрезки $r_1,r_2,r$ не образуют
  треугольника; $K(r_1,r_2;r)=1/(4 S)$, если отрезки $r_1,r_2,r$ образуют
  треугольник площади $S$.
] <hint:radial-planar-convolution-formula>

#hint[@pr:one-sided-support-distribution-convolution][а) Поскольку
  $cal(E)_+ (RR)$ содержит $cal(D)(RR)$ в качестве плотного подпространства,
  всякий линейный непрерывный функционал на $cal(E)_+ (RR)$ определяется
  некоторой обобщенной функцией $f in cal(D)'(RR)$ и сам однозначно определяется
  этой функцией. Пусть $alpha in cal(E)_- (RR)$. Тогда умножение на $alpha$
  является непрерывным оператором из $cal(E)_+ (RR)$ в $cal(D)(RR)$. Значит,
  сопряженный оператор переводит $cal(D)'(RR)$ в $cal(E)'_+ (RR)$. Отсюда
  следует, что $cal(E)'_+ (RR)$ содержит $cal(D)'_- (RR)$. Обратно,
  #source(354)
  если $f in cal(D)'_- (RR)$ и $alpha in cal(E)_- (RR)$ — функция, тождественно
  равная $1$ в окрестности $"supp" f$, то $f=alpha f in cal(E)'_+ (RR)$.

  б) Первый способ:
  $⟨ f_1 ast f_2,phi ⟩=⟨ f_1 times f_2,attach(phi, t: circle) ⟩$, где
  $attach(phi, t: circle)(x,y)=phi(x+y)$. Здесь используется тот факт, что
  $"supp"(f_1 times f_2)$ имеет компактное пересечение с
  $"supp" attach(phi, t: circle)$, если $f_1,f_2 in cal(D)'_plus.minus (RR)$, а
  $phi in cal(E)_plus.minus (RR)$.

  Второй способ: определить сначала свертку $cal(D)'_plus.minus (RR)$ с
  $cal(E)_plus.minus (RR)$ формулой $(f ast phi)(x)=⟨ f,T(-x)phi^∨ ⟩$, а затем
  положить $⟨ f_1 ast f_2,phi ⟩=⟨ f_1,f_2^∨ ast phi ⟩$.

] <hint:one-sided-support-distribution-convolution>

#hint[@pr:normalized-half-line-power-convolution-semigroup][а), б), в)
  Проверяются непосредственно.

  г) Используйте результат п. в), непрерывную зависимость $f_alpha$ от $alpha$
  при $alpha>0$ и непрерывность операции дифференцирования в $cal(D)'_+ (RR)$.
  Ответ: $lim_(alpha arrow.r 0) f_alpha=delta$.
] <hint:normalized-half-line-power-convolution-semigroup>

#hint[@pr:fractional-integration-differentiation-operators][Положите при
  $alpha>-n$ $I(alpha)=(dif/(dif x))^n S(f_(alpha+n))$, где $f_alpha$ — функции
  задачи @pr:normalized-half-line-power-convolution-semigroup. Проверьте
  независимость от выбора $n$ (задача
  @pr:normalized-half-line-power-convolution-semigroup в)).
] <hint:fractional-integration-differentiation-operators>

#hint[@pr:circle-measure-self-convolution][Используйте равенство
  $f=1/pi delta(x^2+y^2-1)$. Ответ:

  $
    (f ast f)(x,y)=cases(
      1/(pi^2 sqrt((x^2+y^2)(4-x^2-y^2))) quad & x^2+y^2<4,
      0 quad & x^2+y^2>=4
    ).
  $
] <hint:circle-measure-self-convolution>

#hint[@pr:sphere-measure-self-convolution][Используйте равенство
  $f=1/(2 pi)delta(x^2+y^2+z^2-1)$. Ответ:

  $
    (f ast f)(x,y,z)=cases(
      1/(8 pi sqrt(x^2+y^2+z^2)) quad & x^2+y^2+z^2<=4,
      0 quad & x^2+y^2+z^2>=4
    ).
  $
] <hint:sphere-measure-self-convolution>
