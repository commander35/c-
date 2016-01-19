using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for table_filtrele
/// </summary>
public class table_filtrele
{
	public table_filtrele()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static bool filtrelencek(string torun)
    {
        string[] a = torun.Split(' ');
        string[] b = { "sdesignation", "ssolution", "sprofitability", "sstage" };
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