# automata
This is a collection of Helpful Scipts for public consumption! 

# Cockpit Installer for CentOS 
Run the below on your CentOS machine:
Cockpit is a web-based graphical interface for servers, intended for everyone, especially those who are:
- New to Linux (including Windows admins)
- Familiar with Linux and want an easy, graphical way to administer servers 
- Expert admins who mainly use other tools but want an overview on individual systems 

More at https://cockpit-project.org/

```
wget -c https://raw.githubusercontent.com/nxsbi/automata/main/cockpit_setup.sh
chmod +x ./cockpit_setup.sh
./cockpit_setup.sh
```

When prompted type, y/Y <Enter>

Once completed, you can access the Cockpit on port 9090 of your machine's IP (path should get displayed at the end)
  
