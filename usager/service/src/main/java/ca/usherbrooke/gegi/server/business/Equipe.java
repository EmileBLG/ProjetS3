package ca.usherbrooke.gegi.server.business;

public class Equipe {

    public int equipe_id;
    public String equipe_nom;
    public int division_id;
    public int sport_id;
    public int victoire;
    public int defaite;
    public int pm;
    public int pc;

    public Equipe(int equipe_id, String equipe_nom, int division_id, int sport_id, int victoire, int defaite, int pm, int pc) {
        this.equipe_id = equipe_id;
        this.equipe_nom = equipe_nom;
        this.division_id = division_id;
        this.sport_id = sport_id;
        this.victoire = victoire;
        this.defaite = defaite;
        this.pm = pm;
        this.pc = pc;
    }
}
