package routers

import (
	"github.com/astaxie/beego"
)

func init() {

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:ActaInicioController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

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

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:DescuentosController"],
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

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:InformacionProveedorController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:LugarEjecucionController"],
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

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:NovedadAplicadaController"],
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

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:SupervisorContratoController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"],
		beego.ControllerComments{
			"Post",
			`/`,
			[]string{"post"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"],
		beego.ControllerComments{
			"GetOne",
			`/:id`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"],
		beego.ControllerComments{
			"GetAll",
			`/`,
			[]string{"get"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"],
		beego.ControllerComments{
			"Put",
			`/:id`,
			[]string{"put"},
			nil})

	beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"] = append(beego.GlobalControllerRouter["github.com/miguelramirez93/crudApiTitan/controllers:TipoContratoController"],
		beego.ControllerComments{
			"Delete",
			`/:id`,
			[]string{"delete"},
			nil})

}
