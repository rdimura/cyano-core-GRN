Files include methods for:

  creating a list of genes targeted by transcription factors (TFs) from both a list of transcription factors and a list of total genes from the organism (GENIE3_TF.R)
  Using outputs from Genie3, a network (.graphml) is created with a set number of edges using Genie3_Network_Formation.ipynb
  Once a network is formed, it is visualized and network values associated with stress, edgecount, betweeness centrality, neighborhood connectivity, etc. are assigned
  Using network values assigned from the Cytoscape software these are mapped onto the previous annotations.
  An integrated value is created by normalizing all the network metrics by their highest value and adding them together (IV_calcuation.ipynb)
  COG and KEGG enrichment of locus tags performed through enrichment_core.Rmd
  
