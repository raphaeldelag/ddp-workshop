# Methodological Caveats

Read these before publishing any findings from this data.

---

## ICE only — not CBP

This data covers arrests by ICE (Immigration and Customs Enforcement) only. It does **not** include arrests by Customs and Border Protection (CBP), which handles most border encounters. For interior enforcement stories, ICE data is the right source. For border crossing stories, use CBP encounter data separately.

## CAP reclassification — July 2025

Before late July 2025, ICE reported Criminal Alien Program (CAP) arrests under separate categories:
`CAP Local Incarceration`, `CAP Federal Incarceration`, `CAP State Incarceration`

After late July 2025, ICE folded all CAP arrests into a single `Custodial Arrest` category.

**What this means:** You can compare custodial vs. non-custodial arrest totals across the full FY24–FY26 range. But if you try to compare 287(g) vs. CAP program arrests before and after July 2025, the numbers won't be apples-to-apples.

## `apprehension_type` — only valid from August 2025

The `apprehension_type` column (values: "Targeted", "Collateral") is only populated starting in August 2025. Records before that date have NA. Do not use this field for full-range comparisons.

## Anonymized identifiers don't cross FOIA releases

The `anonymized_identifier` column links a person across arrests, detainers, and detentions **within the same FOIA release**. If you have data from an older FOIA release (e.g., 2025-ICLI-00019), the identifiers will not match the current release (2026-ICLI-00005). Do not attempt cross-release joins.

## "WCD General Area" and similar codes

Some records in `apprehension_site_landmark` use area codes like `WCD GENERAL AREA`, `NON-SPECIFIC`, or `NATIONWIDE` instead of a named facility. These represent real arrests but cannot be pinned to a specific county or facility. They are excluded from facility-level analysis but should be counted in state-level totals.

## `apprehension_site_landmark` is not the arrest location for all records

For custodial arrests (jail-based), `apprehension_site_landmark` is the jail where ICE picked up the person — which is the arrest location.

For non-custodial arrests, `apprehension_site_landmark` may reflect a processing location, not where the person was actually found.

## Numbers may not match ICE's public statements

ICE's publicly released statistics use different counting methods and time windows than the raw enforcement records in this dataset. Small discrepancies are normal and expected. Do not report a discrepancy as an error without investigating the counting methodology difference.

## Per-capita rates

If you calculate arrests per 100,000 residents, use the Census Bureau's 2024 population estimates. The foreign-born population (from ACS) is a better denominator for some story angles but requires careful sourcing.

---

## Methodology Note Template

When you publish, include a note like this:

> Data comes from ICE arrest records obtained through a Freedom of Information Act lawsuit and compiled by the Deportation Data Project. It covers ICE arrests only — not Customs and Border Protection. [STATE] figures reflect arrests in ICE's [AOR] filtered by state. Per-capita rates use Census Bureau 2024 estimates. Arrests from local jail cooperation programs (287(g) and CAP) are counted as custodial; community arrests are counted as non-custodial. After July 2025, ICE folded CAP program arrests into a single "Custodial Arrest" category, so pre- and post-July comparisons by method should be made carefully.
