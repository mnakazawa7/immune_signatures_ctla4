#!/bin/bash

Rscript -e "rmarkdown::render("Code/Clinical.Rmd")"
Rscript -e "rmarkdown::render("Code/Cytof_marker.Rmd")"
Rscript -e "rmarkdown::render("Code/Cytof.Rmd")"
Rscript -e "rmarkdown::render("Code/Cytokine.Rmd")"
Rscript -e "rmarkdown::render("Code/GSVA.Rmd")"
Rscript -e "rmarkdown::render("Code/Manual_gating.Rmd")"