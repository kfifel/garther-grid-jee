package com.youcode.gathergrid.entities;

import com.youcode.gathergrid.entities.enums.TicketType;
import lombok.*;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Getter @Setter @NoArgsConstructor @ToString
public class Ticket {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private double price;
    private int quantityAvailable;
    @Enumerated(EnumType.STRING)
    private TicketType ticketType;
    private Date createdAt;

    public Ticket(double price, int quantityAvailable, TicketType ticketType, Date createdAt) {
        this.price = price;
        this.quantityAvailable = quantityAvailable;
        this.ticketType = ticketType;
        this.createdAt = createdAt;
    }
}
