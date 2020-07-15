# Microbiome
This repository is for files, information and code associated with two Rainbow Darter Microbiome projects run by Victoria Restivo, Karen Kidd and Joanna Wilson.  The first project was a field study with samples collected from the Grand River at sites upstream and downstream of the Kitchener and Waterloo wastewater treatment plants (Ontario, Canada).  The second was a lab study with fish collected upstream of the wastewater treatment plants on the Grand River, brought to the lab, sampled in the field, after acclimation, and from a 28 day exposure to control, wastewater effluent, or the antimicrobial triclosan.  In both studies, the gut content was collected for microbiome analyses.  Extraction and sequencing was completed in the lab of Mike Surette and the Farncombe Institute (Hamilton, Ontario).  Field sampling was done in collaboration and with the support of Mark Servos' lab.  Carol Bucking collaborated with us on the lab study. 

# Field Project
R code included in the file "Field Project" was used to analyze 16S rRNA bacterial sequences from fish collected upstream and downstream of wastewater treatment plants on the Grand River. Fastq sequences and metadata associated with this projected have been uploaded to NCBI and will be linked here upon publication. Files required to run this code are marked with a star and additional files assoicated with this project are listed:  
-* metadata: map_file_fall_2018_NEWER.txt  
-* assigned taxonomy: taxa_KKfish_silva132.csv  
-* sequences: seqtab_nochim_transposed_KKfish_v34.csv  
-R code comparing water quality measures to bacterial abundance: WaterQuality_fall_RDA_PCOAcoloured.RMD  
-metadata including water quality data: map_wq_2018.txt  
-supplemental raw water quality data collected at field sites fall 2018: fall 2018 water quality sampling.xlsx

# Field Project - Water Filters
R code included in the file "Field Project - Water Filters" was used to analyze 16S rRNA bacterial sequences from water filters collected upstream and downstream of wastewater treatment plants on the Grand River. Fastq sequences and metadata associated with this projected have been uploaded to NCBI and will be linked here upon publication. Files required to run this code are marked with a star:  
-* metadata: WaterFiltersMetadata.txt  
-* assigned taxonomy: taxa_VRwater_silva132.csv  
-* sequences: seqtab_nochim_transposed_VRwater_v34.csv  

# Lab Project
R code included in the file "Lab Project" was used to analyze 16S rRNA bacterial sequences from fish collected upstream of a wastewater treatment plant on the Grand River and transported to the laboratory. Fish were sampled in the field, after acclimation (14 days), and from 28 day exposure to control, wastewater effluent, or the antimicrobial triclosan. Fastq sequences and metadata associated with this projected have been uploaded to NCBI and will be linked here upon publication. Files required to run this code are marked with a star and additional files assoicated with this project are listed:   
-* metadata: map_file_exposure_2019.txt  
-* assigned taxonomy: taxa_KK-fishgut-Oct2019_v34_silva132.csv  
-* sequences (negatives removed): mergetab_nochim_transposed_KK-fishgut-Oct2019_v34_no_neg.csv  
-R code for analysing gonadosomatic index: GSI.R  
-metadata with fish liver and gonad somatic index: LSI_GSI.csv  
-R code for analysing diet as a treatment group: Diet.RMD  
-metadata for analysing diet as a treatment group: map_file_diet_as_treatment.txt  
-supplemental raw tank water quality data collected 2019: TankWaterQuality.xlsx  
