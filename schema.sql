CREATE TABLE clients (
    client_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    company VARCHAR(150) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE leads (
    lead_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    company VARCHAR(150) NOT NULL,
    status VARCHAR(50) NOT NULL,
    source VARCHAR(50),
    notes TEXT
);

CREATE TABLE projects (
    project_id VARCHAR(10) PRIMARY KEY,
    client_id VARCHAR(10) NOT NULL,
    project_name VARCHAR(200) NOT NULL,
    project_type VARCHAR(100),
    status VARCHAR(50) NOT NULL,
    deadline DATE,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE interactions (
    interaction_id VARCHAR(10) PRIMARY KEY,
    lead_id VARCHAR(10) NOT NULL,
    interaction_date DATE NOT NULL,
    interaction_type VARCHAR(50),
    notes TEXT,
    FOREIGN KEY (lead_id) REFERENCES leads(lead_id)
);

INSERT INTO clients VALUES
('C001', 'Sarah Mitchell', 'sarah@example.com', 'TechFlow Solutions', 'USA'),
('C002', 'Raj Patel', 'raj@example.com', 'Nova Infotech', 'India'),
('C003', 'Elena Vargas', 'elena@example.com', 'Creativelab Agency', 'Spain'),
('C004', 'James Okonkwo', 'james@example.com', 'Apex Digital', 'Nigeria'),
('C005', 'Mei Lin Chen', 'mei@example.com', 'SmartScale Asia', 'Singapore'),
('C006', 'Lucas Ferreira', 'lucas@example.com', 'ContentBoost', 'Brazil');

INSERT INTO leads VALUES
('L001', 'Priya Sharma', 'GrowthHack Labs', 'Qualified', 'LinkedIn',
 'Interested in AI email automation'),
('L002', 'Marcus Webb', 'Webb Consulting', 'New', 'Referral',
 'Needs content repurposing system'),
('L003', 'Aisha Rahman', 'Horizon Media', 'Contacted', 'Instagram DM',
 'Looking for short-form video automation'),
('L004', 'Tom Hughes', 'BluePeak SaaS', 'Proposal Sent', 'Website Form',
 'Wants AI customer support system');

INSERT INTO projects VALUES
('P001', 'C001', 'AI Lead Qualification Bot', 'AI Automation', 'Active', '2026-11-15'),
('P002', 'C001', 'Weekly LinkedIn Content System', 'Content Creation', 'Completed', '2026-09-30'),
('P003', 'C002', 'WhatsApp + CRM Automation', 'AI Automation', 'Active', '2026-12-01'),
('P004', 'C003', 'AI-Powered Blog + Newsletter', 'Content + AI', 'On Hold', '2026-10-25'),
('P005', 'C004', 'Instagram Reels Automation Suite', 'Content Automation', 'Active', '2026-11-30'),
('P006', 'C005', 'Client Onboarding AI Agent', 'AI Automation', 'Proposal', '2026-10-20'),
('P007', 'C006', 'YouTube Script + Thumbnail Generator', 'Content + AI', 'Active', '2026-12-15');

INSERT INTO interactions VALUES
('I001', 'L001', '2026-10-01', 'LinkedIn',
 'Initial conversation about AI email automation'),
('I002', 'L001', '2026-10-03', 'Email',
 'Sent proposal details'),
('I003', 'L002', '2026-10-02', 'Referral',
 'Introduced through existing client'),
('I004', 'L003', '2026-10-04', 'Instagram DM',
 'Discussed video automation requirements'),
('I005', 'L003', '2026-10-06', 'Call',
 'Discussed estimated project scope'),
('I006', 'L004', '2026-10-05', 'Website Form',
 'Received customer support requirements'),
('I007', 'L004', '2026-10-07', 'Email',
 'Proposal sent');