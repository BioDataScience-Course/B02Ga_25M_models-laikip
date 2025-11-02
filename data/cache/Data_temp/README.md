# Tool use increases mechanical foraging success and tooth health in southern sea otters (Enhydra lutris nereis)

[https://doi.org/10.5061/dryad.zgmsbcchs](https://doi.org/10.5061/dryad.zgmsbcchs)

## Description of the data and file structure

**dat.Rdata** contains a dataframe "dat" with the follow variables:

*   otter = individual otter ID
*   PDE = percent dentine exposure
*   study = study area
*   area = study area
*   hardness = mean prey hardness index of otter (Newton)
*   sex = sex of individual: F - female; M - male
*   ageclass = age class of individual: A - adult,  J - subadult, AA - aged adult
*   prey = prey specialization of otter
*   tool_use = tool use frequency (%)
*   age = estimated age of otter (years)
*   mass = body mass of otter (kg)
*   length = body length of otter (cm)
*   urchin_num = total number of urchins consumed by otter
*   crab_num = total number of crabs consumed by otter
*   mussel_num = total number of mussels consumed by otter
*   clam_num = total number of crabs consumed by otter
*   snail_num = total number of snails consumed by otter
*   abalone_num = total number of abalone consumed by otter
*   Eintake = caloric intake rate (kcal/min)
*   Epreycalc = total calories consumed (kcal)
*   urchin_Nlg = number of large urchins consumed by otter
*   crab_Nlg = number of large crabs consumed by otter
*   mussel_Nlg = number of large mussels consumed by otter
*   clam_Nlg = number of large crabs consumed by otter
*   snail_Nlg = number of large snails consumed by otter
*   dietT = prey specialization of otter
*   lg_Tool = 1 + natural log of tool_use
*   lg_Tool2 = natural log of Tool^2
*   BCI = body mass residuals of each otter
*   LGI = body length residuals of each otter
*   size = BCI/5



Model_Terms_LooicWts.xlsx contains a spreadsheet that identifies model terms (used in **2SummarizeAnalyses.R**)

## Code/Software

**1AnalyzeData.R** = contains R scripts needed to run models

**2SummarizeAnalyses.R** = contains R scripts to summarize data and make plots
