package ca.usherbrooke.gegi.server.business;

import java.util.List;
public class Presence {

    public String cipPersone;

    public int matchID;

    public int etatPresence;

    void mettrePresent()
    {
        etatPresence =1;
    }

    void mettreAbsent()
    {
        etatPresence =0;
    }

    public Presence(String CipPersone, int MatchID)
    {
        this.cipPersone = CipPersone;
        this.matchID = MatchID;
        this.etatPresence = -1;
    }
}
