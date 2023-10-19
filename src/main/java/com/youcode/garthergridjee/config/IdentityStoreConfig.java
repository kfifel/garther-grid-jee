package com.youcode.garthergridjee.config;

import com.youcode.garthergridjee.entities.Role;
import com.youcode.garthergridjee.security.authentication.AccountRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.security.enterprise.credential.Credential;
import jakarta.security.enterprise.credential.UsernamePasswordCredential;
import jakarta.security.enterprise.identitystore.CredentialValidationResult;
import jakarta.security.enterprise.identitystore.IdentityStore;
import com.youcode.garthergridjee.entities.User;
import com.youcode.garthergridjee.utils.PasswordHashUtil;

import java.util.HashSet;
import java.util.Optional;
import java.util.stream.Collectors;

@ApplicationScoped
public class IdentityStoreConfig implements IdentityStore {
    @Inject
    private PasswordHashUtil pwdUtil;
    @Inject
    private AccountRepository userRepository;

    @Override
    public CredentialValidationResult validate(Credential credential) {
        UsernamePasswordCredential passwordCredential = (UsernamePasswordCredential) credential;
        Optional<User> optionalUser = userRepository.findByUsername(passwordCredential.getCaller());
        if(optionalUser.isEmpty())
            return CredentialValidationResult.INVALID_RESULT;
        else {
            User user = optionalUser.get();
            System.out.println("user: " + user);
            System.out.println("credential: " + passwordCredential.getCaller() + " " + passwordCredential.getPasswordAsString());
            if (passwordCredential.compareTo(user.getEmail(), user.getPassword())) {
                return new CredentialValidationResult(
                        user.getEmail(),
                        new HashSet<>(user.getRoles().stream().map(Role::getName).collect(Collectors.toSet()))
                );
            }
        }
        return CredentialValidationResult.INVALID_RESULT;
    }


}