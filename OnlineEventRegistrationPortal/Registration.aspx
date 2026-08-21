<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs"
    Inherits="OnlineEventRegistrationPortal.Registration" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Event Registration Portal</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 650px;
            margin: 30px auto;
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #aaa;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .row {
            margin-bottom: 15px;
        }

        .label {
            display: inline-block;
            width: 180px;
            font-weight: bold;
        }

        .input {
            width: 300px;
            padding: 7px;
        }

        .error {
            color: red;
            font-size: 13px;
        }

        .btn {
            padding: 10px 25px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .success {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

<div class="container">

    <h1>Online Event Registration</h1>

    <asp:ValidationSummary
        ID="ValidationSummary1"
        runat="server"
        ForeColor="Red"
        HeaderText="Please correct the following errors:" />

    <div class="row">
        <span class="label">Full Name:</span>

        <asp:TextBox
            ID="txtName"
            runat="server"
            CssClass="input">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvName"
            runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>
    </div>


    <div class="row">
        <span class="label">Email:</span>

        <asp:TextBox
            ID="txtEmail"
            runat="server"
            CssClass="input">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator
            ID="revEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Enter a valid email address."
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RegularExpressionValidator>
    </div>


    <div class="row">
        <span class="label">Mobile Number:</span>

        <asp:TextBox
            ID="txtMobile"
            runat="server"
            CssClass="input">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvMobile"
            runat="server"
            ControlToValidate="txtMobile"
            ErrorMessage="Mobile number is required."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator
            ID="revMobile"
            runat="server"
            ControlToValidate="txtMobile"
            ErrorMessage="Enter a valid 10-digit mobile number."
            ValidationExpression="^[0-9]{10}$"
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RegularExpressionValidator>
    </div>


    <div class="row">
        <span class="label">Age:</span>

        <asp:TextBox
            ID="txtAge"
            runat="server"
            CssClass="input">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvAge"
            runat="server"
            ControlToValidate="txtAge"
            ErrorMessage="Age is required."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>

        <asp:RangeValidator
            ID="rangeAge"
            runat="server"
            ControlToValidate="txtAge"
            MinimumValue="18"
            MaximumValue="60"
            Type="Integer"
            ErrorMessage="Age must be between 18 and 60."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RangeValidator>
    </div>


    <div class="row">
        <span class="label">Gender:</span>

        <asp:RadioButtonList
            ID="rblGender"
            runat="server"
            RepeatDirection="Horizontal">

            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>

        </asp:RadioButtonList>

        <asp:RequiredFieldValidator
            ID="rfvGender"
            runat="server"
            ControlToValidate="rblGender"
            ErrorMessage="Please select gender."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>
    </div>


    <div class="row">
        <span class="label">Select Event:</span>

        <asp:DropDownList
            ID="ddlEvent"
            runat="server"
            CssClass="input">

            <asp:ListItem Value="">-- Select Event --</asp:ListItem>
            <asp:ListItem>AI Workshop</asp:ListItem>
            <asp:ListItem>Web Development Seminar</asp:ListItem>
            <asp:ListItem>Cyber Security Workshop</asp:ListItem>
            <asp:ListItem>Cloud Computing Seminar</asp:ListItem>

        </asp:DropDownList>

        <asp:RequiredFieldValidator
            ID="rfvEvent"
            runat="server"
            ControlToValidate="ddlEvent"
            InitialValue=""
            ErrorMessage="Please select an event."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>
    </div>


    <div class="row">
        <span class="label">Event Date:</span>

        <asp:Calendar
            ID="calEvent"
            runat="server"
            SelectionMode="Day">
        </asp:Calendar>
    </div>


    <div class="row">
        <span class="label">Interested Topics:</span>

        <asp:CheckBoxList
            ID="cblTopics"
            runat="server">

            <asp:ListItem>Artificial Intelligence</asp:ListItem>
            <asp:ListItem>Web Development</asp:ListItem>
            <asp:ListItem>Cloud Computing</asp:ListItem>
            <asp:ListItem>Cyber Security</asp:ListItem>

        </asp:CheckBoxList>
    </div>


    <div class="row">
        <span class="label">Password:</span>

        <asp:TextBox
            ID="txtPassword"
            runat="server"
            TextMode="Password"
            CssClass="input">
        </asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvPassword"
            runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:RequiredFieldValidator>
    </div>


    <div class="row">
        <span class="label">Confirm Password:</span>

        <asp:TextBox
            ID="txtConfirmPassword"
            runat="server"
            TextMode="Password"
            CssClass="input">
        </asp:TextBox>

        <asp:CompareValidator
            ID="cvPassword"
            runat="server"
            ControlToValidate="txtConfirmPassword"
            ControlToCompare="txtPassword"
            ErrorMessage="Passwords do not match."
            CssClass="error"
            Display="Dynamic">
            *
        </asp:CompareValidator>
    </div>


    <div class="row">

        <asp:CheckBox
            ID="chkTerms"
            runat="server"
            Text=" I agree to the terms and conditions." />

        <asp:CustomValidator
            ID="cvTerms"
            runat="server"
            ErrorMessage="You must accept the terms and conditions."
            CssClass="error"
            Display="Dynamic"
            OnServerValidate="cvTerms_ServerValidate">
            *
        </asp:CustomValidator>

    </div>


    <div class="row">

        <asp:Button
            ID="btnRegister"
            runat="server"
            Text="Register"
            CssClass="btn"
            OnClick="btnRegister_Click" />

    </div>


    <asp:Label
        ID="lblMessage"
        runat="server"
        CssClass="success">
    </asp:Label>

</div>

</form>

</body>
</html>