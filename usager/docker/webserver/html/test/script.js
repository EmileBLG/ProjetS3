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
    let param = "?sportId=" + sport + "&divisonId=" + division;
    let url = "http://localhost:8888/api/matches/" + param;
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

    axios.get("http://localhost:8888/api/matches")
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