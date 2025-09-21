package org.example;

public record Person(String name, int age) {

    public Person{

    }

    public Person(final String name){
        thisname(name, 1);
    }
    public String getInfo(){
        return "Name: " + name + " Age: " + age;
    }
}
