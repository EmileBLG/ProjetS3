package ca.usherbrooke.gegi.server.persistence;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ca.usherbrooke.gegi.server.business.*;

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
*/
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

    @Delete("DELETE FROM schema.Sport WHERE Sport_ID = #{sport_id}")
    void supprimerSport(@Param("sport_id") int sport_id);

    // Ajout d'une équipe
    @Insert("INSERT INTO schema.Equipe (Equipe_ID, Equipe_Nom, Division_ID, Sport_ID) VALUES (#{equipe_id}, #{equipe_nom}, #{division_id}, #{sport_id})")
    void ajouterEquipe(@Param("equipe_id") int equipe_id, @Param("equipe_nom") String equipe_nom, @Param("division_id") int division_id, @Param("sport_id") int sport_id);

    // Suppression d'une équipe
    @Delete("DELETE FROM schema.Equipe WHERE Equipe_ID = #{equipe_id}")
    void supprimerEquipe(@Param("equipe_id") int equipe_id);

    // Ajout d'une division
    @Insert("INSERT INTO schema.Division (Division_ID, Division_Nom) VALUES (#{division_id}, #{division_nom})")
    void ajouterDivision(@Param("division_id") int division_id, @Param("division_nom") String division_nom);

    // Suppression d'une division
    @Delete("DELETE FROM schema.Division WHERE Division_ID = #{division_id}")
    void supprimerDivision(@Param("division_id") int division_id);

    // Ajout d'un match
    @Insert("INSERT INTO schema.Match (Match_ID, Date, Time, Endroit, Equipe1, Equipe2) VALUES (#{match_id}, #{dateStr}, #{timestr}, #{endroit}, #{equipe1}, #{equipe2})")
    void ajouterMatch(@Param("match_id") int match_id, @Param("dateStr") Date date, @Param("timestr") Time time, @Param("endroit") String endroit, @Param("equipe1") int equipe1, @Param("equipe2") int equipe2);

    // Suppression d'un match
    @Delete("DELETE FROM schema.Match WHERE Match_ID = #{match_id}")
    void supprimerMatch(@Param("match_id") int match_id);


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

    

    @Select("SELECT presence FROM schema.presencematch WHERE cip = #{cip} AND MatchID = #{MatchID}")
    int presencejoueur(@Param("cip") String cip, @Param("MatchID") int MatchID);

    @Select("SELECT cip FROM schema.constitue WHERE equipe_id = #{equipe_id}")
    List<String> getCipFromEquipe(@Param("equipe_id") int equipe_id);

    @Delete("DELETE FROM schema.constitue WHERE equipe_id = #{equipe_id} AND cip = #{cip}")
    void deleteConstitue(@Param("equipe_id") int equipe_id, @Param("cip") String cip);

    @Insert("INSERT INTO schema.constitue(equipe_id, cip) VALUES(#{equipe_id}, #{cip})")
    void insertConstitue(@Param("equipe_id")int equipe_id, @Param("cip") String cip);


}



