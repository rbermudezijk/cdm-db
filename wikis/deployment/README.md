# Database deployment

## Abstract

There are several ways to take action over deployment requirement. Firstly, we are getting started with database software requirements and finally we can see what options ara available to reach this goal. 

## 1. Software Requirements

In the follow steps we are suggest to use MariaDB software, but clearly there is a MySQL version that can be use too:

 - MariaDB 10.*
 - or MySQL >= 5.6

## 2. Local deployment

### 2.1 Local database server

Firstly, if you want take this option you will need install MariaDB version compatible with your our own system version.

 - [Installation packages - All releases](https://downloads.mariadb.org/mariadb/+releases/)
 - [Windows - Installing MariaDB MSI Packages on Windows](https://mariadb.com/kb/en/installing-mariadb-msi-packages-on-windows/)
 - [MacOS - Installing MariaDB on Mac OS X with Homebrew](https://mariadb.com/resources/blog/installing-mariadb-10-1-16-on-mac-os-x-with-homebrew/)
 - [OpenSUSE - Install MariaDB with zypper](https://mariadb.com/kb/en/installing-mariadb-with-zypper/)
 - [Linux - Setting up MariaDB Repositories](https://downloads.mariadb.org/mariadb/repositories/#distro=Fedora&distro_release=fedora31-amd64--fedora31&mirror=digitalocean-sgp&version=10.4)

### 2.2 Load CLAROPAY schema

In order to load the database schema over local MariaDB server, must be run the schema scripts located into [schema folder](./../../code/schema/) using the right order:

  1. Run [claropay.sql](./../../code/schema/claropay.sql) script. This script contents the statements to create the CLAROPAY schema and set the default user with permissions to use it.
  2. Run [claropay.l(\[0-9\]+).sql](./../../code/schema/) scripts. Run this scripts in _ascending_ order taking by reference the _number index_ after "claropay.l" character string (the scripts with the same index can be run at any order), starting the lowest index scripts (generaly _zero_) and ending the hightest index scripts.

Note: If you have an UNIX environment then you can use the [build script](./../../code/schema/build.sh) that generates an SQL script with all statements in the right order to create the CLAROPAY schema. Run it over [schema folder](./../../code/schema/).

```bash
# Give run permissions to build shell script.
chmod +x build.sh
# Run it.
./build.sh
```

## 3. Docker

If you want to use Docker to generate your own image/container, a Dockerfile is available to build a MariaDB image with CLAROPAY schema loaded by default. 

### 3.1 Install Docker

Some installation guides are available in the follow links:
 - [Docker for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
 - [Docker for Fedora](https://docs.docker.com/install/linux/docker-ce/fedora/)
 - [Docker for Debian](https://docs.docker.com/install/linux/docker-ce/debian/)
 - [Docker for CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)
 - [Docker for OpenSUSE](https://en.opensuse.org/SDB:Docker)
 - [Docker for Windows](https://docs.docker.com/docker-for-windows/install/)
 - [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

### 3.2 Create an image

Once you have Docker software on your computer, open a terminal and run the follow commands over [schema folder](./../../code/schema/):

```bash
#Build image
docker build -t <image-name> .

#Run ephimeral container
docker run -it --rm -p 3306:3306 <image-name>
```

## 4. Production deployment

There are several cloud options to make a production deployment, In AWS it's recommended use the AWS Aurora with database replicas distribution across of different availability zones (into private subnets). Two tutorials are recommended to take this aproach:

 - [Working with VPCs and Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-vpcs.html)
 - [Amazon Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.AuroraMySQL.html)

## Author

 - Name: Ricardo Bermúdez Bermúdez
 - E-mail:       ricardob.sistemas@gmail.com
 - Mobile phone: 5548879549
 - Job title:    Senior Full Stack Software Engineer