---
title: Language Specification
author: Tyler Vanderhoef
created: Wed May 18 2016 22:40:48 GMT-0700 (PDT)
show_footer: false
---

[Home](index.html) &rarr; [Grammar](grammar.html)
___

### Description
Here you will find the definition of the language grammar built using BNF (2).

### Grammar

  1. **start** &rarr; _program_ EOF
  2. **program** &rarr; _block_ ENDL
  3. **block** &rarr; LBRACE \[ _stmts_ \] RBRACE
  4. **stmts** &rarr; { _stmt_ }
  5. **stmt** &rarr; if