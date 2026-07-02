package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.Education;
import com.shahif.portfolio.repository.EducationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/education")
public class EducationController {

    @Autowired
    private EducationRepository educationRepository;

    @GetMapping
    public List<Education> getAll() {
        return educationRepository.findAll();
    }
}
