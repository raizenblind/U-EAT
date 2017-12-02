using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace U_EAT.MyClass
{
    public class VarConst
    {
        public String connectionstring = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString.ToString();
    }
}