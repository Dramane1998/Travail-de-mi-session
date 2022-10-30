---
  title: "Syntaxe MARKDOWN"
author: "Abdoul Dramane TONDE"
date: "`r Sys.Date()`"
format:
  pdf_document: default
html_document: default
---

# Introduction

Ce document a été produit avec R Markdown. Le document source entremêle texte et code R. À l'étape de *compilation* du document, le code R est exécuté et remplacé par le résultat des expressions.

# Analyse

Voici un sommaire de l'objet R nommé `Barometre`, un tableau de données qui contient `r nrow(Barometre)` lignes et `r ncol(Barometre)` variables.

```{r}
summary(Barometre)
```

# Graphique

```{r}
plot(Barometre$sexe)
```

L'aide pour le mot 'plot' est trouvée dans les packages suivants :

\< The Default Scatterplot Function \> (in package graphics in library C:/Program Files/R/R-4.2.1/library) \< Generic X-Y Plotting \> (in package base in library C:/PROGRA~1/R/R-42~1.1/library)

#Markdown syntaxe guide

## Headers

# This is the heading h1

## This is the heading h2

### This is the heading h3

#### This is the heading h4

##### This is the heading h5

## Emphasis

*This text will be italic*\
*This will also be italic*

**This text will be bold**\
**This will also be bold**

*we **can** combine them*

## Lists

### Unordered

-   Item 1
-   Item 2
-   Item 2a
-   Item 2b

### ordered

1.  Item 1
2.  Item 2
3.  Item 3
4.  Item 3a
5.  Item 3b

## links

You may be using <https://markdownlivepreview.com/> .

## Blockquotes

> Markdown is a lightweight markup language with plain-text-formatting syntax, created in 2004 by John Gruber with Aaron Swartz.
>
> > Markdown is often used to format readme files, for writing messages in online discussion forums, and to create rich text using a plain text editor.

## Tables

| Left columns | Right columns |
|--------------|:-------------:|
| left foo     |   right foo   |
| left bar     |   right bar   |
| left baz     |   right baz   |

## Blocks of code

    let message = 'Hello world';
    alert(message);

## Inline code

This web site is using `markedjs/marked`.
