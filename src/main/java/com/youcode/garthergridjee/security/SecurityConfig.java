package com.youcode.garthergridjee.security;

import jakarta.security.enterprise.authentication.mechanism.http.FormAuthenticationMechanismDefinition;
import jakarta.security.enterprise.authentication.mechanism.http.LoginToContinue;
import jakarta.security.enterprise.identitystore.DatabaseIdentityStoreDefinition;

@FormAuthenticationMechanismDefinition(
        loginToContinue = @LoginToContinue(
                loginPage = "/login.xhtml",
                errorPage = "/login.xhtml?error=true"
        )
)
@DatabaseIdentityStoreDefinition(
        dataSourceLookup = "java:comp/env/jdbc/persistencejakartaee.grather_grid",
        callerQuery = "SELECT password FROM users WHERE username = ?"
)
public class SecurityConfig {
}
