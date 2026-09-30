#import "main-defs.typ": *
#import "statements.typ": *

==== Интеграл Фурье <ss:theory-fourier-integral>

Преобразование Фурье для функций на вещественной прямой задается _интегралом
Фурье_:

$
  tilde(f)(lambda)=integral_(-infinity)^infinity f(x)e^(-2 pi i lambda x) dif x.
$
<eq:real-line-fourier-integral>

Напомним, что в п.~@ss:theory-fourier-series мы ввели понятие обратного
преобразования Фурье:

$
  breve(tilde(f))(lambda)
  =integral_(-infinity)^infinity f(x)e^(2 pi i lambda x) dif x.
$
<eq:real-line-inverse-fourier-integral>

#theorem[
  Прямое и обратное преобразования Фурье являются взаимно обратными
  преобразованиями пространства $S(RR)$.
] <th:schwartz-fourier-isomorphism>

#proof[
  #source(146)Покажем, что под действием преобразования Фурье (и прямого, и
  обратного) пространство $S(RR)$ переходит в себя. В самом деле, поскольку
  функция $f in S(RR)$ и все ее производные суммируемы и стремятся к нулю на
  бесконечности, интегрирование по частям дает равенство

  $ tilde((f^((k))))(lambda)=(2 pi i lambda)^k tilde(f)(lambda). $
  <eq:fourier-derivative-multiplier>

  Далее, поскольку функции $x^k f(x)$ суммируемы при любом $k$,
  дифференцирование формулы~@eq:real-line-fourier-integral по $lambda$ дает
  равенство

  $
    tilde(f)^((k))=tilde([f dot (-2 pi i x)^k]).
  $ <eq:fourier-moment-derivative>

  Обозначая оператор преобразования Фурье через $F$, мы можем переписать
  @eq:fourier-derivative-multiplier и~@eq:fourier-moment-derivative в виде
  коммутационных соотношений

  $ F D^k=M^k F, quad F(-M)^k=D^k F, $ <eq:fourier-commutation-powers>

  $ F D F^(-1)=M, quad F M F^(-1)=-D, $ <eq:fourier-operator-conjugation>

  где через $D$ обозначен оператор дифференцирования $frac(d, d x)$, а через $M$
  — оператор умножения на $2 pi i x$. Система полунорм, определяющая топологию в
  $S(RR)$, имеет вид

  $ p_(k l)(f)=sup_(x in RR)abs(x^k f^((l))(x)). $

  По теореме~@th:schwartz-seminorm-equivalence
  гл.~@ch:theory-linear-spaces-operators эта система эквивалентна системе

  $ p'_(k l)(f)=integral_RR abs(x^k f^((l))(x)) dif x. $

  Оценим полунорму $p_(k l)(tilde(f))$ через полунормы $p'_(m n)(f)$. Для этого
  заметим, что $p_(k l)(f)=(2 pi)^(-k)p_(0 0)(M^k D^l f)$,
  $p'_(k l)(f)=(2 pi)^(-k)p'_(0 0)(M^k D^l f)$. Далее, оценка
  интеграла~@eq:real-line-fourier-integral дает
  $p_(0 0)(tilde(f))<=p'_(0 0)(f)$. Отсюда

  $
    p_(k l)(tilde(f))=(2 pi)^(-k)p_(0 0)(M^k D^l tilde(f))
    <=(2 pi)^(-k)p'_(0 0)(D^k M^l f).
  $

  Остается переставить местами операторы $D^k$ и $M^l$, чтобы получить требуемую
  оценку. По формуле Лейбница имеет место тождество

  $
    D^k M^l=sum_(j=0)^(min(k, l))frac(k! l!, j! (k-j)! (l-j)!)
    (2 pi i)^j M^(l-j)D^(k-j).
  $ <eq:fourier-leibniz-commutation>

  Мы доказали непрерывность отображения $F$. Непрерывность обратного
  преобразования $breve(F)$ доказывается #source(147)точно так же с
  использованием коммутационных соотношений

  $ breve(F)D^k=(-M)^k breve(F), quad breve(F)M^k=D^k breve(F) $
  <eq:inverse-fourier-commutation-powers>

  или

  $ breve(F)D(breve(F))^(-1)=-M, quad breve(F)M(breve(F))^(-1)=D. $
  <eq:inverse-fourier-operator-conjugation>

  Рассмотрим теперь композицию преобразований $F$ и $breve(F)$. Из
  соотношений~@eq:fourier-operator-conjugation
  и~@eq:inverse-fourier-operator-conjugation немедленно вытекает, что эта
  композиция перестановочна с операторами $D$ и $M$.
]

#lemma(numbered: false)[
  Всякий непрерывный оператор в пространстве $S(RR)$, перестановочный с
  оператором $M$, является оператором умножения на некоторую функцию.
] <lem:schwartz-multiplication-commutant>

#proof[
  Пусть оператор $A$ в $S(RR)$ перестановочен с $M$. Тогда он перестановочен с
  оператором умножения на любой многочлен. Покажем, что для любой функции
  $phi in S(RR)$ и любой точки $a in RR$ значение $A phi(a)$ зависит только от
  $phi(a)$. В самом деле, если $phi_1(a)=phi_2(a)$, то разность
  $phi_1(x)-phi_2(x)$ обращается в нуль в точке $a$ и, значит, имеет вид
  $(x-a)psi(x)$, где $psi in S(RR)$. Поэтому
  $A phi_1(x)=A[phi_2+(x-a)psi]=A phi_2(x)+(x-a)A psi(x)$, поскольку $A$
  перестановочен с умножением на $x-a$. Отсюда $A phi_1(a)=A phi_2(a)$, что и
  требовалось. Итак, для любой точки $a in RR$ существует такое число $f(a)$,
  что $A phi(a)=f(a)phi(a)$ для всех $phi in S(RR)$. Значит, $A=M(f)$. Лемма
  доказана.
]

#remark[
  Из приведенного доказательства нельзя сделать никаких выводов о структуре
  функции $f$. Но мы знаем, что для любой функции $phi in S(RR)$ функция $f phi$
  также принадлежит $S(RR)$. Отсюда следует, что $f$ бесконечно дифференцируема.
] <rem:schwartz-multiplier-smoothness>

Вернемся к доказательству теоремы. Интересующие нас операторы $F breve(F)$ и
$breve(F)F$, в силу доказанной леммы, являются операторами умножения. Кроме
того, справедливо соотношение

$ D M(f)-M(f)D=M(f'), $

вытекающее из правила Лейбница. Поэтому оператор вида $M(f)$ перестановочен с
оператором $D$ только тогда, когда $f'=0$, т. е. $f="const"$. Это показывает,
что операторы $F breve(F)$ и $breve(F)F$ скалярны: $F breve(F)=c_1$,
$breve(F)F=c_2$. Для завершения доказательства теоремы остается проверить, что
$c_1=c_2=1$. Это вытекает, например, из явного подсчета преобразования Фурье
какой-нибудь функции из $S(RR)$.

#source(148)
#theorem[
  Существует унитарный оператор в $L_(2)(RR,dif x)$, ограничение которого на
  подпространство $L_(2)(RR,dif x) inter L_(1)(RR,dif x)$ совпадает с
  преобразованием Фурье. (В дальнейшем этот оператор мы будем обозначать, как и
  прямое преобразование Фурье, буквой $F$.)
] <th:fourier-plancherel-extension>

В частности, для любой функции $f in S(RR)$ справедлива _формула Планшереля_:

$ norm(f)_(L_(2)(RR,dif x))=norm(tilde(f))_(L_(2)(RR,dif lambda)). $
<eq:plancherel-identity>
#idx("Формула", "интегрирования по частям для интеграла Планшереля")

#proof[
  Из теоремы~@th:schwartz-fourier-isomorphism и общих свойств преобразования
  Фурье (см. п.~@ss:theory-group-characters) вытекает, что преобразование Фурье
  переводит умножение в свертку:

  $ tilde((f_1 f_2))=tilde(f)_1*tilde(f)_2. $ <eq:fourier-product-convolution>

  Применим это равенство к частному случаю, когда $f_1(x)=f(x)$,
  $f_2(x)=overline(f(x))$. Имеем $tilde(overline(f))(lambda)
  =integral_RR overline(f(x))e^(-2 pi i lambda x) dif x
  =overline(tilde(f)(-lambda))$. Поэтому~@eq:fourier-product-convolution дает

  $
    integral_RR abs(f(x))^2 e^(-2 pi i lambda x) dif x
    =integral_RR tilde(f)(lambda-mu)overline(tilde(f)(-mu)) dif mu.
  $

  Полагая здесь $lambda=0$ и заменяя $-mu$ на $lambda$,
  получаем~@eq:plancherel-identity. Поскольку $S(RR)$ плотно в
  $L_(2)(RR,dif x)$, из~@eq:plancherel-identity вытекает, что оператор $F$ имеет
  единственное унитарное продолжение с $S(RR)$ на $L_(2)(RR,dif x)$. Остается
  проверить, что на подпространстве $L=L_(2)(RR,dif x) inter L_(1)(RR,dif x)$
  это продолжение задается интегралом~@eq:real-line-fourier-integral. Пусть
  $phi in L$, $phi_n in S(RR)$ и $phi_n -> phi$ в смысле каждой из норм
  $L_(2)(RR,dif x)$ и $L_(1)(RR,dif x)$. Тогда $tilde(phi)_n -> tilde(phi)$
  равномерно и $F phi_n -> F phi$ в смысле $L_(2)(RR,dif lambda)$. Последнее
  влечет, что некоторая подпоследовательность $tilde(phi)_(n_k)$ сходится к
  $F phi$ почти всюду. Отсюда $F phi=tilde(phi)$, и теорема доказана.
]

#remark[
  Теорема~@th:fourier-plancherel-extension является частным случаем общего
  утверждения: если $G$ — локально компактная коммутативная группа с
  инвариантной мерой $mu$, то существуют такая инвариантная мера $hat(mu)$ на
  двойственной группе $hat(G)$ и такой унитарный оператор
  $F:L_(2)(G,mu) -> L_(2)(hat(G),hat(mu))$, сужение которого на
  $L_(2)(G,mu) inter L_(1)(G,mu)$ совпадает с преобразованием Фурье.
] <rem:group-plancherel-extension>

Так же как и в случае окружности, гладкость функции $f$ на прямой связана с
убыванием на бесконечности ее преобразования Фурье $tilde(f)$. Так как группа
$RR$ самодвойственна, имеет место двойственное утверждение: убывание #source(
  149,
)на бесконечности функции $f$ связано с гладкостью $tilde(f)$. Вот один из
вариантов точной формулировки.

#theorem[
  Если функция $f$ и все ее производные до порядка $k$ суммируемы на $RR$, то
  $tilde(f)$ удовлетворяет оценке

  $ abs(tilde(f)(lambda))=O(1+abs(lambda))^(-k). $

  Если функция $(1+abs(x))^k f(x)$ суммируема на $RR$, то $tilde(f)$ имеет
  непрерывные ограниченные производные до порядка $k$.
] <th:fourier-smoothness-decay>

Доказательство вытекает из коммутационных соотношений
@eq:fourier-commutation-powers. (Мы предоставляем читателю убедиться, что в
предположениях теоремы~@th:fourier-smoothness-decay вывод этих соотношений
сохраняет силу.)
