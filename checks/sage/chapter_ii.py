"""Exact algebra audits for the Wiener and Cantor integrals.

hint:wiener-quadratic-exponential-integral, pp. 310–312: determinants of
the endpoint-modified tridiagonal matrix, n=1,...,12, in QQ[a,z], z=b².
This finite audit checks the displayed recurrence against direct
determinants; the recurrence proof and the dominated-convergence
argument remain mathematical arguments in the text.

hint:cantor-staircase-stieltjes-integrals, pp. 315–316: exact first four
moments and the algebraic factor in the generating-function recurrence.
Neither calculation proves the infinite-product limit.
"""
from sage.all import PolynomialRing, QQ, binomial, matrix

R = PolynomialRing(QQ, names=('a', 'z'))
a, z = R.gens()
checks = 0
for n in range(1, 13):
    diagonal = [1 + a/n] + [2 + z/n**2]*(n - 1) + [1 + z/n**2]
    A = matrix(R, n + 1, n + 1,
               lambda i, j: diagonal[i] if i == j
               else -1 if abs(i - j) == 1 else 0)
    D = [R.one(), 2 + z/n**2]
    for k in range(2, n + 1):
        D.append((2 + z/n**2)*D[-1] - D[-2])
    endpoint_formula = a/n*(D[n] - D[n - 1]) + z/n**2*D[n - 1]
    assert A.det() == endpoint_formula, n
    checks += 1

moments = [QQ.one()]
for k in range(1, 5):
    moments.append(sum(binomial(k, s)*2**s*moments[k - s]
                       for s in range(1, k + 1))/(2*(3**k - 1)))
assert moments == [1, QQ(1)/2, QQ(3)/8, QQ(5)/16, QQ(87)/320]
checks += 4

S = PolynomialRing(QQ, 'w')
w = S.gen()  # w=exp(a/3); cosh(a/3)=(w+w^-1)/2
assert w*(w + 1/w)/2 == (1 + w**2)/2
assert w**2*(w + 1/w)/2 != (1 + w**2)/2
checks += 2
print(f'ok chapter_ii: {checks} exact checks')
