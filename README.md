# CIS-120-OCaml-Template

This is the OCaml template I use for CIS120 homework.

This template is less Codio friendly, but more vscode friendly.

Unlike the default Codio template, this uses `.vscode/tasks.json` instead of `Makefile` to build and run the source. This is to enable flexibility per source, since I prefer using `degit` to clone the repo every time I start a new homework. I will look into making the default Makefile on Codio more flexible to make this repo more alike to the recommended project structure.

## Prerequisites

* OCaml installed
* The following packages from opam:
  * merlin
  * camelot
  * ocp-indent
* (optional, but recommended) The OCaml language support extension for vscode

## Linting

*Coming soon...*

## How to use

Run `npx degit esinx/cis-120-ocaml-template ./homework-name`, and use the vscode task runner to build & run your Project.

## Notes

* `assert.ml` is not my code. It is the default code included in the homework templates.