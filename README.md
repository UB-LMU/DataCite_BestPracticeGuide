# DataCite_BestPracticeGuide

Recent version:
* Version 4.0 / 19.05.2025 [https://doi.org/10.5281/zenodo.15607293](https://doi.org/10.5281/zenodo.15607293)

Previous version:
* Version: 3.0 / 03.05.2024 [https://doi.org/10.5281/zenodo.7099881](https://doi.org/10.5281/zenodo.7099881)
* Version: 2.0 / 20.09.2022 [https://doi.org/10.5281/zenodo.7040047](https://doi.org/10.5281/zenodo.7040047)
* Version: 1.0 / 15.11.2019 [https://doi.org/10.5281/zenodo.3559800](https://doi.org/10.5281/zenodo.3559800) 

This repository contains the DataCite Best Practice Guide, along with example files from various projects, supporting images, and configuration files. The guide is also available on Zenodo: [https://doi.org/10.5281/zenodo.3559800](https://doi.org/10.5281/zenodo.3559800) A publication accompanying the guide is available with [Korpus im Text](http://www.kit.gwi.uni-muenchen.de/?p=51272).

The document was created with participation from the following institutions/projects:

* IT-Gruppe Geisteswissenschaften (LMU)
* Leibniz Supercomputing Centre
* Max Weber Stiftung - Deutsche Geisteswissenschaftliche Institute im Ausland
* Universitätsbibliothek der FAU
* Universitätsbibliothek der LMU München
* VerbaAlpina

## Files and Folder Structure

- **examples/*.xml**: Example metadata files structured in XML format, each demonstrating metadata from different projects.
- **images/DataCite_relatedIdentifier.JPG**: Visual aid illustrating related identifier usage in DataCite Best Practice Guide.
- **output/bestpractice.qmd**: The source file in Quarto Markdown format, used to develop the DataCite Best Practice Guide based on the DataCite Metadata Schema.
- **output/bestpractice.pdf**: A generated PDF from the .qmd file. If you apply changes to the .qmd file and generate a new .pdf, please move it to the output folder and replace the current .pdf version. 
- **Licence.txt**: The licensing terms for the repository contents.
- **README.md**: Explanation of the repository structure and contents (this file).

## Usage

Use this repository as a reference for implementing or understanding the DataCite metadata schema. You can view or edit the .qmd file with [Quarto](https://quarto.org/) and regenerate the PDF as needed.

## Rendering Quarto Markdown as PDF
Environment used: Quarto 1.7.31 with Visual Studio Code 1.101.1

A PDF document can be generated from the Quarto file (.qmd), using Pandoc as technical backbone.

The Quarto file contains a header that defines the output format and some configuration options ([Quarto: PDF Options](https://quarto.org/docs/reference/formats/pdf.html)).
The content of the file is formatted in Markdown ([Quarto: Markdown Basics](https://quarto.org/docs/authoring/markdown-basics.html)).

To render the file, the following prerequisites are needed:

* [Download Quarto](https://quarto.org/docs/get-started/)
* Install a LaTeX distribution: xelatex
* The following command creates a preview and generates the PDF:

`quarto preview bestpractice.qmd`

The preview can also be launched using shortcuts in VS Code.

Note: Sometimes there are issues with automatic hyphenation (words may be separated incorrectly). This needs to be corrected manually by inserting hyphens in the appropriate places in the .qmd file. After updates, briefly check whether the hyphenation is correct and if there are any unnecessary hyphens in the running text.
