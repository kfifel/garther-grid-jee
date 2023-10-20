package com.youcode.garthergridjee.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

    public Category(String name, String description) {
        this.name = name;
        this.description = description;
        this.createdAt = new Date();
    }
}
