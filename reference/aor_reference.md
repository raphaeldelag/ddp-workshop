# ICE Areas of Responsibility

Use this table to find the correct `MY_AOR` value for your coverage area.
Copy the value exactly — including "Area of Responsibility" — into `my_newsroom/config.R`.

| AOR Name | Primary States Covered |
|----------|----------------------|
| Atlanta Area of Responsibility | GA, NC, SC |
| Baltimore Area of Responsibility | MD, WV |
| Boston Area of Responsibility | ME, MA, NH, RI, VT |
| Buffalo Area of Responsibility | NY (western) |
| Chicago Area of Responsibility | IL, IN, KY, MO, WI |
| Dallas Area of Responsibility | TX (north/east) |
| Denver Area of Responsibility | CO, WY |
| Detroit Area of Responsibility | MI, OH |
| El Paso Area of Responsibility | TX (west), NM |
| Harlingen Area of Responsibility | TX (Rio Grande Valley) |
| Houston Area of Responsibility | TX (southeast) |
| Los Angeles Area of Responsibility | CA (southern) |
| Miami Area of Responsibility | FL, PR, USVI |
| New Orleans Area of Responsibility | AL, AR, LA, MS, TN |
| New York City Area of Responsibility | NY (metro), NJ, CT |
| Newark Area of Responsibility | NJ, DE |
| Philadelphia Area of Responsibility | PA, DE |
| Phoenix Area of Responsibility | AZ |
| Salt Lake City Area of Responsibility | ID, NV (part), UT |
| San Antonio Area of Responsibility | TX (central) |
| San Diego Area of Responsibility | CA (southern border) |
| San Francisco Area of Responsibility | CA (northern/central), HI, NV (part) |
| Seattle Area of Responsibility | AK, ID, OR, WA |
| St. Paul Area of Responsibility | IA, MN, ND, NE, SD |
| Washington Area of Responsibility | DC, VA, MD (DC suburbs) |

---

## Notes

- Some states span multiple AORs. Maryland, for example, has records in both the **Baltimore AOR** and the **Washington AOR** (DC-suburb cases). The `my_newsroom/` template filters by both.
- The AOR a record falls under is determined by ICE, not by where the person was physically arrested. Use the `state` field as the primary filter and the AOR as a fallback.
- Puerto Rico and the US Virgin Islands are covered by the Miami AOR.

## Data file: `aor_states.csv`

`reference/aor_states.csv` is the authoritative AOR-to-state lookup used by the
`my_newsroom/` Data Check. It was derived from the ICE AOR **county** shapefile
(deportationdata.org / ICE FOIA), aggregating each AOR's counties up to states.
Because it comes from the official AOR boundaries rather than the arrest data, it
ignores the stray transfer and data-entry records that make an AOR look like it
spans far more states than it really does. Columns: `aor_key` (normalized match
key), `aor_name`, `n_states`, `states`, `n_counties`.
