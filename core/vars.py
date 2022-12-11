import os
import psycopg2

psql_username = os.environ.get('POSTGRES_USERNAME')
psql_password = os.environ.get('POSTGRES_PASSWORD')
psql_address = os.environ.get('POSTGRES_ADDRESS')
psql_port = os.environ.get('POSTGRESS_ADDRESS')

retention_time = os.environ.get('RETENTION_TIME')
retention_targets =

c = psycopg2.connect(database=psql_db_signals, user=psql_user, password=psql_pass, host=psql_ip, port=psql_port)
cur = c.cursor()