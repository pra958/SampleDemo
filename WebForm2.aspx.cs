using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       /* 

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }*/
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["name"].ToString();

            if (!IsPostBack)
            {
                BindEmpGrid();
            }
        }

        private void BindEmpGrid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataSet ds = new DataSet();
            try
            {
                SqlCommand cmd = new SqlCommand("SpTable2", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);

                adp.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    EmpGridView.DataSource = ds;
                    EmpGridView.DataBind();
                }
                else
                {
                    EmpGridView.DataSource = null;
                    EmpGridView.DataBind();
                }
               
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured: " + ex.ToString());
            }
            finally
            {
                ds.Clear();
                ds.Dispose();
            }
        }
        protected void EmpGridView_RowDeleting(object sender,GridViewDeleteEventArgs e)
        {
            var username=(EmpGridView.DataKeys[e.RowIndex].Value);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("spDelete", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            BindEmpGrid();
        }

        protected void EmpGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataSet ds = new DataSet();
            try
            {
                SqlCommand cmd = new SqlCommand("spUpdate1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);

                adp.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    EmpGridView.DataSource = ds;
                    EmpGridView.DataBind();
                }
                else
                {
                    EmpGridView.DataSource = null;
                    EmpGridView.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured: " + ex.ToString());
            }
            finally
            {
                ds.Clear();
                ds.Dispose();
            }
        }

        protected void EmpGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            EmpGridView.EditIndex = e.NewEditIndex;
            BindEmpGrid();
        }
        protected void EmpGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            EmpGridView.EditIndex = -1;
            BindEmpGrid();
        }
        protected void EmpGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            var username = (EmpGridView.DataKeys[e.RowIndex].Value);
            
            string phone = (EmpGridView.Rows[e.RowIndex].FindControl("phone") as TextBox).Text;
            string email = (EmpGridView.Rows[e.RowIndex].FindControl("email") as TextBox).Text;
            SqlCommand cmd = new SqlCommand("spUpdates", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@email", email);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            EmpGridView.EditIndex = -1;
            BindEmpGrid();
        }

       
    }

}