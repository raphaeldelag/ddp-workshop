# Data Dictionary

Key columns in the DDP arrests and detainers files.

---

## Arrests File (`2026-ICLI-00005_Arrests_FY*.xlsx`)

Each row is one arrest. The file has a 6-row preamble before the headers — always use `read_xlsx(path, skip = 6)`.

| Column | Type | Description |
|--------|------|-------------|
| `apprehension_date` | date | Date of arrest |
| `apprehension_type` | character | "Targeted" or "Collateral" — **NA before August 2025** |
| `state` | character | State where arrest occurred (ALL CAPS, e.g. `"MARYLAND"`) |
| `county` | character | County name (often blank) |
| `toa_current_duty_aor` | character | ICE Area of Responsibility (e.g. `"Baltimore Area of Responsibility"`) |
| `apprehension_method` | character | How the arrest was made — see below for values |
| `apprehension_criminality` | character | Criminal history at time of arrest — see coded values below |
| `case_criminality` | character | Criminal history at case level — similar to above |
| `apprehension_site_landmark` | character | Facility or location name; may be a general area code |
| `anonymized_identifier` | character | Anonymous person ID — links to detainers and detentions within same FOIA release |
| `citizenship_country` | character | Country of citizenship |
| `birth_year` | numeric | Year of birth |
| `gender` | character | Gender |
| `operation` | character | Named enforcement operation, if any |
| `case_status` | character | Current status of the case |
| `case_threat_level` | character | ICE threat classification ("1", "2", "3") |
| `apprehension_final_program` | character | Program under which arrest was made |
| `final_order_yes_no` | character | Whether person has a final removal order |

### `apprehension_method` values

**Custodial** (person already in another agency's custody):
- `Custodial Arrest` — generic label; used for all CAP arrests after July 2025
- `CAP Local Incarceration` — Criminal Alien Program, county/local jail
- `CAP Federal Incarceration` — Criminal Alien Program, federal facility
- `CAP State Incarceration` — Criminal Alien Program, state prison
- `287(g) Program` — county jail with ICE cooperation agreement
- `Probation and Parole` — person on supervision
- `Law Enforcement Agency Response Unit` — another LEA called ICE
- `Other Agency (turned over to INS)` — historical; another agency transferred custody
- `Criminal Alien Program` — catch-all CAP label

**Non-Custodial / At-Large** (person not in any other agency's custody):
- `Non-Custodial Arrest` — community arrest (home, street, workplace)
- `Located` — fugitive with prior removal order found in community
- `ERO Reprocessed Arrest` — re-arrest of someone previously removed
- `Worksite Enforcement` — workplace raid
- `Other efforts` — general community enforcement
- `Other Task Force` — joint law enforcement task force
- `Patrol Interior` — interior patrol

**Border / Entry Operations**:
- `Inspections`, `Patrol Border`, `Anti-Smuggling`, `Traffic Check`, `Boat Patrol`, transport checks

### `apprehension_criminality` coded values

| Raw value | Plain English |
|-----------|--------------|
| `1 Convicted Criminal` | Has a prior criminal conviction |
| `2 Pending Criminal Charges` | Has open criminal charges (no conviction) |
| `3 Other Immigration Violator` | Immigration violation only — no criminal record |

---

## Detainers File (`2026-ICLI-00005_Detainers_FY*.xlsx`)

Each row is one ICE detainer request. Also has a 6-row preamble.

| Column | Type | Description |
|--------|------|-------------|
| `detainer_prepare_date` | date | Date ICE issued the detainer |
| `detainer_facility` | character | Jail or facility where the detainer was filed |
| `facility_state` | character | State of the facility |
| `facility_aor` | character | ICE AOR of the facility |
| `facility_city` | character | City of the facility |
| `detainer_lift_reason` | character | Why the detainer was resolved — see values below |
| `detainer_criminality` | character | Criminal history (same coded values as arrests) |
| `detainer_threat_level` | character | ICE threat classification |
| `anonymized_identifier` | character | Links to arrests within same FOIA release |
| `apprehension_date` | date | Date of arrest (if arrest occurred) |
| `apprehension_method` | character | Arrest method (if arrest occurred) |

### `detainer_lift_reason` values

| Value | What it means |
|-------|--------------|
| `Booked into Detention` | ICE picked up the person — successful detainer |
| `Detainer Declined by LEA` | The jail refused to honor the detainer |
| `Case Closed` | ICE closed the case before pickup |
| `Duplicate` | Duplicate detainer for same person/event |
| `Early Release` | Jail released person before ICE could pick up |
| `ICE Temporary Resource Constraint` | ICE couldn't get there in time |
| `Insufficient Notice to ICE` | Jail didn't give ICE enough notice |
| `No longer in State, Local, or Federal Custody` | Person already released |
| `Not Amenable to Removal` | ICE determined person can't be removed |
| `Prosecutorial Discretion` | ICE chose not to pursue |
| `Superseding - New Form Issued` | Replaced by a newer detainer |
| `USC or Presumptive Claim to US Citizenship` | Person claimed US citizenship |
| `NA` | Detainer still active / outcome not yet recorded |

---

## Common Gotchas

- **Blank cells in Excel** become the string `"NA"` in R, not a real `NA`. Fix with `na_if(col, "NA")` after loading.
- **Date columns** may load as text. Convert with `as_date(col)` or `ymd(col)`.
- **State values** are ALL CAPS: `"MARYLAND"`, not `"Maryland"`.
- **AOR values** include "Area of Responsibility" — use the full string: `"Baltimore Area of Responsibility"`.
