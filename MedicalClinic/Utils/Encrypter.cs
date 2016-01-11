// ***********************************************************************
// Assembly         : Utils
// Author           :
//
// ***********************************************************************
// <copyright file="Encrypter.cs" company="">
//     . All rights reserved.
// </copyright>
// <summary></summary>
// ***********************************************************************

using System.Security.Cryptography;
using System.Text;

namespace Utils
{
    /// <summary>
    /// class handeling the encryption of the password to store into the database
    /// </summary>
    public static class Encrypter
    {
        public static string GetMD5(string password)
        {
            MD5 md5Hash = MD5.Create();
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(password));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }
    }
}