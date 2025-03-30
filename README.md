# Starbound server without steam
A starbound server which doesn't use Steam

## Requirements
- A copy of Starbound for linux
- Docker
- Dockge

## Install
1. Go to your Starbound linux installation folder and copy everthing under **[install_dir]/game/** into the sb/ folder of this repo.
2. Execute: `docker build -t starbound .` to build the Docker image

## Run
3a. Launch `docker run -d -p 21025:21025/tcp starbound`. (ports option is here if different port is needed. Just change the first one.)
3b. Better yet, paste this run command into Dockge and click *Convert to Compose* then create a Stack from it.

## Server Config
4. Start the stack (Dockge) or container, then stop it after it has completed initialization
5. Edit the starbound_server.config file in the mapped volume directory (directory mapped to /app/storage in the container)

## Troubleshotting
### Connection refused!
Check the ports. Even localhost needs open ports in router.

### start.sh aborted!
If you encounter this error in the logs:
```
starbound-server  | start.sh: line 7:     7 Aborted                 (core dumped) ./starbound_server $@
```
It could be for any or all of the following reasons:
* The start.sh file (or other executable) doesn't have execute permissions.  
* Ensure the volume mount points have write permissions on them.


```
chmod 755 start.sh
```


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




