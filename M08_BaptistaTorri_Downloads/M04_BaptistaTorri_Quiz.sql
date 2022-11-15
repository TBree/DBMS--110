CREATE TABLE  "SUPPLIERS" 
   (	"SUP_ID" NUMBER(15,0) NOT NULL ENABLE, 
	"SUP_NAME" VARCHAR2(30) NOT NULL ENABLE, 
	"CONTACT_NAME" VARCHAR2(50), 
	 CONSTRAINT "SUPPLIERS_PK" PRIMARY KEY ("SUP_ID")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_SUPPLIERS" 
  before insert on "SUPPLIERS"               
  for each row  
begin   
  if :NEW."SUP_ID" is null then 
    select "SUPPLIERS_SEQ".nextval into :NEW."SUP_ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_SUPPLIERS" ENABLE
/
