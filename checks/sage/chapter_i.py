"""Chapter I, hints 5, 6 and 32: exact checks of disputed printed readings.

hint:poset-mobius-inversion (p. 288): the two-element chain suffices to
refute the transposed incidence matrix. The general incidence identity is
proved separately by the defining recurrence of mu.

eq:hint-gaussian-binomial-product (p. 289): polynomial identity and its
recurrence for n=0,...,8 in QQ[q,t]. This finite range is an audit, not
a proof for arbitrary n. n=1 already refutes the printed exponent.

hint:padic-expansions (p. 293): the counterexample x_n=p^(-n) has unbounded
p-norm; its digit at each fixed index is eventually zero. We check exact
valuations at p=2,3,5,7; the general argument uses v_p(p^(-m)-p^(-n))=-m
for m>n, since 1-p^(m-n) is a p-adic unit.
"""
from sage.all import PolynomialRing, QQ, matrix
from sage.combinat.q_analogues import q_binomial

checks = 0
R = PolynomialRing(QQ, names=('q', 't'))
q, t = R.gens()
for n in range(9):
    lhs = sum(q**(k*(k-1)//2)*R(q_binomial(n, k, q=q))*t**k
              for k in range(n+1))
    rhs = R.one()
    for j in range(n):
        rhs *= 1+q**j*t
    assert lhs == rhs, n
    checks += 1
    for k in range(n+1):
        assert R(q_binomial(n+1, k+1, q=q)) == (
            q**(n-k)*R(q_binomial(n, k, q=q))
            + R(q_binomial(n, k+1, q=q)))
        checks += 1
printed_n1 = 1+q*t  # exponent k(k+1)/2 in the original formula (2)
assert printed_n1 != 1+t
checks += 1

mu = matrix(QQ, [[1, 0], [-1, 1]])
incidence = matrix(QQ, [[1, 0], [1, 1]])
printed_incidence = incidence.transpose()
identity = matrix(QQ, [[1, 0], [0, 1]])
assert incidence*mu == identity
assert printed_incidence*mu != identity
checks += 2

for p in (2, 3, 5, 7):
    n, m = 1, 2
    x_n, x_m = QQ(p)**(-n), QQ(p)**(-m)
    assert (x_m-x_n).valuation(p) == -m
    assert QQ(p)**(-(x_m-x_n).valuation(p)) == p**m
    checks += 2

print(f'ok chapter_i: {checks} exact checks')
