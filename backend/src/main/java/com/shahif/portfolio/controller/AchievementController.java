package com.shahif.portfolio.controller;

import com.shahif.portfolio.model.Achievement;
import com.shahif.portfolio.repository.AchievementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/achievements")
public class AchievementController {

    @Autowired
    private AchievementRepository achievementRepository;

    @GetMapping
    public List<Achievement> getAll() {
        return achievementRepository.findAll();
    }
}
