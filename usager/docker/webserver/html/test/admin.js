function getTache(){
    let tache = document.getElementById("selectionTache");
    let texte = document.getElementById("texteAdmin");
    let div = document.getElementById("content");
    div.innerHTML = "";
    let bout = document.getElementById("bouton");
    bout.innerHTML = ""

    texte.textContent = tache.value;
    if(tache.value === "sport"){
        afficherSportAdmin();
    }else if (tache.value === "equipe"){
        affichageClassementAdmin(4, 1);
    }else if (tache.value === "division"){
        afficherdivisionAdmin();
    }else if (tache.value === "match"){
        affichageMatchAdmin();
    }else if (tache.value === "joueurdansequipe"){
        ajoutUsersInEquipe();
    }

}
function ajoutUsersInEquipe(){

}

function affichageClassementAdmin(sport, division){
    let param = "?sportId=" + sport + "&divisionId=" + division;
    let url_api = "http://localhost:8888/api/classement/" + param;
    let content = document.getElementById("content");
    let tableauClassement = document.createElement("table");
    tableauClassement.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Classement";

    let bouton = document.createElement("button");
    bouton.classList.add("bouttonAjout");
    bouton.innerText = "ajouter";
    let boutontache = document.getElementById("bouton");
    boutontache.appendChild(bouton);


    let header = [
        "Position",
        "Équipe",
        "Sport",
        "Division",
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

                let link = document.createElement("a");
                link.href = "https://docs.postgresql.fr/9.6/datatype-datetime.html";

                let image = document.createElement("img");
                image.src = "./images/delete.jpg";
                image.classList.add("imageDelete");
                image.alt = "Delete";

                link.appendChild(image);


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
                row.appendChild(link);

                tableauClassement.appendChild(row);
            });
        })
        .catch(function (error) {

        });
    let row = document.createElement("tr");
    let position = document.createElement("td");
    let equipe_nom = document.createElement("td");
    let victoire = document.createElement("td")
    let defaite = document.createElement("td");
    let pc = document.createElement("td");
    let pm = document.createElement("td");

    let zonetextePosition = document.createElement("textarea");
    zonetextePosition.classList.add("ligneSimpleTextarea");
    let zonetexteEquipeNom = document.createElement("textarea");
    zonetexteEquipeNom.classList.add("ligneSimpleTextarea");
    let zonetextevictoire = document.createElement("textarea");
    zonetextevictoire.classList.add("ligneSimpleTextarea");
    let zonetexteDefaite = document.createElement("textarea");
    zonetexteDefaite.classList.add("ligneSimpleTextarea");
    let zonetextePc = document.createElement("textarea");
    zonetextePc.classList.add("ligneSimpleTextarea");
    let zonetextePm = document.createElement("textarea");
    zonetextePm.classList.add("ligneSimpleTextarea");

    position.appendChild(zonetextePosition);
    equipe_nom.appendChild(zonetexteEquipeNom);
    victoire.appendChild(zonetextevictoire);
    defaite.appendChild(zonetexteDefaite);
    pc.appendChild(zonetextePc);
    pm.appendChild(zonetextePm);

    row.appendChild(position);
    row.appendChild(equipe_nom);
    row.appendChild(victoire);
    row.appendChild(defaite);
    row.appendChild(pc);
    row.appendChild(pm);

    tableauClassement.appendChild(row);

    content.appendChild(titre);
    content.appendChild(tableauClassement);

    bout.addEventListener("click", function (){
        let parametre = "?sport_id=" + zonetexte.value + "&sport_nom=" + zonetexteSport.value;
        let link = "http://localhost:8888/api/ajouterSport"+ parametre;
        axios.get(link);
    });

}
function afficherSportAdmin() {
    let url_api = "http://localhost:8888/api/sports"
    let content = document.getElementById("content");
    let tableauSport = document.createElement("table");
    tableauSport.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Classement";

    let bout = document.createElement("button");
    bout.classList.add("bouttonAjout");
    bout.innerText = "ajouter";
    let b = document.getElementById("bouton");
    b.appendChild(bout);

    let header = [
        "ID",
        "Sport"
    ];

    let thead = document.createElement("thead");
    let theadRow = document.createElement("tr");

    header.forEach((item) => {
        let th = document.createElement("th");
        th.innerText = item;
        theadRow.appendChild(th);
    });
    thead.appendChild(theadRow);
    tableauSport.appendChild(thead);

    axios.get(url_api).then(function (response){
        let index = 1;
        response.data.forEach((item) =>{
            let row = document.createElement("tr");
            let ID = document.createElement("td");
            let Sport = document.createElement("td");

            let link = document.createElement("a");
            link.href = "https://docs.postgresql.fr/9.6/datatype-datetime.html";

            let image = document.createElement("img");
            image.src = "./images/delete.jpg";
            image.classList.add("imageDelete");
            image.alt = "Delete";

            link.appendChild(image);

            ID.innerText = item.sport_id;
            Sport.innerText = item.sport_nom;

            index = index + 1;

            row.appendChild(ID);
            row.appendChild(Sport);
            row.appendChild(link);

            tableauSport.appendChild(row);
        });
    })
        .catch(function (error) {

        });
    let row = document.createElement("tr");
    let ID = document.createElement("td");
    let Sport = document.createElement("td");

    let zonetexteID = document.createElement("textarea");
    zonetexteID.classList.add("ligneSimpleTextarea");
    let zonetexteSport = document.createElement("textarea");
    zonetexteSport.classList.add("ligneSimpleTextarea");

    ID.appendChild(zonetexteID);
    Sport.appendChild(zonetexteSport);

    row.appendChild(ID);
    row.appendChild(Sport);

    tableauSport.appendChild(row);
    console.log(zonetexteSport.innerText);
    content.appendChild(titre);
    content.appendChild(tableauSport);


    bout.addEventListener("click", function (){
        let parametre = "?sport_id=" + zonetexteID.value + "&sport_nom=" + zonetexteSport.value;
        let link = "http://localhost:8888/api/ajouterSport"+ parametre;
        axios.get(link);
    });
}

function afficherdivisionAdmin() {
    let url_api = "http://localhost:8888/api/division"
    let content = document.getElementById("content");
    let tableauDivsion = document.createElement("table");
    tableauDivsion.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Division";

    let bouton = document.createElement("button");
    bouton.classList.add("bouttonAjout");
    bouton.innerText = "ajouter";
    let boutontache = document.getElementById("bouton");
    boutontache.appendChild(bouton);

    let header = [
        "ID",
        "Division"
    ];

    let thead = document.createElement("thead");
    let theadRow = document.createElement("tr");

    header.forEach((item) => {
        let th = document.createElement("th");
        th.innerText = item;
        theadRow.appendChild(th);
    });
    thead.appendChild(theadRow);
    tableauDivsion.appendChild(thead);

    axios.get(url_api).then(function (response){
        let index = 1;
        response.data.forEach((item) =>{
            let row = document.createElement("tr");
            let ID = document.createElement("td");
            let Division = document.createElement("td");

            let link = document.createElement("a");
            link.href = "https://docs.postgresql.fr/9.6/datatype-datetime.html";

            let image = document.createElement("img");
            image.src = "./images/delete.jpg";
            image.classList.add("imageDelete");
            image.alt = "Delete";

            link.appendChild(image);

            ID.innerText = item.division_id;
            Division.innerText = item.division_nom;

            index = index + 1;

            row.appendChild(ID);
            row.appendChild(Division);
            row.appendChild(link);

            tableauDivsion.appendChild(row);
        });
    })
        .catch(function (error) {

        });
    let row = document.createElement("tr");
    let ID = document.createElement("td");
    let Division = document.createElement("td");

    let zonetexteID = document.createElement("textarea");
    zonetexteID.classList.add("ligneSimpleTextarea");
    let zonetexteDivision = document.createElement("textarea");
    zonetexteDivision.classList.add("ligneSimpleTextarea");

    ID.appendChild(zonetexteID);
    Division.appendChild(zonetexteDivision);

    row.appendChild(ID);
    row.appendChild(Division);

    tableauDivsion.appendChild(row);

    content.appendChild(titre);
    content.appendChild(tableauDivsion);
}

function affichageMatchAdmin(sport, division){
    let url_api = "http://localhost:8888/api/matches";
    let content = document.getElementById("content");
    let tableauMatch = document.createElement("table");
    tableauMatch.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Liste de Match";

    let bouton = document.createElement("button");
    bouton.classList.add("bouttonAjout");
    bouton.innerText = "ajouter";
    let boutontache = document.getElementById("bouton");
    boutontache.appendChild(bouton);

    let header = [
        "ID",
        "Endroit",
        "Équipe1",
        "Équipe2",
        "date(yyyy-mm-jj)",
        "heure(hh:mm)"
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
    tableauMatch.appendChild(thead);

    axios.get(url_api)
        .then(function (response) {
            let index = 1;
            response.data.forEach((item) => {
                let row = document.createElement("tr");
                let ID = document.createElement("td");
                let Endroit = document.createElement("td");
                let equipe1 = document.createElement("td")
                let equipe2 = document.createElement("td");
                let date = document.createElement("td");
                let heure = document.createElement("td");

                let link = document.createElement("a");
                link.href = "https://docs.postgresql.fr/9.6/datatype-datetime.html";

                let image = document.createElement("img");
                image.src = "./images/delete.jpg";
                image.classList.add("imageDelete");
                image.alt = "Delete";

                link.appendChild(image);

                ID.innerText = item.match_id;
                Endroit.innerText = item.endroit;
                equipe1.innerText = item.equipe1;
                equipe2.innerText = item.equipe2;
                date.innerText = item.date;
                heure.innerText = item.heure;

                index = index+1;

                row.appendChild(ID);
                row.appendChild(Endroit);
                row.appendChild(equipe1);
                row.appendChild(equipe2);
                row.appendChild(date);
                row.appendChild(heure);
                row.appendChild(link);

                tableauMatch.appendChild(row);
            });
        })
        .catch(function (error) {

        });
    let row = document.createElement("tr");
    let ID = document.createElement("td");
    let endroit = document.createElement("td");
    let equipe1 = document.createElement("td")
    let equipe2 = document.createElement("td");
    let date = document.createElement("td");
    let heure = document.createElement("td");

    let zonetexteID = document.createElement("textarea");
    zonetexteID.classList.add("ligneSimpleTextarea");
    let zonetexteEndroit = document.createElement("textarea");
    zonetexteEndroit.classList.add("ligneSimpleTextarea");
    let zonetexteEquipe1 = document.createElement("textarea");
    zonetexteEquipe1.classList.add("ligneSimpleTextarea");
    let zonetexteEquipe2 = document.createElement("textarea");
    zonetexteEquipe2.classList.add("ligneSimpleTextarea");
    let zonetexteDate = document.createElement("textarea");
    zonetexteDate.classList.add("ligneSimpleTextarea");
    let zonetexteHeure = document.createElement("textarea");
    zonetexteHeure.classList.add("ligneSimpleTextarea");

    ID.appendChild(zonetexteID);
    endroit.appendChild(zonetexteEndroit);
    equipe1.appendChild(zonetexteEquipe1);
    equipe2.appendChild(zonetexteEquipe2);
    date.appendChild(zonetexteDate);
    heure.appendChild(zonetexteHeure);

    row.appendChild(ID);
    row.appendChild(endroit);
    row.appendChild(equipe1);
    row.appendChild(equipe2);
    row.appendChild(date);
    row.appendChild(heure);

    tableauMatch.appendChild(row);

    content.appendChild(titre);
    content.appendChild(tableauMatch);



}

function envoyerSport(ID,sport){
    console.log(ID);
    let parametre = "?sport_id=" + "8" + "&sport_nom" + "baseball";
    let link = "http://localhost:8888/api/ajouterSport"+ parametre;
    axios.get(link);
}