package ca.usherbrooke.gegi.server.business;

public class Sport {
    private String sport_id;
    private String sport_nom;


    public Sport(String nom, String description){
        this.sport_id = nom;
        this.sport_nom = description;
    }

    public Sport(){}
    public String getNom(){
        return this.sport_id;
    }
    public String getSport_nom(){
        return this.sport_nom;
    }
}