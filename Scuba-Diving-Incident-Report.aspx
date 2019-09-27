<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scuba-Diving-Incident-Report.aspx.cs" Inherits="N01350618_Assignment1.Scuba_Diving_Incident_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style>
            .heading{
                text-align: center;
            } 

            .form-heading {
                font-weight: bold;
                font-size: 23px;
                text-align: left;
                margin:20px 7px 5px 4px;
            }

            .label {
                margin-top:10px;
                padding: 5px;
            
            }

            .submit {
                display: block;
                margin-top: 10px;
                font-size: 20px;
                background-color: lightgrey;
            
            }
        </style>
    </head>
    <body>
        <form id="incident_report" runat="server" method="POST" >
            <section class="heading">
                <h1>Scuba Diving Incidence Report</h1>
            </section>
            <section class="form-heading">
                    <div>Victim's General Information</div>
            </section>
            <section>
                    <div class="label">First Name</div>
                   <div>
                       <asp:TextBox runat="server" ID="diver_fname" ></asp:TextBox>
                       <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the first name." ControlToValidate="diver_fname"></asp:RequiredFieldValidator>
			        </div>       
            </section>
            <section>       
                    <div class="label">Last Name</div>
                    <div>
                        <asp:TextBox runat="server" ID="diver_lname" ></asp:TextBox>
                        <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the last name." ControlToValidate="diver_lname"></asp:RequiredFieldValidator>
                    </div>      
            </section>
            <section>       
                    <div class="label">Gender</div>
                    <div>
                        <asp:RadioButtonList runat="server" ID="diver_gender">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
       
            </section>
            <section>
                    <div class="label">Email ID</div>
                    <div>
                        <asp:TextBox runat="server" ID="diver_email" ></asp:TextBox>
                        <!-- I referred this RegularExpressionValidator from this site: https://www.codeproject.com/Tips/472728/RegularExpressionValidator-In-ASP-NET ,  date:- 26th September, 2019. I referred this for the perfect validation expression -->
                        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter valid Email ID" ControlToValidate="diver_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>     
            </section>
            <section>      
                    <div class="label">Phone Number</div>
                    <div>
                        <asp:TextBox ID="diver_phone_number" runat="server"  TextMode="Number"></asp:TextBox>
                        <!-- I refferd this RegularExpressionValidator for this site http://www.harshbaid.in/2013/08/03/regular-expression-for-us-and-canada-phone-number/ ,  date:- 26th September, 2019. I referred this for the perfect validation expression -->
                        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a valid phone number." ControlToValidate="diver_phone_number" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ></asp:RegularExpressionValidator>
                    </div>   
            </section>
            <section> 
                    <div class="label">Time of Incident</div>
                    <div>
                        <asp:TextBox ID="incident_time" runat="server"  TextMode="Datetime"></asp:TextBox>
                         <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the time of an incident" ControlToValidate="incident_time"></asp:RequiredFieldValidator>
                    </div>  
            </section>
            <section>
                    <div class="label">Date of Incident</div>
                    <div>
                        <asp:TextBox ID="incident_date" TextMode="date" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the date of an incident" ControlToValidate="incident_date"></asp:RequiredFieldValidator>
                    </div>
            </section>
            <section>
                    <div class="label">Location of Incident</div>
                    <div>
                        <asp:TextBox ID="incident_location" TextMode="multiline" Columns="20" Rows="3" runat="server"></asp:TextBox>
                    </div>  
            </section>
            <section class="form-heading">
                    <div>Equipment used by the Diving Accident Victim</div>
            </section>
            <section>
                    <div class="label">Breathing Loop</div>
                    <div>
                        <asp:RadioButtonList ID="diver_breathing_loop" runat="server">
                            <asp:ListItem Text="Open Circuit" Value="Open Circuit"></asp:ListItem>
                            <asp:ListItem Text="Semi Closed/Closed Circuit" Value="Semi Closed/Closed Circuit"></asp:ListItem>
                            <asp:ListItem Text="Surface Supplied" Value="Surface Supplied"></asp:ListItem>
                            <asp:ListItem Text="Snorkel" Value="Snorkel"></asp:ListItem>
                            <asp:ListItem Text="Not Defined" Value="Not Defined"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
            </section>
            <section>
                    <div class="label">Diver Dress</div>
                    <div>
                        <asp:RadioButtonList ID="diver_dress" runat="server">
                            <asp:ListItem Text="None/Dive Skin" Value="None/Dive Skin"></asp:ListItem>
                            <asp:ListItem Text="Wet Suit" Value="Wet Suit"></asp:ListItem>
                            <asp:ListItem Text="Dry Suit" Value="Dry Suit"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
            </section>
            <section class="form-heading">
                    <div>Dive Information – Incident Dive</div>
            </section>
            <section>
                    <div class="label">Name of on-site diving supervisor/Lead diver</div>
                    <div>
                        <asp:TextBox runat="server" ID="lead_diver_name" ></asp:TextBox>
                    </div>
            </section>
            <section>
                    <div class="label">Name of dive buddy</div>
                    <div>
                        <asp:TextBox runat="server" ID="dive_buddy_name" ></asp:TextBox>
                    </div>
            </section>
            <section>
                    <div class="label">Dive buddy affiliation</div>
                    <div>
                        <asp:TextBox runat="server" ID="dive_buddy_affiliantion" ></asp:TextBox>
                    </div>
            </section>
            <section>
                    <div class="label">Surface Conditions</div>
                    <div>
                        <asp:TextBox runat="server" ID="surface_conditions" ></asp:TextBox>
                    </div>
            </section>
            <section>
                    <div class="label">Air Temperature(&deg;C)</div>
                    <div>
                        <asp:TextBox runat="server" ID="conditions_air_temperature" ></asp:TextBox>
                
                        <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="conditions_air_temperature" ErrorMessage="Please enter the correct air temperature between 15 to 25." MinimumValue="15" MaximumValue="25" ></asp:RangeValidator>
                    </div>
            </section>
            <section>
               <div class="label">Water Temperature(&deg;C)</div>
                    <div>
                        <asp:TextBox runat="server" ID="conditions_water_temperature" ></asp:TextBox>
                        <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="conditions_water_temperature" ErrorMessage="Please enter the correct water temperature between 10 to 32." MinimumValue="10" MaximumValue="32" ></asp:RangeValidator>
                    </div>
            </section>
            <section>
                <div class="label">Was this dive typical of the diver’s normal type of diving?</div>
                    <div>
                        <asp:RadioButtonList runat="server" ID="divers_normal_dive">
                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                            <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
            </section>
            <section>
                    <div class="label">If NO, explain:</div>
                    <div>
                        <asp:TextBox ID="incident_details" TextMode="multiline" Columns="20" Rows="3" runat="server"></asp:TextBox>
                    </div>
            </section>
            <section>
                    <div class="label">Suspected injuries or Illnesses</div>
                    <div>
                        <asp:DropDownList runat="server" ID="diver_injuries">
                            <asp:ListItem Text="Select Injuries" Value="" Selected="true" disabled="true"></asp:ListItem>
                            <asp:ListItem Text="AGE" Value="AGE"></asp:ListItem>
                            <asp:ListItem Text="DCS" Value="DCS"></asp:ListItem>
                            <asp:ListItem Text="Pulmonary Barotrauma" Value="Pulmonary Barotrauma"></asp:ListItem>
                            <asp:ListItem Text="Other Barotrauma" Value="Other Barotrauma"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter the type of injury that the diver witnessed." ControlToValidate="diver_injuries"></asp:RequiredFieldValidator>
                     </div>
            </section>
            <section>
                    <div class="label">Factors Involved</div>
                    <div>
                        <asp:CheckBoxList runat="server" ID="incident_factors">
                            <asp:ListItem Text="Rough water" Value="Rough water"></asp:ListItem>
                            <asp:ListItem Text="Cold water" Value="Cold water"></asp:ListItem>
                            <asp:ListItem Text="Low surface" Value="Low surface"></asp:ListItem>
                            <asp:ListItem Text="Low underwater" Value="Low underwater"></asp:ListItem>
                            <asp:ListItem Text="Diver too heavy in water" Value="Diver too heavy in water"></asp:ListItem>
                            <asp:ListItem Text="Incorrect Gas Mixture" Value="Incorrect Gas Mixture"></asp:ListItem>
                            <asp:ListItem Text="Carelessness" Value="Carelessness"></asp:ListItem>
                            <asp:ListItem Text="Disregard of rules" Value="Disregard of rules"></asp:ListItem>
                            <asp:ListItem Text="Inadequate pre-dive check" Value="Inadequate pre-dive check"></asp:ListItem>
                            <asp:ListItem Text="Inadequate training" Value="Inadequate training"></asp:ListItem>
                            <asp:ListItem Text="Breathlessness" Value="Breathlessness"></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
            </section>
            <section>
                <div class="label">Emergency Services Involved</div>
                    <div>
                        <asp:CheckBoxList runat="server" ID="incident_emergency_service">
                            <asp:ListItem Text="Coastguard" Value="Coastguard"></asp:ListItem>
                            <asp:ListItem Text="Lifeboat" Value="Lifeboat"></asp:ListItem>
                            <asp:ListItem Text="Helicopter" Value="Helicopter"></asp:ListItem>
                            <asp:ListItem Text="Ambulance" Value="Ambulance"></asp:ListItem>
                            <asp:ListItem Text="Hospital" Value="Hospital"></asp:ListItem>
                            <asp:ListItem Text="Police" Value="Police"></asp:ListItem>
                            <asp:ListItem Text="Fire Brigade" Value="Fire Brigade"></asp:ListItem>
                            <asp:ListItem Text="Recompression" Value="Recompression"></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
            </section>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </section>
            <section>
                    <div><asp:Button runat="server" Text="Submit" class="submit"/></div>
            </section>
            <section id="confirmbox" runat="server">
                </section>
        </form>
    </body>
</html>
