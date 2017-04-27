using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class usuarioNegocio
    {

        public Entidad.Usuarios obtenerUsuarioNegocio(string login)
        {

            Datos.usuarioDatos dc = null;
            Entidad.Usuarios usuario = null;

            try
            {

                dc = new Datos.usuarioDatos();
                usuario = dc.obtenerUsuarioDatos(login);

                return usuario;

            }
            catch (Exception err)
            {

                throw err;
            }

        }

    }
}
