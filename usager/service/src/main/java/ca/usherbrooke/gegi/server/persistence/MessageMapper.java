package ca.usherbrooke.gegi.server.persistence;

import ca.usherbrooke.gegi.server.business.*;
import org.apache.ibatis.annotations.Insert;
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

    @Select("SELECT * FROM schema.horaire WHERE sport_id = #{sport_id} AND division_id = #{division_id}")
    List<Match> getHoraireSport(@Param("sport_id") int sport_id, @Param("division_id") int division_id);

    @Select("SELECT Sport_Nom FROM schema.Sport WHERE Sport_ID = #{sport_id}")
    String getSportName(@Param("sport_id") int sport_id);

    @Select("SELECT Division_Nom FROM schema.Division WHERE Division_ID = #{division_id}")
    String getDivisionName(@Param("division_id") int division_id);

    @Select("SELECT * FROM schema.classement WHERE sport_id = #{sport_id} AND division_id = #{division_id}")
    List<Equipe> getClassement(@Param("sport_id") int sport_id, @Param("division_id") int division_id);

    @Select("SELECT M.* " +
            "FROM schema.Match M " +
            "INNER JOIN schema.PresenceMatch PM ON M.Match_ID = PM.MatchID " +
            "INNER JOIN schema.users U ON PM.cip = U.cip " +
            "WHERE U.cip = #{cip}")
    List<Match> getHoraire1Joueur(@Param("cip") String cip);

    @Insert("INSERT INTO schema.sport (sport_id, sport_name) VALUES (#{sport.sportId}, #{sport.sportName})")
    void insertSport(@Param("sport") Sport sport);

    @Insert("INSERT INTO schema.Sport (Sport_ID, Sport_Nom) VALUES (#{sport_id}, #{sport_nom})")
    void ajouterSport(@Param("sport_id") int sport_id, @Param("sport_nom") String sport_nom);



}