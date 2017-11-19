package models;

public class Parent extends User {
    private String id;
    private String location;
    private String sonName;
    private int sonAge;

    public  Parent() {
        super();
    }

    public Parent(String id, String location, String sonName, int sonAge) {
        super();
        this.id = id;
        this.location = location;
        this.sonName = sonName;
        this.sonAge = sonAge;
    }


    public String getId() {
        return id;
    }

    public Parent setId(String id) {
        this.id = id;
        return this;
    }

    public String getLocation() {
        return location;
    }

    public Parent setLocation(String location) {
        this.location = location;
        return this;
    }

    public String getSonName() {
        return sonName;
    }

    public Parent setSonName(String sonName) {
        this.sonName = sonName;
        return this;
    }

    public int getSonAge() {
        return sonAge;
    }

    public Parent setSonAge(int sonAge) {
        this.sonAge = sonAge;
        return this;
    }
}
