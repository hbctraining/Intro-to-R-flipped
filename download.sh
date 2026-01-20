#!/bin/bash
mkdir -p lessons/figures
mkdir -p lessons/data
curl -L "https://github.com/hbctraining/Intro-to-R-flipped/raw/refs/heads/pre_quarto_version/data/project-summary.txt" -o lessons/data/project-summary.txt
curl -L "https://raw.githubusercontent.com/hbc/NGS_Data_Analysis_Course/master/sessionII/data/counts.rpkm.csv" -o lessons/data/counts.rpkm.csv
curl -L "https://github.com/hbc/NGS_Data_Analysis_Course/raw/refs/heads/master/sessionII/data/mouse_exp_design.csv" -o lessons/data/mouse_exp_design.csv
curl -L "https://github.com/hbctraining/Training-modules/raw/refs/heads/master/Tidyverse_ggplot2/data/GOs_for_plotting.RData" -o lessons/data/GOs_for_plotting.RData
curl -L "https://github.com/hbctraining/Training-modules/raw/refs/heads/master/Tidyverse_ggplot2/data/gprofiler_results_Mov10oe.tsv" -o lessons/data/gprofiler_results_Mov10oe.txt
curl -L "https://github.com/hbctraining/Intro-to-R-flipped/raw/refs/heads/pre_quarto_version/data/new_metadata.RData" -o lessons/data/new_metadata.RData
curl -L "https://github.com/hbctraining/Intro-to-R-flipped/raw/refs/heads/pre_quarto_version/data/animals.csv" -o lessons/data/animals.csv