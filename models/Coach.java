package sportKits.models;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLDataException;

public class Coach extends User {
    private String id;
    private String sportCoach;
    private String trainingLocation;
    private Date registry;
    private String experenceAge;
    private int point;
    private String description;

    public Coach(String id, String sportCoach, String trainingLocation, Date registry,
                 String experenceAge, int point, String description) {
        super();
        this.id = id;
        this.sportCoach = sportCoach;
        this.trainingLocation = trainingLocation;
        this.registry = registry;
        this.experenceAge = experenceAge;
        this.point = point;
        this.description = description;
    }

    public Coach() {
        super();
    }

    public String getId() {
        return id;
    }

    public Coach setId(String id) {
        this.id = id;
        return this;
    }

    public String getSportCoach() {
        return sportCoach;
    }

    public Coach setSportCoach(String sportCoach) {
        this.sportCoach = sportCoach;
        return this;
    }

    public String getTrainingLocation() {
        return trainingLocation;
    }

    public Coach setTrainingLocation(String trainingLocation) {
        this.trainingLocation = trainingLocation;
        return this;
    }

    public Date getRegistry() {
        return registry;
    }

    public Coach setRegistry(Date registry) {
        this.registry = registry;
        return this;
    }

    public String getExperenceAge() {
        return experenceAge;
    }

    public Coach setExperenceAge(String experenceAge) {
        this.experenceAge = experenceAge;
        return this;
    }

    public int getPoint() {
        return point;
    }

    public Coach setPoint(int point) {
        this.point = point;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Coach setDescription(String description) {
        this.description = description;
        return this;
    }
}
