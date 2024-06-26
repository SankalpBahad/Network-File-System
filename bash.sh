#!/bin/bash

# Compile StorageServerModule
gcc ./code/SS1.c -pthread -o server

# Compile NamingServerModule
gcc ./code/Naming_server.c -pthread -o naming-server

# Compile clientfunctions
gcc ./code/client.c -o client

# Provide execution permissions to the compiled binaries
chmod +x server naming-server client
