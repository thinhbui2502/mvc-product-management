package atagvn.service;

import atagvn.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone 11",26990000,"Silver"));
        products.put(2, new Product(2, "OPPO Reno 3",8490000,"Silver"));
        products.put(3, new Product(3, "Galaxy S10 lite",12990000,"Blue"));
        products.put(4, new Product(4, "Redmi Note 9s",5990000,"Green"));
        products.put(5, new Product(5, "Galaxy Ford",50000000,"Black"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
