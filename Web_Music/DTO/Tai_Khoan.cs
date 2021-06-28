using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Music.DTO
{
    public class Tai_Khoan
    {
        public int ID;
        public string Username;
        public string Password;
        public string Role;

        public Tai_Khoan(int id,string username, string password, string role)
        {
            ID = id;
            Username = username;
            Password = password;
            Role = role;
        }
        public Tai_Khoan()
        {

        }
    }
}