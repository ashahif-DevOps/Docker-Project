package com.shahif.portfolio.repository;

import com.shahif.portfolio.model.Education;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EducationRepository extends JpaRepository<Education, Long> {
}
