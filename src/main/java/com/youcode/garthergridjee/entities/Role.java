package com.youcode.garthergridjee.entities;

import jakarta.persistence.*;

@Entity

public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true)
    private String name;

}