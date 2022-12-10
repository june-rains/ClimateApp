package com.duke.webapp.Dao;

public class OverAllReport {
    public String name;
    public String netId;
    public String department;
    public String wellBeing;
    public String knowing;
    public String connection;
    public String welcome;
    public String respectStu;
    public String respectStaff;
    public String matter;
    public String happyChoice;

    public OverAllReport() {
    }

    public OverAllReport(String name, String netId, String department, String wellBeing, String knowing, String connection, String welcome, String respectStu, String respectStaff, String matter, String happyChoice) {
        this.name = name;
        this.netId = netId;
        this.department = department;
        this.wellBeing = wellBeing;
        this.knowing = knowing;
        this.connection = connection;
        this.welcome = welcome;
        this.respectStu = respectStu;
        this.respectStaff = respectStaff;
        this.matter = matter;
        this.happyChoice = happyChoice;
    }
}
