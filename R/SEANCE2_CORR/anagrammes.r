#fonction pour appel r�cursif
recursion <- function(current,source){
  #si un seul �l�ment dans source
  if (nchar(source)==1){
    #former la cha�ne
    current <- paste(current,source,sep="")
    print(paste("OK",current,sep=" : "))
  } else
  {
    #former la cha�ne suivante � partir de chaque carac. de source
    for (i in 1:nchar(source)){
      #rajouter le caract�re � current
      currentbis <- paste(current,substr(source,i,i),sep="")
      #source suivante -- retirer le caract�re de source
      sourcebis <- paste(substr(source,1,i-1),substr(source,i+1,nchar(source)),sep="")
      #appel r�cursif avec la cha�ne restante
      recursion(currentbis,sourcebis)  
    }
  }
  
}


#fonction pour combinaison
combinatoire <- function(chaine){
  #appel de la fonction
  recursion("",chaine)
}

#test
combinatoire("ABC")
