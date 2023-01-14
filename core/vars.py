import os
import psycopg2

psql_username = os.environ.get('POSTGRES_USERNAME')
psql_password = os.environ.get('POSTGRES_PASSWORD')
psql_address = os.environ.get('POSTGRES_ADDRESS')
psql_port = os.environ.get('POSTGRESS_ADDRESS')

retention_time = os.environ.get('RETENTION_TIME')

def db_connect(database):
    c = psycopg2.connect(database=database, user=psql_username, password=psql_password, host=psql_address, port=psql_port)
    cur = c.cursor()
    return c, cur