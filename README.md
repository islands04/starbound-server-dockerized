# Starbound server without steam
A starbound server which doesn't use Steam

## Requirements
- A copy of Starbound for linux
- Docker
- Dockge

## Install
- Go to your Starbound linux installation folder and copy everthing under **[install_dir]/game/** into the sb/ folder of this repo.
- Edit the folders in there like a normal server. (edit config files, add mods, etc)
- Launch `docker build -t starbound .` 

## Run
- Launch `docker run -d -p 21025:21025/tcp starbound`. (ports option is here if different port is needed. Just change the first one.)
- Better yet, paste this run command into Dockge and click *Convert to Compose* then create a Stack from it.

## Troubleshotting
### Connection refused!
Check the ports. Even localhost needs open ports in router.

### Override thing?
Check the box "allow assets mismatch" in your game's options

### Be admin of server?
Just check `starbound_server.config` at the empty `serverUsers` object and add something like this:
```
"serverUsers" : {
    "username" : {
        "admin" : true,
        "password" : "userpassword"
    }
},
```


# Starbound

This is a docker image of the dedicated server for Starbound, from GOG

* [ http://playstarbound.com/ ]
* [ https://www.gog.com/en/game/starbound ]




