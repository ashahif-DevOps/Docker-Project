package com.shahif.portfolio.model;

import jakarta.persistence.*;

@Entity
@Table(name = "skill")
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String category;   // e.g. "Cloud Technologies"

    @Column(length = 500)
    private String items;      // e.g. "AWS, Azure"

    public Skill() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    public String getItems() { return items; }
    public void setItems(String items) { this.items = items; }
}
