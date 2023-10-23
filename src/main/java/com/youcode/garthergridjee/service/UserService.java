package com.youcode.garthergridjee.service;

import com.youcode.garthergridjee.entities.User;
import com.youcode.garthergridjee.repository.UserRepository;

import java.util.List;

public class UserService {
    private final UserRepository userRepository;

    public UserService() {
        userRepository = new UserRepository();
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }
}
