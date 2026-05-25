=========================================================
DOCTOR-PATIENT PORTAL (MEDI-CONNECT) - EXECUTABLE GUIDE
=========================================================
Developer: Shreyash Vairagade
Course Code: 23ONMCR-753

This project is fully containerized for seamless execution. You do not need to manually configure Apache Tomcat or MySQL on your local machine.

---------------------------------------------------------
METHOD A: RUN VIA DOCKER (RECOMMENDED)
---------------------------------------------------------
Prerequisite: Ensure Docker Desktop is installed and running on your system.

1. Open your computer's Terminal or Command Prompt.
2. Navigate to this folder (Executable_Files).
3. Run the following command to build and start the application:
   docker-compose up --build
4. The database schema and application will initialize automatically. 

---------------------------------------------------------
ACCESSING THE APPLICATION
---------------------------------------------------------
Once the server has started successfully, open your web browser and go to:
URL: http://localhost:8080

Testing Credentials:
* Admin Login - Email: admin01@gmail.com | Password: Zx@12345
* (Or register a new Patient account directly on the website to test the flow)

To stop the server, press CTRL+C in your terminal, or run: 
docker-compose down

---------------------------------------------------------
METHOD B: TRADITIONAL DEPLOYMENT (FALLBACK)
---------------------------------------------------------
If Docker is not available on your system, the project can be run manually:
1. Database: Import the 'database_schema.sql' file into MySQL Workbench.
2. Server: Deploy the provided source code / .war file to Apache Tomcat (v9.0+).
3. Ensure your local MySQL credentials match the 'db.properties' or DBConnect.java file.
4. Run on Server via your IDE (Eclipse/VS Code).
=========================================================
