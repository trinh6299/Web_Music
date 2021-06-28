using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Account
    {
        Data data = new Data();
        public string GetRole(string username, string password)
        {
            string role = "";
            string sql = @"select * from Account where Username ='" + username + "'and Password = '" + password + "'";
            DataTable dt = new DataTable();
            dt = data.GetTable(sql);
            if (dt.Rows.Count == 1)
            {
                role = dt.Rows[0][3].ToString();
            }
            else
            {
                role = "none";
            }
            return role.Trim();
        }
        public void AddAccountForUser(string username, string password, string role)
        {
            if (!CheckExistUsername(username))
            {
                string sql = @"insert into Account values('" + username + "','" + password + "','" + role + "')";
                data.ExcuteNonQuerry(sql);
            }

        }
        public bool CheckExistUsername(string username)
        {
            string sql = @"select * from Account where Username ='" + username + "'";
            DataTable dt = new DataTable();
            dt = data.GetTable(sql);
            if (dt.Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public DataTable GetAllAccount()
        {
            String sql = "select * from Account";
            return data.GetTable(sql);
        }
        public DataTable getUserById(int id)
        {
            string sql = "select *from Account where id = '" + id + "'";
            return data.GetTable(sql);
        }
        public void DeleteAccount(int id)
        {
            string sql = "delete from Account where id = '" + id + "'";
            data.ExcuteNonQuerry(sql);

        }
        public void UpDateAccount(string username,string password,string role, int id)
        {
            string sql = "update Account set Username = '"+username+"', Password = '"+password+"', Role='"+role+"' where ID = '"+id+"' ";
            data.ExcuteNonQuerry(sql);

        }
        
        public DataTable FindAccountByUsername(string username)
        {
            string sql = @"select * from Account where Username like '%"+username+"%'";
            return data.GetTable(sql);
        }

    }
}