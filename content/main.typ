#set document(
  title: "Теоремы и задачи функционального анализа",
  author: ("А. А. Кириллов", "А. Д. Гвишиани"),
  date: none,
)
#import "book-style.typ": book-style
#import "frontmatter/cover.typ": cover
#cover()
#show: book-style
#set page(numbering: "I")
#import "frontmatter/title.typ": title-page
#title-page()
#import "frontmatter/publication.typ": publication-page
#publication-page()
#heading(level: 1, numbering: none, outlined: false)[Оглавление]
#outline(title: none, depth: 4)
#include "frontmatter/prefaces.typ"
#set page(numbering: "1")
#counter(page).update(1)
= Теория <part:theory>
== Сведения из теории множеств и топологии <ch:theory-sets-topology>
#include "11-01-relations.typ"
#include "11-02-metric-spaces.typ"
#include "11-03-categories.typ"
#include "12-01-set-algebra.typ"
#include "12-02-measure-extension.typ"
#include "12-03-measure-constructions.typ"
#include "12-04-measurable-functions.typ"
#include "12-05-lebesgue-integral.typ"
#include "12-06-stieltjes-integral.typ"
#include "12-07-integral-properties.typ"
#include "13-01-normed-spaces.typ"
#include "13-02-dual-spaces.typ"
#include "13-03-normed-operators.typ"
#include "13-04-banach-constructions.typ"
#include "13-05-topology-convexity.typ"
#include "13-06-lts-dual-spaces.typ"
#include "13-07-hahn-banach.typ"
#include "13-08-operator-topologies.typ"
#include "13-09-compact-operators.typ"
#include "13-10-fredholm-duality.typ"
#include "13-11-fredholm-parametrix.typ"
#include "13-12-fredholm-index.typ"
#include "13-13-integrable-function-spaces.typ"
#include "13-14-continuous-function-spaces.typ"
#include "13-15-smooth-function-spaces.typ"
#include "13-16-schwartz-function-space.typ"
#include "13-17-smooth-function-density.typ"
#include "13-18-distributions.typ"
#include "13-19-distribution-operations.typ"
#include "13-20-hilbert-geometry.typ"
#include "13-21-hilbert-bases.typ"
#include "13-22-hilbert-operators.typ"
#include "14-01-group-convolution.typ"
#include "14-02-distribution-convolution.typ"
#include "14-03-group-characters.typ"
#include "14-04-fourier-series.typ"
#include "14-05-fourier-integral.typ"
#include "14-06-paley-wiener.typ"
#include "14-07-distribution-fourier-transform.typ"
#include "15-01-finite-dimensional-functional-calculus.typ"
#include "15-02-bounded-functional-calculus.typ"
#include "15-03-unbounded-self-adjoint-operators.typ"
#include "15-04-operator-extensions.typ"
#include "15-05-spectral-multiplication.typ"
#include "15-06-spectral-measures.typ"
#include "15-07-quantum-mechanics.typ"

= Задачи <part:problems>
#include "21-01-relations.typ"
#include "21-02-metric-spaces.typ"
#include "21-03-categories.typ"
#include "22-01-measure.typ"
#include "22-02-measurable-functions.typ"
#include "22-03-integral.typ"
#include "23-01-normed-spaces.typ"
#include "23-02-topological-spaces.typ"
#include "23-03-linear-operators.typ"
#include "23-04-functional-spaces.typ"
#include "23-05-distributions.typ"
#include "23-06-hilbert-spaces.typ"
#include "24-01-convolutions.typ"
#include "24-02-characters.typ"
#include "24-03-fourier-series.typ"
#include "24-04-fourier-integral.typ"
#include "24-05-distribution-fourier.typ"
#include "25-01-finite-dimensional-calculus.typ"
#include "25-02-bounded-self-adjoint.typ"
#include "25-03-unbounded-self-adjoint.typ"
#include "25-04-operator-extensions.typ"
#include "25-05-multiplication-model.typ"
#include "25-06-spectral-theorem.typ"
#include "25-07-quantum-mechanics.typ"

= Указания к задачам <part:hints>
== Сведения из теории множеств и топологии <ch:hints-sets-topology>
#include "31-01-hints-relations.typ"
#include "31-02-hints-metrics.typ"
#include "31-03-hints-categories.typ"
== Теория меры и интеграл <ch:hints-measure-integral>
#include "32-01-hints-set-algebra.typ"
#include "32-02-hints-measure-extension.typ"
#include "32-03-hints-measure-constructions.typ"
#include "32-04-hints-function-properties.typ"
#include "32-05-hints-function-convergence.typ"
#include "32-06-hints-lebesgue-integral.typ"
#include "32-07-hints-bounded-variation.typ"
#include "32-08-hints-integral-properties.typ"
== Линейные топологические пространства и линейные операторы
<ch:hints-linear-spaces-operators>
#include "33-01-hints-normed-definitions.typ"
#include "33-02-hints-dual-spaces.typ"
#include "33-03-hints-normed-operators.typ"
#include "33-04-hints-banach-constructions.typ"
#include "33-05-hints-topology-convexity.typ"
#include "33-06-hints-linear-operators.typ"
#include "33-07-hints-function-spaces.typ"
#include "33-08-hints-smooth-functions.typ"
#include "33-09-hints-distributions.typ"
#include "33-10-hints-hilbert-spaces.typ"
== Преобразование Фурье и элементы гармонического анализа
<ch:hints-fourier-harmonic-analysis>
#include "34-01-hints-function-convolution.typ"
#include "34-02-hints-distribution-convolution.typ"
#include "34-03-hints-characters.typ"
#include "34-04-hints-fourier-series.typ"
#include "34-05-hints-fourier-integral.typ"
#include "34-06-hints-fourier-distributions.typ"
== Спектральная теория операторов <ch:hints-spectral-theory>
#include "35-01-hints-finite-dimensional-calculus.typ"
#include "35-02-hints-bounded-selfadjoint-functions.typ"
#include "35-03-hints-unbounded-selfadjoint-operators.typ"
#include "35-04-hints-operator-extensions.typ"
#include "35-05-hints-multiplication-representation.typ"
#include "35-06-hints-spectral-theorem.typ"
#include "35-07-hints-quantum-mechanics.typ"

#include "79-afterword.typ"
#include "80-bibliography.typ"
#include "89-notation.typ"
#include "90-index.typ"
#import "frontmatter/colophon.typ": colophon
#colophon()
