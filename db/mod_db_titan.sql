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

