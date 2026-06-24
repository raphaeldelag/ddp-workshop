# NYC five-boroughs landmark classification; source this from config.R to enable the breakout in analyze.qmd
SUBJURIS_LABEL <- "NYC (five boroughs)"

# Landmarks naming an NYC site; 26 Federal Plaza is the Manhattan field office (check-in and court arrests), counted as NYC
NYC_FACILITY_PATTERNS <- c(
  "26 FEDERAL PLAZA",
  "BOP BROOKLYN", "BOP MANHATTAN",
  "QUEENSBORO", "QUEENS CENTRAL BOOKING",
  "EMTC", "OBCC", "RMSC", "RNDC",                  # Rikers Island jails
  "MANHATTAN CRIMINAL COURT", "USM - MANHATTAN",
  "USM - SOUTHERN DISTRICT", "USM - EASTERN DISTRICT", "PROBATION SDNY"
)

# Landmarks naming a clearly non-NYC place (Long Island, Hudson Valley, Westchester)
NON_NYC_PATTERNS <- c(
  "NASSAU", "SUFFOLK", "OTISVILLE", "ORANGE COUNTY", "PUTNAM", "DUTCHESS",
  "ULSTER", "ROCKLAND", "FALLSBURG", "WESTCHESTER", "WHITE PLAINS", "WHP ",
  "MOUNT KISCO", "MOUNT VERNON", "EASTCHESTER", "BEDFORD", "SPRING VALLEY",
  "BEACON", "POUGHKEEPSIE", "MIDDLETOWN", "PORT JERVIS", "WOODBURY",
  "CHESTER VILLAGE", "CHILDRENS VILLAGE"
)
