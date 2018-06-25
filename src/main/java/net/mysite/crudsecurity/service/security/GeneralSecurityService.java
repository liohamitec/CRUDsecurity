package net.mysite.crudsecurity.service.security;

public interface GeneralSecurityService {
    String findLoggedInUsername();
    void autoLogin(String username, String password);
}
