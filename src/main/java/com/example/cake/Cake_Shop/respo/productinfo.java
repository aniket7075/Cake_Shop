package com.example.cake.Cake_Shop.respo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cake.Cake_Shop.model.Product;


public interface productinfo extends JpaRepository<Product, Integer>
{
	
}
