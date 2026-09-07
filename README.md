# Full Stack: Angular and Java Spring Boot E-Commerce Website

## Overview

This repository contains the code for a E-commerce website built using Angular for the front-end, Spring Boot for the back-end, and MySQL for the database. This project is built by following the: Full Stack Java and Spring Boot course. I worked on this website in order to help me learn more about Full Stack Development. The front end is built in Angular using the TypeScript programming language and it connects to the backend via a REST API. The backend is built using the Spring Boot framework with Java programming language which makes use of JDBC to connect to a MySQL database in order to store and retrieve the nessecary data.

## Features

- [Product listing]: Listing the available products by category and viewing the details of a product.
- [Searching]: Searching for avialable products by a keyword.
- [Pagination]: Listing the products by the current page and page size.
- [Shopping Cart]: Having a shopping cart for all ur wanted products and perforiming CRUD operations on them such as: adding a new product, listing all the wanted products, updating the quantity of a product, removing a product from the cart.
- [Checkout Form]: The ability to checkout with ur shopping cart and after filling the required fields you can checkout and the order is saved.
- [Login/Logout]: Securing the authentication and authorizion of users using Okta.
- [Members-Only Pages]: Having routes that only authenticated people can access
- [Handling Browser Refresh]: Storing the shopping cart to the local/session storage of the web browser so that the cart data is not lost when the browser is refreshed
- [Order History]: Displaying all the orders that a customer has made, securing the API so that only authenticated users can access the order history endpoint.

## Technologies Used

- Angular 16.2.1: Front-end component-based framework for building single-page web applications.
- TypeScript 5.1.6: Programming language that adds static typing with optional type annotations to JavaScript.
- Spring Boot 3.1.2: Back-end framework for creating Java-based web applications.
- Java 17.0.8: Object-oriented programming language that produces software for multiple platforms.
- MySQL 8.0.17: Relational database management system.
- Okta 2.1.6: A cloud-based identity and access management platform that enables secure and convenient user authentication and authorization

## Getting Started

### Prerequisites

- Node.js and npm: Angular requires Node.js, which includes npm (Node Package Manager), to manage packages and dependencies.
- Angular CLI: Install the Angular CLI globally using npm, as it provides the tools necessary to create, build, and run Angular applications.
- Code Editor: You'll need a code editor for viewing or writing code. Popular choices for Angular include Visual Studio Code or WebStorm and for Java Spring Boot you can use IntelliJ.
- Java Development Kit (JDK): Ensure you have a compatible version of the JDK installed on your system. Spring Boot supports JDK 8, 11, and 16 (or later).

### Installation

1. Clone the repository: `git clone https://github.com/NesiCodes/Fullstack-Ecommerce-Web.git`
2. Navigate to db-scripts directory: `cd 01-stater-files/db-scripts`
3. Execute each sql script using MySql Workbench to create the database schema and required tables
4. Navigate to the back-end directory: `cd 02-backend/spring-boot rest api`
5. Open the project in IntelliJ IDE and let maven automatically build and install the required dependecies
6. Navigate to the front-end directory: `cd frontend/angular-ecommerce`
7. Install Angular CLI: `npm install -g @angular/cli`
8. Install front-end dependencies in package.json

## Usage

1. Start the back-end server: Navigate to the root of the project via command line and execute the command `mvn spring-boot:run` or run SpringBootEcommerceApplication class in IntelliJ IDE.
2. Start the front-end development server: Navigate to the root of the project via command line and execute the command `ng serve` or run the application in Webstorm IDE.
3. Access the application in a web browser at `http://localhost:4200`.

### Entity Relationship Diagram

![img9](https://github.com/NesiCodes/Fullstack-Ecommerce-Web/assets/89842810/5c3fc1da-45ce-4ae2-a155-f654f91fca9a)

# Full Stack E-Commerce Application – Dockerized Deployment

A production-style 3-tier E-Commerce application built with Angular, Spring Boot, and MySQL, containerized using Docker and Docker Compose.

This project demonstrates how to take an existing full-stack application and apply DevOps practices including containerization, multi-stage Docker builds, Docker networking, database initialization, and deployment on AWS EC2.

---

## 🚀 Tech Stack

### Frontend
- Angular 16
- TypeScript
- Nginx

### Backend
- Java 17
- Spring Boot 3
- Spring Data JPA
- Maven

### Database
- MySQL 8

### DevOps
- Docker
- Docker Compose
- Docker Networking
- Multi-stage Docker Builds
- AWS EC2
- Linux / Ubuntu
- Git & GitHub

---

# 🏗️ Architecture

The application follows a 3-tier architecture:

```text
                         INTERNET
                             |
                             v
                    +----------------+
                    |   Nginx        |
                    | Angular        |
                    | Frontend       |
                    +-------+--------+
                            |
                         /api/*
                            |
                            v
                    +----------------+
                    | Spring Boot    |
                    | Backend        |
                    | Java 17        |
                    +-------+--------+
                            |
                            |
                            v
                    +----------------+
                    |    MySQL 8     |
                    |    Database    |
                    +----------------+

              All services run inside
              Docker Network
              ecommerce-network

## ▶️ Run the Application

### 1. Clone the Repository

    git clone https://github.com/uttam-gaur/Fullstack-Ecommerce-Web.git
    cd Fullstack-Ecommerce-Web

### 2. Build and Start the Application

    docker compose up -d --build

This command builds the frontend and backend images, pulls the MySQL image, creates the Docker network and volume, initializes the database, and starts all three services.

### 3. Verify the Containers

    docker compose ps

The following services should be running:

- `ecommerce-frontend`
- `ecommerce-backend`
- `ecommerce-mysql`

The MySQL container should show `Up (healthy)`.

### 4. Access the Application

For local deployment:

    http://localhost:8082

For AWS EC2 deployment:

    http://<EC2-PUBLIC-IP>:8082

Make sure port `8082` is allowed in the EC2 Security Group.

### 5. Verify the Backend API

    curl http://localhost:8082/api/products

For EC2:

    curl http://<EC2-PUBLIC-IP>:8082/api/products

### 6. View Logs

    docker compose logs

For individual services:

    docker compose logs frontend
    docker compose logs backend
    docker compose logs mysql

To follow logs in real time:

    docker compose logs -f

### 7. Stop the Application

    docker compose down

This stops and removes the containers while preserving the MySQL data stored in the Docker volume.

To remove the containers and database volume:

    docker compose down -v


> **Warning:** `docker compose down -v` deletes the MySQL Docker volume and all stored database data.

