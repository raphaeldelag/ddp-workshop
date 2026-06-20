# Methodology Note Template

Copy and adapt this for your published story. Fill in the bracketed fields.

---

> Data comes from ICE arrest records obtained through a Freedom of Information Act lawsuit and compiled by the Deportation Data Project. It covers ICE arrests only — not Customs and Border Protection. [STATE] figures reflect arrests in ICE's [AREA OF RESPONSIBILITY] filtered by state. Per-capita rates use Census Bureau 2024 estimates. Arrests from local jail cooperation programs (287(g) and CAP) are counted as custodial; community arrests are counted as non-custodial. After July 2025, ICE folded CAP program arrests into a single "Custodial Arrest" category, so pre- and post-July comparisons by method should be made carefully.

---

## Filling in the blanks

**[STATE]** — the state you filtered to, e.g., "Maryland", "Wisconsin", "Colorado"

**[AREA OF RESPONSIBILITY]** — the ICE AOR used as a fallback filter, e.g., "Baltimore Area of Responsibility". See `reference/aor_reference.md`.

---

## Optional additions

If you calculated per-capita rates:
> Population figures are from the Census Bureau's 2024 American Community Survey estimates.

If you used the detainer analysis:
> Detainer compliance data reflects whether jails honored or declined ICE requests to hold individuals for pickup. A detainer is declined when the `detainer_lift_reason` field is recorded as "Detainer Declined by LEA."

If you joined arrests to detainers:
> Detainer records were linked to arrest records using an anonymized person identifier within the same FOIA release. The analysis includes only detainers issued within 180 days before the arrest date to avoid cross-episode misattribution.

If you covered the July 2025 change in detail:
> Beginning in late July 2025, ICE stopped reporting arrests through Criminal Alien Programs (CAP Local Incarceration, CAP Federal Incarceration, CAP State Incarceration) as separate categories and instead recorded them all as "Custodial Arrest." This makes it impossible to distinguish 287(g) arrests from CAP arrests in FY26 data. Total custodial vs. non-custodial comparisons remain valid across the full date range.
