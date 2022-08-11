package com.example.Java_EE.ServletApi.entities;

public class User {
    private Long id;
    private String username;
    private String surname;
    private Integer age;
    private Double money;

    public User(Long id, String username, String surname, Integer age, Double money) {
        this.id = id;
        this.username = username;
        this.surname = surname;
        this.age = age;
        this.money = money;
    }

    public User() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getSurname() { return surname; }
    public void setSurname(String surname) { this.surname = surname; }
    public Integer getAge() { return age; }
    public void setAge(Integer age) { this.age = age; }
    public Double getMoney() { return money; }
    public void setMoney(Double money) { this.money = money; }
}
