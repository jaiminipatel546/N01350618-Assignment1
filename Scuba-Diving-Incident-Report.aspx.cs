using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01350618_Assignment1
{
    public partial class Scuba_Diving_Incident_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.IsPostBack asks if we arrived here because the form posted to itself.
            //When we first visit the page, it's by using the URL
            //When we hit the button and client side validation passes
            //Then we arrive at the page a second time, and we can run the code here.
            if (Page.IsPostBack)
            {
                //Re-validates the code on the server side. can never be too careful!
                Page.Validate();

                //If everything seems okay, we can proceed.
                if (Page.IsValid)
                {

                    string Diver_Fname = diver_fname.Text.ToString();
                    string Diver_Lname = diver_lname.Text.ToString();
                    string Diver_Gender = diver_gender.Text.ToString();
                    string Diver_Email = diver_email.Text.ToString();
                    string Diver_Phone_Number = diver_phone_number.Text.ToString();
                    string Incident_Time = incident_time.Text.ToString();
                    string Incident_Date = incident_date.Text.ToString();
                    string Incident_Location = incident_location.Text.ToString();
                    string Diver_Breathing_Loop = diver_breathing_loop.Text.ToString();
                    string Diver_Dress = diver_dress.Text.ToString();
                    string Lead_Diver_Name = lead_diver_name.Text.ToString();
                    string Dive_Buddy_name = dive_buddy_name.Text.ToString();
                    string Dive_Buddy_Affiliantion = dive_buddy_affiliantion.Text.ToString();
                    string Surface_Conditions = surface_conditions.Text.ToString();
                    string Conditions_Air_Temperature = conditions_air_temperature.Text.ToString();
                    string Conditions_Water_Temperature = conditions_water_temperature.Text.ToString();
                    string Divers_Normal_Dive = divers_normal_dive.Text.ToString();
                    string Incident_Details = incident_details.Text.ToString();
                    string Diver_Injuries = diver_injuries.Text.ToString();
                    string Incident_Factors = incident_factors.Text.ToString();
                    string Incident_Emergency_Service = incident_emergency_service.Text.ToString();

                    confirmbox.InnerHtml = "Thank you for RSVPing! Your Summary is as follows: <br>";

                    confirmbox.InnerHtml += " First name: " + Diver_Fname + "<br>";
                    confirmbox.InnerHtml += " Last name: " + Diver_Lname + "<br>";
                    confirmbox.InnerHtml += " Diver Gender: " + Diver_Gender + "<br>";
                    confirmbox.InnerHtml += " Diver email: "+ Diver_Email + "<br>";
                    confirmbox.InnerHtml += " Diver phone number: " + Diver_Phone_Number + "<br>";
                    confirmbox.InnerHtml += " Incident time: " + Incident_Time + "<br>";
                    confirmbox.InnerHtml += " Incident date: " + Incident_Date + "<br>";
                    confirmbox.InnerHtml += " Incident location: " + Incident_Location + "<br>";
                    confirmbox.InnerHtml += " Diver breathing loop: " + Diver_Breathing_Loop + "<br>";
                    confirmbox.InnerHtml += " Diver dress: " + Diver_Dress + "<br>";
                    confirmbox.InnerHtml += " Lead diver name: " + Lead_Diver_Name + "<br>";
                    confirmbox.InnerHtml += " Dive buddy name: " + Dive_Buddy_name + "<br>";
                    confirmbox.InnerHtml += " Dive buddy affiliantion: " + Dive_Buddy_Affiliantion + "<br>";
                    confirmbox.InnerHtml += " Surface conditions: " + Surface_Conditions + "<br>";
                    confirmbox.InnerHtml += " Conditions air temperature: " + Conditions_Air_Temperature + "<br>";
                    confirmbox.InnerHtml += " Conditions water temperature: " + Conditions_Water_Temperature + "<br>";
                    confirmbox.InnerHtml += " Divers normal dive: " + Divers_Normal_Dive + "<br>";
                    confirmbox.InnerHtml += " Incident details: " + Incident_Details + "<br>";
                    confirmbox.InnerHtml += " Diver injuries: " + Diver_Injuries + "<br>";
                    confirmbox.InnerHtml += " Incident factors: " + Incident_Factors + "<br>";
                    confirmbox.InnerHtml += " Incident emergency service: " + Incident_Emergency_Service + "<br>";

                    if (Incident_Location == "" )
                    {
                        confirmbox.InnerHtml += "Your investigation is pending!!";
                    }
                    
                    else if (Diver_Injuries == "AGE" || Diver_Injuries == "Pulmonary Barotrauma")
                    {
                        confirmbox.InnerHtml += "Your incident requires urgent attention.";
                    }

                    else
                    {
                        confirmbox.InnerHtml += "Your incident is resolved!!";
                    }
                }
            }

        }
    }
}