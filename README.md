# Finding Local Stories in ICE Arrest and Detainer Data

A 3-hour workshop on using [Deportation Data Project](https://deportationdata.org) data to report on immigration enforcement in your coverage area. Built in R and Quarto.

---

## Before the Workshop

### 1. Install R and RStudio
- [Download R](https://cran.r-project.org/)
- [Download RStudio](https://posit.co/download/rstudio-desktop/)

### 2. Download the data

Go to [deportationdata.org/data/ice.html](https://deportationdata.org/data/ice.html) and download the **2026-ICLI-00005** release:

- Arrests — FY24, FY25, FY26 files (three .xlsx files)
- Detainers — FY24, FY25, FY26 files (three .xlsx files)

Put all six files in the `data/raw/` folder in this project.

### 3. Install R packages

Open `ddp-workshop.Rproj` in RStudio, then run:

```r
source("setup.R")
```

### 4. Optional: Pre-workshop survey

Fill out the pre-workshop survey so the instructor can tailor examples to your coverage area:
[forms.gle/4eXaUxNv9JpdVgvi6](https://forms.gle/4eXaUxNv9JpdVgvi6)

---

## Workshop Structure

| Block | File | Time |
|-------|------|------|
| Intro slides | `slides/intro_slides.qmd` | 15–20 min |
| Lesson 1: Loading & Cleaning | `lessons/01_r_basics_loading.qmd` | 50 min |
| Lesson 2: Summarizing & Joining | `lessons/02_summarizing_joining.qmd` | 50 min |
| Break | — | 10 min |
| Lesson 3: Visualization & Stories | `lessons/03_visualization_stories.qmd` | 50 min |
| Q&A + Resource list | `reference/other_datasets.md` | 15 min |

Optional bonus: `lessons/04_detentions_bonus.qmd`

---

## Take It Home

The `my_newsroom/` folder is a template you can use back at your newsroom:

1. Edit `my_newsroom/config.R` — change `MY_STATE` and `MY_AOR` to your coverage area
2. Download the full FOIA data into `data/raw/`
3. Open and knit `my_newsroom/analyze.qmd`

See `reference/aor_reference.md` for a list of all 25 ICE Areas of Responsibility.

---

## About the Data

The Deportation Data Project publishes ICE enforcement records obtained through Freedom of Information Act litigation. The data covers ICE arrests only — not Customs and Border Protection. See `reference/caveats.md` before publishing any findings.

---

## About the Instructor

Raphael Romero Ruiz is a data journalist at Capital News Service at the University of Maryland. His reporting on ICE enforcement in Maryland using this data has been published by CNS Maryland and The Daily Record. Contact: rromeror@umd.edu
