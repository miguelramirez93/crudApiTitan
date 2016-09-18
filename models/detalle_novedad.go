package models

import (
	"errors"
	"fmt"
	"reflect"
	"strings"

	"github.com/astaxie/beego/orm"
)

type DetalleNovedad struct {
	Id       int     `pk;orm:"column(id);serial"`
	Persona  int64   `orm:"column(persona)"`
	Estado   string  `orm:"column(estado)"`
	Vigencia int `orm:"column(vigencia);null"`
	Valor    float64 `orm:"column(valor);null"`
	Cuenta   string  `orm:"column(cuenta);null"`
	Novedad  *Novedad `orm:"rel(fk);column(novedad)"`
}

func (t *DetalleNovedad) TableName() string {
	return "detalle_novedad"
}

func init() {
	orm.RegisterModel(new(DetalleNovedad))
}

// AddDetalleNovedad insert a new DetalleNovedad into database and returns
// last inserted Id on success.
func AddDetalleNovedad(m *DetalleNovedad) (id int64, err error) {
	o := orm.NewOrm()
	id, err = o.Insert(m)
	return
}

// GetDetalleNovedadById retrieves DetalleNovedad by Id. Returns error if
// Id doesn't exist
func GetDetalleNovedadById(id int) (v *DetalleNovedad, err error) {
	o := orm.NewOrm()
	v = &DetalleNovedad{Id: id}
	if err = o.Read(v); err == nil {
		return v, nil
	}
	return nil, err
}

// GetAllDetalleNovedad retrieves all DetalleNovedad matches certain condition. Returns empty list if
// no records exist
func GetAllDetalleNovedad(query map[string]string, fields []string, sortby []string, order []string,
	offset int64, limit int64) (ml []interface{}, err error) {
	o := orm.NewOrm()
	qs := o.QueryTable(new(DetalleNovedad))
	// query k=v
	for k, v := range query {
		// rewrite dot-notation to Object__Attribute
		k = strings.Replace(k, ".", "__", -1)
		qs = qs.Filter(k, v)
	}
	// order by:
	var sortFields []string
	if len(sortby) != 0 {
		if len(sortby) == len(order) {
			// 1) for each sort field, there is an associated order
			for i, v := range sortby {
				orderby := ""
				if order[i] == "desc" {
					orderby = "-" + v
				} else if order[i] == "asc" {
					orderby = v
				} else {
					return nil, errors.New("Error: Invalid order. Must be either [asc|desc]")
				}
				sortFields = append(sortFields, orderby)
			}
			qs = qs.OrderBy(sortFields...)
		} else if len(sortby) != len(order) && len(order) == 1 {
			// 2) there is exactly one order, all the sorted fields will be sorted by this order
			for _, v := range sortby {
				orderby := ""
				if order[0] == "desc" {
					orderby = "-" + v
				} else if order[0] == "asc" {
					orderby = v
				} else {
					return nil, errors.New("Error: Invalid order. Must be either [asc|desc]")
				}
				sortFields = append(sortFields, orderby)
			}
		} else if len(sortby) != len(order) && len(order) != 1 {
			return nil, errors.New("Error: 'sortby', 'order' sizes mismatch or 'order' size is not 1")
		}
	} else {
		if len(order) != 0 {
			return nil, errors.New("Error: unused 'order' fields")
		}
	}

	var l []DetalleNovedad
	qs = qs.OrderBy(sortFields...).RelatedSel()
	if _, err := qs.Limit(limit, offset).All(&l, fields...); err == nil {
		if len(fields) == 0 {
			for _, v := range l {
				ml = append(ml, v)
			}
		} else {
			// trim unused fields
			for _, v := range l {
				m := make(map[string]interface{})
				val := reflect.ValueOf(v)
				for _, fname := range fields {
					m[fname] = val.FieldByName(fname).Interface()
				}
				ml = append(ml, m)
			}
		}
		return ml, nil
	}
	return nil, err
}

// UpdateDetalleNovedad updates DetalleNovedad by Id and returns error if
// the record to be updated doesn't exist
func UpdateDetalleNovedadById(m *DetalleNovedad) (err error) {
	o := orm.NewOrm()
	v := DetalleNovedad{Id: m.Id}
	// ascertain id exists in the database
	if err = o.Read(&v); err == nil {
		var num int64
		if num, err = o.Update(m); err == nil {
			fmt.Println("Number of records updated in database:", num)
		}
	}
	return
}

// DeleteDetalleNovedad deletes DetalleNovedad by Id and returns error if
// the record to be deleted doesn't exist
func DeleteDetalleNovedad(id int) (err error) {
	o := orm.NewOrm()
	v := DetalleNovedad{Id: id}
	// ascertain id exists in the database
	if err = o.Read(&v); err == nil {
		var num int64
		if num, err = o.Delete(&DetalleNovedad{Id: id}); err == nil {
			fmt.Println("Number of records deleted in database:", num)
		}
	}
	return
}
