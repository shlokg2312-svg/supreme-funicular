\# Freelancer CRM — Data Model



\## 1. Clients

Stores information about existing clients.



| Field | Type | Purpose |

|---|---|---|

| client\_id | VARCHAR(10) | Primary key; unique client ID |

| name | VARCHAR(100) | Client name |

| email | VARCHAR(150) | Client email |

| company | VARCHAR(150) | Company name |

| country | VARCHAR(100) | Country |



\## 2. Leads

Stores potential clients and lead details.



| Field | Type | Purpose |

|---|---|---|

| lead\_id | VARCHAR(10) | Primary key; unique lead ID |

| name | VARCHAR(100) | Lead name |

| company | VARCHAR(150) | Company name |

| status | VARCHAR(50) | Lead stage |

| source | VARCHAR(50) | Where the lead came from |

| notes | TEXT | Additional information |



\## 3. Projects

Stores projects associated with existing clients.



| Field | Type | Purpose |

|---|---|---|

| project\_id | VARCHAR(10) | Primary key; unique project ID |

| client\_id | VARCHAR(10) | Foreign key referencing clients |

| project\_name | VARCHAR(200) | Project name |

| project\_type | VARCHAR(100) | Type of project |

| status | VARCHAR(50) | Project stage |

| deadline | DATE | Expected completion date |



\## 4. Interactions

Stores communication records associated with leads.



| Field | Type | Purpose |

|---|---|---|

| interaction\_id | VARCHAR(10) | Primary key; unique interaction ID |

| lead\_id | VARCHAR(10) | Foreign key referencing leads |

| interaction\_date | DATE | Date of interaction |

| interaction\_type | VARCHAR(50) | Email, call, meeting, etc. |

| notes | TEXT | What happened |



\## Relationships

\- One client can have many projects.

\- One lead can have many interactions.



\## Foreign Keys

\- projects.client\_id → clients.client\_id

\- interactions.lead\_id → leads.lead\_id

