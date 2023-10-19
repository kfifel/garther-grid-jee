package com.youcode.garthergridjee.utils;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.security.enterprise.identitystore.PasswordHash;
import org.mindrot.jbcrypt.BCrypt;

import java.util.Arrays;

@ApplicationScoped
public class PasswordHashUtil implements PasswordHash {

    @Override
    public String generate(char[] chars) {
        return BCrypt.hashpw(String.valueOf(chars), BCrypt.gensalt());
    }

    @Override
    public boolean verify(char[] chars, String s) {
        return BCrypt.checkpw(Arrays.toString(chars), s);
    }
}
