package com.example.wssserver.services;

import com.example.wssserver.data.tamplate.Template;
import com.example.wssserver.repositories.TemplateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TemplateService {
    @Autowired
    TemplateRepository templateRepository;

    public List<Template> findAll() {
        return templateRepository.findAll();
    }

    public Optional<Template> findById(Long id) {
        return templateRepository.findById(id);
    }

    public Template save(Template template) {
        template.setId(null);
        return templateRepository.save(template);
    }

    public Template saveCurrent(Template template) {
        return templateRepository.save(template);
    }

    public void deleteById(Long id) {
        templateRepository.deleteById(id);
    }
}
