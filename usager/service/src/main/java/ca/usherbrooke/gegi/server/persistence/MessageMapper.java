package ca.usherbrooke.gegi.server.persistence;

import ca.usherbrooke.gegi.server.business.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import javax.management.relation.Role;
import java.util.List;

@Mapper
public interface MessageMapper {
    @Select("SELECT * FROM schema.sport")
    List<Sport> selectAllSport();

    @Select("SELECT * FROM schema.match" )
    List<Match> selectAllMatch();
    @Select("SELECT * FROM schema.users")
    List<Person> selectAllPerson();

    @Select("SELECT * FROM schema.horaire")
    List<Horaire> selectAllHoraire();
    @Select("SELECT * FROM schema.equipe")
    List<Equipe> selectAllEquipe();
    @Select("SELECT * FROM schema.division")
    List<Division> selectAllDivision();
    /*
    selectMatchsPerson(String p.cip)       //doit retourner les match du plus récent au plus vieux
    retourne list de int des id des match

    SELECT m.match_id
FROM match m
INNER JOIN constitue c ON m.equipe1 = c.equipe OR m.equipe2 = c.equipe
WHERE c.CIP = 'Robw1901'



    */

    @Select("SELECT match_id FROM match Where ")
}