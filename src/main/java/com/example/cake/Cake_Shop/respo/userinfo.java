package com.example.cake.Cake_Shop.respo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.cake.Cake_Shop.model.user;

public interface userinfo extends JpaRepository<user, Integer> {
    user findByEmail(String email);
}
