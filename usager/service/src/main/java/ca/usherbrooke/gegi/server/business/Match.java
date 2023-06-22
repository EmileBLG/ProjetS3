package ca.usherbrooke.gegi.server.business;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalTime;

public class Match {
    public int match_id;
    public String endroit;
    public int equipe1;
    public int equipe2;
    public Integer resultatequipe1;  // Change from int to Integer
    public Integer resultatequipe2;  // Change from int to Integer
    public LocalDate date;
    public LocalTime heure;






    public Match(int match_id, String endroit, int equipe1, int equipe2, Integer resultatequipe1, Integer resultatequipe2, LocalDate date, LocalTime heure) {
        this.match_id = match_id;
        this.heure = heure;
        this.date = date;
        this.endroit = endroit;
        this.equipe1 = equipe1;
        this.equipe2 = equipe2;
        this.resultatequipe1 = resultatequipe1;
        this.resultatequipe2 = resultatequipe2;
    }
}
