# DataCite Best Practice Guide

Recent version:

Version 5.0 / 12.08.2026 [https://doi.org/10.5281/zenodo.21904201](https://doi.org/10.5281/zenodo.21904201)

Previous version:

* Version 4.0 / 19.05.2025 [https://doi.org/10.5281/zenodo.15607293](https://doi.org/10.5281/zenodo.15607293)
* Version: 3.0 / 03.05.2024 [https://doi.org/10.5281/zenodo.7099881](https://doi.org/10.5281/zenodo.7099881)
* Version: 2.0 / 20.09.2022 [https://doi.org/10.5281/zenodo.7040047](https://doi.org/10.5281/zenodo.7040047)
* Version: 1.0 / 15.11.2019 [https://doi.org/10.5281/zenodo.3559800](https://doi.org/10.5281/zenodo.3559800) 

This repository contains the DataCite Best Practice Guide, along with supporting images, and configuration files. The guide is also available on Zenodo: [https://doi.org/10.5281/zenodo.3559799](https://doi.org/10.5281/zenodo.3559799) A publication accompanying the guide is available with [Korpus im Text](http://www.kit.gwi.uni-muenchen.de/?p=51272).

The document was created with participation from the following institutions/projects:

* IT-Gruppe Geisteswissenschaften (LMU)
* Leibniz Supercomputing Centre
* Max Weber Stiftung - Deutsche Geisteswissenschaftliche Institute im Ausland
* Universitätsbibliothek der FAU
* Universitätsbibliothek der LMU München
* VerbaAlpina

## Files and Folder Structure

- **.github/workflows/publish.yml** (only on GitHub): Configuration of GitHub Actions (publication workflow, see: [https://quarto.org/docs/publishing/github-pages.html](https://quarto.org/docs/publishing/github-pages.html))
- **images/**: Images used within the DataCite Best Practice Guide or on the Website (e.g. favicon).
- **_quarto.yaml**: Defines the structure and settings of this Quarto project. It specifies the website format, output options (HTML and PDF), styling, navigation, and metadata. This file ensures consistent rendering and simplifies project configuration.
- **.gitignore**: Lists files and directories that should not be tracked by Git. 
- **bestpractice.qmd**: The source file in Quarto Markdown format, used to develop the DataCite Best Practice Guide based on the DataCite Metadata Schema.
- **CITATION.cff**: Povides standardized citation information. 
- **Licence.txt**: The licensing terms for the repository contents.
- **README.md**: Explanation of the repository structure and contents (this file).

## Usage

Use this repository as a reference for implementing or understanding the **DataCite Metadata Schema, Version 4.7**. You can view or edit the .qmd file with [Quarto](https://quarto.org/) and regenerate the website and PDF as needed.

This project uses GitHub Actions to automatically build and publish the Quarto website and PDF on every push to the **4.7** branch on GitHub (see: [Quarto: Publishing](https://quarto.org/docs/publishing/github-pages.html)). 

The workflow:

* Checks out the repository
* Sets up Quarto and LaTeX (TinyTeX)
* Renders the HTML and PDF versions of the site
* Publishes the output to GitHub Pages via the `gh-pages branch`

This ensures that the latest version is always available online without manually committing generated files.

The **bestpractice.qmd** file is based on standard Markdown syntax, with only a few Quarto-specific elements. It can also be saved and edited as a .md (Markdown) file, allowing you to work with it in both Markdown editors and the Quarto publishing workflow.

## Rendering Quarto Markdown locally
Environment used: Quarto 1.10.18 with Visual Studio Code 1.132.0

The Quarto file is configured to generate a HTML version as well as a PDF version of the Quarto file (.qmd), using Pandoc as technical backbone.

The Quarto file contains a header that defines the output formats and some configuration options ([Quarto: PDF Options](https://quarto.org/docs/reference/formats/pdf.html), [Quarto: HTML Options](https://quarto.org/docs/reference/formats/html.html)). The content of the file is formatted in Markdown ([Quarto: Markdown Basics](https://quarto.org/docs/authoring/markdown-basics.html)).

To render the file, the following prerequisites are needed:

* [Download Quarto](https://quarto.org/docs/get-started/)
* Install a LaTeX distribution (for PDF generation): xelatex
* The following command creates generates the HTML and the PDF:

`quarto render bestpractice.qmd`

The output files (**index.html** and **datacite-best-practice-guide.pdf**) will appear in a newly created folder called **_site**. 

A preview can also be launched using shortcuts in VS Code (e.g. Preview button). 

Note: Sometimes there are issues with automatic hyphenation (words may be separated incorrectly). This needs to be corrected manually by inserting hyphens in the appropriate places in the .qmd file. After updates, briefly check whether the hyphenation is correct and if there are any unnecessary hyphens in the running text.
