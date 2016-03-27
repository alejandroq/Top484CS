using System;
using System.Collections;
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
public abstract class User
{

    protected String emailAddress;
    protected String fName;
    protected String lName;
    protected char gender;
    protected String DOB;
    protected String address;
    protected String city;
    protected String state;
    protected int zip;
    protected String pass;
    protected String passHash;
    protected String passSalt;
    protected String userType;
    protected String shirtSize;
    protected String homePhone;
    protected String cellNum;
    protected int permission;
    protected DateTime joinDate;
    protected DateTime lastLogin;
    protected String race;
    protected bool activated;

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
     * @param userType, String account type of user
     * @param size, String shirt size of user
     * @param race, String containing race user identifies as
     * @param homePhone, user's home phone number
     * @param cellNum, user's cell phone number
     *****************************************/
    public User(String emailAddress, String fName, String lName, String userType,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum, String size, String race)
    {
        setEmail(emailAddress);
        setFName(fName);
        setLName(lName);
        setUserType(userType);
        setDOB(DOB);
        setAddress(address);
        setCity(city);
        setState(state);
        setZip(zip);
        setPass(pass);
        setGender(gender);
        setHomePhone(homePhone);
        setCellPhone(cellNum);
        setUserType(userType);
        setShirtSize(size);
        setJoinDate(DateTime.Now);
        setLastLogin(DateTime.Now);
        setRace(race);
        setActivated(false);

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
     * @return user's account type
     ******************************************/
    public String getUserType() { return this.userType; }

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

    /*******************************************
     * Accessor Method
     * @return user's shirtSize
     ******************************************/
    public String getShirtSize() { return this.shirtSize; }

    /*******************************************
     * Accessor Method
     * @return user's join date
     ******************************************/
    public DateTime getJoinDate() { return this.joinDate; }

    /*******************************************
     * Accessor Method
     * @return user's Last Login
     ******************************************/
    public DateTime getLastLogin() { return this.lastLogin; }

    /*******************************************
     * Accessor Method
     * @return user's race
     ******************************************/
    public String getRace() { return this.race; }

    /*******************************************
     * Accessor Method
     * @return user's activation
     ******************************************/
    public bool getActivated() { return this.activated; }



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
     * @param String containing user's account type
     ******************************************/
    protected void setUserType(String userType)
    {
        this.userType = userType;
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
    protected void setGender(char sex)
    {
        this.gender = sex;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's home phone number
     ******************************************/
    protected void setHomePhone(String home)
    {
        this.homePhone = home;
    }

    /*******************************************
     * Mutator Method
     * @param String containing user's cell phone number
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

    /*******************************************
     * Mutator Method
     * @return user's shirt size
     ******************************************/
    protected void setShirtSize(String size)
    {
        this.shirtSize = size;
    }

    /*******************************************
     * Mutator Method
     * @param Date user's account creation
     ******************************************/
    protected void setJoinDate(DateTime join)
    {
        this.joinDate = join;
    }

    /*******************************************
     * Mutator Method
     * @param Date user's last login
     ******************************************/
    protected void setLastLogin(DateTime last)
    {
        this.lastLogin = last;
    }

    /*******************************************
     * Mutator Method
     * @param String user's race
     ******************************************/
    protected void setRace(String race)
    {
        this.race = race;
    }

    /*******************************************
     * Mutator Method
     * @param bool user's account activation
     ******************************************/
    protected void setActivated(bool active)
    {
        this.activated = active;
    }

}