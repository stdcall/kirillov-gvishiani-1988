#import "main-defs.typ": *
#import "statements.typ": *

#enum(start: 3)[
  #idx(
    "Пространство",
    "бесконечно дифференцируемых функций",
    "быстро убывающих функций",
  )
  Пространство $S(RR^n)$ состоит из _бесконечно дифференцируемых и быстро
  убывающих на бесконечности_ функций в $RR^n$. Топология в $S(RR^n)$ задается
  счетным семейством полунорм

  $ p_(alpha beta)(f) = sup_(x in RR^n) abs(x^alpha partial^beta f(x)), $
  <eq:schwartz-sup-seminorm>

  #source(101)где приняты стандартные сокращенные обозначения

  $
    alpha = (alpha_1,dots,alpha_n), quad beta=(beta_1,dots,beta_n),
    quad x^alpha = x_1^(alpha_1) dots x_n^(alpha_n),
  $

  $
    partial^beta = frac(partial^(beta_1), partial x_1^(beta_1)) dots
    frac(partial^(beta_n), partial x_n^(beta_n))
    = frac(partial^abs(beta), partial x_1^(beta_1) dots partial x_x^(beta_n)).
  $

  (Пространство $S(RR^n)$ состоит из всех $f in cal(E)(RR^n)$, для которых
  $p_(alpha beta)(f) < infinity$ для всех $alpha$ и $beta$.)

  Иногда бывает удобно вместо набора полунорм @eq:schwartz-sup-seminorm
  рассматривать набор

  $ p'_(alpha beta)(f) = integral_(RR^n) abs(x^alpha partial^beta f(x)) dif x $
  <eq:schwartz-integral-seminorm>

  или набор

  $
    p''_(alpha beta)(f) =
    (integral_(RR^n) abs(x^alpha partial^beta f(x))^2 dif x)^(1/2).
  $
  <eq:schwartz-square-integral-seminorm>

  #theorem[
    Системы полунорм @eq:schwartz-sup-seminorm, @eq:schwartz-integral-seminorm и
    @eq:schwartz-square-integral-seminorm эквивалентны.
  ] <th:schwartz-seminorm-equivalence>

  #proof[
    Рассмотрим сначала более наглядный случай $n=1$. Справедливо неравенство

    $
      abs(x^k partial^l f(x)) <= frac(1, 1+x^2)
      sup_x abs((x^2+1)x^k partial^l f(x)).
    $

    Отсюда

    $
      p'_(k l)(f) & = integral_RR abs(x^k partial^l f(x)) dif x \
                  & <= sup_x abs((x^2+1)x^k partial^l f(x))
                    integral_RR frac(dif x, 1+x^2) \
                  & <= pi (p_(k+2,l)(f)+p_(k l)(f)).
    $

    Аналогично,

    $
      p''_(k l)(f) & = (integral_RR abs(x^k partial^l f(x))^2 dif x)^(1/2) \
                   & <= (sup_x (1+x^2) abs(x^k partial^l f(x))^2
                       integral_RR frac(dif x, 1+x^2))^(1/2) \
                   & <= sqrt(pi (p_(k+1,l)(f)^2+p_(k l)(f)^2)).
    $

    Таким образом, полунормы системы @eq:schwartz-sup-seminorm мажорируют
    полунормы систем @eq:schwartz-integral-seminorm и
    @eq:schwartz-square-integral-seminorm. Далее, применяя неравенство Коши —
    Буняковского к функциям

    $ abs(x^k partial^l f(x)) sqrt(1+x^2) "и" frac(1, sqrt(1+x^2)), $

    #source(102)получаем

    $
      p'_(k l)(f)^2 & = (integral_RR abs(x^k partial^l f(x)) dif x)^2 \
                    & <= integral_RR abs(x^k partial^l f(x))^2 (1+x^2) dif x
                      integral_RR frac(dif x, 1+x^2) \
                    & = pi (p''_(k+1,l)(f)^2+p''_(k l)(f)^2).
    $

    Значит, полунормы системы @eq:schwartz-square-integral-seminorm мажорируют
    полунормы системы @eq:schwartz-integral-seminorm. Остается оценить полунормы
    системы @eq:schwartz-sup-seminorm через полунормы системы
    @eq:schwartz-integral-seminorm. Воспользуемся тем, что для $f in S(RR)$
    функции $x^k partial^l f(x)$ при любых $k$ и $l$ стремятся к нулю на
    бесконечности. Поэтому справедливо равенство

    $
      x^k partial^l f(x) = integral_(-infinity)^x
      [t^k partial^l f(t)]' dif t.
    $ <eq:schwartz-derivative-integral-identity>

    Отсюда

    $
      p_(k l)(f) & = sup_x abs(x^k partial^l f(x))
                   <= integral_RR abs([t^k partial^l f(t)]') dif t \
                 & <= k p'_(k-1,l)(f)+p'_(k,l+1)(f).
    $

    Случай $n > 1$ отличается лишь техническими усложнениями: вместо равенства
    $integral_RR frac(dif x, 1+x^2) = pi$ нужно использовать неравенство
    $integral_(RR^n) frac(dif x, 1+norm(x)^(2n)) < infinity$, а вместо тождества
    @eq:schwartz-derivative-integral-identity — тождество

    $
      phi(x) = integral_(-infinity)^(x_1) dots integral_(-infinity)^(x_n)
      frac(partial^n phi, partial x_1 dots partial x_n) dif x_1 dots dif x_n,
    $

    справедливое для любой бесконечно дифференцируемой функции, которая вместе
    со своими производными стремится к нулю на бесконечности. Теорема доказана.
  ]

  По запасу функций и по топологии пространство $S(RR^n)$ занимает промежуточное
  положение между $cal(E)(RR^n)$ и $cal(D)(RR^n)$. Именно, имеют место
  непрерывные вложения

  $ cal(D)(RR^n) subset S(RR^n) subset cal(E)(RR^n). $
]

До сих пор мы не привели еще ни одного примера функции, принадлежащей
$cal(D)(RR^n)$ или $S(RR^n)$. Построение таких примеров не вполне тривиально.
Однако справедлива

#notation(
  $S(RR^n)$,
  references: [@ss:theory-smooth-function-spaces],
  sort: "033",
)
