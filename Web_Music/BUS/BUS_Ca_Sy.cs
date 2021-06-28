using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Ca_Sy
    {
        Data data = new Data();
        public void AddAccount(string name, string ngaysinh, string gioitinh,string quoctich,string gioithieu)
        {
            if (!CheckExistUsername(name))
            {
                string sql = @"insert into Artist values(N'" + name + "','" + ngaysinh + "','" + gioitinh + "',N'"+quoctich+"',N'"+gioithieu+"')";
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
        public DataTable DSBaiHat()
        {
            String sql = "select * from Artist";
            return data.GetTable(sql);
        }
        public DataTable getSingerById(int id)
        {
            string sql = "select *from Artist where id = '" + id + "'";
            return data.GetTable(sql);
        }
        public void DeleteSinger(int id)
        {
            string sql = "delete from Artist where id = '" + id + "'";
            data.ExcuteNonQuerry(sql);

        }
        public void UpDateSinger(string name, string ngaysinh, string gioitinh, string quoctich, string gioithieu,int id)
        {
            string sql = "update Artist set Name = N'" + name + "', DateOfBirth = '" + ngaysinh + "', Sex ='" + gioitinh + "', Nation = N'"+quoctich+"', Story = N'"+gioithieu+"' where ID = '" + id + "' ";
            data.ExcuteNonQuerry(sql);

        }



    } 
}