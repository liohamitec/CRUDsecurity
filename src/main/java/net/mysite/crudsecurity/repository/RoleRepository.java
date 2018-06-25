package net.mysite.crudsecurity.repository;

import net.mysite.crudsecurity.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role,Long> {
}
