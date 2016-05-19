---
title: Maintaining Documentation
author: Tyler Vanderhoef
created: Wed May 18 2016 23:36:49 GMT-0700 (PDT)
original:
    title: Maintaining Documentation
    url: http://localhost:3000/maintaining-docs.html
show_footer: false
---

[Home](index.html) → [Documentation](documentation.html) → [Maintaining](maintaining-docs.html)
___

### Dependencies
- Node.js
- npm

### Generating html
To generate the html, add markdown files in the markdown folder and run the following code.

```bash
npm install .
```

The generated documents will be placed in a generated folder,
with the name of the markdown file used as the name of the generated html document.

### Viewing the generated documents
When updating the documentation, you can use the small node server by simply running the
commands below.

```bash
npm install .
node .
```

This will run the node server locally on port 3000, and the site can be viewed by navigating
to [localhost:3000](localhost:3000).

