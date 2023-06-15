package ca.usherbrooke.gegi.server.business;


import java.sql.Timestamp;

public class Match {
    public int match_id;
    public Timestamp heure;
    public String endroit;
    public int equipe1;
    public int equipe2;
    public int resultatequipe1;
    public int resultatequipe2;

    public Match(int match_id, Timestamp heure, String endroit, int equipe1, int equipe2, int resultatequipe1, int resultatequipe2) {
        this.match_id = match_id;
        this.heure = heure;
        this.endroit = endroit;
        this.equipe1 = equipe1;
        this.equipe2 = equipe2;
        this.resultatequipe1 = resultatequipe1;
        this.resultatequipe2 = resultatequipe2;
    }
}
