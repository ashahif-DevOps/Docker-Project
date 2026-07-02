package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.Skill;
import com.shahif.portfolio.repository.SkillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skills")
public class SkillController {

    @Autowired
    private SkillRepository skillRepository;

    @GetMapping
    public List<Skill> getAll() {
        return skillRepository.findAll();
    }

    @PostMapping
    public Skill create(@RequestBody Skill skill) {
        return skillRepository.save(skill);
    }

    @PutMapping("/{id}")
    public Skill update(@PathVariable Long id, @RequestBody Skill updated) {
        updated.setId(id);
        return skillRepository.save(updated);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        skillRepository.deleteById(id);
    }
}
