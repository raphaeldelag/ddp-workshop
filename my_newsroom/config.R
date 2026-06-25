# ============================================================
# MY NEWSROOM CONFIGURATION
# Change the values below. Everything else runs automatically.
# ============================================================

MY_STATE  <- "MARYLAND"                           # ALL CAPS, as it appears in the data
MY_AOR    <- "Baltimore Area of Responsibility"   # see reference/aor_reference.md
MY_LABEL  <- "Maryland"                            # used in chart titles and captions

# How to combine the state and AOR filters (see SAVED JURISDICTIONS below)
MY_FILTER_MODE <- "state_or_aor"                   # state_only, state_or_aor, or state_and_aor

START_DATE <- as.Date("2025-01-20")               # inauguration day, comparison anchor
END_DATE   <- Sys.Date()                          # or set a specific date: as.Date("2026-03-10")

# ============================================================
# SAVED JURISDICTIONS
# Copy a preset's values up into the active settings above, or add your own breakouts here.
# ============================================================

# Maryland (default), statewide with AOR fallback for blank-state records
#   MY_STATE <- "MARYLAND"; MY_AOR <- "Baltimore Area of Responsibility"; MY_LABEL <- "Maryland"; MY_FILTER_MODE <- "state_or_aor"

# New York City, NYC AOR within New York only so NJ/CT records in that AOR are excluded
#   MY_STATE <- "NEW YORK"; MY_AOR <- "New York City Area of Responsibility"; MY_LABEL <- "New York City"; MY_FILTER_MODE <- "state_and_aor"

# Arizona, Phoenix AOR covers only Arizona so the AOR fallback is safe
#   MY_STATE <- "ARIZONA"; MY_AOR <- "Phoenix Area of Responsibility"; MY_LABEL <- "Arizona"; MY_FILTER_MODE <- "state_or_aor"

# Wisconsin, Chicago AOR spans five states so use state_only to avoid pulling other states
#   MY_STATE <- "WISCONSIN"; MY_AOR <- "Chicago Area of Responsibility"; MY_LABEL <- "Wisconsin"; MY_FILTER_MODE <- "state_only"

# Illinois, Chicago AOR also spans neighbors so state_only keeps it to Illinois
#   MY_STATE <- "ILLINOIS"; MY_AOR <- "Chicago Area of Responsibility"; MY_LABEL <- "Illinois"; MY_FILTER_MODE <- "state_only"

# Los Angeles, LA AOR within California only for a Southern California breakout
#   MY_STATE <- "CALIFORNIA"; MY_AOR <- "Los Angeles Area of Responsibility"; MY_LABEL <- "Los Angeles area"; MY_FILTER_MODE <- "state_and_aor"

# ============================================================
# DATA FILE PATHS
# Put downloaded FOIA files in data/raw/ and update these paths if the file names differ.
# ============================================================

ARRESTS_FY24 <- "data/raw/2026-ICLI-00005_Arrests_FY24_20260311_Redacted.xlsx"
ARRESTS_FY25 <- "data/raw/2026-ICLI-00005_Arrests_FY25_20260311_Redacted.xlsx"
ARRESTS_FY26 <- "data/raw/2026-ICLI-00005_Arrests_FY26_20260311_Redacted.xlsx"

DETAINERS_FY24 <- "data/raw/2026-ICLI-00005_Detainers_FY24_20260311_Redacted.xlsx"
DETAINERS_FY25 <- "data/raw/2026-ICLI-00005_Detainers_FY25_20260311_Redacted.xlsx"
DETAINERS_FY26 <- "data/raw/2026-ICLI-00005_Detainers_FY26_20260311_Redacted.xlsx"
