```bash
sudo apt update
sudo apt install postgresql postgresql-contrib libpq-dev

sudo service postgresql start

sudo -u postgres createuser --interactive --pwprompt

# Enter name of role to add: <your_unix_user_name>
# Enter password for new role: <leave_as_empty>
# Enter it again: <leave_as_empty>
# Shall the new role be a superuser? (y/n) y
# NOTICE:  empty string is not a valid password, clearing password
```

To confirm that the new user has been created you can enter the psql console. For doing that enter the command:

```bash
psql postgres
```

psql postgres
You should see the PSQL console now. Here you can type the command `\du` to list the available roles. The role you just created should be visible on the table. You can exit from the psql terminal by entering `\q`.
