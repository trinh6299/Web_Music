using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Album
    {
        Data data = new Data();
        public DataTable GetAllalbum()
        {
            string sql = "select * from Album";
            return data.GetTable(sql);
        }
        public DataTable getAlbumbyID(int id)
        {
            string sql = "select *from Album where id = '" + id + "'";
            return data.GetTable(sql);
        }
        public void DeleteAlbum(int id)
        {
            string sql = "delete from Album where id = '" + id + "'";
            data.ExcuteNonQuerry(sql);

        }
        public void upDateAlbum(string name,string thumbnail, int id)
        {
            string sql = "update Album set Name = '" + name + "' ,Thumbnail = '"+ thumbnail + "' where ID = '" + id + "' ";
            data.ExcuteNonQuerry(sql);

        }
    }
}