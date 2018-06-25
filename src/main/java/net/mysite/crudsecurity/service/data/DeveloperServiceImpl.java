package net.mysite.crudsecurity.service.data;

import net.mysite.crudsecurity.model.Developer;
import net.mysite.crudsecurity.repository.DeveloperRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class DeveloperServiceImpl implements DeveloperService {
    @Autowired
    private DeveloperRepository developerRepository;

    @Override
    public void add(Developer developer) {
        developerRepository.save(developer);
    }

    @Override
    public void remove(Long id) {
        developerRepository.delete(id);
    }

    @Override
    public void update(Developer developer) {
        developerRepository.save(developer);
    }

    @Override
    public Developer getById(Long id) {
        return developerRepository.getOne(id);
    }

    @Override
    public Collection<Developer> getAll() {
        return developerRepository.findAll();
    }
}
