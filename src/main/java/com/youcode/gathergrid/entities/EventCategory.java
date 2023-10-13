package com.youcode.gathergrid.entities;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Getter @Setter @NoArgsConstructor @ToString
public class EventCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String description;
    private Date createdAt;

    public EventCategory(String name, String description, Date createdAt) {
        this.name = name;
        this.description = description;
        this.createdAt = createdAt;
    }
}
