ALTER TABLE greetings_card CHANGE COLUMN is_read status SMALLINT DEFAULT 0;
ALTER TABLE greetings_card ADD COLUMN notify_user SMALLINT DEFAULT 0;

DROP TABLE IF EXISTS greetings_card_archive;
CREATE TABLE greetings_card_archive
(
	id_archive INT NOT NULL,
	id_gct TINYINT NOT NULL,
	domain_name VARCHAR(80) NOT NULL,
	nb_card INT NOT NULL,
	nb_card_red INT NOT NULL,
	year_archive INT NOT NULL,
	PRIMARY KEY (id_archive)
);