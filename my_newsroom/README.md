# My Newsroom Template

Use this folder to run a local ICE arrests analysis for your own coverage area.

---

## Three Steps

### 1. Download the Data

Go to [deportationdata.org/data/ice.html](https://deportationdata.org/data/ice.html) and download:
- 2026-ICLI-00005 Arrests — FY24, FY25, FY26 files
- 2026-ICLI-00005 Detainers — FY24, FY25, FY26 files

Put all six files in the `data/raw/` folder (one level up from this folder).

### 2. Edit `config.R`

Open `config.R` and change three lines:

```r
MY_STATE  <- "YOUR STATE"              # ALL CAPS, e.g. "WISCONSIN"
MY_AOR    <- "Your AOR"                # e.g. "Chicago Area of Responsibility"
MY_LABEL  <- "Your State"             # e.g. "Wisconsin" (used in chart titles)
```

See `../reference/aor_reference.md` for the full list of AOR names.

### 3. Knit `analyze.qmd`

Open `analyze.qmd` in RStudio and click **Render** (or press Cmd+Shift+K).

The output is a self-contained HTML file with:
- Arrest totals by year
- Custodial vs. non-custodial breakdown
- Criminality breakdown
- Monthly trend chart with inauguration marker
- Top facilities table
- Detainer compliance by agency

---

## Customizing Further

**Exclude local facilities:** Edit `excluded_landmarks.R` to add facility names from your area that should be removed from the facility table (e.g., facilities in a neighboring state that appear due to AOR overlap).

**Adjust the date range:** Change `START_DATE` and `END_DATE` in `config.R`.

**Add more analyses:** The workshop lessons (`../lessons/`) show how to build additional charts and analyses — copy the code you want into `analyze.qmd`.

---

## Questions?

See `../reference/caveats.md` for methodological notes and `../reference/data_dictionary.md` for column definitions.
