<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scuba-Diving-Incident-Report.aspx.cs" Inherits="N01350618_Assignment1.Scuba_Diving_Incident_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="incident_report" runat="server" method="POST" action="https://postman-echo.com/post">
    <h1 style="text-align:center">Scuba Diving Incidence Report</h1>
    
    <table>
        <tr>
            <th style="text-align:left;font-size:23px">Victim's General Information</th>
        </tr>
        <tr>
            <td>First Name</td>
           <td>
               <asp:TextBox runat="server" ID="diver_fname" ></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox runat="server" ID="diver_lname" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <asp:RadioButtonList runat="server" ID="diver_gender">
                    <asp:ListItem Text="Male" Value="diver_gender_1"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="diver_gender_2"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox runat="server" ID="diver_email" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>
                <asp:TextBox ID="diver_phone_number" runat="server"  TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Time of Incident</td>
            <td>
                <asp:TextBox ID="incident_time" runat="server"  TextMode="Datetime"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Date of Incident</td>
            <td>
                <asp:TextBox ID="incident_date" TextMode="date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Location of Incident</td>
            <td>
                <asp:TextBox ID="incident_location" TextMode="multiline" Columns="20" Rows="3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="text-align:left;font-size:23px">Equipment used by the Diving Accident Victim</th>
        </tr>
        <tr>
            <td>Breathing Loop</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Open Circuit" Value="breathing_loop_1"></asp:ListItem>
                    <asp:ListItem Text="Semi Closed/Closed Circuit" Value="breathing_loop_2"></asp:ListItem>
                    <asp:ListItem Text="Surface Supplied" Value="breathing_loop_3"></asp:ListItem>
                    <asp:ListItem Text="Snorkel" Value="breathing_loop_4"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Diver Dress</td>
            <td style="padding-top:20px;">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                    <asp:ListItem Text="None/Dive Skin" Value="diver_dress_1"></asp:ListItem>
                    <asp:ListItem Text="Wet Suit" Value="diver_dress_2"></asp:ListItem>
                    <asp:ListItem Text="Dry Suit" Value="diver_dress_3"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <th style="text-align:left;font-size:23px">Dive Information – Incident Dive</th>
        </tr>
        <tr>
            <td>Name of on-site diving supervisor/Lead diver</td>
            <td>
                <asp:TextBox runat="server" ID="lead_diver_name" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Name of dive buddy</td>
            <td>
                <asp:TextBox runat="server" ID="dive_buddy_name" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Dive buddy affiliation</td>
            <td>
                <asp:TextBox runat="server" ID="dive_buddy_affiliantion" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Surface Conditions</td>
            <td>
                <asp:TextBox runat="server" ID="surface_conditions" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Air Temperature(&deg;F)</td>
            <td>
                <asp:TextBox runat="server" ID="air_temperature" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Water Temperature(&deg;F)</td>
            <td>
                <asp:TextBox runat="server" ID="water_temperature" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Was this dive typical of the diver’s normal type of diving?</td>
            <td>
                <asp:RadioButtonList runat="server" ID="divers_normal_dive">
                    <asp:ListItem Text="Yes" Value="divers_normal_dive_1"></asp:ListItem>
                    <asp:ListItem Text="No" Value="divers_normal_dive_2"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>If NO, explain:</td>
            <td>
                <asp:TextBox ID="explain" TextMode="multiline" Columns="20" Rows="3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Suspected injuries or Illnesses</td>
            <td>
                <asp:DropDownList runat="server" ID="diver_injuries">
                    <asp:ListItem Text="Select Injuries" Value="" Selected="true" disabled="true"></asp:ListItem>
                    <asp:ListItem Text="AGE" Value="diver_injuries_1"></asp:ListItem>
                    <asp:ListItem Text="DCS" Value="diver_injuries_2"></asp:ListItem>
                    <asp:ListItem Text="Pulmonary Barotrauma" Value="diver_injuries_3"></asp:ListItem>
                    <asp:ListItem Text="Other Barotrauma" Value="diver_injuries_4"></asp:ListItem>
                    <asp:ListItem Text="None" Value="diver_injuries_5"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="diver_injuries_6"></asp:ListItem>
                </asp:DropDownList>
             </td>
        </tr>
        <tr>
            <td>Factors Involved</td>
            <td style="padding-top:20px;">
                <asp:CheckBoxList runat="server" ID="factor">
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
            </td>
        </tr>
        <tr>
            <td>Emergency Services Involved</td>
            <td style="padding-top:20px;">
                <asp:CheckBoxList runat="server" ID="emergency_service">
                    <asp:ListItem Text="Coastguard" Value="Coastguard"></asp:ListItem>
                    <asp:ListItem Text="Lifeboat" Value="Lifeboat"></asp:ListItem>
                    <asp:ListItem Text="Helicopter" Value="Helicopter"></asp:ListItem>
                    <asp:ListItem Text="Ambulance" Value="Ambulance"></asp:ListItem>
                    <asp:ListItem Text="Hospital" Value="Hospital"></asp:ListItem>
                    <asp:ListItem Text="Police" Value="Police"></asp:ListItem>
                    <asp:ListItem Text="Fire Brigade" Value="Fire Brigade"></asp:ListItem>
                    <asp:ListItem Text="Recompression" Value="Recompression"></asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td><asp:Button runat="server" Text="Submit"/></td>
        </tr>
    </table>

    </form>
</body>
</html>
