function affichageClassement(sport, division){
    let param = "?sportId=" + sport + "&divisionId=" + division;
    let url_api = "http://localhost:8888/api/classement/" + param;
    let content = document.getElementById("content");
    let tableauClassement = document.createElement("table");
    tableauClassement.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Classement";

    let header = [
        "Position",
        "Équipe",
        "Victoire",
        "Défaite",
        "PC",
        "PM"
    ];

    let thead = document.createElement("thead");
    let theadRow = document.createElement("tr");

    header.forEach((item) => {
        //console.log(item);
        let th = document.createElement("th");
        th.innerText = item;
        theadRow.appendChild(th);
    });
    thead.appendChild(theadRow);
    tableauClassement.appendChild(thead);

    axios.get(url_api)
        .then(function (response) {
            let index = 1;
            response.data.forEach((item) => {
                let row = document.createElement("tr");
                let position = document.createElement("td");
                let equipe_nom = document.createElement("td");
                let victoire = document.createElement("td")
                let defaite = document.createElement("td");
                let pc = document.createElement("td");
                let pm = document.createElement("td");

                position.innerText = index;
                equipe_nom.innerText = item.equipe_nom;
                victoire.innerText = item.victoire;
                defaite.innerText = item.defaite;
                pc.innerText = item.pc;
                pm.innerText = item.pm;

                index = index+1;

                row.appendChild(position);
                row.appendChild(equipe_nom);
                row.appendChild(victoire);
                row.appendChild(defaite);
                row.appendChild(pc);
                row.appendChild(pm);

                tableauClassement.appendChild(row);
            });
        })
        .catch(function (error) {

        });

    content.appendChild(titre);
    content.appendChild(tableauClassement);

}

function affichageHoraire(sport, division) {
    let param = "?sportId=" + sport + "&divisionId=" + division;
    let url_horaire = "http://localhost:8888/api/HoraireSport/" + param;
    console.log(url_horaire);
    let content = document.getElementById("content");
    let tableauHoraire = document.createElement("table");
    tableauHoraire.classList.add("horaire");
    let titre = document.createElement("h3");
    titre.innerText = "Horaire";

    let header = [
        "#",
        "Date",
        "Heure",
        "Équipe1",
        "Résultat",
        "Équipe2",
        "Endroit"
    ];

    let thead = document.createElement("thead");
    let theadRow = document.createElement("tr");

    header.forEach((item) => {
        //console.log(item);
        let th = document.createElement("th");
        th.innerText = item;
        theadRow.appendChild(th);
    });
    thead.appendChild(theadRow);
    tableauHoraire.appendChild(thead);

    axios.get(url_horaire)
        .then(function (response) {
            //console.log("Response: ", response);
            response.data.forEach((item) => {
                let row = document.createElement("tr");
                let match_id = document.createElement("td");
                let date = document.createElement("td");
                let heure = document.createElement("td")
                let equipe1 = document.createElement("td");
                let resultat = document.createElement("td");
                let equipe2 = document.createElement("td");
                let endroit = document.createElement("td");

                match_id.innerText = item.match_id;
                date.innerText = item.date;
                heure.innerText = item.heure;
                equipe1.innerText = item.equipe1;
                resultat.innerText = item.resultat;
                equipe2.innerText = item.equipe2;
                endroit.innerText = item.endroit;

                row.appendChild(match_id);
                row.appendChild(date);
                row.appendChild(heure);
                row.appendChild(equipe1);
                row.appendChild(resultat);
                row.appendChild(equipe2);
                row.appendChild(endroit);

                tableauHoraire.appendChild(row);
            });
        })
        .catch(function (error) {

        });
    
    content.appendChild(titre);
    content.appendChild(tableauHoraire);
}

function affichageTitre(sport, division){
    let param = "?sportId=" + sport + "&divisionId=" + division;
    let url_api = "http://localhost:8888/api/sportDivisionname/" + param;
    let content = document.getElementById("content");
    let titre_sport_division = document.createElement("h2");
    axios.get(url_api)
        .then(function (response) {
            titre_sport_division.innerText = response.data;

        })
        .catch(function (error) {

        });
    content.appendChild(titre_sport_division);
}

function affichageHoraireClassement(sport, division){
    let content = document.getElementById("content");
    content.innerHTML = "";
    affichageTitre(sport, division);
    affichageClassement(sport, division);
    affichageHoraire(sport, division);
}

function affichergestionnairePresence() {
    let content = document.getElementById("content");
    content.innerHTML = "";

    let url_nbmatch = "http://localhost:8888/api/nbmatch";

    let titre_menue = document.createElement("h2");
    titre_menue.innerText = "Gestionnaire de présence";
    content.appendChild(titre_menue);


    affichageGrill();


}

function affichageGrill()
{
    let grille = document.createElement("div");
    grille.className = "grille"; // Ajoute la classe "grille"

    let url_listmatch = "http://localhost:8888/api/presencesPerson";



    let data = [];
    for (let i = 0; i < 9; i++) {
        let randomNumber = Math.floor(Math.random() * (900 - 150 + 1) + 150); // pour des fin de test retirer pour le code finale
        data.push(randomNumber);
    }
    let nbElements = 4;


    axios.get(url_listmatch)
        .then(response => {
            data = response.data;
            nbElements = data.length; // Obtient le nombre d'éléments dans data

            console.log("Nombre d'éléments : ", nbElements);


        })
        .catch(error => {
            console.log(error);
        });


    for(let i =0; i < 9; i++) {


        let caseGrille = document.createElement("div");
        caseGrille.className = "case-grille";


        grille.appendChild(caseGrille);
        widgetPresenceMatch(caseGrille, data[i]);

    }



    // Ajouter la grille à votre élément de contenu
    let content = document.getElementById("content");
    content.appendChild(grille);
}

function widgetPresenceMatch(elementParent, matchId)
{
   // let spanElement = document.createElement("span");
   // spanElement.innerText = "Contenu de la case";

   // elementParent.appendChild(spanElement);

    let conteneur = document.createElement("div");
    conteneur.classList.add("boite");

    let titreElement = document.createElement("h2");
    titreElement.innerText = matchId.toString();
    titreElement.className = "titre";

    let sousTitreElement = document.createElement("h3");
    sousTitreElement.innerText = "date du match";
    sousTitreElement.className = "sous-titre"

    let bouton1 = document.createElement("button");
    bouton1.innerText = "présent";
    bouton1.classList.add("boutons")
    bouton1.classList.add("bouton")
    bouton1.addEventListener("click", function() {
        fonctionPresent(matchId);
    });


    let bouton2 = document.createElement("button");
    bouton2.innerText = "absent";
    bouton2.classList.add("boutons")
    bouton2.classList.add("bouton")
    bouton2.addEventListener("click", function() {
        fonctionAbsent(matchId);
    });

    // Ajouter les éléments à l'élément parent
    conteneur.appendChild(titreElement);
    conteneur.appendChild(sousTitreElement);
    conteneur.appendChild(bouton1);
    conteneur.appendChild(bouton2);

    elementParent.appendChild(conteneur);


}

function fonctionPresent(matchId)
{
    let url_listmatch = "http://localhost:8888/api/setPresent/"+matchId.toString();

    // requête api present
    console.log("Bouton present matche" + matchId.toString() + " actionner!!");

    axios.post(url_listmatch)
        .then(function (response) {
            // Requête de modification envoyée avec succès
            console.log("Requête de modification envoyée avec succès : present");
        })
        .catch(function (error) {
            // Gestion des erreurs
            console.log(error);
        });
}

function fonctionAbsent(matchId)
{
    let url_listmatch = "http://localhost:8888/api/presencesPerson"+matchId.toString();
    // requête api absent
    axios.post(url_listmatch)
        .then(function (response) {
            // Requête de modification envoyée avec succès
            console.log("Requête de modification envoyée avec succès : absent");
        })
        .catch(function (error) {
            // Gestion des erreurs
            console.log(error);
        });
    console.log("Bouton absent matche" + matchId.toString() + "actionner!!");
}


