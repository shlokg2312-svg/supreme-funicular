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
            cursor.execute(
                "SELECT name, company FROM clients ORDER BY name;"
            )

            for name, company in cursor.fetchall():
                print(f"{name} — {company}")

    print("\nDatabase connection successful!")

except psycopg.Error as error:
    print(f"Database error: {error}")