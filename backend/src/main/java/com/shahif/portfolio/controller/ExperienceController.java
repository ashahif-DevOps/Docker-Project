package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.Experience;
import com.shahif.portfolio.repository.ExperienceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/experience")
public class ExperienceController {

    @Autowired
    private ExperienceRepository experienceRepository;

    @GetMapping
    public List<Experience> getAll() {
        return experienceRepository.findAll();
    }

    @PostMapping
    public Experience create(@RequestBody Experience experience) {
        return experienceRepository.save(experience);
    }

    @PutMapping("/{id}")
    public Experience update(@PathVariable Long id, @RequestBody Experience updated) {
        updated.setId(id);
        return experienceRepository.save(updated);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        experienceRepository.deleteById(id);
    }
}
