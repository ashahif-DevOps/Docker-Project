-- =====================================================================
-- Seed data generated from Shahif_A_Resume_ATS.docx
-- Runs automatically on app startup (spring.sql.init.mode=always)
-- =====================================================================

-- ---------- PROFILE ----------
INSERT INTO profile (full_name, title, location, phone, email, linkedin_url, summary) VALUES
('Shahif A',
 'DevOps Engineer | Backend Java Developer - 3+ Years Experience',
 'Bangalore, Karnataka',
 '+91 6384061578',
 'ashahifj2108@gmail.com',
 'linkedin.com/in/shahif-a-22b859341',
 'Results-driven DevOps and Cloud Engineer with 3+ years of experience at Genpact, combining backend Java and Spring Boot development with hands-on Amazon Web Services (AWS) and Microsoft Azure infrastructure engineering. Proven track record reducing production failure rates from 3.5% to 0.013% through proactive monitoring, and building end-to-end CI/CD pipelines using Jenkins and GitHub Actions, Infrastructure as Code (IaC) using Terraform and Ansible, and full-stack observability using Prometheus, Grafana, and Azure Application Insights. Skilled in Docker and Kubernetes containerization, automated file transfer workflows, root cause analysis, and cross-functional collaboration. Seeking a DevOps Engineer, Cloud Engineer, or Site Reliability Engineer role to drive reliability, automation, and scalable cloud architecture.');

-- ---------- SKILLS ----------
INSERT INTO skill (category, items) VALUES
('Cloud Platforms', 'Amazon Web Services (AWS), Microsoft Azure'),
('Scripting Languages', 'Shell Scripting, Bash'),
('Operating Systems', 'Ubuntu, Linux'),
('Version Control and Tools', 'Git, Postman, ServiceNow (ITIL)'),
('Infrastructure as Code', 'Terraform, Ansible'),
('CI/CD Tools', 'Jenkins, GitHub Actions, Azure DevOps Pipelines'),
('Containerization and Orchestration', 'Docker, Kubernetes'),
('Monitoring and Observability', 'Prometheus, Grafana, Azure Application Insights'),
('Programming and Frameworks', 'Java, Spring Boot'),
('Methodologies', 'Agile, Root Cause Analysis, Team Leadership, Client Communication');

-- ---------- EXPERIENCE ----------
INSERT INTO experience (id, company, role, start_date, end_date) VALUES
(1, 'Genpact, India', 'Technical Associate - Backend Java Developer and DevOps Engineer', 'September 2023', 'Present'),
(2, 'Genpact, India', 'Backend Java Developer Intern', 'June 2023', 'August 2023');

INSERT INTO experience_bullets (experience_id, bullet, bullet_order) VALUES
(1, 'Reduced production failure rates from 3.5% to 0.013%, earning the APS Bronze Cheers Award, by designing real-time monitoring and alerting for file transfer status and enabling proactive issue detection through live dashboards.', 0),
(1, 'Built and maintained CI/CD pipelines in Jenkins and GitHub Actions, automating build, test, and deployment processes across QA and production environments and shortening release cycles.', 1),
(1, 'Automated infrastructure provisioning and configuration management using Terraform and Ansible playbooks, reducing manual server setup effort and standardizing environments.', 2),
(1, 'Containerized applications using Docker and orchestrated workloads with Kubernetes, ensuring consistent, portable deployment environments and reducing environment-related incidents.', 3),
(1, 'Implemented full-stack observability using Prometheus and Grafana plus Azure Application Insights, reducing system downtime through real-time issue detection and performance tracking.', 4),
(1, 'Engineered automated file transfer workflows with scheduled job scripts running at 5-minute intervals, adding error handling, monitoring, and retry logic to improve reliability between remote and application servers.', 5),
(1, 'Resolved and managed application issues using ServiceNow (ITIL), ensuring SLA compliance and delivering comprehensive Root Cause Analysis (RCA) reports with preventive strategies for clients.', 6),
(1, 'Remediated security vulnerabilities identified through EVM Qualys scans, performing secure code fixes and maintaining compliance with security standards; earned client appreciation for reducing vulnerabilities across multiple production applications.', 7),
(1, 'Administered Ubuntu and Linux production servers, analyzing logs and system performance to proactively identify issues and enhance stability; recognized by clients for resolving critical SFTP failures following a server patching update.', 8),
(1, 'Managed Azure DevOps work items for bug fixes and enhancements, and conducted thorough QA testing to ensure code quality prior to production releases.', 9),
(2, 'Developed and tested Spring Boot REST APIs, contributing to core application features.', 0),
(2, 'Supported deployment activities and bug fixes on Azure DevOps, gaining hands-on CI/CD experience.', 1),
(2, 'Participated in QA testing cycles, collaborating with senior developers for timely defect resolution.', 2);

-- ---------- PROJECTS ----------
INSERT INTO project (title, tech_stack, description) VALUES
('CI/CD Pipeline Automation for Deployment', 'Jenkins, GitHub Actions, Docker, Kubernetes, AWS', 'Built automated build, test, and deploy pipelines with containerized delivery to reduce release time and manual intervention.'),
('Infrastructure as Code for AWS Cloud Environment', 'Terraform, Ansible, AWS EC2, VPC, S3, IAM', 'Provisioned and version-controlled repeatable cloud infrastructure, eliminating manual configuration drift.'),
('Monitoring and Observability Stack for Workloads', 'Prometheus, Grafana, Docker, Shell Scripting', 'Designed real-time dashboards and alerting for infrastructure and application health.');

-- ---------- ACHIEVEMENTS ----------
INSERT INTO achievement (description) VALUES
('APS Bronze Cheers Award: reduced failure counts from 3.5% to 0.013% through real-time monitoring and live dashboard tracking of file transfer status.'),
('Earned client appreciation for reducing vulnerabilities across multiple production applications.'),
('Received client recognition for resolving critical SFTP issues following a server update during patching activities.');

-- ---------- EDUCATION ----------
INSERT INTO education (degree, institution, duration, cgpa) VALUES
('Bachelor of Engineering', 'Kongu Engineering College, Anna University, Perundurai, Tamil Nadu', '2019 - 2022', '7.9');

-- ---------- CERTIFICATIONS ----------
INSERT INTO certification (name, issuer, issued_date) VALUES
('AWS Solutions Architect - Associate', 'AWS', 'January 2026'),
('AWS Certified Cloud Practitioner', 'AWS', 'January 2023'),
('AWS and DevOps Training', 'Greens Technology, Chennai', 'June 2022');
