// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/miguelramirez93/crudApiTitan/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/crudtitan",





		beego.NSNamespace("/detalle_novedad",
			beego.NSInclude(
				&controllers.DetalleNovedadController{},
			),
		),



		beego.NSNamespace("/detalle_preliquidacion",
			beego.NSInclude(
				&controllers.DetallePreliquidacionController{},
			),
		),

		beego.NSNamespace("/categoria_novedad",
			beego.NSInclude(
				&controllers.CategoriaNovedadController{},
			),
		),

		beego.NSNamespace("/novedad",
			beego.NSInclude(
				&controllers.NovedadController{},
			),
		),



		beego.NSNamespace("/nomina",
			beego.NSInclude(
				&controllers.NominaController{},
			),
		),

		beego.NSNamespace("/preliquidacion",
			beego.NSInclude(
				&controllers.PreliquidacionController{},
			),
		),

		beego.NSNamespace("/contrato_general",
			beego.NSInclude(
				&controllers.ContratoGeneralController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
