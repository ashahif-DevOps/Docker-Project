# Shahif A — Portfolio Website
Angular + Java (Spring Boot) + MySQL

Your resume content lives in MySQL, is served by a Spring Boot REST API,
and is rendered by an Angular front end. The contact form on the site
writes real rows into MySQL.

```
portfolio/
├── backend/     Spring Boot API (Java 17, Maven)
├── frontend/    Angular app
└── database/    Reference SQL schema (optional — see below)
```

## 1. Database (MySQL)

Install MySQL 8+ if you don't have it, then just start it — you do **not**
need to run any SQL by hand. On first launch, the backend will:
1. Create the `portfolio_db` database
2. Create all tables from the JPA entities
3. Load your resume content from `data.sql`

You only need to set your MySQL password in one file:

`backend/src/main/resources/application.properties`
```
spring.datasource.password=your_mysql_password
```

(`database/schema_reference.sql` is included only so you can see the table
shapes — it's not required.)

## 2. Backend (Spring Boot)

Requires Java 17+ and Maven.

```bash
cd backend
mvn spring-boot:run
```

Runs on **http://localhost:8080**. Test it: open
`http://localhost:8080/api/profile` in a browser — you should see your
profile JSON.

**Important — after the first successful run**, open
`application.properties` and change:
```
spring.sql.init.mode=always
```
to
```
spring.sql.init.mode=never
```
Otherwise `data.sql` re-inserts duplicate rows every time you restart.

### API endpoints
| Method | Endpoint | Purpose |
|---|---|---|
| GET | `/api/profile` | Name, title, summary, contact info |
| GET | `/api/experience` | Work history with bullets |
| GET | `/api/skills` | Skills grouped by category |
| GET | `/api/projects` | Projects list |
| GET | `/api/achievements` | Achievements list |
| GET | `/api/certifications` | Certifications list |
| GET | `/api/education` | Education history |
| POST | `/api/contact` | Save a contact form message |

## 3. Frontend (Angular)

Requires Node.js 18+ and the Angular CLI (`npm install -g @angular/cli`).

```bash
cd frontend
npm install
ng serve
```

Runs on **http://localhost:4200** and calls the backend at
`http://localhost:8080`. Make sure the backend is running first.

## Editing your content later

Right now, updates go through `backend/src/main/resources/data.sql`
(edit it, then temporarily set `spring.sql.init.mode=always` again and
restart). If you want to edit content live from the browser instead of
touching code, the next step would be a small admin page using the
`PUT`/`POST`/`DELETE` endpoints already built into the controllers —
just ask and I'll wire that up.

## Deploying for real

- **Frontend**: `ng build` → deploy the `dist/` folder to Vercel/Netlify
- **Backend**: deploy to Render/Railway (needs Java 17 runtime)
- **Database**: use a hosted MySQL (PlanetScale, Railway MySQL, AWS RDS)
- Update `baseUrl` in `frontend/src/app/services/portfolio.service.ts`
  to your deployed backend URL before building for production.
