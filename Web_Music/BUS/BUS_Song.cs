using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_Music.DAL;

namespace Web_Music.BUS
{
    public class BUS_Song
    {
        Data data = new Data();
        public DataTable GetChiTietBaiHatById(int id)
        {
            string sql = @"select * from Song, Artist where Song.Artist_ID = Artist.ID and Song.ID = '" + id + "'";
            return data.GetTable(sql);
        }

        public void AddSong(string name, string lyric, string thumbnail, string source, int artist_id, int category_id)
        {
            string sql = @"insert into Song values(N'"+name+"',N'"+lyric+"','"+thumbnail+"','"
                +source+"','"+500+"','"+artist_id+"','"+category_id+"')";

            data.ExcuteNonQuerry(sql);
        }

        public DataTable GetAllSong()
        {
            string sql = @"select * from Song";
            return data.GetTable(sql);
        }

        public void DeleteSong(int id)
        {
            string sql = @"delete from Song where ID = '"+id+"'";
            data.ExcuteNonQuerry(sql);
        }

        public DataTable FindSongByName(string name)
        {
            string sql = @"select * from Song where Name like '%" + name + "%'";
            return data.GetTable(sql);
        }
    }
}