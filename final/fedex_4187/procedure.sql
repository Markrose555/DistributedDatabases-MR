/*Mark Ruzinov 4187*/
DELIMITER $$

CREATE PROCEDURE statPacket(IN packetID INTEGER)
BEGIN
SELECT
  fk_packet as 'Packet ID', status_delivery.status as 'Status'
FROM delivery
  INNER JOIN status_delivery
    ON delivery.fk_status = status_delivery.id_status
WHERE delivery.fk_packet = packetID; END
$$

DELIMITER ;



/*TO CALL PROCEDURE RUN THIS*/
CALL statPacket(1);
/*RETURNS ALL STATUSES FOR PACKETS WITH ID 1*/
