package ca.usherbrooke.gegi.server.business;

import java.util.List;
import java.util.ArrayList;



public class Person {
    public String cip;
    public String lastname;
    public String firstname;
    public String email;
    public List roles;

    public ArrayList<Integer> listIDMatch = new ArrayList<Integer>();






    public String toString() {
        return "Person{cip='" + this.cip + "', last_name='" + this.lastname + "', first_name='" + this.firstname + "', email='" + this.email + "', roles=" + this.roles + "}";
    }
}