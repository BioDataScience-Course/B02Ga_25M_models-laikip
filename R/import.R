<<<<<<< HEAD
# Importation et remaniement des données
if (!"tools:tests" %in% search())
  source(here::here("tests/tools_tests.R"), attach(NULL, name = "tools:tests"))

# Configure Knitr to use AGG as graphic device
knitr::opts_chunk$set(dev = "ragg_png")

# Configuration de l'environnement
SciViews::R("model", "infer")

# Lecture des données
read("data/otters_tool.rds")
dat -> otters_tool
source("R/import.R") #Exécute les remaniements de données fait dans import.R
# Tableau des premières et dernières lignes
tabularise$headtail(otters_tool)
skimr::skim(otters_tool)
naniar::vis_miss(otters_tool)

# Remaniement des données 
otters_tool$area <- as.factor(otters_tool$area)
otters_tool$prey <- as.factor(otters_tool$prey)
otters_tool$tooth_dam <- as.ordered(otters_tool$tooth_dam)
otters_tool <-smutate(otters_tool, total_prey = urchin_num+crab_num+mussel_num+clam_num+snail_num+abalone_num)
otters_tool <-smutate(otters_tool, urchin_percent = urchin_num/total_prey*100)
otters_tool <-smutate(otters_tool, abalone_percent = abalone_num/total_prey*100)
otters_tool <-smutate(otters_tool, mussel_percent = mussel_num/total_prey*100)
otters_tool <-smutate(otters_tool, clam_percent = clam_num/total_prey*100)
otters_tool <-smutate(otters_tool, snail_percent = snail_num/total_prey*100)
otters_tool <-smutate(otters_tool, crab_percent = crab_num/total_prey*100)

=======
>>>>>>> 701e09ecfbf95c978e6ac1553213cc3132f26235
# Etape 1 : Importation des données brutes --------------------------------

load("data/cache/Data_temp/dat.Rdata")
dat -> otters_tool
rm(dat)

# Remaniement des données

otters_tool$area <- as.factor(otters_tool$area)
otters_tool$prey <- as.factor(otters_tool$prey)
otters_tool$tooth_dam <- as.ordered(otters_tool$tooth_dam)
otters_tool <- smutate(otters_tool, total_prey = urchin_num + crab_num + mussel_num + clam_num + snail_num + abalone_num)
otters_tool <- smutate(otters_tool, urchin_percent = urchin_num/total_prey*100)
otters_tool <- smutate(otters_tool, abalone_percent = abalone_num/total_prey*100)
otters_tool <- smutate(otters_tool, mussel_percent = mussel_num/total_prey*100)
otters_tool <- smutate(otters_tool, clam_percent = clam_num/total_prey*100)
otters_tool <- smutate(otters_tool, snail_percent = snail_num/total_prey*100)
otters_tool <- smutate(otters_tool, crab_percent = crab_num/total_prey*100)


# Etape 2 : Description brève des données ---------------------------------



# Etape 3 : Nettoyage des données  ----------------------------------------



# Etape 4 : Ajout des labels et des unités --------------------------------

otters_tool <- labelise(otters_tool,
  label = list(
    otter = "Loutre",
    PDE = "Pourcentage d'exposition de la dentine",
    study = "Lieu d'étude",
    area = "Zone",
    hardness = "Dureté moyenne de la proie",
    sex = "Sexe",
    ageclass = "Classe d'âge",
    prey = "Proie",
    tool_use = "Fréquence d'utilisation d'outils",
    age = "Âge",
    mass = "Masse corporelle",
    length = "Longueur corporelle",
    urchin_num = "Oursins consommés",
    abalone_num = "Ormeaux consommés",
    mussel_num = "Moules consommées",
    clam_num = "Palourdes consommées",
    snail_num = "Escargots consommés",
    crab_num = "Crabes consommés",
    Eintake = "Apport calorifique par minute",
    Epreycalc = "Apport calorifique total",
    urchin_Nlg = "Grosses moules consommées",
    crab_Nlg = "Gros crabes consommés",
    mussel_Nlg = "Grosses moules consommés",
    clam_Nlg = "Grosses palourdes consommées",
    snail_Nlg = "Gros escargots consommés",
    dietT = "Régime alimentaire",
    lg_Tool = "Logarithme de la fréquence d'utilisation d'outils",
    lg_Tool2 = "Logarithme au carré de la fréquence d'utilisation d'outils",
    BCI = "Indice de condition corporelle",
    LGI = "Indice de longueur corporelle",
    size = "Taille normalisée",
    total_prey = "nombre totale de proies consommées",
    urchin_percent = "pourcentage d'oursins consommés",
    abalone_percent = "pourcentage d'ormeaux consomés",
    mussel_percent = "pourcentage de moules consomées",
    clam_percent = "pourcentage de palourdes consomées",
    snail_percent = "pourcentage d'escargots consomés"),
  units = list(
    otter = NA,
    PDE = "%",
    study = NA,
    area = NA,
    hardness = "N",
    sex = NA,
    ageclass = NA,
    prey = NA,
    tool_use = "%",
    age = "années",
    mass = "kg",
    length = "cm",
    tooth_dam = NA,
    urchin_num = NA,
    abalone_num = NA,
    mussel_num = NA,
    clam_num = NA,
    snail_num = NA,
    crab_num = NA,
    Eintake = "kcal/min",
    Epreycalc = "kcal",
    urchin_Nlg = NA,
    crab_Nlg = NA,
    mussel_Nlg = NA,
    clam_Nlg = NA,
    snail_Nlg = NA,
    dietT = NA,
    lg_Tool = NA,
    lg_Tool2 = NA,
    BCI = NA,
    LGI = NA,
    size = NA,
    total_prey = NA,
    urchin_percent = "%",
    abalone_percent = "%",
    mussel_percent = "%",
    clam_percent = "%",
    snail_percent = "%"))


# Etape 5 : Sauvegarde locale des données retravaillées -------------------

write$rds(otters_tool, file = "data/otters_tool.rds")

