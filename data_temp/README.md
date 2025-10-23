# Sexually dimorphic eye-size in Dragonfishes, a response to a bioluminescent signaling gap
Two files are required to run our analysis:

1. Specimen data that are contained in a single file `eye_PO_data.csv`. The columns include the following:

   -mcz: the Museum of Comparative Zoology catalog number.

   -sex: the sex of the individual.

   -mass: the mass of the individual (in g); not used in the study. NA values indicate this was not measured.

   -sl: standard length (in cm).

   -jl: jaw length (in cm); not used in the study. NA values indicate this was not measured.

   -eye: orbit diam (in mm); not used in the study as the orbit was often damaged. NA values indicate this was not measured.

   -ao: the area of the anterior orbital photophore (in mm^2); only recorded for males of the genus Photostomias; NA for all others.

   -po: the area of the posterior orbital photophore (in mm^2).

   -genus: the genus, Photostomias (P. guernei) or Malacosteus (M. niger).

   -diam. lens diameter in cm.

   -n: a number assigned to each specimen for record keeping.
2. Flux data was modeled on the output of Aristostomias scintillans reported Mensinger and Case (1990, J. of Exp. Mar. Biol. & Ecol. 144:1–15). The data for this study are in `mes.case.flux.dat.csv`. The columns include the following:

   -PO: the area of the posterior orbital photophore (in mm^2).

   -luminescent output of the PO: in photons s^-1.

All scripts that perform the analysis and produced the figures and tables are contained in the markdown file`Vu_et_al_Supplement.Rmd`

Any inquiries concerning the analysis can be made to Dr. Christopher Kenaley (kenaley[at]bc.edu).