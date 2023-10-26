package com.youcode.garthergridjee.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.Time;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Getter
@Entity
@ToString
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Date date;
    private String time;
    private String location;
    private String description;
    private String organizer;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "event")
    private List<Ticket> tickets;

    @OneToMany(mappedBy = "event", fetch = FetchType.EAGER)
    private List<Comment> comments;

    public Event(String name, Date date, String time, String location, String description, String organizer, Category category) {
        this.name = name;
        this.date = date;
        this.time = time;
        this.location = location;
        this.description = description;
        this.organizer = organizer;
        this.createdAt =new Date();
        this.category = category;
    }

    public Event(String name, Date date, String time, String location, String description, Category category) {
        this.name = name;
        this.date = date;
        this.time = time;
        this.location = location;
        this.description = description;
        this.createdAt =new Date();
        this.category = category;
    }

    public Event() {

    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setOrganizer(String organizer) {
        this.organizer = organizer;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public void setTickets(List<Ticket> tickets) {
        this.tickets = tickets;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getLocation() {
        return location;
    }

    public String getDescription() {
        return description;
    }

    public String getOrganizer() {
        return organizer;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public Category getCategory() {
        return category;
    }

    public List<Ticket> getTickets() {
        return tickets;
    }

    public List<Comment> getComments() {
        return comments;
    }
}
