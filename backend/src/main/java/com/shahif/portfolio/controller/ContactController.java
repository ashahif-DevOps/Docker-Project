package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.ContactMessage;
import com.shahif.portfolio.repository.ContactMessageRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/contact")
public class ContactController {

    @Autowired
    private ContactMessageRepository contactMessageRepository;

    // POST /api/contact -> saves a message from your site's contact form into MySQL
    @PostMapping
    public ContactMessage submit(@Valid @RequestBody ContactMessage message) {
        return contactMessageRepository.save(message);
    }
}
