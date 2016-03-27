using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Applicant
/// </summary>
public class Applicant: User
{
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
    public Applicant(String emailAddress, String fName, String lName, String userType,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum, String size, String race)
        : base(emailAddress, fName, lName, userType, DOB, address, city, state, zip, pass, gender, homePhone, cellNum, size, race)
	{
        base.setPermission(1);
	}


}
