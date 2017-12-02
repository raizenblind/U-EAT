using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(U_EAT.Startup))]
namespace U_EAT
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
