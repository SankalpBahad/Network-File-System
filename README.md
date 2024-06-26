# Network File System (NFS)

## Introduction

This project aims to implement a simple yet robust Network File System (NFS) from scratch using C programming language and TCP sockets. The NFS allows clients to seamlessly access and manage files and directories stored across multiple storage servers within a network.

## Getting Started
Follow these steps to set up and run the Network File System:

    Clone the repository: git clone https://github.com/SankalpBahad/Network-File-System.git

    Navigate to the project directory: cd network-file-system

    Run the bash file: ./bash.sh    

This will create 3 executable files. Run those executable in your desired files.

    Run the Naming Server: ./naming-server

    Run one or more Storage Servers: ./server

    Run the Client: ./client

## Dependencies

C programming language

POSIX C library

## Features

1. Client Interface: Clients can perform various file operations such as reading, writing, creating, deleting, and listing files/folders.

2. Naming Server: A central server that manages the directory structure and maintains essential information about file locations.

3. Storage Servers: Multiple servers responsible for physically storing and retrieving files and folders.

## Functionalities

1. Concurrent Access: Support for multiple concurrent clients accessing the NFS simultaneously.

2. Error Handling: Well-defined error codes for effective communication of issues between clients and the NFS.

3. Efficient Search: Optimized search algorithms (e.g., Tries, Hashmaps) for fast lookup of files/folders.

4. Caching: Least Recently Used (LRU) caching for improved response times.

5. Redundancy and Replication: Fault-tolerant data storage through replication across multiple storage servers.

6. Logging and Monitoring: Comprehensive logging and message display for debugging and monitoring purposes.

## Acknowledgments

Course instructors and teaching assistants for providing the project description and guidance.

## Assumptions we've made:

1. Files that are created should not have dots in the name of the file, and the name of the file should be in Lower case.

2. If the file is empty, the data read will be "STOP" ( for ACK ).

3. Once a file is created and any of the Read, Write, or Get info operations are performed on it, It'll get added to the LRU array.
    
4. Even though the file gets deleted, it'll remain in the LRU array but the data read will be nothing.

5. While writing into a file, no spaces should be present.

6. Multiple writers can enter a file, but the data will only be written by the first one to write. If a tie occurs, the first one to 
initialize data will be written. If multiple readers try to access a file, all of them can connect to the same port simultaneously. But a reader       can't access it if another is reading.

7. If a server crashes in between it should be restarted at the same port otherwise, NM should be started again.

8. For the Copy operation, the two file names should be given in their absolute paths and the destination file name should have 
the file name ( not the location only ).

9. All the changes are reflected on the current Storage server.

## Error codes for the mentioned scenarios:

    ERROR_OPENING_FILE: 101

    ERROR_CREATING_FILE: 102

    ERROR_DELETING_FILE: 103

    FILE_ALREADY_EXISTS: 104

    ERROR_GETTING_FILE_INFO: 105

    FILE_NOT_FOUND: 106
