package com.zhantemir.devopsapp.repository;

import com.zhantemir.devopsapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
