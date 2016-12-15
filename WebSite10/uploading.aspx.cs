using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class uploading : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strUrl = HttpContext.Current.Request.PhysicalApplicationPath + "App_Data\\db1.mdb";
        string ACCESS_CONN_STRING = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + strUrl + "";
        OleDbConnection conn = new OleDbConnection(ACCESS_CONN_STRING);
        conn.Open();

        string user=Page.User.Identity.Name;
        /*string str = "insert into aa ( username , title , publish , author , recency , telephone , QQ , price ) values ('" + user + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "')";
            OleDbCommand comm = new OleDbCommand(str, conn);
            comm.ExecuteNonQuery();
            //conn.Close();*/

        if (FileUpload1.PostedFile.FileName != "")
        {
            bool P_bool_fileOK = false;
            if (FileUpload1.HasFile)
            {
                string GPath = FileUpload1.FileName;
                //获得上传文件的扩展名
                String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg", ".bmp" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        P_bool_fileOK = true;

                    }
                }
            }
            if (P_bool_fileOK)//图片格式正确
            {
                string randomStr = DateTime.Now.ToFileTime().ToString();
                String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/BookImages/") + randomStr + fileExtension);

                //System.Data.OleDb.OleDbCommand cmd = new System.Data.OleDb.OleDbCommand();
                //  conn.Open();
                // cmd.Connection = conn;
                string Bookimage = "~/BookImages/" + randomStr + fileExtension;
                if (TextBox1.Text != "" && TextBox5.Text != "" && TextBox6.Text != ""&&TextBox7.Text!="")
                {
                    try
                    {
                        string str = "insert into aa ( username , title , publish , author , recency , telephone , QQ , price , bookimage) values ('" + user + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + Bookimage + "')";
                        OleDbCommand comm = new OleDbCommand(str, conn);
                        comm.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("home.aspx", true);
                    }
                    catch
                    {
                        //Price_label.Text = "请正确填写，该项必须为数字";
                        //Phone_label.Text = "请正确填写，该项必须为数字";
                        //QQ_label.Text = "请正确填写，该项必须为数字";
                    }
                }
                else if(TextBox1.Text=="")
                {
                    Name_label.Text = "书名不能为空";
                }
                else if (TextBox5.Text == "")
                {
                    Price_label.Text = "价格不能为空";
                }
                else if (TextBox6.Text == "")
                {
                    Phone_label.Text = "电话号码不能为空";
                }
                else if (TextBox7.Text == "")
                {
                    QQ_label.Text = "QQ号不能为空";
                }



            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), Guid.NewGuid().ToString(), "alert(\"请选择.gif,.png,.jpeg,.jpg,.bmp格式的图片文件!\")", true);

            }
            
        }
        else
        {
            if (TextBox1.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                string str = "insert into aa ( username , title , publish , author , recency , telephone , QQ , price ) values ('" + user + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "')";
                OleDbCommand comm = new OleDbCommand(str, conn);
                comm.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("home.aspx", true);
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), Guid.NewGuid().ToString(), "alert(\"书籍信息不全!\")", true);
            }
        }
        
    }
}