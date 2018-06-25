package net.mysite.crudsecurity.service.security;

import net.mysite.crudsecurity.model.User;

public interface UserService {
    void save(User user);
    User findByUsername(String username);
}
