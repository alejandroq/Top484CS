using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/***********************************
 * Class: User
 * Author:Alex Ledesma
 * Version:1
 * User is an abstract class that all other "User" classes
 * will inherit.
 **********************************/
abstract class User
{

    protected String emailAddress;
    protected String fName;
    protected String lName;
    protected String MI;
    protected String DOB;
    protected String address;
    protected String city;
    protected String state;
    protected int zip;
    protected String pass;
    protected String passHash;
    protected String passSalt;
    protected char gender;
    protected String homePhone;
    protected String cellNum;
    protected int permission;

    /******************************************
     * Default Constructor
     *****************************************/
    public User()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /******************************************
     * Explicit Constructor
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
    public User(String emailAddress, String fName, String lName, String MI,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum)
    {
        setEmail(emailAddress);
        setFName(fName);
        setLName(lName);
        setMI(MI);
        setDOB(DOB);
        setAddress(address);
        setCity(city);
        setState(state);
        setZip(zip);
        setPass(pass);
        setGender(gender);
        setHomePhone(homePhone);
        setCellPhone(cellNum);


    }

    /*
     * ACCESSOR METHODS
     */


    /*******************************************
     * Accessor Method
     * @return user's email address
     ******************************************/
    public String getEmail() { return this.emailAddress; }

    /*******************************************
     * Accessor Method
     * @return user's first name
     ******************************************/
    public String getFName() { return this.fName; }

    /*******************************************
     * Accessor Method
     * @return user's Last name
     ******************************************/
    public String getLName() { return this.lName; }

    /*******************************************
     * Accessor Method
     * @return user's MI
     ******************************************/
    public String getMI() { return this.MI; }

    /*******************************************
     * Accessor Method
     * @return user's DOB
     ******************************************/
    public String getDOB() { return this.DOB; }


    /*******************************************
     * Accessor Method
     * @return user's home address
     ******************************************/
    public String getAddress() { return this.address; }

    /*******************************************
     * Accessor Method
     * @return user's home city
     ******************************************/
    public String getCity() { return this.city; }

    /*******************************************
     * Accessor Method
     * @return user's home state
     ******************************************/
    public String getState() { return this.state; }

    /*******************************************
     * Accessor Method
     * @return user's zip
     ******************************************/
    public int getZip() { return this.zip; }

    /*******************************************
     * Accessor Method
     * @return user's unHashed password
     ******************************************/
    public String getPass() { return this.pass; }

    /*******************************************
     * Accessor Method
     * @return user's hashed password
     ******************************************/
    public String getPassHash() { return this.passHash; }

    /*******************************************
     * Accessor Method
     * @return user's password salt
     ******************************************/
    public String getPassSalt() { return this.passSalt; }

    /*******************************************
     * Accessor Method
     * @return user's gender
     ******************************************/
    public char getGender() { return this.gender; }

    /*******************************************
     * Accessor Method
     * @return user's home phone number
     ******************************************/
    public String getHomePhone() { return this.homePhone; }

    /*******************************************
     * Accessor Method
     * @return user's home phone number
     ******************************************/
    public String getCellPhone() { return this.cellNum; }


    /*
     * MUTATOR METHODS
     */

    /*******************************************
     * Mutator Method
     * @param String containing user's email address
     ******************************************/
    protected void setEmail(String email)
    {
        this.emailAddress = email;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's first name
     ******************************************/
    protected void setFName(String fName)
    {
        this.fName = fName;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's last name
     ******************************************/
    protected void setLName(String lName)
    {
        this.lName = lName;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's middle initial
     ******************************************/
    protected void setMI(String mi)
    {
        this.MI = mi;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's DOB
     ******************************************/
    protected void setDOB(String dob)
    {
        this.DOB = dob;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's home address
     ******************************************/
    protected void setAddress(String address)
    {
        this.address = address;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's home city
     ******************************************/
    protected void setCity(String city)
    {
        this.city = city;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's home state
     ******************************************/
    protected void setState(String state)
    {
        this.state = state;
    }

    /*******************************************
     * Mutator Method
     * @param int containing user's zip
     ******************************************/
    protected void setZip(int zip)
    {
        this.zip = zip;
    }

    /*******************************************
     * Mutator Method
     * @param user's unHashed password
     ******************************************/
    protected void setPass(String pass)
    {
        this.pass = pass;
    }

    /*******************************************
     * Accessor Method
     * @param user's unHashed password
     ******************************************/
    protected void setPassHash(String pass)
    {

    }

    /*******************************************
     * Mutator Method
     * @param user's password salt
     ******************************************/
    // public String getPassSalt() { return this.passSalt; }

    /*******************************************
     * Mutator Method
     * @param user's gender
     ******************************************/
    protected void getGender(char sex)
    {
        this.gender = sex;
    }

    /*******************************************
     * Mutator Method
     * @param containing user's home phone number
     ******************************************/
    protected void setHomePhone(String home)
    {
        this.homePhone = home;
    }

    /*******************************************
     * Mutator Method
     * @return user's home phone number
     ******************************************/
    protected void setCellPhone(String cell)
    {
        this.cellNum = cell;
    }

    /*******************************************
     * Mutator Method
     * @return user's permission level
     ******************************************/
    protected void setPermission(int perm)
    {
        this.permission = perm;
    }




}