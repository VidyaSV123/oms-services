SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS BILL_TO_ADDRESS;
CREATE TABLE BILL_TO_ADDRESS (
  BILL_TO_ADDRESS_ID VARCHAR(20) NOT NULL ,
  FIRST_NAME VARCHAR(20),
  LAST_NAME VARCHAR(20),
  ADDRESS_1 VARCHAR(100),
  ADDRESS_2 VARCHAR(100),
  CITY VARCHAR(20),
  STATE VARCHAR(20),
  ZIP_CODE VARCHAR(10),
  PRIMARY KEY(BILL_TO_ADDRESS_ID)
);

DROP TABLE IF EXISTS BILL_TO_ADDRESS;
CREATE TABLE BILL_TO_ADDRESS (
  BILL_TO_ADDRESS_ID VARCHAR(20) NOT NULL,
  FIRST_NAME VARCHAR(20),
  LAST_NAME VARCHAR(20),
  ADDRESS_1 VARCHAR(100),
  ADDRESS_2 VARCHAR(100),
  CITY VARCHAR(20),
  STATE VARCHAR(20),
  ZIP_CODE VARCHAR(10),
  PRIMARY KEY(BILL_TO_ADDRESS_ID)
);

DROP TABLE IF EXISTS SHIP_TO_ADDRESS;
CREATE TABLE SHIP_TO_ADDRESS (
  SHIP_TO_ADDRESS_ID VARCHAR(20) NOT NULL ,
  FIRST_NAME VARCHAR(20),
  LAST_NAME VARCHAR(20),
  ADDRESS_1 VARCHAR(100),
  ADDRESS_2 VARCHAR(100),
  CITY VARCHAR(20),
  STATE VARCHAR(20),
  ZIP_CODE VARCHAR(10),
  PRIMARY KEY(SHIP_TO_ADDRESS_ID)
);

DROP TABLE IF EXISTS PAYMENT_INFO;
CREATE TABLE PAYMENT_INFO (
  PAYMENT_ID VARCHAR(20) NOT NULL ,
  PAYMENT_STATUS VARCHAR(20),
  CARD_TYPE VARCHAR(20),
  AUTHORIZED_AMOUNT NUMERIC,
  COLLECTED_AMOUNT NUMERIC,
  PRIMARY KEY(PAYMENT_ID)
);

DROP TABLE IF EXISTS CHARGES;
CREATE TABLE CHARGES (
  CHARGES_ID VARCHAR(20) NOT NULL ,
  LINE_SUB_TOTAL NUMERIC,
  TOTAL_CHARGES NUMERIC,
  SALES_TAX NUMERIC,
  GRAND_TOTAL NUMERIC,
  PRIMARY KEY(CHARGES_ID)
);

DROP TABLE IF EXISTS ORDER_LINE;
CREATE TABLE ORDER_LINE (
  LINE_ITEM_ID VARCHAR(20) NOT NULL ,
  CUSTOMER_ORDER_ID VARCHAR(20),
  SHIP_NODE VARCHAR(20),
  SHIP_NODE_DESC VARCHAR(20),
  LEVEL_OF_SERVICE VARCHAR(10),
  PRIME_LINE_NO VARCHAR(10),
  SUB_LINE_NO VARCHAR(10),
  CUSTOMER_SKU VARCHAR(20),
  SKU_DESCRIPTION VARCHAR(40),
  EST_ARRIVAL_DATE VARCHAR(20),
  STATUS VARCHAR(10),
  RESHIPPED_BEFORE VARCHAR(10),
  SHIP_TO_ADDRESS_ID VARCHAR(20),
  LINE_CHARGE_ID VARCHAR(20),
  PRIMARY KEY(LINE_ITEM_ID)
);

DROP TABLE IF EXISTS SALES_ORDER;
CREATE TABLE SALES_ORDER (
  CUSTOMER_ORDER_ID VARCHAR(20) NOT NULL,
  PRIMARY_PHONE VARCHAR(20),
  CUSTOMER_EMAIL_ID VARCHAR(20),
  ORDER_STATUS VARCHAR(20),
  FIRST_NAME VARCHAR(20),
  ORDER_DATE VARCHAR(20),
  PROFILE_ID VARCHAR(20),
  LAST_NAME VARCHAR(20),
  ENTRY_TYPE VARCHAR(20),
  BILL_TO_ADDRESS_ID VARCHAR(20),
  SHIP_TO_ADDRESS_ID VARCHAR(20),
  LINE_ITEM_ID VARCHAR(20),
  PAYMENT_ID VARCHAR(20),
  CHARGES_ID VARCHAR(20),
  PRIMARY KEY(CUSTOMER_ORDER_ID)
);

DROP TABLE IF EXISTS INVENTORY;
CREATE TABLE INVENTORY (
  SKU_ID VARCHAR(20) NOT NULL ,
  STORE_ID VARCHAR(20),
  QTY NUMERIC,
  PRIMARY KEY(SKU_ID,STORE_ID)
);

DROP TABLE IF EXISTS SHIPPING;
CREATE TABLE SHIPPING (
  SKU_ID VARCHAR(20) NOT NULL ,
  STANDARD_SHIPPING NUMERIC,
  EXPEDITED_SHIPPING NUMERIC,
  EXPRESS_SHIPPING NUMERIC,
  PRIMARY KEY(SKU_ID)
);

DROP TABLE IF EXISTS LINE_CHARGE;
CREATE TABLE LINE_CHARGE (
  LINE_CHARGE_ID VARCHAR(20) NOT NULL ,
  TOTAL_CHARGES NUMERIC,
  PRIMARY KEY(LINE_CHARGE_ID)
);

DROP TABLE IF EXISTS PRODUCT_INFO;
CREATE TABLE PRODUCT_INFO (
	PRODUCT_ID VARCHAR(20) NOT NULL,
	NAME VARCHAR(20),
	DESCRIPTION VARCHAR(128),
	MANUFACTURER VARCHAR(20),
  	PRIMARY KEY(PRODUCT_ID)
);
SET FOREIGN_KEY_CHECKS=1;



