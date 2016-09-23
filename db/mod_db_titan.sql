ALTER TABLE titan.novedad
  ADD COLUMN id_proveedor numeric(10,0);

ALTER TABLE titan.detalle_novedad
  ADD COLUMN estado character varying(8) NOT NULL;

ALTER TABLE titan.detalle_novedad
  ADD COLUMN vigencia numeric(4,0);

ALTER TABLE titan.detalle_novedad
   ADD COLUMN valor numeric(16,4);

ALTER TABLE titan.detalle_novedad
   ADD COLUMN cuenta character varying(16);
ALTER TABLE titan.detalle_novedad
  ADD COLUMN id serial;

ALTER TABLE titan.detalle_novedad
  DROP CONSTRAINT pk_novedadxfuncionario;
ALTER TABLE titan.detalle_novedad
  ADD PRIMARY KEY (id);


ALTER TABLE titan.detalle_preliquidacion
  ADD COLUMN id serial;
ALTER TABLE titan.detalle_preliquidacion
  DROP CONSTRAINT "PK_detalle_preliquidacion";
ALTER TABLE titan.detalle_preliquidacion
  ADD PRIMARY KEY (id);

ALTER TABLE titan.detalle_preliquidacion
   ALTER COLUMN concepto DROP NOT NULL;
COMMENT ON COLUMN titan.detalle_preliquidacion.concepto IS 'Identificador del concepto asouciado a un rubro sobre el cual se calcula el valor';

CREATE TABLE titan.descuentos
(
   id serial, 
   nombre character varying(20), 
   base real, 
   valor real, 
   PRIMARY KEY (id)
); 

ALTER TABLE titan.descuentos
  ADD COLUMN detalle_preliquidacion bigint;
ALTER TABLE titan.descuentos
  ADD FOREIGN KEY (detalle_preliquidacion) REFERENCES titan.detalle_preliquidacion (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

CREATE TABLE titan.novedad_aplicada
(
   id serial, 
   detalle_preliquidacion bigint, 
   detalle_novedad bigint, 
   PRIMARY KEY (id), 
   FOREIGN KEY (detalle_preliquidacion) REFERENCES titan.detalle_preliquidacion (id) ON UPDATE NO ACTION ON DELETE NO ACTION, 
   FOREIGN KEY (detalle_novedad) REFERENCES titan.detalle_novedad (id) ON UPDATE NO ACTION ON DELETE NO ACTION
) 
