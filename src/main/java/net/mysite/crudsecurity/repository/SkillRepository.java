package net.mysite.crudsecurity.repository;

import net.mysite.crudsecurity.model.Skill;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SkillRepository extends JpaRepository<Skill,Long> {
}
