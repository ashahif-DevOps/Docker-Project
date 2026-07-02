import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PortfolioService } from './services/portfolio.service';
import {
  Profile, Experience, Skill, Project,
  Achievement, Certification, Education
} from './models/portfolio.models';
import { ContactFormComponent } from './components/contact/contact-form.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, ContactFormComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent implements OnInit {
  profile?: Profile;
  experience: Experience[] = [];
  skills: Skill[] = [];
  projects: Project[] = [];
  achievements: Achievement[] = [];
  certifications: Certification[] = [];
  education: Education[] = [];
  loadError = false;

  constructor(private portfolioService: PortfolioService) {}

  ngOnInit(): void {
    this.portfolioService.getProfile().subscribe({
      next: (data) => this.profile = data,
      error: () => this.loadError = true
    });
    this.portfolioService.getExperience().subscribe(data => this.experience = data);
    this.portfolioService.getSkills().subscribe(data => this.skills = data);
    this.portfolioService.getProjects().subscribe(data => this.projects = data);
    this.portfolioService.getAchievements().subscribe(data => this.achievements = data);
    this.portfolioService.getCertifications().subscribe(data => this.certifications = data);
    this.portfolioService.getEducation().subscribe(data => this.education = data);
  }
}
