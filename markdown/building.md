---
title: Building the Language
author: Tyler Vanderhoef
created: Wed May 18 2016 23:36:49 GMT-0700 (PDT)
original:
    title: Maintaining Documentation
    url: http://localhost:3000/maintaining-docs.html
show_footer: false
---

[Home](index.html) → [Building](Building.html)
___

### Building
Open the command line and navigate to the cloned folder. Run `make` and all of the project will build.
The results will go into a newly created `bin` directory. From there, just run the program you want.
For example, to run the frontend parser, just run `./princess`.

### Running Tests
To run the tests, call `make tests` and it will build/run all the unit tests in the tests folder.