using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/***********************************
 * Class: Parent
 * Author:Alex Ledesma
 * Version:1
 * Parent is a class that Inherits User and will be used to control
 * parent records and actions
 **********************************/
public class Parent : User
{
	private ArrayList students;
    private String relationship;
    private int letterCount;
    /******************************************
     * Explicit Constructor
     * @param emailAddress user's email address doubles as login
     * @param fName, String user's first name
     * @param lName, String user's last name
     * @param userType, String user's account type 
     * @param address, String user's home address
     * @param city, String user's home city
     * @param state, String user's home state
     * @param zip, int users zip code
     * @param DOB, String user's date of birth
     * @param pass, String user's unhashed password
     * @param gender, char identifying users gender
     * @param homePhone, user's home phone number
     * @param cellNum, user's cell phone number
     * @param size, user's shirt size
     * @param race, user's race
     * @param relationship, users relationship to student
     * @param student, users student
     *****************************************/
    public Parent(String emailAddress, String fName, String lName, String userType,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum, String size, String race, String relationship, Student student)
        : base(emailAddress, fName, lName, userType, DOB, address, city, state, zip, pass, gender, homePhone, cellNum, size, race)
	{
        base.setPermission(3);
        setRelationship(relationship);
        setLetterCount(0);
        setStudent(student);
        setActivated(true);
	}

    public Parent(Applicant app, String relationship, Student student)
    {
        setEmail(app.getEmail());
        setFName(app.getFName());
        setLName(app.getLName());
        setUserType(app.getUserType());
        setDOB(app.getDOB());
        setAddress(app.getAddress());
        setCity(app.getCity());
        setState(app.getState());
        setZip(app.getZip());
        setPass(app.getPass());
        base.setPermission(3);
        setRelationship(relationship);
        setLetterCount(0);
        setGender(app.getGender());
        setHomePhone(app.getHomePhone());
        setCellPhone(app.getCellPhone());
        setStudent(student);
        setRace(app.getRace());
        setShirtSize(app.getShirtSize());
        setActivated(true);
    }

    /*
     * ACCESSOR METHODS
     */

    
    /*******************************************
    * Accessor Method
    * @return user's relationship to student
    ******************************************/
    public String getRelationship() { return this.relationship; }

    /*******************************************
     * Accessor Method
     * @return user's letter count
     ******************************************/
    public int getLetterCount() { return this.letterCount; }

    /******************************************
     * Accessor Method
     * @return all user's students
     ******************************************/
    public ArrayList getStudents()
    {
        return this.students;
    }

    /******************************************
     * Accessor Method
     * @param name, students name that system is searching for
     * @return student matching name
     ******************************************/
    public Student getStudent(String name)
    {
        // need to implement still
        return null;
    }


    /*
     * MUTATOR METHODS
     */

    /*******************************************
     * Mutator Method
     * @param String containing user's relationship to student
     ******************************************/
    protected void setRelationship(String relationship)
    {
        this.relationship = relationship;
    }

    /*******************************************
     * Mutator Method
     * @param int containing users letter count
     ******************************************/
    protected void setLetterCount(int count)
    {
        this.letterCount = count;
    }

    /*******************************************
     * Mutator Method
     * @param user's Student
     ******************************************/
    protected void setStudent(Student student)
    {
        this.students = new ArrayList();
        this.students.Add(student);
        
    }

    /*******************************************
     * Mutator Method
     * @param user's Student to add to records
     ******************************************/
    protected void addStudent(Student student)
    {
        this.students.Add(student);
    }

    /*******************************************
     * Mutator Method
     * @param increments users letter count
     ******************************************/
    protected void incrementLetter()
    {
        this.letterCount++;
    }

}
