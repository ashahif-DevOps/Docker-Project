import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import {
  Profile, Experience, Skill, Project,
  Achievement, Certification, Education, ContactMessage
} from '../models/portfolio.models';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class PortfolioService {
  // Points at the Spring Boot backend via environment configuration
  private baseUrl = environment.apiUrl;

  constructor(private http: HttpClient) {}

  getProfile(): Observable<Profile> {
    return this.http.get<Profile>(`${this.baseUrl}/profile`);
  }

  getExperience(): Observable<Experience[]> {
    return this.http.get<Experience[]>(`${this.baseUrl}/experience`);
  }

  getSkills(): Observable<Skill[]> {
    return this.http.get<Skill[]>(`${this.baseUrl}/skills`);
  }

  getProjects(): Observable<Project[]> {
    return this.http.get<Project[]>(`${this.baseUrl}/projects`);
  }

  getAchievements(): Observable<Achievement[]> {
    return this.http.get<Achievement[]>(`${this.baseUrl}/achievements`);
  }

  getCertifications(): Observable<Certification[]> {
    return this.http.get<Certification[]>(`${this.baseUrl}/certifications`);
  }

  getEducation(): Observable<Education[]> {
    return this.http.get<Education[]>(`${this.baseUrl}/education`);
  }

  submitContact(message: ContactMessage): Observable<ContactMessage> {
    return this.http.post<ContactMessage>(`${this.baseUrl}/contact`, message);
  }
}
