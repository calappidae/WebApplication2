using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class login : System.Web.UI.Page
    {
        string s = "server=.; database=teaching; uid=sa; pwd= 123456"; 


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(s);
            string userName = TextBox1.Text.Trim();
            string userPwd = TextBox2.Text.Trim();
            string userRole = RadioButtonList1.SelectedValue;
            string selectStr = "";
            switch (userRole)
            {
                case "0"://角色教学秘书
                    selectStr = "select * from Teacher where 教师号='" + userName + "'and 密码='"+userPwd+"'";
                    break;
                case "1":
                    selectStr = "select * from Teacher where 教师号='" + userName + "'and 密码='"+userPwd+"'";
                    break;
                case "2":
                    selectStr = "select * from Manager Student 学号='" + userName + "'and 密码='" + userPwd + "'";
                    break;
                case "3":
                    selectStr = "select * from Manager where 管理员账号='" + userName + "'and 密码='" + userPwd + "'";
                    break;
            }
            conn.Open();
            SqlCommand cmd = new SqlCommand(selectStr, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["userName"] = userName;
                Session["userN"] = (string)dr[2];
                Session["userRole"] = userRole;
                TextBox1.Text = "";
                TextBox2.Text = "";
                Label3.Text = "";
                switch (userRole)
                {
                    case "0": 
                        Response.Redirect("teacher.aspx");
                        break;
                    case "1":
                        Response.Redirect("teacher.aspx");
                        break;
                    case "2":
                        Response.Redirect("student.aspx");
                        break;
                    case "3":
                        Response.Redirect("Main.aspx");
                        break;
                }

            }else{
                Label3.Text = "用户名或密码错误!";
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label3.Text = "";
            RadioButtonList1.SelectedValue = "1";
        }
    }
}