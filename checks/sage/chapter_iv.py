"""Exact finite audits of Fourier kernels, Weyl signs and S3 actions.

Polynomial coefficient identities and matrix identities are exact.
These computations do not prove convergence or infinite-dimensional results.
"""
from sage.all import (QQ, PolynomialRing, QuadraticField, matrix,
                      identity_matrix, SymmetricGroup)

K = QuadraticField(-1, 'i')
i = K.gen()
checks = 0
R = PolynomialRing(QQ, 'z')
z = R.gen()
L = R.fraction_field()
for k in range(1, 9):
    # H519: the normalized square of the symmetric Dirichlet kernel.
    D = sum(L(z)**j for j in range(-k, k + 1))
    expected = sum((2*k + 1 - abs(j))*L(z)**j
                   for j in range(-2*k, 2*k + 1))/(2*k + 1)
    assert D**2/(2*k + 1) == expected
    # H502: Cesaro means starting with D1, not D0.
    C = sum(sum(L(z)**j for j in range(-n, n + 1))
            for n in range(1, k + 1))/k
    Q = sum(L(z)**j for j in range(k + 1))
    Qbar = sum(L(z)**(-j) for j in range(k + 1))
    assert C == Q*Qbar/k - QQ(1)/k
    checks += 2

# H683-684: the book uses I = [[0,i],[-i,0]].
R = PolynomialRing(K, names=('p', 'q', 'alpha', 'beta'))
p, q, alpha, beta = R.gens()
F = R.fraction_field()
B = matrix(F, [[0, 1/p], [q-alpha-i*beta, 0]])
Bstar = matrix(F, [[0, q-alpha+i*beta], [1/p, 0]])
J = matrix(F, [[0, i], [-i, 0]])
assert Bstar*J + J*B == matrix(F, [[2*beta, 0], [0, 0]])
assert J.det() == -1
checks += 2

# H505: standard action with (gh)(r)=g(h(r)); e3=-e1-e2.
vectors = [matrix(QQ, 2, 1, [1, 0]), matrix(QQ, 2, 1, [0, 1]),
           matrix(QQ, 2, 1, [-1, -1])]
permutations = list(SymmetricGroup(3))
def action(g):
    return matrix(QQ, 2, 2, lambda row, col: vectors[g(col+1)-1][row, 0])
for g in permutations:
    assert action(g)*vectors[2] == vectors[g(3)-1]
    for h in permutations:
        composed = matrix(QQ, 2, 2,
                          lambda row, col: vectors[g(h(col+1))-1][row, 0])
        assert action(g)*action(h) == composed
        checks += 1
    checks += 1
assert matrix(QQ, [action(g).list() for g in permutations]).rank() == 4
checks += 1
print(f'ok chapter_iv: {checks} exact checks')
