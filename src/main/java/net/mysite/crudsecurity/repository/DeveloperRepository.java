package net.mysite.crudsecurity.repository;

import net.mysite.crudsecurity.model.Developer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeveloperRepository extends JpaRepository<Developer,Long> {
}
