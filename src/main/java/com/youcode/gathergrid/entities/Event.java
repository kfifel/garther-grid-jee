package com.youcode.gathergrid.entities;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import jakarta.persistence.*;
import java.sql.Time;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
public class Event {

    @Id @GeneratedValue
    private Long id;
    private String name;
    private Date date;
    private Time time;
    private String location;
    private String description;
    private String organizer;
    private Date createdAt;

    @ManyToOne(fetch = FetchType.EAGER)
    private EventCategory eventCategory;

    @OneToMany(mappedBy = "event", fetch = FetchType.EAGER)
    private List<Comment> comments;

    public Event(String name, Date date, Time time, String location, String description, String organizer, Date createdAt, EventCategory eventCategory) {
        this.name = name;
        this.date = date;
        this.time = time;
        this.location = location;
        this.description = description;
        this.organizer = organizer;
        this.createdAt = createdAt;
        this.eventCategory = eventCategory;
    }
}
