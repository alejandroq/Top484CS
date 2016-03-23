using System;
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
    /******************************************
     * Explicit Constructor
     * Sets applicant permission to lowest possible
     * until user is approved
     * @param emailAddress user's email address doubles as login
     * @param fName, String user's first name
     * @param lName, String user's last name
     * @param MI, String user's middle initial 
     * @param address, String user's home address
     * @param city, String user's home city
     * @param state, String user's home state
     * @param zip, int users zip code
     * @param DOB, String user's date of birth
     * @param pass, String user's unhashed password
     * @param gender, char identifying users gender
     * @param homePhone, user's home phone number
     * @param cellNum, user's cell phone number
     *****************************************/
    public Parent(String emailAddress, String fName, String lName, String MI,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum, String ward, String dcOne, Student student) : base(emailAddress, fName, lName, MI,
    DOB, address, city, state, zip, pass, gender, homePhone, cellNum)
	{
        base.setPermission(3);
        setWard(ward);
        setDCOneCardNum(dcOne);
        setStudent(student);
	}

    public Parent(Applicant app, String ward, String dcOne, Student student)
    {
        setEmail(app.getEmail());
        setFName(app.getFName());
        setLName(app.getLName());
        setMI(app.getMI());
        setDOB(app.getDOB());
        setAddress(app.getAddress());
        setCity(app.getCity());
        setState(app.getState());
        setZip(app.getZip());
        setPass(app.getPass);
        base.setPermission(4);
        setWard(ward);
        setDCOneCardNum(dcOne);
        setGender(app.getGender());
        setHomePhone(app.getHomePhone());
        setCellPhone(app.getCellPhone());
        setStudent(student);
    }

    /*
     * ACCESSOR METHODS
     */

    
    /*******************************************
    * Accessor Method
    * @return user's Home ward
    ******************************************/
    public String getWard() { return this.homeWard; }

    /*******************************************
     * Accessor Method
     * @return user's DC one card number
     ******************************************/
    public String getDCOneCardNum() { return this.dcOneCardNum; }

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
     * @param String containing user's Home ward
     ******************************************/
    protected void setWard(String ward)
    {
        this.homeWard = ward;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's DC one card number
     ******************************************/
    protected void setDCOneCardNum(String num)
    {
        this.dcOneCardNum = num;
    }

    /*******************************************
     * Mutator Method
     * @param user's Student
     ******************************************/
    protected void setStudent(Student student)
    {
        this.students = new ArrayList();
        this.students.add(student);
        
    }

    /*******************************************
     * Mutator Method
     * @param user's Student to add to records
     ******************************************/
    protected void addStudent(Student student)
    {
        this.students.add(student);
    }
}
