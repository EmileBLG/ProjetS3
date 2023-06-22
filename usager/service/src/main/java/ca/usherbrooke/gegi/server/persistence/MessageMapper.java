package ca.usherbrooke.gegi.server.persistence;

import ca.usherbrooke.gegi.server.business.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import javax.management.relation.Role;
import java.sql.Timestamp;
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

    @Select("SELECT * FROM schema.horraire WHERE sport_id = #{sport_id} AND division_id = #{division_id}")
    List<Match> getHoraireSport(@Param("sport_id") int sport_id, @Param("division_id") int division_id);

    @Select("SELECT * FROM schema.horraire WHERE sport_id = #{sport_id} AND division_id = #{division_id}")
    List<Match> getSportDivisionNom(@Param("sport_id") int sport_id, @Param("division_id") int division_id);




}