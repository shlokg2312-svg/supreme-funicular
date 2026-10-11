import getpass
import psycopg

password = getpass.getpass("PostgreSQL password: ")

try:
    with psycopg.connect(
        host="localhost",
        port=5432,
        dbname="freelancer_crm",
        user="postgres",
        password=password,
    ) as conn:
        with conn.cursor() as cursor:
            cursor.execute("""
                SELECT p.project_name, c.company
                FROM projects p
                JOIN clients c
                    ON p.client_id = c.client_id
                WHERE p.status = 'Active';
            """)

            for project_name, company in cursor.fetchall():
                print(f"{project_name} — {company}")

    print("\nDatabase connection successful!")

except psycopg.Error as error:
    print(f"Database error: {error}")