package service.impl;

import entity.Customer;
import repository.CustomerRepository;
import service.IService;


import java.util.List;

public class CustomerService implements IService {

    @Override
    public List<Customer> getAllCustomers() {
        List<Customer> customers = CustomerRepository.getCustomers();
        return customers;
    }
}
