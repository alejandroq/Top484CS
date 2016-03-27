using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/***********************************
 * Class: Cipher
 * Author:Alex Ledesma
 * Version: 1
 * Cipher is a class that Inherits User and will be used to control
 * cipher records and actions
 **********************************/
public class Cipher : User
{
    protected bool paid;
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
     * @param paid, boolean identifying if user has paid membership fee or not
     *****************************************/
    public Cipher(String emailAddress, String fName, String lName, String userType,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum, String size, String race, bool paid)
        : base(emailAddress, fName, lName, userType, DOB, address, city, state, zip, pass, gender, homePhone, cellNum, size, race)
	{
        base.setPermission(2);
        setPaid(paid);
        setActivated(true);
	}

    public Cipher(Applicant app, bool paid)
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
        base.setPermission(2);
        setGender(app.getGender());
        setHomePhone(app.getHomePhone());
        setCellPhone(app.getCellPhone());
        setPaid(paid);
        setRace(app.getRace());
        setShirtSize(app.getShirtSize());
        setActivated(true);
    }

   /*******************************************
   * Accessor Method
   * @return user's paid membership fee or not
   ******************************************/
    public bool getPaid() { return this.paid; }
    
    /*******************************************
    * Mutator Method
    * @param bool saying whether or not user has paid membership fee
    ******************************************/
    protected void setPaid(bool paid)
    {
        this.paid = paid;
    }

}