--2.a:

GO
CREATE PROCEDURE P_2_A
@LangID as numeric(1,0)
AS
SELECT naslov,opis,gal_id_galerija FROM GALERIJA_OPIS
WHERE jazik_id_jazik_n = @LangID;
GO

--2.b:
GO
CREATE PROCEDURE P_2_B
AS
SELECT jazik, ime, ID_novost
FROM KNOVOST a
INNER JOIN JAZIK b on a.jazik_id_jazik_n = b.ID_jazik
INNER JOIN KADMINISTRATOR c on a.adm_id_admin_n = c.ID_admin;
GO

--2.c:
GO
CREATE PROCEDURE P_2_C
AS
SELECT ime, naziv
FROM MAILING a
INNER JOIN EMAIL b on a.email_id_posetitel = b.ID_posetitel
INNER JOIN EMAIL_GRUPA c on a.email_id_grupa = c.ID_grupa
ORDER BY ime;
GO

--2.d:
GO
CREATE PROCEDURE P_2_D
@GroupID as numeric(1,0)
AS
SELECT naslov, tekst
FROM EMAIL_PORAKA a
INNER JOIN EMAIL_GRUPA b on a.grupa_id_grupa = ID_grupa
WHERE aktivna = 1 AND ID_grupa = @GroupID;
GO
