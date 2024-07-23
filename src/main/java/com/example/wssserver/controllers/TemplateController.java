package com.example.wssserver.controllers;

import com.example.wssserver.data.tamplate.Template;
import com.example.wssserver.services.DevicesService;
import com.example.wssserver.services.TemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/templates")
public class TemplateController {
    @Autowired
    TemplateService templateService;
    @Autowired
    DevicesService devicesService;

    @GetMapping
    public List<Template> getAllTemplates() {
        return templateService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Template> getTemplateById(@PathVariable Long id) {
        Optional<Template> template = templateService.findById(id);
        return template.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Template addTemplate(@RequestBody Template template) {
        return templateService.save(template);
    }

    //В put будет прописано также взаимодействие с устройствами
    @PutMapping("/{id}")
    public ResponseEntity<Template> updateTemplate(@PathVariable Long id, @RequestBody Template newTemplate) {
        Optional<Template> template = templateService.findById(id);
        if (template.isPresent()) {
            Template updatedTemplate = template.get();
            updatedTemplate.setScene(newTemplate.getScene());

            updatedTemplate.setTime(newTemplate.getTime());

            updatedTemplate.setVideo(newTemplate.getVideo());

            updatedTemplate.setVoice(newTemplate.getVoice());

            updatedTemplate.setWeather(newTemplate.getWeather());

            return ResponseEntity.ok(templateService.save(updatedTemplate));
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTemplate(@PathVariable Long id) {
        if (templateService.findById(id).isPresent()) {
            templateService.deleteById(id);
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

}
