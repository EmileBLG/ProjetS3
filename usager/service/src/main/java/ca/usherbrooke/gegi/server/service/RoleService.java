package ca.usherbrooke.gegi.server.service;

import ca.usherbrooke.gegi.server.business.*;
import ca.usherbrooke.gegi.server.persistence.MessageMapper;


import javax.inject.Inject;
import javax.management.relation.Role;
import javax.ws.rs.*;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import java.lang.reflect.InvocationTargetException;


import org.eclipse.microprofile.jwt.JsonWebToken;

import java.util.ArrayList;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Path("/api")
public class RoleService {

    @Inject
    MessageMapper messageMapper;

    @Context
    SecurityContext securityContext;

    @Inject
    JsonWebToken jwt;

    @GET
    @Path("/sports")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Sport> getAllSports() {
        List<Sport> listeSport = messageMapper.selectAllSport();
        listeSport.forEach(System.out::println);
        return listeSport;
    }

    @GET
    @Path("/matches")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Match> getAllMatches() {
        List<Match> listeMatch = messageMapper.selectAllMatch();
        listeMatch.forEach(System.out::println);
        return listeMatch;
    }

    @GET
    @Path("/persons")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Person> getAllPersons() {
        List<Person> listePerson = messageMapper.selectAllPerson();
        listePerson.forEach(System.out::println);
        return listePerson;
    }

    @GET
    @Path("/horaires")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Horaire> getAllHoraires() {
        List<Horaire> listeHoraire = messageMapper.selectAllHoraire();
        listeHoraire.forEach(System.out::println);
        return listeHoraire;
    }

    @GET
    @Path("/equipe")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Equipe> getequipe() {
        List<Equipe> listeequipe = messageMapper.selectAllEquipe();
        listeequipe.forEach(System.out::println);
        return listeequipe;
    }

    @GET
    @Path("/division")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Division> getdivision() {
        List<Division> listedivision = messageMapper.selectAllDivision();
        listedivision.forEach(System.out::println);
        return listedivision;
    }


    @GET
    @Path("/teacher")
    @RolesAllowed({"enseignant"})
    public Person teacher() {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        p.lastname = (String) this.jwt.getClaim("family_name");
        p.firstname = (String) this.jwt.getClaim("given_name");
        p.email = (String) this.jwt.getClaim("email");
        Map realmAccess = (Map) this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List) realmAccess.get("roles");
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
        p.lastname = (String) this.jwt.getClaim("family_name");
        p.firstname = (String) this.jwt.getClaim("given_name");
        p.email = (String) this.jwt.getClaim("email");
        Map realmAccess = (Map) this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List) realmAccess.get("roles");
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
        p.lastname = (String) this.jwt.getClaim("family_name");
        p.firstname = (String) this.jwt.getClaim("given_name");
        p.email = (String) this.jwt.getClaim("email");
        Map realmAccess = (Map) this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List) realmAccess.get("roles");
        }

        System.out.println(p);
        return p;
    }

    @GET
    @Path("/HoraireSport")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Match> getHoraireSport(
            @QueryParam("sportId") int sportId,
            @QueryParam("divisionId") int divisionId) {


        List<Match> listeMatch = messageMapper.getHoraireSport(sportId, divisionId);
        listeMatch.forEach(System.out::println);
        return listeMatch;
    }

    @GET
    @Path("/classement")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Equipe> getClassement(
            @QueryParam("sportId") int sportId,
            @QueryParam("divisionId") int divisionId) {


        List<Equipe> var = messageMapper.getClassement(sportId, divisionId);

        return var;
    }


    @GET
    @Path("/divisionname")
    @Produces(MediaType.APPLICATION_JSON)
    public String getDivisionName(@QueryParam("divisionId") int divisionId) {
        String divisionName = messageMapper.getSportName(divisionId);
        System.out.println(divisionName);
        return divisionName;
    }
    @GET
    @Path("/sportDivisionname")
    @Produces(MediaType.APPLICATION_JSON)
    public String getSportDivisionName(@QueryParam("sportId") int sportId, @QueryParam("divisionId") int divisionId) {
        String sportName = messageMapper.getSportName(sportId);
        String divisionName = messageMapper.getDivisionName(divisionId);

        return sportName + " " + divisionName;
    }

    @GET
    @Path("/horaire")
    @RolesAllowed({"joueur"})
    @Produces(MediaType.APPLICATION_JSON)
    public List<Match> getHoraire1Joueur(
            @QueryParam("cip") String cip) {
        List<Match> listeMatch = messageMapper.getHoraire1Joueur(cip);
        listeMatch.forEach(System.out::println);
        return listeMatch;
    }

    @GET
    @Path("/admin")
//@RolesAllowed({"admin"})
    @Produces(MediaType.APPLICATION_JSON)
    public Object createInstance(@QueryParam("className") String className) {
        try {
            Class<?> clazz = Class.forName(className);
            return clazz.getDeclaredConstructor().newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @POST
    @Path("/addSport")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addSport(Sport sport) {
        try {
            messageMapper.insertSport(sport);
            return Response.status(Response.Status.CREATED).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
    }

    @GET
    @Path("/ajouterSport")
    @Produces(MediaType.APPLICATION_JSON)
    public Response ajouterSport(
            @QueryParam("sport_id") int sportId,
            @QueryParam("sport_nom") String sportNom) {
        try {
            messageMapper.ajouterSport(sportId, sportNom);
            return Response.status(Response.Status.CREATED).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
//URL exemple : http://localhost:8888/api/ajouterSport?sport_id=7&sport_nom=waterpolo
    }
    @GET
    @Path("/supprimerSport")
    @Produces(MediaType.APPLICATION_JSON)
    public Response supprimerSport(@QueryParam("sport_id") int sportId) {
        try {
            messageMapper.supprimerSport(sportId);
            return Response.status(Response.Status.OK).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
        //http://localhost:8888/api/supprimerSport?sport_id=7
    }

    // Ajout d'une équipe
    @GET
    @Path("/ajouterEquipe")
    @Produces(MediaType.APPLICATION_JSON)
    public Response ajouterEquipe(
            @QueryParam("equipe_id") int equipeId,
            @QueryParam("equipe_nom") String equipeNom,
            @QueryParam("division_id") int divisionId,
            @QueryParam("sport_id") int sportId) {
        try {
            messageMapper.ajouterEquipe(equipeId, equipeNom, divisionId, sportId);
            return Response.status(Response.Status.CREATED).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
    }

    // Suppression d'une équipe
    @GET
    @Path("/supprimerEquipe")
    @Produces(MediaType.APPLICATION_JSON)
    public Response supprimerEquipe(@QueryParam("equipe_id") int equipeId) {
        try {
            messageMapper.supprimerEquipe(equipeId);
            return Response.status(Response.Status.OK).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
    }

    // Ajout d'une division
    @GET
    @Path("/ajouterDivision")
    @Produces(MediaType.APPLICATION_JSON)
    public Response ajouterDivision(
            @QueryParam("division_id") int divisionId,
            @QueryParam("division_nom") String divisionNom) {
        try {
            messageMapper.ajouterDivision(divisionId, divisionNom);
            return Response.status(Response.Status.CREATED).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
        //http://localhost:8888/api/ajouterDivision?division_id=1&division_nom=MaDivision
    }

    // Suppression d'une division
    @GET
    @Path("/supprimerDivision")
    @Produces(MediaType.APPLICATION_JSON)
    public Response supprimerDivision(@QueryParam("division_id") int divisionId) {
        try {
            messageMapper.supprimerDivision(divisionId);
            return Response.status(Response.Status.OK).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
        //http://localhost:8888/api/supprimerDivision?division_id=1
    }

    // Ajout d'un match
    @GET
    @Path("/ajouterMatch")
    @Produces(MediaType.APPLICATION_JSON)
    public Response ajouterMatch(
            @QueryParam("match_id") int matchId,
            @QueryParam("heure") String heureStr,
            @QueryParam("endroit") String endroit,
            @QueryParam("equipe1") int equipe1,
            @QueryParam("equipe2") int equipe2) {
        try {
            // Convertir la chaîne de caractères de l'heure en un objet Timestamp
            Timestamp heure = Timestamp.valueOf(heureStr);

            messageMapper.ajouterMatch(matchId, heure, endroit, equipe1, equipe2);
            return Response.status(Response.Status.CREATED).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
    }

    // Suppression d'un match
    @GET
    @Path("/supprimerMatch")
    @Produces(MediaType.APPLICATION_JSON)
    public Response supprimerMatch(@QueryParam("match_id") int matchId) {
        try {
            messageMapper.supprimerMatch(matchId);
            return Response.status(Response.Status.OK).build();
        } catch (Exception e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();
        }
    }




}
    public List<Match> getHoraire1Joueur() {
        Person joueur = student();
        List<Match> listeMatch = messageMapper.getHoraire1Joueur(joueur.cip);
        listeMatch.forEach(System.out::println);
        return listeMatch;


}



    @GET
    @Path("/setPresent")
    @Produces(MediaType.APPLICATION_JSON)
    @RolesAllowed({"joueur", "capitaine", "admin"}) //probablement mauvais nom
    //@Consumes(MediaType.APPLICATION_JSON) //peut être utile
    public void setPresent(@QueryParam("matchId") int matchId) {

        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        System.out.println(p.cip.toString());



        messageMapper.setPresent(p.cip, matchId);
    }

    @GET
    @Path("/setAbsent")
    @Produces(MediaType.APPLICATION_JSON)
    @RolesAllowed({"joueur", "capitaine", "admin"}) //probablement mauvais nom
    //@Consumes(MediaType.APPLICATION_JSON) //peut être utile
    public void setAbsent(@QueryParam("matchId") int matchId) {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        System.out.println(p.cip.toString());

        messageMapper.setAbsent(p.cip, matchId);

    }

    //Partie réserver pour l'alignement

   /*
    @GET
    @Path("/personDisponible")
    @RolesAllowed({"capitaine"})
    @Produces(MediaType.APPLICATION_JSON)
    public List<String> personDisponible() {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();

        int equipeID = messageMapper.getEquipeID(p.cip);
        ArrayList<Integer> MatchsID = new ArrayList<Integer>();
        MatchsID = messageMapper.selectMatchsPerson(p.cip);

        int prochainMatchID = MatchsID.get(0);

        ArrayList<String> PersonSDisponible = new ArrayList<String>();
        PersonSDisponible = (ArrayList<String>) messageMapper.getPersonDisponible(prochainMatchID, equipeID);

        return PersonSDisponible;

    }
*/
    // match spécifique a chaque usager


    //match

    //division

    //sport

    //




    // branche de will systhème de présence ----------------------------------------------------------------






    //Partie réserver pour l'alignement
/*
    @PUT
    @Path("/setAlignement/{gardien}/{defenseur1}/{defenseur2}/{defenseur3}/{milieu1}/{milieu2}/{attaquant1}/{attaquant2}/{attaquant3}")
    @RolesAllowed({"capitaine"})
    @Produces(MediaType.APPLICATION_JSON)
    public void setAlignement(@PathParam("gardien") String Gardien,@PathParam("defenseur1") String Defenseur1, @PathParam("defenseur2") String Defenseur2, @PathParam("defenseur3") String Defenseur3, @PathParam("milieu1") String Milieu1, @PathParam("milieu2") String Milieu2,@PathParam("attaquant1") String Attaquant1,@PathParam("attaquant2") String Attaquant2, @PathParam("attaquant3") String Attaquant3 )
    {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        ArrayList<Integer> MatchsID = new ArrayList<Integer>();
        MatchsID = messageMapper.selectMatchsPerson(p.cip);

        int prochainMatchID = MatchsID.get(0);
        int equipeID = messageMapper.getEquipeID(p.cip);

        messageMapper.setAlignement(prochainMatchID, equipeID, Gardien,Defenseur1,Defenseur2,Defenseur3,Milieu1, Milieu2, Attaquant1, Attaquant2, Attaquant3);

    }

*/



    // match spécifique a chaque usager


    //match

    //division

    //sport

    //

}
