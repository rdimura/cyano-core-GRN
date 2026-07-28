Python and R scripts for inferring and analyzing gene regulatory networks (GRNs) in model cyanobacteria. This code supports P Bohutskyi, R DiMura, ZD Johnson, R Li, D Anderson, MS Cheung.  " Stress-Related Transcriptional Regulators Dominate the Conserved Core GRN for Three Cyanobacteria: Network Topology Maps the Highest-Influence Nodes as Promising Engineering Targets " (preprint:https://doi.org/10.64898/2026.06.09.731130).

**Pipeline**

**GENIE3_TF.R**: defines candidate transcription factor (TF) target sets from a curated TF list and the organism's gene set, and runs GENIE3 to infer TF to gene 
    regulatory weights.
**GENIE3_Network_Formation.ipynb**: constructs the network (.graphml) from GENIE3 output by retaining the highest-weight edges to a specified edge count.
**IV_calculation.ipyn**b: computes six centrality measures (degree, k-core, betweenness, closeness, stress, eigenvector) and the Integrated Centrality score (each 
    measure normalized to its maximum, then summed).
**Annotating_Network_Tags.ipynb**: maps network and centrality values onto TF annotations.
**PATRIC_homology.Rmd**: assigns orthology across strains by bidirectional homology.
**enrichment_core.Rmd**: COG and KEGG functional enrichment of gene sets by locus tag.

**Software**
Rsubread 2.16.1, GENIE3 1.24.0, NetworkX 3.4.2.

**Data**
Input expression compendia and outputs are described in the paper and its Supplementary Material.
