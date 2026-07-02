package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.Certification;
import com.shahif.portfolio.repository.CertificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/certifications")
public class CertificationController {

    @Autowired
    private CertificationRepository certificationRepository;

    @GetMapping
    public List<Certification> getAll() {
        return certificationRepository.findAll();
    }
}
