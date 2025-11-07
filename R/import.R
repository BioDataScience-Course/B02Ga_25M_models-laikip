# Importation et remaniement des données


# Etape 1 : Importation des données brutes --------------------------------

load("data/cache/Data_temp/dat.Rdata")
dat -> otters_tool

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
    size = "Taille normalisée"),
    
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
    size = NA)
)


# Etape 5 : Sauvegarde locale des données retravaillées -------------------

