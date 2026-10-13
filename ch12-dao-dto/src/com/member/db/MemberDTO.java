package com.member.db;

public class MemberDTO {
    private int id = 0;
    private String pass = null;
    private String name = null;
    private String phone = null;
    private String address = null;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
}
