package ca.usherbrooke.gegi.server.service;

import ca.usherbrooke.gegi.server.business.Horaire;
import ca.usherbrooke.gegi.server.business.Match;
import ca.usherbrooke.gegi.server.business.Person;

import java.sql.Date;
import java.util.List;
import java.util.Map;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.SecurityContext;

import ca.usherbrooke.gegi.server.business.Sport;
import org.eclipse.microprofile.jwt.JsonWebToken;

@Path("/api")
@Produces({"application/json"})
public class RoleService {
    @Context
    SecurityContext securityContext;
    @Inject
    JsonWebToken jwt;
    @GET
    @Path("/sport")
    @PermitAll
    public Sport getSport(){
        Sport sport = new Sport("lol", "c bo alalalalalal") ;
        System.out.println(sport.getNom());
        return sport;
    }
    @GET
    @Path("/match")
    public Match getMatch(){
        Match match = new Match("","","","","","","","");
        match.setHeureMatch("19h00");
        match.setJourMatch("Jeudi");
        match.setDivision("A");
        match.setEndroit("UDES");
        match.setEquipe1("Les Gaulois");
        match.setEquipe2("Les Pionniers");
        match.setResultat("0:2");
        match.setHoraireId("1");
        match.setSport(new Sport("soccer", "sport avec ballon et que les gens tombe tout le temps"));
        return match;
    }

    @GET
    @Path("/horaire")
    public Horaire getHoraire(){
        Match match1 = new Match("","","","","","","","");
        match1.setHeureMatch("19h00");
        match1.setJourMatch("Jeudi");
        match1.setDivision("A");
        match1.setEndroit("UDES");
        match1.setEquipe1("Les Gaulois");
        match1.setEquipe2("Les Pionniers");
        match1.setResultat("0:2");
        match1.setHoraireId("1");
        match1.setSport(new Sport("soccer", "sport avec ballon et que les gens tombe tout le temps"));

        Match match2 = new Match("","","","","","","","");
        match2.setHeureMatch("19h00");
        match2.setJourMatch("Jeudi");
        match2.setDivision("A");
        match2.setEndroit("UDES");
        match2.setEquipe1("Les Gaulois");
        match2.setEquipe2("Les Pionniers");
        match2.setResultat("0:2");
        match2.setHoraireId("1");
        match2.setSport(new Sport("soccer", "sport avec ballon et que les gens tombe tout le temps"));

        Match match3 = new Match("","","","","","","","");
        match3.setHeureMatch("19h00");
        match3.setJourMatch("Jeudi");
        match3.setDivision("A");
        match3.setEndroit("UDES");
        match3.setEquipe1("Les Gaulois");
        match3.setEquipe2("Les Pionniers");
        match3.setResultat("0:2");
        match3.setHoraireId("1");
        match3.setSport(new Sport("soccer", "sport avec ballon et que les gens tombe tout le temps"));

        Horaire horaire = new Horaire();
        horaire.addMatch(match1);
        horaire.addMatch(match2);
        horaire.addMatch(match3);
        return horaire;
    }
    @GET
    @Path("/teacher")
    @RolesAllowed({"enseignant"})
    public Person teacher() {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        p.last_name = (String)this.jwt.getClaim("family_name");
        p.first_name = (String)this.jwt.getClaim("given_name");
        p.email = (String)this.jwt.getClaim("email");
        Map realmAccess = (Map)this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List)realmAccess.get("roles");
        }

        System.out.println(p);
        return p;
    }

    @GET
    @Path("/student")
    @RolesAllowed({"etudiant"})
    public Person student() {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        p.last_name = (String)this.jwt.getClaim("family_name");
        p.first_name = (String)this.jwt.getClaim("given_name");
        p.email = (String)this.jwt.getClaim("email");
        Map realmAccess = (Map)this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List)realmAccess.get("roles");
        }

        System.out.println(p);
        return p;
    }

    @GET
    @Path("/any")
    @PermitAll
    public Person me() {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        p.last_name = (String)this.jwt.getClaim("family_name");
        p.first_name = (String)this.jwt.getClaim("given_name");
        p.email = (String)this.jwt.getClaim("email");
        Map realmAccess = (Map)this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List)realmAccess.get("roles");
        }

        System.out.println(p);
        return p;
    }
}
