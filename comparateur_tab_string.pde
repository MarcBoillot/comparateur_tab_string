void setup (){
String [] liste_des_etudiants = {"Paul","Vincent","Mélissa","Alexis", "Tarik", "Marlène", "Sarah", "Théo", "Yannis",
"Térence", "Yannick","Steve", "Mati", "Karl", "Dimitri"};
String [] conference_methode_agile = {"Marcelline", "Yannick","Sarah", "Mélissa", "Paul", "Guillaume", "Dimitri", "Marlène", "Yannis"};
String [] conference_php = {"Yannick", "Karl", "Jean-Marc", "Térence", "Sarah"};
String [] conference_js = {"Yannick", "Tarik", "Marlène", "Sarah", "Alexis", "Vincent", "Yannis", "Karl", "Mati",
"Térence", "Paul", "Dimitri", "Mélissa", "Théo"};
int compteur = 0;
String [] liste_intervenant = {};
boolean verification_presence = false;
  println("-------------------------------");
//etape 1
println(conference_methode_agile);
  println("-------------------------------");
//etape 2
  if(verification_presence(conference_php, "Théo")==true){
   println ("Théo est présent");
  } else {
    println("Théo est absent");
  }
  println("-------------------------------");
// Etape 3 : je verifie les absents de la conference js
  
check_user_in_conf(conference_js, liste_des_etudiants);   


println("-------------------------------");
// Etape 4 : le nom des étudiants qui ont participé à la conférence Agile et absents à la conférence PHP
for(int i = 0; i<liste_des_etudiants.length;i++){
  if(verification_presence( conference_methode_agile, liste_des_etudiants[i])==true && verification_presence( conference_php, liste_des_etudiants[i])==false){
   println(liste_des_etudiants[i]);
  }
}
println("-------------------------------");
// Etape 5 : le nom des participants à la conférence Agile qui ne sont pas des étudiants
for(int i = 0; i< conference_methode_agile.length;i++){
  if(!verification_presence(liste_des_etudiants, conference_methode_agile[i])){
    println(conference_methode_agile[i]);
  }
}
println("-------------------------------");
// Etape 6 : le nom des étudiants qui ont participé à tous les évènements
for(int i = 0; i<liste_des_etudiants.length;i++){
  if(verification_presence( conference_methode_agile, liste_des_etudiants[i])==true && verification_presence( conference_php, liste_des_etudiants[i])==true && verification_presence( conference_js, liste_des_etudiants[i])==true){
    println(liste_des_etudiants[i]);
  }
}
println("-------------------------------");
// Etape 7 : le nom des étudiants qui n’ont jamais assisté à un évènement
for(int i = 0; i<liste_des_etudiants.length;i++){
  if(!verification_presence(conference_methode_agile, liste_des_etudiants[i])==true && verification_presence( conference_php, liste_des_etudiants[i])==false && verification_presence( conference_js, liste_des_etudiants[i])==false){
    println(liste_des_etudiants[i]);
  }  
}
println("-------------------------------");
//Etape 8 : la liste des étudiants avec le nombre de participations à des événements
for(int i = 0; i<liste_des_etudiants.length;i++){
    int compteur1=0;
  if(verification_presence( conference_methode_agile, liste_des_etudiants[i])==true){
    compteur1++;

  }if(verification_presence( conference_php, liste_des_etudiants[i])==true){
    compteur1++;
      
  }if (verification_presence( conference_js, liste_des_etudiants[i])==true){
    compteur1++;
  }
   println(liste_des_etudiants[i] + "a participé a" + " " + compteur1 + " " + "événement(s)");
 }

}

void check_user_in_conf (String [] conference,String [] liste_des_etudiants){
  int compteur = 0;
  for(int i = 0; i<liste_des_etudiants.length;i++){
    if(!verification_presence(conference, liste_des_etudiants[i])){
      println(liste_des_etudiants[i]);
      compteur ++;
    }
}
println("nombre d'absent" + " " + compteur);
println("-------------------------------");
}

boolean verification_presence(String[] liste1, String nom_eleve){
  boolean presence =false;
  int i = 0;
  while (presence == false && i< liste1.length){
    if(liste1[i] == nom_eleve){
      presence = true;
    }
       i = i + 1;
 }
  return presence;
}
void draw (){
  exit();
}
