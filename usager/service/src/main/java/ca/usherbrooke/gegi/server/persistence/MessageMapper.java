package ca.usherbrooke.gegi.server.persistence;

import ca.usherbrooke.gegi.server.business.Horaire;
import ca.usherbrooke.gegi.server.business.Match;
import ca.usherbrooke.gegi.server.business.Person;
import ca.usherbrooke.gegi.server.business.Sport;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import javax.management.relation.Role;
import java.util.List;

@Mapper
public interface MessageMapper {
    @Select("SELECT * FROM schema.sport")
    List<Sport> selectAllSport();

    @Select("SELECT * FROM schema.match")
    List<Match> selectAllMatch();
    @Select("SELECT * FROM schema.users")
    List<Person> selectAllPerson();

    @Select("SELECT * FROM schema.horaire")
    List<Horaire> selectAllHoraire();
    @Select("SELECT * FROM schema.equipe")
    List<Role> selectAllRole();

}

