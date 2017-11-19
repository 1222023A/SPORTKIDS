package sportKits.models;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLDataException;

public class User {
    private String id;
    private String name;
    private String lastName;
    private String password;
    private String age;
    private String address;
    private String phone;
    private String email;
    private Date bithday;

    public User(String id, String name, String lastName, String password, String age, String address,
                 String phone, String email, Date bithday) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.password = password;
        this.age = age;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.bithday = bithday;
    }

    public User() {
    }

    public String getId() {
        return id;
    }

    public User setId(String id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public User setName(String name) {
        this.name = name;
        return this;
    }

    public String getLastName() {
        return lastName;
    }

    public User setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public User setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getAge() {
        return age;
    }

    public User setAge(String age) {
        this.age = age;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public User setAddress(String address) {
        this.address = address;
        return this;
    }

    public String getPhone() {
        return phone;
    }

    public User setPhone(String phone) {
        this.phone = phone;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public Date getBithday() {
        return bithday;
    }

    public User setBithday(Date bithday) {
        this.bithday = bithday;
        return this;
    }
}
