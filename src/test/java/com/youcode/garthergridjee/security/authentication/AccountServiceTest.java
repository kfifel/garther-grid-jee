package com.youcode.garthergridjee.security.authentication;

import com.youcode.garthergridjee.entities.User;
import com.youcode.garthergridjee.repository.UserRepository;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mindrot.jbcrypt.BCrypt;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.lenient;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class AccountServiceTest {

    @Mock
    AccountRepository accountRepository;
    AccountService accountService;

    @BeforeEach
    void setUp() {
        accountService = new AccountService(accountRepository);
    }

    @Test
    void testIfLoginWorks() {
        User user = User.builder()
                .id(1L)
                .username("testuser")
                .password(BCrypt.hashpw("testpassword", BCrypt.gensalt()))
                .email("test@example.com")
                .build();

        when(accountRepository.findByEmail("test@example.com")).thenReturn(Optional.of(user));

        Optional<User> result = accountService.login("test@example.com", "testpassword");
        assertEquals(Optional.of(user), result);
    }
    @Test
    void should_accept_user_email_has_white_space_in_the_end_and_start_should_connect() {
        User user = User.builder()
                .id(1L)
                .username("testuser")
                .password(BCrypt.hashpw("testpassword", BCrypt.gensalt()))
                .email("test@example.com")
                .build();

        when(accountRepository.findByEmail("test@example.com")).thenReturn(Optional.of(user));

        Optional<User> result = accountService.login("    test@example.com   ", "testpassword");
        assertEquals(Optional.of(user), result);
    }


}