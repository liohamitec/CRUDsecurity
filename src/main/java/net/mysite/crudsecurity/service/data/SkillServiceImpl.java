package net.mysite.crudsecurity.service.data;

import net.mysite.crudsecurity.model.Skill;
import net.mysite.crudsecurity.repository.SkillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class SkillServiceImpl implements SkillService {
    @Autowired
    private SkillRepository skillRepository;

    @Override
    public void add(Skill skill) {
        skillRepository.save(skill);
    }

    @Override
    public void remove(Long id) {
        skillRepository.delete(id);
    }

    @Override
    public void update(Skill skill) {
        skillRepository.save(skill);
    }

    @Override
    public Skill getById(Long id) {
        return skillRepository.getOne(id);
    }

    @Override
    public Collection<Skill> getAll() {
        return skillRepository.findAll();
    }
}
