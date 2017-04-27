using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class wfUsuarioMostrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                mvAgruparDatos.SetActiveView(vwEspecificarUsuario);

            }
     
        }

        protected void btnBuscarUsuario_Click(object sender, EventArgs e)
        {

            Negocio.usuarioNegocio dc = null;
            Entidad.Usuarios usuario = null;

            try
            {
                mvAgruparDatos.SetActiveView(vwMostrarDatos);

                dc = new Negocio.usuarioNegocio();

                usuario = dc.obtenerUsuarioNegocio(txtLoginBuscar.Text);

                lblLogin.Text = txtLoginBuscar.Text;
                lblCorreoElectronico.Text = usuario.correo_electronico;
                lblFechaProceso.Text = usuario.fecha_proceso.ToShortDateString();
                lblNombre.Text = usuario.nombre;

            }
            catch (Exception)
            {

                cvErrores.IsValid = false;
                cvErrores.ErrorMessage = "Por favor verifique el usuario ingresado";
                
            }

        }
    }
}