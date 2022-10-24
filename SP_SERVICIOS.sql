-------------------------------------------------------
-- 		DDL FOR STORE PROCEDURE 'SP_SERVICIOS'		 --
-------------------------------------------------------
CREATE OR REPLACE PROCEDURE SP_SERVICIOS	(pFechaInicio IN VARCHAR2
											,pFechaFin IN VARCHAR2
											,pIdServicio IN INT)
AS
rc sys_refcursor;
BEGIN
    OPEN rc FOR
	SELECT  S.hora_apertura
            ,S.hora_cierre
            ,S.duracion
        FROM SERVICIO S
            WHERE S.id_servicio = pIdServicio;
	dbms_sql.return_result(rc);
END SP_SERVICIOS;