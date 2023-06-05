package ca.usherbrooke.gegi.server.business;

import java.sql.Date;

public class Horaire {
    private String horaireId;
    private String jourMatch;
    private Date dateMatch;
    private String heureMatch;
    private String equipe1;
    private String resultat;
    private String equipe2;
    private String endroit;
    private Sport sport;
    private String division;

    public Horaire(){};

    public void setDateMatch(Date dateMatch) {
        this.dateMatch = dateMatch;
    }

    public void setEndroit(String endroit) {
        this.endroit = endroit;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public void setEquipe1(String equipe1) {
        this.equipe1 = equipe1;
    }

    public void setEquipe2(String equipe2) {
        this.equipe2 = equipe2;
    }

    public void setHeureMatch(String heureMatch) {
        this.heureMatch = heureMatch;
    }

    public void setHoraireId(String horaireId) {
        this.horaireId = horaireId;
    }

    public void setJourMatch(String jourMatch) {
        this.jourMatch = jourMatch;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    public void setSport(Sport sport) {
        this.sport = sport;
    }
}
