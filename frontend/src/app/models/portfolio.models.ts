export interface Profile {
  id: number;
  fullName: string;
  title: string;
  location: string;
  phone: string;
  email: string;
  linkedinUrl: string;
  summary: string;
}

export interface Experience {
  id: number;
  company: string;
  role: string;
  startDate: string;
  endDate: string;
  bullets: string[];
}

export interface Skill {
  id: number;
  category: string;
  items: string;
}

export interface Project {
  id: number;
  title: string;
  techStack: string;
  description: string;
}

export interface Achievement {
  id: number;
  description: string;
}

export interface Certification {
  id: number;
  name: string;
  issuer: string;
  issuedDate: string;
}

export interface Education {
  id: number;
  degree: string;
  institution: string;
  duration: string;
  cgpa: string;
}

export interface ContactMessage {
  name: string;
  email: string;
  message: string;
}
