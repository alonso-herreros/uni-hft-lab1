# High Frequency Technologies - Lab 1. Impedance Measurement and Matching
**`[GITT]` `[Sem 3.2]` `[HFT]` `(Spring 2025)`**

**Telecommunication Technologies Engineering** | *Universidad Carlos III de
Madrid*

---

## Project Overview

This repository contains the project files for the **impedance measurement and
matching lab exercise** in the High Frequency Technologies course (2023-2024).
The project aims to determine the characteristics of an **unknown load on a
waveguide** and then **design matching networks to minimize reflections**. The
project utilizes **Matlab for initial measurements** and **Cadence AWR
Microwave Office for designing and simulating matching networks**.

This project involves two key stages, following the lab guide:

1. **Unknown Load Measurement:** Using **Matlab** to simulate measurements on a
   WR-90 waveguide with an unknown load. By analyzing the standing wave
   pattern, the goal is to find:
    * The **reflection coefficient (magnitude and phase)** of the unknown load
      ($Γ_L$).
    * The **operating frequency** of the signal.

2. **Matching Network Design:** Using **Cadence AWR Microwave Office**, design
   two matching networks for the previously measured unknown load:
    * **Single Stub Matching Network:** A network using one open-circuit stub
      connected in parallel.
    * **Double Stub Matching Network:** A network using two short-circuited
      stubs, separated by a $\frac{λ}{6}$ section of waveguide.

The goal is to design networks that achieve $Γ_{in} ≈ 0$, which means a
good input match.

The results of the development will be documented in the Report.

## Notes about using the contents of this repository

* The `waveguide_voltage.p` function needs student IDs to work correctly.
* A student license for AWR Microwave Office can be obtained from the specified
  website.
