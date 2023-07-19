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
        affichageEquipeAdmin(4, 1);
    }else if (tache.value === "division"){
        afficherdivisionAdmin();
    }else if (tache.value === "match"){
        affichageMatchAdmin();
    }else if (tache.value === "joueurdansequipe"){
        choisirEquipe();
    }

}
function ajoutUsersInEquipe(){

}

function affichageEquipeAdmin(){
    let url_api = "http://localhost:8888/api/equipe";
    let content = document.getElementById("content");
    let tableauClassement = document.createElement("table");
    tableauClassement.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Classement";

    let bout = document.createElement("button");
    bout.classList.add("bouttonAjout");
    bout.innerText = "ajouter";
    let b = document.getElementById("bouton");
    b.appendChild(bout);


    let header = [
        "Équipe ID",
        "Nom",
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
                let equipeID = document.createElement("td");
                let equipe_nom = document.createElement("td");
                let SportID = document.createElement("td")
                let DivisionID = document.createElement("td");

                let link = document.createElement("a");

                let image = document.createElement("img");
                image.src = "./images/delete.jpg";
                image.classList.add("imageDelete");
                image.alt = "Delete";

                link.appendChild(image);

                equipeID.innerText = item.equipe_id
                equipe_nom.innerText = item.equipe_nom;
                SportID.innerText = item.sport_id;
                DivisionID.innerText = item.division_id;


                index = index+1;

                row.appendChild(equipeID);
                row.appendChild(equipe_nom);
                row.appendChild(SportID);
                row.appendChild(DivisionID);
                row.appendChild(link);

                tableauClassement.appendChild(row);
            });
        })
        .catch(function (error) {

        });
    let row = document.createElement("tr");
    let equipeID = document.createElement("td");
    let equipe_nom = document.createElement("td");
    let sportID = document.createElement("td")
    let divisionID = document.createElement("td");

    let zonetexteEquipeID = document.createElement("textarea");
    zonetexteEquipeID.classList.add("ligneSimpleTextarea");
    let zonetexteEquipeNom = document.createElement("textarea");
    zonetexteEquipeNom.classList.add("ligneSimpleTextarea");
    let zonetexteSportID = document.createElement("textarea");
    zonetexteSportID.classList.add("ligneSimpleTextarea");
    let zonetexteDivisionID = document.createElement("textarea");
    zonetexteDivisionID.classList.add("ligneSimpleTextarea");

    equipeID.appendChild(zonetexteEquipeID);
    equipe_nom.appendChild(zonetexteEquipeNom);
    sportID.appendChild(zonetexteSportID);
    divisionID.appendChild(zonetexteDivisionID);

    row.appendChild(equipeID);
    row.appendChild(equipe_nom);
    row.appendChild(sportID);
    row.appendChild(divisionID);

    tableauClassement.appendChild(row);

    content.appendChild(titre);
    content.appendChild(tableauClassement);

    bout.addEventListener("click", function (){
        let parametre = "?equipe_id=" + zonetexteEquipeID.value + "&equipe_nom=" + zonetexteEquipeNom.value + "&division_id=" + zonetexteDivisionID.value + "&sport_id=" + zonetexteSportID.value;
        let link = "http://localhost:8888/api/ajouterEquipe"+ parametre;
        axios.get(link);
    });

    tableauClassement.addEventListener("click",function (event){
        if(event.target.classList.contains("imageDelete")){
            let row = event.target.parentNode.parentNode;
            console.log(row.cells[0].innerText)
            let delete_id =  row.cells[0].innerText;
            console.log(delete_id);
            let link = "http://localhost:8888/api/supprimerEquipe" + "?equipe_id=" + delete_id;
            axios.get(link);
            row.parentNode.removeChild(row);

        }
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
    tableauSport.addEventListener("click",function (event){
        if(event.target.classList.contains("imageDelete")){
            let row = event.target.parentNode.parentNode;
            let delete_id =  row.cells[0].innerText;
            console.log(delete_id);
            let link = "http://localhost:8888/api/supprimerSport" + "?sport_id=" + delete_id;
            axios.get(link);
            row.parentNode.removeChild(row);

        }
    });


}

function afficherdivisionAdmin() {
    let url_api = "http://localhost:8888/api/division"
    let content = document.getElementById("content");
    let tableauDivsion = document.createElement("table");
    tableauDivsion.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Division";

    let bout = document.createElement("button");
    bout.classList.add("bouttonAjout");
    bout.innerText = "ajouter";
    let b = document.getElementById("bouton");
    b.appendChild(bout);

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

    bout.addEventListener("click", function (){
        let parametre = "?division_id=" + zonetexteID.value + "&division_nom=" + zonetexteDivision.value;
        let link = "http://localhost:8888/api/ajouterDivision"+ parametre;
        axios.get(link);
    });
    tableauDivsion.addEventListener("click",function (event){
        if(event.target.classList.contains("imageDelete")){
            let row = event.target.parentNode.parentNode;
            let delete_id =  row.cells[0].innerText;
            console.log(delete_id);
            let link = "http://localhost:8888/api/supprimerDivision" + "?division_id=" + delete_id;
            axios.get(link);
            row.parentNode.removeChild(row);

        }
    });
}

function affichageMatchAdmin(sport, division){
    let url_api = "http://localhost:8888/api/matches";
    let content = document.getElementById("content");
    let tableauMatch = document.createElement("table");
    tableauMatch.classList.add("classement");
    let titre = document.createElement("h3");
    titre.innerText = "Liste de Match";

    let bout = document.createElement("button");
    bout.classList.add("bouttonAjout");
    bout.innerText = "ajouter";
    let b = document.getElementById("bouton");
    b.appendChild(bout);

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

    bout.addEventListener("click", function (){
        let parametre = "?match_id=" + zonetexteID.value + "&date=" + zonetexteDate.value + "&time=" + zonetexteHeure.value + "&endroit=" + zonetexteEndroit.value + "&equipe1=" + zonetexteEquipe1.value + "&equipe2=" + zonetexteEquipe2.value;
        let link = "http://localhost:8888/api/ajouterMatch"+ parametre;
        axios.get(link);
    });
    tableauMatch.addEventListener("click",function (event){
       if(event.target.classList.contains("imageDelete")){
           let row = event.target.parentNode.parentNode;
          let delete_id =  row.cells[0].innerText;
          console.log(delete_id);
         let link = "http://localhost:8888/api/supprimerMatch" + "?match_id=" + delete_id;
         axios.get(link);
           row.parentNode.removeChild(row);

       }
    });
}

function choisirEquipe() {
    let url_api = "http://localhost:8888/api/equipe";
    let content = document.getElementById("content");
    let menu = document.createElement("select");
    let index = 0;
    axios.get(url_api)
        .then(function (response) {
            response.data.forEach((item) => {
                let equipe = document.createElement("option");
                equipe.innerText = item.equipe_id + " " + item.equipe_nom;
                equipe.value = item.equipe_id;

               // console.log(equipe.value);
                index = index + 1;
                menu.add(equipe);
            })
        });
   // console.log(menu[0].innerText
        menu.addEventListener("change", function (event) {
            let text = event.target.value;
            getJoueurEquipe(text);
        });

    content.appendChild(menu);
}

function getJoueurEquipe(equipe_id){
        let url_api = "http://localhost:8888/api/getJoueurdansEquipe" + "?equipe_id=" + equipe_id;
        let content = document.getElementById("content");
        content.innerHTML = ""
        let tableauJoueur = document.createElement("table");
        tableauJoueur.classList.add("classement");
        let titre = document.createElement("h3");
        titre.innerText = "Membre de l'équipe " + equipe_id;

        let bout = document.createElement("button");
        bout.classList.add("bouttonAjout");
        bout.innerText = "ajouter";
        let b = document.getElementById("bouton");
        b.appendChild(bout);

        let header = [
            "CIP"
        ];

        let thead = document.createElement("thead");
        let theadRow = document.createElement("tr");

        header.forEach((item) => {
            let th = document.createElement("th");
            th.innerText = item;
            theadRow.appendChild(th);
        });
        thead.appendChild(theadRow);
        tableauJoueur.appendChild(thead);

        axios.get(url_api).then(function (response){
            let index = 1;
            console.log(response.data);
            response.data.forEach((item) =>{
                let row = document.createElement("tr");
                let CIP = document.createElement("td");

                let link = document.createElement("a");

                let image = document.createElement("img");
                image.src = "./images/delete.jpg";
                image.classList.add("imageDelete");
                image.alt = "Delete";

                link.appendChild(image);
                console.log();
                CIP.innerText = item;

                index = index + 1;

                row.appendChild(CIP);
                row.appendChild(link);

                tableauJoueur.appendChild(row);
            });
        })
            .catch(function (error) {

            });
        let row = document.createElement("tr");
        let CIP = document.createElement("td");

        let zonetexteCIP = document.createElement("textarea");
        zonetexteCIP.classList.add("ligneSimpleTextarea");

        CIP.appendChild(zonetexteCIP);

        row.appendChild(CIP);

        tableauJoueur.appendChild(row);

        content.appendChild(titre);
        content.appendChild(tableauJoueur);

        bout.addEventListener("click", function (){
            let parametre = "?equipe_id=" + equipe_id + "&cip=" + zonetexteCIP.value;
            let link = "http://localhost:8888/api/ajouterConstitue"+ parametre;
            axios.get(link);
        });
        tableauJoueur.addEventListener("click",function (event){
            if(event.target.classList.contains("imageDelete")){
                let row = event.target.parentNode.parentNode;
                let delete_id =  row.cells[0].innerText;
                console.log(delete_id);
                let link = "http://localhost:8888/api/supprimerConstitue" + "?equipe_id=" + equipe_id + "&cip=" + delete_id;
                axios.get(link);
                row.parentNode.removeChild(row);

            }
        });

}

function envoyerSport(ID,sport){
    console.log(ID);
    let parametre = "?sport_id=" + "8" + "&sport_nom" + "baseball";
    let link = "http://localhost:8888/api/ajouterSport"+ parametre;
    axios.get(link);
}