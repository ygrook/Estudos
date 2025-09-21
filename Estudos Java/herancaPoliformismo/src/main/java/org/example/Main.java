package org.example;



public class Main {
    public static void main(String[] args) {

       printEmployee(new Manager());
       printEmployee(new Salesman());

        }

    public static void printEmployee(Employee employee){

        switch (employee) {
            case Manager manager ->{
                manager.setCode("123");
                manager.setName("João");
                manager.setSalary(5000);
                manager.setLogin("joao");
                manager.setPassword("joao1234");
                manager.setCommission(1200);

                System.out.println(manager.getCode());
                System.out.println(manager.getSalary());
                System.out.println(manager.getName());
                System.out.println(manager.getLogin());
                System.out.println(manager.getPassword());
                System.out.println(manager.getCommission());
            }

            case Salesman salesman ->{
                salesman.setCode("7456456");
                salesman.setName("Lucas");
                salesman.setSalary(5000);
                salesman.setSalary(2800);
                salesman.setPercentPerSold(10);
                salesman.setSoldAmoount(1000);

                System.out.println(salesman.getCode());
                System.out.println(salesman.getSalary());
                System.out.println(salesman.getName());
                System.out.println(salesman.getPercentPerSold());

            }

        }
        System.out.println(employee.getFullSalary());
    }
}
