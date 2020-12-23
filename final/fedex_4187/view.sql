/*Mark Ruzinov ID 4187*/
CREATE OR REPLACE VIEW fedex_4187.packageSum
AS SELECT
  client.id_Client as 'Client ID', client.firstName as 'First Name', client.lastName as 'Last Name', SUM(packet_price.price) AS 'Total Price'
FROM packet
	INNER JOIN client ON packet.fk_client = client.id_client
	inner join packet_price on packet.fk_price_packet = packet_price.id_packet_Price
GROUP BY client.id_Client;
