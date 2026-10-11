-- Freelancer CRM: SQL Practice Queries

-- 1. View all clients
SELECT *
FROM clients;

-- 2. Find clients in Brazil
SELECT name, email
FROM clients
WHERE country = 'Brazil'
ORDER BY name;

-- 3. Find completed projects
SELECT project_name, status
FROM projects
WHERE status = 'Completed'
ORDER BY project_name;

-- 4. Find new leads from referrals
SELECT name, company
FROM leads
WHERE source = 'Referral'
  AND status = 'New';

-- 5. Count all leads
SELECT COUNT(*)
FROM leads;

-- 6. Count active projects
SELECT COUNT(*)
FROM projects
WHERE status = 'Active';

-- 7. Count projects by status
SELECT status, COUNT(*)
FROM projects
GROUP BY status;

-- 8. Show only statuses with more than one project
SELECT status, COUNT(*)
FROM projects
GROUP BY status
HAVING COUNT(*) > 1;

-- 9. Display projects with their clients
SELECT p.project_name, c.name AS client_name
FROM projects p
JOIN clients c
    ON p.client_id = c.client_id;

-- 10. Display active projects and client companies
SELECT p.project_name, c.company
FROM projects p
JOIN clients c
    ON p.client_id = c.client_id
WHERE p.status = 'Active';