package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.Profile;
import com.shahif.portfolio.repository.ProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/profile")
public class ProfileController {

    @Autowired
    private ProfileRepository profileRepository;

    // GET /api/profile -> returns the single profile record
    @GetMapping
    public Profile getProfile() {
        List<Profile> all = profileRepository.findAll();
        return all.isEmpty() ? null : all.get(0);
    }

    // PUT /api/profile/{id} -> update profile (for an admin edit screen later)
    @PutMapping("/{id}")
    public Profile updateProfile(@PathVariable Long id, @RequestBody Profile updated) {
        updated.setId(id);
        return profileRepository.save(updated);
    }
}
