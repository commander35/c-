using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Filtrele
/// </summary>
public class Filtrele
{
	public Filtrele()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static bool filtrelencek(string torun)
    {
        string[] a = torun.Split(' ');
        string[] b = { "where", "select", "from", "delete", "drop", "alter", "table", "insert", "update", "set", "join", "script", "alert", "body", "'" };
        for (int i = 0; i < a.Length; i++)
        {
            for (int k = 0; k < b.Length; k++)
            {
                if (a[i] == b[k])
                { return false; }
            }

        }
        return true;
    }
}