
#g�n�rer un nombre al�atoire compris entre [15, 20]
a <- 15 + trunc(runif(1)*6)

#boucler
while (TRUE){
  #nombre d'allumettes restantes
  print(paste("Nb allum. restantes = ",a))
  
  #retrait du joueur
  #boucle de v�rification
  while (TRUE){
    print("Saisie de votre retrait")
    value <- scan()
    
    if ((value >= 1) && (value <= 3) && (a - value) > 0){
      break #casser la boucle
      } else
      {
      print("Saisie incorrecte, recommencez")
      }
    }
    
    #nombre d'allumettes restantes
  a <- a - value
    
  #d�faite ?
  if (a == 1){
      print("Bravo, vous avez gagn�")
      #fin du jeu
      #sortie de boucle principale
      break
    }
    
    #retrait de l'ordinateur
    #strat�gie tr�s simple
  if (a <= 4){
      value = a - 1
    } else
    {
      value = 1 + trunc(runif(1)*3)
    }
    
    #message
    print(paste("Je retire = ", value))
    
    #r�sultat
    a = a - value
    
    #et donc ?
    if (a == 1){
      print("J'ai gagn�, les doigts dans le nez")
      #fin du jeu - sortie de boucle principale
      break
    }
      
}


