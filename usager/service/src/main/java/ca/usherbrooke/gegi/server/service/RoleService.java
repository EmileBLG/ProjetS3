package ca.usherbrooke.gegi.server.service;

import ca.usherbrooke.gegi.server.business.*;
import ca.usherbrooke.gegi.server.persistence.MessageMapper;

import javax.inject.Inject;
import javax.management.relation.Role;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.SecurityContext;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;

import org.eclipse.microprofile.jwt.JsonWebToken;

import java.sql.Timestamp;
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



}

