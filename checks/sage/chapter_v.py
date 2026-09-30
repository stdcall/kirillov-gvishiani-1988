"""Exact finite audits of spin representations and scattering amplitudes.

These calculations check the displayed formulas, not the classification
of all representations or the existence of scattering limits.
"""
from sage.all import (QQ, PolynomialRing, QuadraticField, factorial,
                      identity_matrix, matrix)

K = QuadraticField(-1, 'i')
i = K.gen()
checks = 0
for n in range(9):
    s = QQ(n) / 2
    P = matrix(K, n + 1, n + 1)
    M = matrix(K, n + 1, n + 1)
    for k in range(n):
        P[k + 1, k] = k - n
        M[k, k + 1] = k + 1
    Z = matrix.diagonal(K, [i * (s - k) for k in range(n + 1)])
    X, Y = (P + M) / 2, (P - M) / (2 * i)
    assert X * Y - Y * X == Z
    assert Y * Z - Z * Y == X
    assert Z * X - X * Z == Y
    assert X**2 + Y**2 + Z**2 == -s * (s + 1) * identity_matrix(K, n + 1)
    checks += 4
    mu = [QQ((-1)**k * factorial(n - k)) / factorial(n)
          for k in range(n + 1)]
    for k in range(n):
        assert mu[k] / mu[k + 1] == k - n
        assert (k + 1) * (k - n) * mu[k + 1] / mu[k] == k + 1
        checks += 2

R = PolynomialRing(K, names=('h', 'k', 'm', 'c'))
h, k, m, c = R.gens()
F = R.fraction_field()
t = F(h**2 * k) / (h**2 * k + i * m * c)
r = F(-i * m * c) / (h**2 * k + i * m * c)
assert t == 1 + r
assert i * k * (t - (1 - r)) == 2 * m * c / h**2 * t
assert t * F(h**2 * k) / (h**2 * k - i * m * c) \
    + r * F(i * m * c) / (h**2 * k - i * m * c) == 1
checks += 3

# The rectangular-barrier coefficients satisfy all four boundary equations.
R = PolynomialRing(K, names=('k', 'l', 'E', 'G'))
k, l, E, G = R.gens()
F = R.fraction_field()
C, S = (G**2 + G**-2) / 2, (G**2 - G**-2) / (2 * i)
t = 2 * l * k * E**-2 / (2 * l * k * C - i * (l**2 + k**2) * S)
r = -i * (k**2 - l**2) / (2 * k * l) * S * t
alpha = t * E / (2 * G) * (1 + k / l)
beta = t * E * G / 2 * (1 - k / l)
assert alpha / G + beta * G == E**-1 + r * E
assert l * (alpha / G - beta * G) == k * (E**-1 - r * E)
assert alpha * G + beta / G == t * E
assert l * (alpha * G - beta / G) == k * t * E
checks += 4

# Orbital commutator signs follow the book's p=+i h d/dx convention.
R = PolynomialRing(K, names=('h', 'x', 'y', 'z'))
h, x, y, z = R.gens()
def L1(f):
    return i * h * (y * f.derivative(z) - z * f.derivative(y))
def L2(f):
    return i * h * (z * f.derivative(x) - x * f.derivative(z))
def L3(f):
    return i * h * (x * f.derivative(y) - y * f.derivative(x))
for f in (R.one(), x, y, z):
    assert L1(L2(f)) - L2(L1(f)) == -i * h * L3(f)
    assert L2(L3(f)) - L3(L2(f)) == -i * h * L1(f)
    assert L3(L1(f)) - L1(L3(f)) == -i * h * L2(f)
    checks += 3
print(f'ok chapter_v: {checks} exact checks')
