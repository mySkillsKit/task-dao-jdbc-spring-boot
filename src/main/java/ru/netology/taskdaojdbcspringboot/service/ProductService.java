package ru.netology.taskdaojdbcspringboot.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.netology.taskdaojdbcspringboot.repository.ProductRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<String> getProductName(String name) {
        return productRepository.getProductName(name);
    }
}
