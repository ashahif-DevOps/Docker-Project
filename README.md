# Shahif A - Full-Stack DevOps & Backend Java Developer Portfolio

## Project Overview

A full-stack portfolio website built with Angular, Spring Boot, and MySQL. The frontend displays your profile, experience, skills, projects, certifications, and achievements, while the backend exposes REST APIs and the contact form stores messages in the database.

![Portfolio Preview](./portfolio-website-screenshot.png)

## Tech stack
- Frontend: Angular 18 + TypeScript
- Backend: Java 17 + Spring Boot + Spring Data JPA
- Database: MySQL 8
- Container setup: Docker Compose

## Project structure
```text
portfolio/
├── backend/      Spring Boot API
├── frontend/     Angular app
├── database/     MySQL container setup and SQL seed files
├── docker-compose.yml
└── README.md
```

## Quick start with Docker (recommended)

This project is already set up to run with Docker Compose.

1. Make sure Docker Desktop or Docker Engine is running.
2. Create the local environment files that are ignored by Git:

   Backend environment file: backend/.env
   ```env
   SPRING_DATASOURCE_URL=jdbc:mysql://sql:3306/portfolio_db?allowPublicKeyRetrieval=true&useSSL=false
   SPRING_DATASOURCE_USERNAME=root
   SPRING_DATASOURCE_PASSWORD=your_mysql_password
   ```

   Database environment file: database/.env
   ```env
   MYSQL_ROOT_PASSWORD=your_mysql_password
   MYSQL_DATABASE=portfolio_db
   ```

   These files are intentionally not committed because they contain local secrets and machine-specific settings.

3. Start everything:
   ```bash
   docker compose up --build
   ```

4. Open the app:
   - Frontend: http://localhost:4200
   - Backend API: http://localhost:8080/api/profile
   - MySQL: localhost:3306

5. To stop the containers:
   ```bash
   docker compose down
   ```

   To remove the database volume as well:
   ```bash
   docker compose down -v
   ```

## Local development

### Backend
```bash
cd backend
mvn spring-boot:run
```

The API will be available at http://localhost:8080.

### Frontend
```bash
cd frontend
npm install
npm start
```

The Angular app will run at http://localhost:4200.

## API endpoints
| Method | Endpoint | Purpose |
|---|---|---|
| GET | /api/profile | Profile details |
| GET | /api/experience | Work experience |
| GET | /api/skills | Skills by category |
| GET | /api/projects | Project list |
| GET | /api/achievements | Achievements |
| GET | /api/certifications | Certifications |
| GET | /api/education | Education history |
| POST | /api/contact | Save a contact form message |

## Content and data
- The app uses SQL seed data to populate the portfolio content.
- If you update the seed data, restart the backend or rebuild the containers so the data is reloaded.
- The repository includes ignore files so local environment variables, dependencies, build output, and editor files do not get committed accidentally.

## Notes for contributors
- Create local .env files for backend and database settings. These are ignored by Git and should never be committed.
- If you are new to the project, do not worry about the ignore rules at first; just create the .env files listed above and the app will run normally.
- The root .gitignore and .dockerignore files are already set up for this project so local secrets, dependencies, build output, and editor files stay out of Git.
- For a more DevOps-friendly workflow, the project now uses Docker health checks, restart policies, and environment-based configuration so it is easier to run and maintain.

