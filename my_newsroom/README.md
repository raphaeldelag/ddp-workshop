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

**Adjust the date range:** The template uses the full FY2024 to FY2026 range. `END_DATE` in `config.R` sets the upper bound (default is today's date). To stop at a fixed date, set it to something like `as.Date("2026-03-10")`.

**Add more analyses:** The workshop lessons (`../lessons/`) show how to build additional charts and analyses — copy the code you want into `analyze.qmd`.

---

## How the Time Periods Work

The analysis groups arrests into **administration years** anchored on the January 20 inauguration anniversary, rather than calendar or fiscal years, so each period lines up with the change in enforcement policy and is directly comparable:

- **Biden, late 2023 (partial)** — Oct 1, 2023 to Jan 19, 2024
- **Biden's last year** — Jan 20, 2024 to Jan 19, 2025
- **Trump's first year** — Jan 20, 2025 to Jan 19, 2026
- **Trump's second year (so far)** — Jan 20, 2026 onward

The first and last periods are **partial windows**, because the data starts in October 2023 and ends partway through Trump's second year. Their raw totals are not full-year figures, so don't compare them head-to-head with a full year.

That is what the **"Same time last year"** table handles. It trims every administration year to the same number of days that have elapsed in the current (partial) one, measured from each January 20. So if the latest data runs eight months into Trump's second year, the table compares the first eight months of each year. That is the apples-to-apples "compared to the same time last year" number, and the one safest to publish.

---

## Questions?

See `../reference/caveats.md` for methodological notes and `../reference/data_dictionary.md` for column definitions.
