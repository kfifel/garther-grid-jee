package com.youcode.garthergridjee.entities;

import com.youcode.garthergridjee.entities.enums.TicketType;
import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Getter @Setter @ToString
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

    public Ticket() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantityAvailable() {
        return quantityAvailable;
    }

    public void setQuantityAvailable(int quantityAvailable) {
        this.quantityAvailable = quantityAvailable;
    }

    public TicketType getTicketType() {
        return ticketType;
    }

    public void setTicketType(TicketType ticketType) {
        this.ticketType = ticketType;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}
