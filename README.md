 
VIT BHOPAL UNIVERSITY
School of Computing Science and Engineering

REPORT 1
README – Project Overview
Project Title	University ERP System
Course Code	CSE4019 – Advanced Java Programming
Course Type	LP (Lecture + Practical)
Credits	3
University	VIT Bhopal University
Submission Date	April 7–8, 2026
 
1. Project Title
University ERP System

2. Project Description
The University ERP (Enterprise Resource Planning) System is a comprehensive desktop application developed in Java, designed to manage and streamline core university operations including student records, faculty management, course administration, grades, and attendance tracking.

The system is built using Java Swing for the graphical user interface, follows the MVC (Model-View-Controller) design pattern, and incorporates multiple Advanced Java Programming concepts as specified in the CSE4019 syllabus. All data is persisted using Java Object Serialization — no external database is required.

3. Key Features
•	Student Management – Add, update, delete and search student records with real-time form auto-population
•	Faculty Management – Complete faculty directory with department and designation tracking
•	Course Management – Create and manage courses, assign faculty, set credits and semester
•	Grades Module – Record marks per student per course; auto-calculates letter grade (O/A+/A/B+/B/C/F) and CGPA
•	Attendance Tracking – Mark attendance per session type (Lecture/Lab/Tutorial) with live progress bars
•	Reports – Generate formatted all-students and per-student reports via the Reportable interface
•	Auto-Save – Background daemon thread saves all data every 60 seconds to Erp data. ser
•	Data Persistence – Full serialization/deserialization of all records across application restarts
•	Roll Number Editing – Change a student's primary key while carrying over all grades and attendance
•	Demo Data – 5 students, 4 courses, 3 faculty pre-loaded on first launch

4. Technology Stack
Category	Technology / Concept
Language	Java SE 11+
GUI Framework	Java Swing (javax.swing)
Design Pattern	MVC (Model-View-Controller)
Persistence	Java Object Serialization (.ser file)
Concurrency	Java Multithreading (AutoSave daemon thread)
Component Model	JavaBeans (StudentBean with PropertyChangeSupport)
Build Tool	javac (manual compilation)
Database	None – in-memory + file serialization

5. Project Structure
UniversityERP_Package/
src/erp/
    Main.java                       – Application entry point
    beans/StudentBean.java          – JavaBean with bound properties
    exceptions/ERPException.java    – Custom base exception
    exceptions/DuplicateEntryException.java
    exceptions/StudentNotFoundException.java
    model/Person.java               – Abstract base class
    model/Student.java              – Extends Person
    model/Faculty.java              – Extends Person
    model/Course.java               – Course entity
    model/Attendance.java           – Attendance record
    model/Grade.java                – Grade with auto letter/GPA computation
    model/Reportable.java           – Interface
    util/DataStore.java             – Singleton store + Serialization
    util/AutoSaveThread.java        – Background save thread
    util/ReportGenerator.java       – Implements Reportable
    view/ERPMainFrame.java          – Complete Swing GUI

6. How to Run
Requirements
•	Java JDK 11 or higher (JDK 17/21 recommended)
•	Download from: https://www.oracle.com/java/technologies/downloads/
Compilation & Execution (Windows)
cd UniversityERP_Package
mkdir out
dir /s /b src\*.java > sources.txt
javac -d out @sources.txt
java -cp out erp.Main
Compilation & Execution (Linux / macOS)
cd UniversityERP_Package
mkdir out
javac -d out -sourcepath src $(find src -name '*.java')
java -cp out erp.Main

7. GitHub Repository
Repository URL: https://github.com/paritoshkatiyar30/Advanced-Java-Programming_GROUP-2-Challenging-Task.git 
Visibility: Public
Branch: main
Contents: Full Java source code, README, compile/run scripts

8. Grading Criteria Compliance
Requirement	Status
Public GitHub repository	Included
README file in repository	Included (this document)
Project functional and complete	Yes – fully working ERP
Uses only syllabus concepts	Yes – no external libraries used
Report 1 submitted	This document
Report 2 submitted	Separate document
Report 3 submitted	Separate document

