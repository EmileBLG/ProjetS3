package ca.usherbrooke.gegi.server.business;

public class Sport {
    private String nom;
    private String description;

    public Sport(String nom, String description){
        this.nom = nom;
        this.description = description;
    }

    public String getNom(){
        return this.nom;
    }
}
