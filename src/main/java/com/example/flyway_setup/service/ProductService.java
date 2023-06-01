package com.example.flyway_setup.service;

import com.example.flyway_setup.entity.Product;

import java.util.List;

public interface ProductService {
  Product save(Product product);

  List<Product> getAll();
}
