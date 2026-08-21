using System;
using System.Web.UI;

namespace OnlineEventRegistrationPortal
{
    public partial class Registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string mobile = txtMobile.Text;
                string age = txtAge.Text;
                string gender = rblGender.SelectedValue;
                string eventName = ddlEvent.SelectedValue;

                string topics = "";

                foreach (System.Web.UI.WebControls.ListItem item
                         in cblTopics.Items)
                {
                    if (item.Selected)
                    {
                        topics += item.Text + ", ";
                    }
                }

                string eventDate = calEvent.SelectedDate.ToShortDateString();

                lblMessage.Text =
                    "<br/><br/>Registration Successful!<br/>" +
                    "Name: " + name + "<br/>" +
                    "Email: " + email + "<br/>" +
                    "Mobile: " + mobile + "<br/>" +
                    "Age: " + age + "<br/>" +
                    "Gender: " + gender + "<br/>" +
                    "Event: " + eventName + "<br/>" +
                    "Event Date: " + eventDate + "<br/>" +
                    "Topics: " + topics;
            }
        }

        protected void cvTerms_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }
    }
}