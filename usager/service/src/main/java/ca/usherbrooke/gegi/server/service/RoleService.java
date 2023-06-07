package ca.usherbrooke.gegi.server.service;

import ca.usherbrooke.gegi.server.business.Horaire;
import ca.usherbrooke.gegi.server.business.Match;
import ca.usherbrooke.gegi.server.business.Person;
import ca.usherbrooke.gegi.server.business.Sport;
import ca.usherbrooke.gegi.server.persistence.MessageMapper;

import javax.inject.Inject;
import javax.management.relation.Role;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/api")
public class RoleService {
    @Inject
    MessageMapper messageMapper;

    @GET
    @Path("/sport")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Sport> getSport() {
        List<Sport> listeSport = messageMapper.selectAllSport();
        listeSport.forEach(System.out::println);
        return listeSport;
    }

    @GET
    @Path("/match")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Match> getMatch() {
        List<Match> listeMatch = messageMapper.selectAllMatch();
        listeMatch.forEach(System.out::println);
        return listeMatch;
    }

    @GET
    @Path("/person")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Person> getPerson() {
        List<Person> listePerson = messageMapper.selectAllPerson();
        listePerson.forEach(System.out::println);
        return listePerson;
    }

    @GET
    @Path("/horaire")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Horaire> getHoraire() {
        List<Horaire> listeHoraire = messageMapper.selectAllHoraire();
        listeHoraire.forEach(System.out::println);
        return listeHoraire;
    }

    @GET
    @Path("/role")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Role> getRole() {
        List<Role> listeRole = messageMapper.selectAllRole();
        listeRole.forEach(System.out::println);
        return listeRole;
    }
}
