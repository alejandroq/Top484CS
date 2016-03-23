using System;

/***********************************
 * Class: Student
 * Author:Alex Ledesma
 * Version:1
 * Student is a class that Inherits User and will be used to control
 * student records and actions
 **********************************/
public class Student : User
{
    private String homeWard;
    private String dcOneCardNum;
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
    public Student(String emailAddress, String fName, String lName, String MI,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum, String ward, String dcOne) : base(emailAddress, fName, lName, MI,
    DOB, address, city, state, zip, pass, gender, homePhone, cellNum)
	{
        base.setPermission(4);
        setWard(ward);
        setDCOneCardNum(dcOne);
	}

    public Student(Applicant app, String ward, String dcOne)
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

}
