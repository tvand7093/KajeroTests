# Princess Language Documentation
This is the site containing the information and documentation for the Princess Programming Language.

### Dependencies
  - Node.js
  
### Generating html
To generate html, add markdown files in the markdown folder. Next, run `npm install` to generate the html based on the markdown.
The generated documents will be placed in a `generated` folder, with the name of the markdown file used as the name of the generated
html document.

### Viewing the generated documents
When updating the documentation, you can use the small node server. Simply call `npm install .` followed by `node .` to run the
website. You can then navigate to `localhost:3000` to view the new documentation. In production, you can view the website
by navigating to [theitalianirishman.com](www.theitalianirishman.com).