---
  title: "Travail de mi-session"
author: "Abdoul Dramane TONDE"
date: "`r Sys.Date()`"
format:
  pdf: default
html: default
---

Barometre <- read.csv(file = "C:/Users/15145/Downloads/sondage-echo-donnees-2020 (1).csv", fileEncoding = "Latin1")

head(Barometre)

data_URL <- "https://www.donneesquebec.ca/recherche/dataset/vmtl-sondage-inclusion-personnes-immigrantes/resource/88bb6a18-54fa-4789-82e8-14888a933a4a"

scaffold.R<- paste0('raw-data_', Sys.Date(), '.csv')
#Le ! a été ajouté pour signifié NOT comme dans:
# Si (le fichier n'existe PAS) {
#    Exécuter cette parti de code
#    } sinon {
#    Exécuter cette partie de code
#    }
if (!file.exists(scaffold.R)) {
  download.file(url = data_URL,
                destfile = scaffold.R) 
  paste("Le fichier",
        scaffold.R,
        "n'existait pas, il a donc été téléchargé à l'instant."
  )
  
} else {
  print(paste("Le fichier",
              scaffold.R,
              "existe déjà, il ne sera pas téléchargé à nouveau.")
  )
}

dim(Barometre)


summary(Barometre)

is.numeric(Barometre)
plot(Barometre$sexe,col="red",pch = 16)


frequency(Barometre$sexe)

df<- data.frame(table(Barometre$sexe))
colnames(df)<- c('sexe','freq')
Pourcentage<- df$freq/sum(df$freq)*100
Pourcentage
table(Barometre$sexe)

table(Barometre$NAISS)

write.table(Barometre$date, "exported data.csv" , row.names = FALSE , sep = ";")

sessionInfo()