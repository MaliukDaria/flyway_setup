package com.example.flyway_setup.service.impl;

import com.example.flyway_setup.entity.Product;
import com.example.flyway_setup.repository.ProductRepository;
import com.example.flyway_setup.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {
  private final ProductRepository productRepository;

  @Override
  public Product save(Product product) {
    return productRepository.save(product);
  }

  @Override
  public List<Product> getAll() {
    return productRepository.findAll();
  }
}
