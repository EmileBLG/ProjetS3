package ca.usherbrooke.gegi.server.persistence;

import ca.usherbrooke.gegi.server.business.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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

    @Select("SELECT Sport_Nom FROM schema.Sport WHERE Sport_ID = #{sport_id}")
    String getSportName(@Param("sport_id") int sport_id);

    @Select("SELECT Division_Nom FROM schema.Division WHERE Division_ID = #{division_id}")
    String getDivisionName(@Param("division_id") int division_id);

    @Select("SELECT * FROM schema.classement WHERE sport_id = #{sport_id} AND division_id = #{division_id}")
    List<Equipe> getClassement(@Param("sport_id") int sport_id, @Param("division_id") int division_id);

    @Update("UPDATE schema.presencematch SET presence = 1 WHERE cip = #{cip} AND MatchID = #{MatchID}")
    void setPresent(@Param("cip") String cip, @Param("MatchID") int MatchID);

    @Update("UPDATE schema.presencematch SET presence = 0 WHERE cip = #{cip} AND MatchID = #{MatchID}")
    void setAbsent(@Param("cip") String cip, @Param("MatchID") int MatchID);

    @Select("SELECT schema.users.firstname, schema.users.lastname,schema.users.email, schema.users.cip" +
            "FROM schema.presencematch, schema.constitue, schema.users" +
            "WHERE schema.presencematch.matchid = #{matchID} and schema.presencematch.presence = 1" +
            "and schema.presencematch.cip = schema.constitue.cip and schema.constitue.equipe_id = #{equipe_id}" +
            "and schema.users.cip = schema.constitue.cip")
    List<String> getPersonDisponible(@Param("matchID") int MatchID, @Param("equipe_id") int equipe_id);
}