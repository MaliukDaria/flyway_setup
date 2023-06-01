package com.example.flyway_setup.repository;

import com.example.flyway_setup.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
