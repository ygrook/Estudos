package org.example;

public non-sealed class Salesman extends Employee {
    private double percentPerSold;
    private double soldAmoount;

    public Salesman(String code, String name, String address, int age, double salary, double percentPerSold, double soldAmoount) {
        super(code, name, address, age, salary);
        this.percentPerSold = percentPerSold;
        this.soldAmoount = soldAmoount;
    }

    public Salesman() {

    }

    @Override
    public String getCode(){
        return "SL" + super.getCode();
    }

    @Override
    public double getFullSalary() {
        return this.salary + ((soldAmoount * percentPerSold) /100);
    }

    public double getPercentPerSold() {
        return percentPerSold;
    }

    public void setPercentPerSold(double percentPerSold) {
        this.percentPerSold = percentPerSold;
    }

    public double getSoldAmoount() {
        return soldAmoount;
    }

    public void setSoldAmoount(double soldAmoount) {
        this.soldAmoount = soldAmoount;
    }
}
