INSERT INTO EL_KUELGUE.CLIENTE
SELECT DISTINCT CLIENTE_APELLIDO, CLIENTE_NOMBRE, CLIENTE_DIRECCION, CLIENTE_DNI, CLIENTE_FECHA_NAC, CLIENTE_MAIL
FROM gd_esquema.Maestra
WHERE CLIENTE_APELLIDO IS NOT NULL
UNION
SELECT DISTINCT FAC_CLIENTE_APELLIDO, FAC_CLIENTE_NOMBRE, FAC_CLIENTE_DIRECCION, FAC_CLIENTE_DNI, FAC_CLIENTE_FECHA_NAC, FAC_CLIENTE_MAIL
FROM gd_esquema.Maestra
WHERE FAC_CLIENTE_APELLIDO IS NOT NULL
GO