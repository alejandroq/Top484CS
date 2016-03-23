using System;
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
    public Applicant(String emailAddress, String fName, String lName, String MI,
    String DOB, String address, String city, String state, int zip, String pass,
    char gender, String homePhone, String cellNum) : base(emailAddress, fName, lName, MI,
    DOB, address, city, state, zip, pass, gender, homePhone, cellNum)
	{
        base.setPermission(1);
	}


}