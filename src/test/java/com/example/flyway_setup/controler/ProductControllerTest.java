package com.example.flyway_setup.controler;

import com.example.flyway_setup.entity.Product;
import com.example.flyway_setup.service.ProductService;
import lombok.SneakyThrows;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.List;
@SpringBootTest
@AutoConfigureMockMvc
class ProductControllerTest {
  @Autowired
  private MockMvc mockMvc;
  @Autowired
  private ObjectMapper objectMapper;
  @Autowired
  private ProductService productService;

  @Test
  @SneakyThrows
  public void create() {
    String productName = "Test Product";
    Product product = new Product();
    product.setName(productName);
    product.setPrice(10.0);

    MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.post("/api/product")
            .contentType("application/json")
            .content("{\"name\": \"Test Product\", \"price\": 10.0}"))
        .andExpect(MockMvcResultMatchers.status().isOk())
        .andReturn();
    Product actualProduct = objectMapper.readValue(
        mvcResult.getResponse().getContentAsByteArray(),
        Product.class);
    List<Product> all = productService.getAll();
    Assertions.assertTrue(all.size() >= 1);
    Product actualDBProduct = all.get(0);
    Assertions.assertEquals(productName, actualProduct.getName());
    Assertions.assertNotNull(actualDBProduct.getId());
  }
}
