package com.example.cake.Cake_Shop.respo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cake.Cake_Shop.model.Cart;
import com.example.cake.Cake_Shop.model.Product;
import com.example.cake.Cake_Shop.model.user;

public interface cartinfo extends JpaRepository<Cart, Integer> {
    List<Cart> findByUser(user user);
    Cart findByUserAndProduct(user user, Product product);
}