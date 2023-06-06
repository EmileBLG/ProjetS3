package ca.usherbrooke.gegi.server.business;


public class Match {
    private String jourMatch;
    private String dateMatch;
    private String heureMatch;
    private String equipe1;
    private String resultat;
    private String equipe2;
    private String endroit;
    private String division;


    public Match(String jourMatch, String dateMatch, String heureMatch, String equipe1, String resultat, String equipe2, String endroit, String division)
    {
        this.dateMatch = dateMatch;
        this.jourMatch = jourMatch;
        this.heureMatch = jourMatch;
        this.equipe1 = equipe1;
        this.resultat = resultat;
        this.equipe2 = equipe2;
        this.endroit = endroit;
        this.division = division;
    }
    public void setDateMatch(String dateMatch) {
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
    }

    public void setJourMatch(String jourMatch) {
        this.jourMatch = jourMatch;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }
}
