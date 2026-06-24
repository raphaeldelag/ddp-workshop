# ============================================================
# EXCLUDED LANDMARKS
# Codes removed from the facility table only; real arrests with no specific location, still counted in state totals
# ============================================================

# ICE monitoring programs — not physical detention facilities
ISAP_PATTERNS <- c(
  "ISAP",
  "ALTERNATIVES TO DETENTION",
  "ATD"
)

# Non-specific area codes — represent real arrests but can't be mapped
AREA_CODES <- c(
  "WCD GENERAL AREA",
  "NON-SPECIFIC",
  "NATIONWIDE",
  "SEP GENERAL AREA",
  "NEW ENGLAND GENERAL AREA"
)

# ============================================================
# Add your area's specific exclusions here:
# ============================================================

# Out-of-state facilities that appear due to AOR overlap or transfers; add any that belong to another state
LOCAL_EXCLUSIONS <- c(
  # Example: "ADELANTO ICE PROCESSING CENTER"  # California, not Maryland
)

# Combine all exclusions into one vector
ALL_EXCLUSIONS <- c(ISAP_PATTERNS, AREA_CODES, LOCAL_EXCLUSIONS)
