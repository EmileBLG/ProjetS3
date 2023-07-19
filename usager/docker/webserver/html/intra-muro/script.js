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
    //console.log(url_horaire);
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
            console.log("Response: ", response);
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
function toConnect(){
    window.location.href= '../test/';
}
function affichageBouton() {

    let listeBouton = document.getElementById("liste-bouton");
    axios.get("http://localhost:8888/api/sports/")
        .then(function (response) {

            response.data.forEach((item) => {
                //console.log(item);

                let sportId = item.nom;
                let sportNom = item.sport_nom;
                let liste = document.createElement("li");
                let divMenu = document.createElement("div");
                divMenu.classList.add("menu");
                let boutonSport = document.createElement("button");
                boutonSport.classList.add("menu-trigger");
                boutonSport.innerText = sportNom;
                let divOptions = document.createElement("div");
                divOptions.classList.add("options");
                //Bouton A
                let boutonA = document.createElement("button");
                boutonA.classList.add("option");
                boutonA.innerText = "A";
                boutonA.onclick = function () {
                    affichageHoraireClassement(sportId, 1);
                }

                //Bouton B
                let boutonB = document.createElement("button");
                boutonB.classList.add("option");
                boutonB.innerText = "B";
                boutonB.onclick = function () {
                    affichageHoraireClassement(sportId, 2);
                }

                //Bouton C
                let boutonC = document.createElement("button");
                boutonC.classList.add("option");
                boutonC.innerText = "C";
                boutonC.onclick = function () {
                    affichageHoraireClassement(sportId, 3);
                }

                divOptions.appendChild(boutonA);
                divOptions.appendChild(boutonB);
                divOptions.appendChild(boutonC);

                divMenu.appendChild(boutonSport);
                divMenu.appendChild(divOptions);

                liste.appendChild(divMenu);
                listeBouton.appendChild(liste);


            });
        })
        .catch(function (error) {

        });

}





function affichageHorairePersonnel(response) {
    let content = document.getElementById("content");
    content.innerHTML = "";
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

    content.appendChild(titre);
    content.appendChild(tableauHoraire);
}




function affichageGrill(response)
{
    console.log("on rentre dans afficher grill");
    let grille = document.createElement("div");
    grille.className = "grille"; // Ajoute la classe "grille"

   // let url_listmatch = "http://localhost:8888/api/horaire";



    console.log(response);
    console.log(response.data);



    nbElements = response.data.length; // Obtient le nombre d'éléments dans data
    console.log("gill crer");
    console.log(nbElements);


    for(let i =0; i < nbElements; i++) {


        let caseGrille = document.createElement("div");
        caseGrille.className = "case-grille";


        grille.appendChild(caseGrille);
        console.log("juste avant widhet")
        console.log(response.data[i])
        widgetPresenceMatch(caseGrille, response.data[i]);

    }



    // Ajouter la grille à votre élément de contenu
    let content = document.getElementById("content");
    content.appendChild(grille);
}

function widgetPresenceMatch(elementParent, matchObjet)
{
    console.log("dans widget");


    let matchId = matchObjet.match_id.toString();
    console.log(matchId);
    let information =  matchObjet.endroit.toString() + '\n'+ matchObjet.date.toString() + matchObjet.heure.toString();

    let conteneur = document.createElement("div");
    conteneur.classList.add("boite");

    let titreElement = document.createElement("h2");
    titreElement.innerText = matchId;
    titreElement.className = "titre";

    console.log("titre creer");

    let sousTitreElement = document.createElement("h3");
    sousTitreElement.innerText = information;
    sousTitreElement.className = "sous-titre";

    let bouton1 = document.createElement("button");
    bouton1.innerText = "présent";
    bouton1.classList.add("boutons");
    bouton1.classList.add("bouton");
    bouton1.addEventListener("click", function() {
        fonctionPresent(matchId);
    });


    let bouton2 = document.createElement("button");
    bouton2.innerText = "absent";
    bouton2.classList.add("boutons");
    bouton2.classList.add("bouton");
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
    tokentPresent(matchId);


}

function fonctionAbsent(matchId)
{
    tokentAbsent(matchId);
}


