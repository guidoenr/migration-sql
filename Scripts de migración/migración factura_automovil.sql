INSERT INTO EL_KUELGUE.FACTURA_AUTOMOVIL
SELECT DISTINCT FACTURA_NRO, AUTO_CODIGO
FROM gd_esquema.Maestra m JOIN EL_KUELGUE.AUTOMOVIL a ON (m.AUTO_NRO_CHASIS = a.AUTO_NRO_CHASIS)
WHERE FACTURA_NRO IS NOT NULL AND AUTO_PARTE_CODIGO IS NULL
GO