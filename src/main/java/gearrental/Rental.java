package gearrental;

import javax.persistence.*;

@Entity
@Table(name = "rental")
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "email")
    private String email;

    @Column(name = "gear")
    private String gear;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String address) {
        this.email = address;
    }

    public String getGear() {
        return gear;
    }

    public void setGear(String phone) {
        this.gear = gear;
    }


    public Rental() {
    }

    public String toString() {
        return Integer.toString(id) + " " + name + " " + email + " " + gear;
    }
}
