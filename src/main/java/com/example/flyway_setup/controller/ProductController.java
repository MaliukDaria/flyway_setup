package com.example.flyway_setup.controller;

import com.example.flyway_setup.entity.Product;
import com.example.flyway_setup.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/product")
@RequiredArgsConstructor
public class ProductController {
  private final ProductService productService;

  @PostMapping
  public ResponseEntity<Product> create(@RequestBody Product product) {
    return ResponseEntity.ok(productService.save(product));
  }

  @GetMapping
  public ResponseEntity<List<Product>> findALl() {
    return ResponseEntity.ok(productService.getAll());
  }
}
