---
title: Building the Language
author: Tyler Vanderhoef
created: Fri May 20 2016 21:29:41 GMT-0700 (PDT)
original:
    title: Building the Language
    url: http://localhost:3000/building.html
show_footer: false
---

[Home](index.html) → [Building](Building.html)
___

### Dependencies
The following list represents the dependencies for the different parts of the project.
- Command Line
  - git
  - g++ / clang
- Development
  - C++ 11
  - LLVM (TBD, not sure on the requirements quite yet.)
- Tests
  - Google Test (installed automatically by the `make test` command)
- Website Documentation
  - Node.js (version 5.10.1 or greater)
  - npm (version v3.8.0 or greater)
  
### Building the compiler
Building the compiler is pretty straight forward. Simply run `make` at the root of the project.
This will output a binary named `princess` that is the compiler.

### Building the tests
In order to build the test project, run the command `make test`. This will build  **AND** run 
the tests inside the tests folder. It should be noted that this requires an internet connection
if the command has never been ran before, as it uses git to pull in the Google Test dependency.

