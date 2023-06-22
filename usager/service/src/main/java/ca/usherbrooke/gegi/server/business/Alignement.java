package ca.usherbrooke.gegi.server.business;

public class Alignement {

    int matchId;
    int equipId;

    String gardien;
    String defenseur1;
    String defenseur2;
    String defenseur3;

    String milieu1;
    String milieu2;


    String attaquant1;
    String attaquant2;
    String attaquant3;

    public Alignement(int MatchID, int EquipeID)
    {
        this.matchId= MatchID;
        this.equipId=EquipeID;
    }
}
