/*Mark Ruzinov 4187*/
DELIMITER $$

CREATE TRIGGER PacketTrigger
	AFTER INSERT
	ON packet
	FOR EACH ROW
BEGIN
   declare g varchar(255);
SELECT
  price INTO g
FROM packet_price
WHERE id_packet_Price = new.fk_price_packet;

INSERT INTO STAT
SET Desc_STAT = CONCAT('Inserted packet with ID = ', new.id_packet, ' and Price: ', g),
    DATE_STAT = NOW(); END
$$

DELIMITER ;
