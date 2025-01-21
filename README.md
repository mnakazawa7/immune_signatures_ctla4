# Anti-CTLA4 therapy leads to early expansion of peripheral Th17 population and induction of Th1 cytokines

This is an analysis on prospectively collected patient specimens at baseline and on treatment following initiation of ICI therapy (anti-PD(L)1 with or without anti-CTLA4). The goal of this project is to understand the peripheral immune signatures of recipients of anti-CTLA4 therapy, particularly with respect to peripheral immune cell populations through cytometry at time of flight (CyTOF) and cytokine profiles.

## Data files

1. patients_list_final.csv: patient list with demographic charactersitics, cancer type/features, prior treatment history, current regimen, objective response status
2. fcs_metadata.csv: metadata for .fcs files 
3. cytokines_wide_final.csv: cytokine data, wide format
4. cytokines_final.csv: cytokine data, long format
5. cytof_markers_final.csv: cytof marker expression data, long format
6. cytof_final.csv: cell count data by cytof, wide format
7. Th1_Th2.txt: counts and proportion (of CD4+ cells) of Th1 and Th2 cell subsets by manual gating, output generated from FlowJo
8. Th17.txt: counts and proportion (of CD4+ cells) of Th17 and Th17+TBET+ cell subsets by manual gating, output generated from FlowJo
9. Treg.txt: counts and proportion (of CD4+ cells) of Treg cell subset by manual gating, output generated from FlowJo

## Code files

1. Clinical.Rmd: 
        input - patients_list_final.csv 
        output - baseline clinical and demographics table
2. Cytof.Rmd
        inputs - patients_list_final.csv, cytof_final.csv 
        output - boxplot depicting log2 fold change in immune cell population by regimen, linear model fit with log2-transformed fold change as the outcome and patient/treatment characteristics (age, gender, cancer type, anti-CTLA4 use, prior treatment, MSI status, and responder status) as predictors
3. Cytof_marker.Rmd
        inputs - patients_list_final.csv, cytof_marker.csv 
        output - heatmaps depicting functional marker expression change in immune cells by regimen type
4. Cytokine.Rmd
        inputs - patients_list_final.csv, cytokines_final.csv 
        output - boxplot depicting log2 fold change in cytokine concentration by regimen, linear model fit with log2-transformed fold change as the outcome and patient/treatment characteristics (age, gender, cancer type, anti-CTLA4 use, prior treatment, MSI status, and responder status) as predictors
5. GSVA.Rmd
        inputs - patients_list_final.csv, cytokines_wide_final.csv  
        output - GSVA analysis 
6. Manual_gating.Rmd
        inputs - patients_list_final.csv, fcs_metadata.csv, Th1_Th2.txt, Th17.txt, Treg.txt
        output - box plots depicting log2 fold change in Th17, Th17_TBET, Treg populations in manually gated populations

## Contact information

Mari Nakazawa
Johns Hopkins
mnakaza2@jhmi.edu