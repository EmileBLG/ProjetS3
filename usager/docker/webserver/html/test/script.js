function affichageClassement(){
    let content = document.getElementById("content");
    let tableauClassement = document.createElement("table");
    let titre = document.createElement("h2");
    titre.innerText = "Classement";

    content.appendChild(titre);
}

function affichageHoraire() {

    let content = document.getElementById("content");
    let tableauHoraire = document.createElement("table");
    tableauHoraire.classList.add("horaire");
    let titre = document.createElement("h2");
    titre.innerText = "Horaire";

    let header = [
        "#",
        "Date",
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
                let matchId = document.createElement("td");
                let dateMatch = document.createElement("td");
                let equipe1 = document.createElement("td");
                let resultat = document.createElement("td");
                let equipe2 = document.createElement("td");
                let endroit = document.createElement("td");

                matchId.innerText = item.matchId;
                dateMatch.innerText = item.dateMatch;
                equipe1.innerText = item.equipe1;
                resultat.innerText = item.resultat;
                equipe2.innerText = item.equipe2;
                endroit.innerText = item.endroit;

                row.appendChild(matchId);
                row.appendChild(dateMatch);
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

function affichageHoraireClassement(){
    let content = document.getElementById("content");
    content.innerHTML = "";
    affichageClassement();
    affichageHoraire();
}