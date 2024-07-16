# INCEPTION

## what is docker


Docker is an open-source platform that allows developers to quickly build, deploy and manage applications. It achieves this by using a concept called containers.

Imagine a container like a shipping container. It packages up everything an application needs to run, including its code, libraries, system tools, and settings. This makes applications self-contained and portable, meaning they can run on any system with Docker installed, regardless of the underlying operating system.


Docker is an open-source platform that allows developers to quickly build, deploy and manage applications. It achieves this by using a concept called containers.

Imagine a container like a shipping container. It packages up everything an application needs to run, including its code, libraries, system tools, and settings. This makes applications self-contained and portable, meaning they can run on any system with Docker installed, regardless of the underlying operating system.

Here's a breakdown of what Docker offers:

- **Standardized units called containers:** These containers isolate your application from the rest of the system, ensuring it runs consistently wherever you deploy it.
- **Faster development:** By packaging everything together, developers can quickly spin up new environments and test their applications.
- **Easier deployment:** Docker containers are lightweight and portable, making it easier to deploy applications to different environments.
- **Scalability:** You can easily scale your applications up or down by adding or removing containers.

## the problem that docker solves

Docker addresses several key problems in software development, deployment, and operations. Here are the primary issues it solves:

**1. Environment Consistency**
 
```Problem:``` "It works on my machine" is a common issue when an application runs perfectly on a developer’s local machine but fails in testing, staging, or production environments due to differences in configurations, dependencies, or operating systems.

```Solution:``` Docker containers encapsulate an application along with its dependencies and configurations, ensuring it runs consistently across various environments. This eliminates the discrepancies between different development, testing, and production environments.

**2. Dependency**

```Problem:``` Managing dependencies can be complex, especially when different projects require different versions of the same libraries or tools, leading to conflicts and compatibility issues.

```Solution:``` Docker packages all dependencies needed by an application into a single container. This ensures that each container has exactly what it needs to run, without interfering with other containers or the host system.

**3. Resource Utilization and**

```Problem:``` Traditional virtualization methods (like virtual machines) are resource-intensive because each VM includes a full operating system, leading to inefficiencies in resource use.

```Solution:``` Docker containers share the host OS kernel, making them much lighter and faster than traditional VMs. This allows for more efficient use of system resources and enables higher density of applications on the same hardware.

**4. Microservices**

```Problem:``` Implementing and managing microservices architectures can be challenging with traditional deployment methods, due to the need for isolated environments for each service.

```Solution:``` Docker makes it easy to deploy microservices by providing isolated containers for each service. This isolation simplifies the development, deployment, and scaling of microservices.

**5. Continuous Integration and Continuous Deployment (CI/CD)**

```Problem:``` Ensuring consistent and repeatable builds, tests, and deployments can be challenging, leading to potential errors and inconsistencies.

```Solution:``` Docker integrates well with CI/CD pipelines, enabling automated, consistent building, testing, and deployment of applications. This helps maintain consistency and reliability throughout the development lifecycle.

**6. Legacy Application**
 
```Problem:``` Modernizing legacy applications and migrating them to new environments (e.g., cloud) can be complex and risky.

```Solution:``` Docker can containerize legacy applications, making it easier to move them to new environments without significant changes to the code. This helps in modernizing and integrating legacy systems with modern infrastructure.

**7. Isolation and**

```Problem:``` Running multiple applications on the same host can lead to conflicts and security issues, particularly in multi-tenant environments.

```Solution:``` Docker provides process and resource isolation through containers. Each container runs independently and securely, with its own set of resources and permissions. This enhances security and stability.

**8. Portability**

```Problem:``` Moving applications between different environments, such as from on-premises to the cloud, can be difficult due to environmental differences.

```Solution:``` Docker containers are highly portable. They can run on any system that supports Docker, making it easy to move applications between different environments and platforms.

## what is Docker container 


A Docker container is a self-contained unit of software that packages up code and all its dependencies needed to run an application. It's like a mini-environment that isolates the application from the rest of the system, ensuring it runs consistently regardless of the underlying operating system.

Here's a breakdown of key features of a Docker container:

- **Self-contained:** Each container includes everything it needs to run, from the application code to its libraries and settings. This eliminates the need to worry about dependencies already being installed on the host machine.

- **Isolated:** Containers run in isolation from each other and the host system. This provides a layer of security and prevents conflicts between applications.

- **Lightweight:** Unlike virtual machines, containers share the host's operating system kernel, making them much more lightweight and efficient.

- **Portable:** Since containers are self-contained, they can be easily moved between different environments (development, testing, production) without any modifications.

Here's an analogy to understand containers better: Imagine a shipping container. It can hold any kind of cargo (your application) and be shipped anywhere (different environments) as long as there's a port (Docker) to load and unload it.

## Virtualization


Virtualization is a technology that creates  virtual versions of computer resources like servers, storage, and networks. It's like carving up a physical computer into multiple virtual machines (VMs), each acting like a separate computer system.

Here's the key idea: virtualization creates an abstraction layer between software and hardware. This allows you to run multiple operating systems and applications on a single physical machine, improving resource utilization and efficiency.


![Virtualization](https://i0.wp.com/myriad360.com/wp-content/uploads/2019/12/Traditional_vs_Virtual.jpg?w=850&ssl=1)

## How the vertualization work

Virtualization is like magic apartment building for your computer. A single machine (building) can be split into many virtual machines (apartments) using a program (landlord) called a hypervisor. Each virtual machine acts like a whole separate computer (with its own OS like furniture), sharing the physical resources (like electricity) but staying isolated from each other. This lets you run multiple things (tenants) on one machine efficiently.

![How the Virtualization work](https://cdn.prod.website-files.com/60494527fea68422687bfcf1/60620c3038c7591706fb8381_what-is-a-hypervisor-1024x695.png)

## Containerization


Containerization is a lightweight form of virtualization that allows applications to run in isolated environments called containers. These containers include everything the application needs to run: code, runtime, libraries, and system tools. Unlike traditional virtual machines (VMs), containers share the host operating system's kernel, making them much more efficient and faster to start.

## vertualization vs containerization

![vertualization vs containerization](https://www.veritis.com/wp-content/uploads/2019/06/Virtualization-vs-Containerization.jpg)

Virtualization and containerization are two technologies used to create isolated environments for running applications. While both serve the purpose of isolating applications to ensure they run consistently across different environments, they do so in different ways. Here’s a comparison to highlight their differences and respective benefits:

![vertualization vs containerization](https://i.postimg.cc/76J4VjhS/VMs-vs-Cont.png)

## Docker architecture

The basic architecture of Docker consists of 3 major parts:
1. Docker Client
2. Docker Host
3. Registry

![Docker architecture](https://roygeagea.github.io/docker-tutorials/Architecture/docker-architecture.png)

Docker uses a client-server architecture. The **Docker client** talks to the **Docker daemon**, which does the heavy lifting of the building, running, and distributing your Docker containers.
The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a **REST API**, over UNIX sockets or a network interface.

### The Docker Client

Docker Client is used to trigger Docker commands. When we send any command (docker build, docker run, etc) the docker client ends these commands to Docker daemon **(Docker daemon Explained in the docker host part)** which further will deal with them.
**Note:** The Docker client can communicate with more than one daemon.

### The Docker Host

Docker Host runs the **D**ocker **D**aemon. Docker Daemon listens for Docker requests.
Docker requests could be ‘docker run’, ‘docker build’, anything.
It manages docker objects such as images, containers, networks, and volumes.

`Docker Daemon`: The Docker daemon is a background service that runs on the host machine and manages Docker objects like images, containers, networks, and volumes. It listens for Docker API requests and performs actions to manage containers and their environments. **!(images, containers, volumes explained in the Docker objects part)!**

### Docker Registries

Docker registries are essentially warehouses for Docker images. These images are the blueprints used to create Docker containers, which package up applications and all their dependencies for easy deployment.You can create your own image or you can use public registries namely, Docker Hub and Docker Cloud. Docker is configured to look for images on Docker Hub by default.
We can create our own registry in fact.
So, when we run the command **docker pull** or **docker run**, the required images are pulled from your configured registry. When you use the **docker push** command, your image is pushed to your configured registry.
We will look deep into docker commands in the next blog.

Here's a breakdown of Docker registries:

- **Storage and Distribution:** Think of a registry like a library for software. It stores Docker images that can be downloaded and used by anyone with access. Public registries like Docker Hub allow anyone to search for and pull images, while private registries can be used by organizations to store and share their own custom images securely.

- **Version Control:** Registries can hold multiple versions of the same image, allowing developers to choose the specific version they need. This is useful for tracking changes and ensuring compatibility.

- **Centralized Management:** Docker registries provide a central location for managing and sharing Docker images. This simplifies the process of deploying applications across different environments.

Here's an analogy: Imagine a Docker image as a recipe for a cake (the application). A Docker registry is like a cookbook (public or private) that stores these recipes and allows you to find and share them (download and distribute). You can even have different variations of the same recipe (different versions of the image).

### Docker Objects

Docker images, containers, networks, volumes, plugins etc are the Docker objects.
In Dockerland, there are **images** and there are **containers**. The two are closely related, but distinct. But it all starts with a **Dockerfile**.

> **Dockerfile** 

Dockerfile is a file that you create which in turn produces a Docker image when you build it. It contains a bunch of instructions which informs Docker HOW the Docker image should get built.

You can relate it to cooking. In cooking you have recipes. A recipe lets you know all of the steps you must take in order to produce whatever you’re trying to cook.

The act of cooking is building the recipe.

A Dockerfile is a recipe or a blueprint for building Docker images and the act of running a separate build command produces the Docker image from the recipe.


> **Docker Images**

Docker images are the fundamental building blocks used to create Docker containers. An image is a lightweight, standalone, and executable package that includes everything needed to run a piece of software, including the code, runtime, libraries, environment variables, and configuration files.

#### Key Concepts of Docker Images

1. `Layers:` Docker images are made up of multiple layers, each representing a change or addition to the image. Each layer is a read-only file system. Layers are stacked on top of each other to form the final image.

2. `Base Image:` This is the initial layer of an image. For example, an image might use a base image like **debian**, **ubuntu**, or **alpine** which contains a minimal installation of the respective operating system.

3. `Image ID:` Each Docker image has a unique identifier (SHA256 hash) that distinguishes it from other images.

4. `Tags:` Tags are used to identify specific versions of an image. The most commonly used tag is **latest**, but images can have multiple tags (e.g., **'v1.0'**, **'stable'**, **'beta'**).

5. `Dockerfile:` A text file containing a series of instructions on how to build a Docker image. It typically includes commands for setting up the environment, copying files, and installing dependencies.

#### How Docker Images Work

1. `Building Images:` Docker images are built using a Dockerfile. The Docker daemon reads the Dockerfile and executes the commands listed, creating a series of layers. Each command in the Dockerfile creates a new layer.

2. `Storing Images:` Once built, Docker images are stored locally on the host machine. They can also be pushed to a remote registry (like Docker Hub, AWS ECR, or a private registry) for sharing and reuse.

3. `Pulling Images:` When running a container, if the required image is not available locally, Docker will pull it from the specified registry.

4. `Running Containers:` Containers are instances of Docker images. When you run a container, Docker uses the image as a template to create the container, layering a read-write filesystem on top of the image's read-only layers.

#### Building a Docker Image

Here’s an example Dockerfile to build a simple Docker image for an Nginx web server:

![Dockerfile](https://i.ibb.co/cbng65S/Screen-Shot-2024-07-16-at-3-02-08-PM.png)

- **Commands Explained:**

`FROM:` Specifies the base image to use.

`RUN:` Executes commands in the container to install software.

`COPY:` Copies files from the host machine to the image.

`EXPOSE:` Specifies the port that the container will listen on at runtime.

`CMD:` Provides the command to run when the container starts.

- **Building the Image:**

![building the image](https://i.ibb.co/PMQ68x3/Screen-Shot-2024-07-16-at-3-12-10-PM.png)

This command tells Docker to build an image using the Dockerfile in the current directory (`.`) and tag it with **my-nginx-image.**

#### Managing Docker Images

- **List Images:** To list all images on your local machine:

![ls](https://i.ibb.co/T00ybnC/Screen-Shot-2024-07-16-at-3-12-19-PM.png)

- **Romoce Image:** To remove an image:

![remove](https://i.ibb.co/9nf1Htp/Screen-Shot-2024-07-16-at-3-12-28-PM.png)

- **Tag Image:** To add a tag to an image:

![tag](https://i.ibb.co/kqgFS6N/Screen-Shot-2024-07-16-at-3-12-40-PM.png)

#### Docker Image Layers

Docker images use a union file system to manage image layers. Each layer represents an instruction in the Dockerfile, and they are stacked on top of each other to form the final image. Layers help in:

- **Reusability:** Layers can be reused across multiple images, saving space and reducing build time.
- **Efficiency:** Only the layers that have changed need to be pulled or pushed, making operations faster.