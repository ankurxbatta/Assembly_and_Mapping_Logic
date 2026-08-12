# Genome assembly and mapping

Bioinformatics coursework: assembling a yeast genome from long sequencing reads,
then polishing it — the step that turns raw reads into a usable genome.

## The pipeline

1. **Assembly** — long reads assembled into contigs with **Flye**
   (`--genome-size 12m`, scaffolded)
2. **Polishing** — the draft assembly corrected against the reads with
   **medaka** to raise base-level accuracy

The reasoning and commands are written up in `code.qmd`.

## Tools

Flye, medaka, and R / Quarto for the write-up. Environment in `requirements.R`.

## Running it

Open the `.Rproj` in RStudio and render `code.qmd`. The Flye and medaka steps run
at the command line (see the commands in the document).

Part of the Genomics & Transcriptomics microcredential (Langara College).
