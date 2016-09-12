package routers

import (
	"github.com/astaxie/beego"
)

func init() {

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:CategoriaNovedadController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ContratoGeneralController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetalleNovedadController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DetallePreliquidacionController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NominaController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:PreliquidacionController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

}
