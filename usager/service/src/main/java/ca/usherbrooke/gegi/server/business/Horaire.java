package ca.usherbrooke.gegi.server.business;

import java.util.ArrayList;

public class Horaire {
    private ArrayList<Match> listeMatch;

    public ArrayList<Match> getListeMatch() {
        return listeMatch;
    }
    public void addMatch(Match match){
        listeMatch.add(match);
    }
}

