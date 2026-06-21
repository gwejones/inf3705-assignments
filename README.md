# INF3705 - Advanced Systems Development - Assignments

## Purpose

Qualifying learners are required to be competent in the outcomes against the background of the requirements of qualifications in the disciplines thereof. Furthermore to demonstrate the knowledge, skills and competencies to apply Advanced System Analysis and Design concepts included within the field of Software Engineering. This module is intended for learners with some knowledge of System Analysis and Design, and to introduce the learner to concepts that can be used when developing high-quality systems. This module provides a glue between the other modules studies within the qualifications, where the module introduces the bests methods and techniques to ensure that the systems that are built is well designed, on-time and costly.

## Build Assignment 1

Generate all PlantUML diagrams from the `.puml` sources in `assets/` with:

```sh
plantuml -tsvg assets/*.puml
```

Compile the Typst source to PDF with:

```sh
typst compile assignment1.typ assignment1.pdf
```

Run the PlantUML command again whenever a `.puml` file changes or a new diagram source is added. The generated `.svg` files are used by Typst when compiling the assignment.
