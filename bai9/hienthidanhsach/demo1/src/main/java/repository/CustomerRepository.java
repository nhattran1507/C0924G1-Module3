package repository;

import entity.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {

    private static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "src/main/java/image/hinh1.jpg"));
        customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "src/main/java/image/hinh2.jpg"));
        customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "src/main/java/image/hinh3.jpg"));
        customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "src/main/java/image/hinh4.jpg"));
        customers.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "src/main/java/image/hinh5.jpg"));
    }

    public static List<Customer> getCustomers() {
        return customers;
    }
}
