package ca.usherbrooke.gegi.server.business;


import java.sql.Timestamp;

public class Match {

    public int matchId;
    public Timestamp dateMatch;
    public String endroit;
    public String equipe1;
    public String equipe2;
    public String resultat;

    public Match(int match_id, Timestamp dateMatch, String endroit, String equipe1, String equipe2, String resultat) {
        this.match_id = match_id;
        this.dateMatch = dateMatch;
        this.endroit = endroit;
        this.equipe1 = equipe1;
        this.equipe2 = equipe2;
        this.resultat = resultat;
    }


    public Match(){}

    /*************************
    -- Setter
     ************************/
    public void setMatchId(int matchId){
        this.matchId = matchId;
    }
    public void setDateMatch(Timestamp dateMatch) {
        this.dateMatch = dateMatch;
    }

    public void setEndroit(String endroit) {
        this.endroit = endroit;
    }
    public void setEquipe1(String equipe1) {
        this.equipe1 = equipe1;
    }

    public void setEquipe2(String equipe2) {
        this.equipe2 = equipe2;
    }

    public void setResultat(String resultat){
        this.resultat = resultat;
    }


    /*************************
    -- Getter
     ************************/

    public int getMatchId() {
        return matchId;
    }
    public Timestamp getDateMatch() {
        return dateMatch;
    }

    public String getEquipe1() {
        return equipe1;
    }

    public String getResultat(){
        return resultat;
    }
    public String getEquipe2() {
        return equipe2;
    }

    public String getEndroit() {
        return endroit;
    }


}
