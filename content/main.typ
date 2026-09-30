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

= Задачи <part:problems>
#include "21-01-relations.typ"
#include "21-02-metric-spaces.typ"
#include "21-03-categories.typ"
#include "22-01-measure.typ"
#include "22-02-measurable-functions.typ"
#include "22-03-integral.typ"

= Указания к задачам <part:hints>
== Сведения из теории множеств и топологии <ch:hints-sets-topology>
#include "31-01-hints-relations.typ"
#include "31-02-hints-metrics.typ"
#include "31-03-hints-categories.typ"

#include "80-bibliography.typ"
#include "90-index.typ"
