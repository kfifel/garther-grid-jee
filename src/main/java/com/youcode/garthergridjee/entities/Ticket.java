package com.youcode.garthergridjee.entities;

import com.youcode.garthergridjee.entities.enums.TicketType;
import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Getter @Setter @NoArgsConstructor @ToString
public class Ticket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private double price;
    private int quantityAvailable;

    @Enumerated(EnumType.STRING)
    private TicketType ticketType;

    @ManyToOne
    @JoinColumn(name = "event_id")
    private Event event;

    private Date createdAt;

    public Ticket(double price, int quantityAvailable, TicketType ticketType, Date createdAt, Event event) {
        this.price = price;
        this.quantityAvailable = quantityAvailable;
        this.ticketType = ticketType;
        this.createdAt = createdAt;
        this.event = event;
    }
}
