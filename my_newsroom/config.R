# ============================================================
# MY NEWSROOM CONFIGURATION
# Change the values below. Everything else runs automatically.
# ============================================================

MY_STATE  <- "MARYLAND"                           # ALL CAPS, as it appears in the data
MY_AOR    <- "Baltimore Area of Responsibility"   # see reference/aor_reference.md
MY_LABEL  <- "Maryland"                           # used in chart titles and captions

START_DATE <- as.Date("2025-01-20")               # inauguration day — comparison anchor
END_DATE   <- Sys.Date()                          # or set a specific date: as.Date("2026-03-10")

# ============================================================
# DATA FILE PATHS
# Put your downloaded FOIA files in data/raw/ and update
# these paths if the file names differ.
# ============================================================

ARRESTS_FY24 <- "data/raw/2026-ICLI-00005_Arrests_FY24_20260311_Redacted.xlsx"
ARRESTS_FY25 <- "data/raw/2026-ICLI-00005_Arrests_FY25_20260311_Redacted.xlsx"
ARRESTS_FY26 <- "data/raw/2026-ICLI-00005_Arrests_FY26_20260311_Redacted.xlsx"

DETAINERS_FY24 <- "data/raw/2026-ICLI-00005_Detainers_FY24_20260311_Redacted.xlsx"
DETAINERS_FY25 <- "data/raw/2026-ICLI-00005_Detainers_FY25_20260311_Redacted.xlsx"
DETAINERS_FY26 <- "data/raw/2026-ICLI-00005_Detainers_FY26_20260311_Redacted.xlsx"
