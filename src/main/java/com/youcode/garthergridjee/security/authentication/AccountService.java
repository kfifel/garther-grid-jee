package com.youcode.garthergridjee.security.authentication;

import com.youcode.garthergridjee.entities.User;
import org.mindrot.jbcrypt.BCrypt;

import java.util.Optional;

public class AccountService {
    private final AccountRepository accountRepository;
    public AccountService() {
        accountRepository = new AccountRepository();
    }

    public boolean registerUser(User user) {

        if (user.getUsername() == null || user.getUsername().isEmpty() || user.getUsername().isBlank()
                || user.getEmail().isBlank() || user.getEmail().isEmpty()
                || user.getPassword().isBlank() || user.getPassword().isEmpty() || user.getPassword().length() < 6
        )
            throw new IllegalArgumentException("Invalid user data");


        if (accountRepository.findByEmail(user.getEmail()).isPresent())
            return false;

        String hashedPassword = hashPassword(user.getPassword());
        user.setPassword(hashedPassword);

        accountRepository.save(user);
        return true;
    }


    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public Optional<User> login(String email, String password) {
        Optional<User> user = accountRepository.findByEmail(email);
        if(user.isPresent()) {
            if(BCrypt.checkpw(password, user.get().getPassword())) {
                return user;
            }
        }
        return Optional.empty();

    }
}
