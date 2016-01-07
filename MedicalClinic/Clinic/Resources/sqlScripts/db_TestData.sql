--------------------------------------------------------
--  File created - joi-ianuarie-07-2016   
--------------------------------------------------------
DROP TABLE "HR"."ADMIN" cascade constraints;
DROP TABLE "HR"."CREDENTIALS" cascade constraints;
DROP TABLE "HR"."DEPARTMENT" cascade constraints;
DROP TABLE "HR"."DOCTOR" cascade constraints;
DROP TABLE "HR"."PATIENT" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence AUTO_INCREMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."AUTO_INCREMENT_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 663 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "HR"."ADMIN" 
   (	"ID_ADMIN" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CREDENTIALS
--------------------------------------------------------

  CREATE TABLE "HR"."CREDENTIALS" 
   (	"ID" NUMBER, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"TYPE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "HR"."DEPARTMENT" 
   (	"ID_DEPT" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"FLOOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DOCTOR
--------------------------------------------------------

  CREATE TABLE "HR"."DOCTOR" 
   (	"ID_DOCTOR" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ID_DEPT" NUMBER, 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"STATUS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PATIENT
--------------------------------------------------------

  CREATE TABLE "HR"."PATIENT" 
   (	"ID_PATIENT" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"BIRTHDATE" DATE, 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"GENETIC_DISORDER" VARCHAR2(200 BYTE), 
	"INSURANCE_NUMBER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.ADMIN
SET DEFINE OFF;
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('1','Admin','Root');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('302','Admin First Name 0002','Admin Last Name0002');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('300','Admin First Name 0000','Admin Last Name0000');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('301','Admin First Name 0001','Admin Last Name0001');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('303','Admin First Name 0003','Admin Last Name0003');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('304','Admin First Name 0004','Admin Last Name0004');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('305','Admin First Name 0005','Admin Last Name0005');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('306','Admin First Name 0006','Admin Last Name0006');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('307','Admin First Name 0007','Admin Last Name0007');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('308','Admin First Name 0008','Admin Last Name0008');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('309','Admin First Name 0009','Admin Last Name0009');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('310','Admin First Name 0010','Admin Last Name0010');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('311','Admin First Name 0011','Admin Last Name0011');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('312','Admin First Name 0012','Admin Last Name0012');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('313','Admin First Name 0013','Admin Last Name0013');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('314','Admin First Name 0014','Admin Last Name0014');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('315','Admin First Name 0015','Admin Last Name0015');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('316','Admin First Name 0016','Admin Last Name0016');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('317','Admin First Name 0017','Admin Last Name0017');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('318','Admin First Name 0018','Admin Last Name0018');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('319','Admin First Name 0019','Admin Last Name0019');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('320','Admin First Name 0020','Admin Last Name0020');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('321','Admin First Name 0021','Admin Last Name0021');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('322','Admin First Name 0022','Admin Last Name0022');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('323','Admin First Name 0023','Admin Last Name0023');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('324','Admin First Name 0024','Admin Last Name0024');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('325','Admin First Name 0025','Admin Last Name0025');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('326','Admin First Name 0026','Admin Last Name0026');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('327','Admin First Name 0027','Admin Last Name0027');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('328','Admin First Name 0028','Admin Last Name0028');
Insert into HR.ADMIN (ID_ADMIN,FIRST_NAME,LAST_NAME) values ('329','Admin First Name 0029','Admin Last Name0029');
REM INSERTING into HR.CREDENTIALS
SET DEFINE OFF;
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('1','admin','1a1dc91c907325c69271ddf0c944bc72','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('458','patient0312@gmail.com','19a6a0b9360519fe82b5b06b3f79d62c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('456','patient0310@gmail.com','af60524461db23510568ba60bdfa6c46','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('457','patient0311@gmail.com','e3a958df39563a3bc9cbc53fc79dee52','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('459','patient0313@gmail.com','df6806944b773a726f21ccc793f57ce8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('460','patient0314@gmail.com','2763d6234f7431f32844926f634c8fd4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('461','patient0315@gmail.com','970ab5357672c2a0286339df425935ca','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('462','patient0316@gmail.com','3a1e655328599b6a1208115f2271c942','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('463','patient0317@gmail.com','aa763880535bec1ffba4663cded7cc71','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('464','patient0318@gmail.com','dd9723ecc8e1583b290e0e93f7fa1198','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('465','patient0319@gmail.com','fd472557abae911e82fdb13ca58395af','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('466','patient0320@gmail.com','490b6c600e1a306bf2feefc7ee9631b3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('467','patient0321@gmail.com','cd2acea595e93463bc8ea3b6d1583fc9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('468','patient0322@gmail.com','f655f096d6a1f6fbcbed5d050759ab54','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('469','patient0323@gmail.com','4ee9ea265c102786311464a9149820c8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('470','patient0324@gmail.com','d647fad58cb420d58678644665603f24','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('471','patient0325@gmail.com','df790633e08a4f758800728a652ffcfc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('472','patient0326@gmail.com','86564dcdfc2f8dde5d4ba87e621ea1e9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('473','patient0327@gmail.com','b66e006887ffc2f80406dab915ecddb2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('474','patient0328@gmail.com','e0bc50d4196a3d8b47b95ca694c2eb66','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('475','patient0329@gmail.com','dbea80a41684bed3beb7decca3c96e7e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('476','patient0330@gmail.com','520ffff5e082be9865d99f5b8a8c017a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('477','patient0331@gmail.com','ed798f8422b27e744cededabf35c9c23','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('478','patient0332@gmail.com','20752b816f453e8343829fdec2c2581d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('479','patient0333@gmail.com','e14337dca990ee77b944d19045b5e927','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('480','patient0334@gmail.com','54b5ef7e199648a79d82ab94474a550a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('481','patient0335@gmail.com','23bb8511ed8e41a8e47f735b6bd6b3cc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('482','patient0336@gmail.com','3507110a70179913e8a3e68ef1d7f1f9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('483','patient0337@gmail.com','fadb8fa7727ae2b783b1302e3374c58e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('484','patient0338@gmail.com','faf4ced8c180d96bf6a952c62ca2020c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('485','patient0339@gmail.com','2c7cd3f647bf3ce10314e0eb5469d2ad','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('486','patient0340@gmail.com','f5e10e1b8394e5923d5f3fedcd103c78','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('487','patient0341@gmail.com','088eab3b76c960c25038b5a6fb2042f8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('488','patient0342@gmail.com','bd22bda4d3651b7aefb85f676d3f18cd','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('489','patient0343@gmail.com','e83d66d039a426ce86289b530797a836','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('490','patient0344@gmail.com','f11a7300cd381ebb3cf3723d55784d5d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('491','patient0345@gmail.com','172327706fc975aa0962791884609c37','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('492','patient0346@gmail.com','d8a5641fee02fe7a12f336b523fef555','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('493','patient0347@gmail.com','03713a63d1c47f3c29acbae66fdeb7fd','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('494','patient0348@gmail.com','93c9d4dd12e8c5201f5a78ce21332b2d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('495','patient0349@gmail.com','0e0a09b70c90c57c08e8a32c685bf309','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('496','patient0350@gmail.com','bd1f79c2bce17830e643fc478f7c6c69','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('497','patient0351@gmail.com','5538aa8fdcb1ab7d32e95b774cc72db5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('498','patient0352@gmail.com','63edc7d2cadf62067ce33e9663d5d9e8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('499','patient0353@gmail.com','e8ec67ee74ddbbc523b1af64568b015a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('500','patient0354@gmail.com','92a1b7ef4c6a229a3c63db4d76aa09e9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('501','patient0355@gmail.com','ddd99d8ccaf46a41b4c581080f5a5d34','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('502','patient0356@gmail.com','c9d91cb2c696eab32865c0c2e8781380','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('503','patient0357@gmail.com','c4bb45b78fef29b0e8f0ca96a2e0d3af','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('504','patient0358@gmail.com','209b86f4a9023fade72b8572c7bf9702','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('505','patient0359@gmail.com','7b6cd9a44365752cf39c1edf97890b72','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('506','patient0360@gmail.com','dcfc93f21df61572292b04840d5c534b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('507','patient0361@gmail.com','97012ce84c33e28732cb5f12bb92363c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('508','patient0362@gmail.com','85c0792797801150ef3a7482dc7dab41','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('509','patient0363@gmail.com','169c8a4fd87503f58c8fb7608ed77fd8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('510','patient0364@gmail.com','83822f5159c98d493a11ffbcd05df7f9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('511','patient0365@gmail.com','4879ec630956eaeeb1897956e2b6d13d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('512','patient0366@gmail.com','151e50feaf21b61cf23e0b944abebe28','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('513','patient0367@gmail.com','5089294a6560d748b5d8fcb14f7f4bec','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('514','patient0368@gmail.com','cbe5ab97b8652191dddc50e16f96bb6c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('515','patient0369@gmail.com','c602c2531a3b20f2aabf2b05667b7dfe','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('516','patient0370@gmail.com','be3941ae4089f60d4ce26797931548a2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('517','patient0371@gmail.com','cf17919db51b07c8187d2f9531f1fb9e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('518','patient0372@gmail.com','b0c60b0e54cd529839e81d29989f2e4b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('519','patient0373@gmail.com','66f2eafa8a6f6d17e186c85f84e369a3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('520','patient0374@gmail.com','b48894a05e964bb8ff703d4205355b25','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('521','patient0375@gmail.com','ccc5855cc40ad3b8eccd46cd7842452c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('522','patient0376@gmail.com','f7d6cc8615741c6bcb1f0213ee40f4fb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('523','patient0377@gmail.com','6b30dc5e0b994838ef9a81a61c96f982','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('524','patient0378@gmail.com','4de53ff826398b4d75bdd4051d3e2905','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('525','patient0379@gmail.com','8c302e59beeb336993fcd129c540ae6b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('526','patient0380@gmail.com','e49148b2ade5c4e64a0bdfebee02f402','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('527','patient0381@gmail.com','99af9110df81722307cd5e9d01c13e2c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('528','patient0382@gmail.com','629ed941bec4a73720b316dd477c91df','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('529','patient0383@gmail.com','74f74fee81632519012db76222dfd62c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('530','patient0384@gmail.com','c8ebfcbb09277bca8ae729a27be6248f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('531','patient0385@gmail.com','b095edb34fad0d4caab18a338f638bda','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('532','patient0386@gmail.com','2b477614349323d2aff509d3af948d76','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('533','patient0387@gmail.com','2075e60874e336f0796dd7f2d31e9b71','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('534','patient0388@gmail.com','9ff1d1a7ff340e634b0a2653851bf8fa','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('535','patient0389@gmail.com','cd1920144268076525c18a2e11401519','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('536','patient0390@gmail.com','240ed4a6dd780e45dbf86c0309a8d4de','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('537','patient0391@gmail.com','c2c49462eba817d37eb58cc8203802b4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('538','patient0392@gmail.com','52b9c2e3d75afc03fe06ae81b33033ac','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('539','patient0393@gmail.com','19b92d61d4e2b91dc2f30a7f87bc81eb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('540','patient0394@gmail.com','de7a8f7c083abf41a583073d8704ea72','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('541','patient0395@gmail.com','5aaef74f7f3433fc841d2682f925aa03','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('542','patient0396@gmail.com','1fee9df4bbb1d3a21fbfd782076eb3f1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('543','patient0397@gmail.com','00f80c0962fb37ea8fb72accc75546c8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('544','patient0398@gmail.com','2f102bea4636f0e88dc41290011e073c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('545','patient0399@gmail.com','5e315235d0bad549068b21c039f424ad','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('546','patient0400@gmail.com','5be2d627851c6f0046e27d5f826187f3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('547','patient0401@gmail.com','99f97481f8214da999e3ccbe116f5334','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('548','patient0402@gmail.com','d25206f06f3137dd920a3e9ae8f0f704','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('549','patient0403@gmail.com','436302a7f9a7389d1a68bea0d3b016e0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('550','patient0404@gmail.com','c3b7ccc4385e8e1a6847a8358909a1f6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('551','patient0405@gmail.com','0f04b04b025522a3c702c947f357a9c9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('552','patient0406@gmail.com','39322734e276ebaea98ff0d97d981750','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('553','patient0407@gmail.com','80153c3b6fea0d00d08ebf3833c2ac7a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('554','patient0408@gmail.com','840da3dfcc610a1b97764f9e95299c6f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('555','patient0409@gmail.com','57d3d307ea7a3152cb20d145dd50914b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('556','patient0410@gmail.com','014c5de68701806ce2150763125a22b2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('557','patient0411@gmail.com','ebeafd50068b99caeda23409b19a9cbc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('558','patient0412@gmail.com','69a829ce4f4e0d631ca634a866590a60','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('559','patient0413@gmail.com','ba59d245355366b3137077550482c1c2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('560','patient0414@gmail.com','ee9375a9e35b070b930b27b8e868dc1c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('561','patient0415@gmail.com','4e866ec420b78f3b8b6e65491cdbc149','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('562','patient0416@gmail.com','733ec8801983e81f8c729a9bef2c8689','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('5','patient0003@gmail.com','7cd86ecb09aa48c6e620b340f6a74592','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('6','patient0004@gmail.com','95b09698fda1f64af16708ffb859eab9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('7','patient0005@gmail.com','d39934ce111a864abf40391f3da9cdf5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('3','patient0001@gmail.com','25bbdcd06c32d477f7fa1c3e4a91b032','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('4','patient0002@gmail.com','fcd04e26e900e94b9ed6dd604fed2b64','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('8','patient0006@gmail.com','7f8bb0fe8b33780a08fe6b60ced14529','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('9','patient0007@gmail.com','6950aac2d7932e1f1a4c3cf6ada1316e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('10','patient0008@gmail.com','926abae84a4bd33c834bc6b981b8cf30','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('11','patient0009@gmail.com','29549a71a57f587d88209b9c1f1b7999','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('12','patient0010@gmail.com','fc1198178c3594bfdda3ca2996eb65cb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('13','patient0011@gmail.com','ae2bac2e4b4da805d01b2952d7e35ba4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('14','patient0012@gmail.com','29150bb2319c182c944841c74d2f8d75','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('15','patient0013@gmail.com','c0279f73075a52e1a7dea35065bc8c80','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('16','patient0014@gmail.com','b6fb522815d06fed82b0140be4c74680','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('17','patient0015@gmail.com','0e7e3cf0ded4d9db8b376b317c007f99','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('18','patient0016@gmail.com','c3f484315c27d75d5449e9e0963949da','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('19','patient0017@gmail.com','6858fb45a3d3aef7c29322d3b68dffd1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('20','patient0018@gmail.com','857778a20b9a41d4ca0d687a36e4bfa8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('21','patient0019@gmail.com','540bd55a2cf295b8ea9cd78650e89d03','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('22','patient0020@gmail.com','ecee596a242de13b779391cdaa2c528d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('23','patient0021@gmail.com','d9f5e405a7f74ed652a8f0b31a87f636','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('24','patient0022@gmail.com','147768d3955e38c4e662c0a95d807abc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('25','patient0023@gmail.com','b26747fc8cb2170baa866b315cf58b7c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('26','patient0024@gmail.com','096ec814d2392f379695f30ca7041977','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('27','patient0025@gmail.com','ed0a75eeb69b34ddc14beed2678bee12','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('28','patient0026@gmail.com','2ebe25dd3a566f36f80d55440d3c3834','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('29','patient0027@gmail.com','f865c5e07958ad70ef989e905390f6d0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('30','patient0028@gmail.com','6cb9669ff7bbb140212081ccb0f68543','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('31','patient0029@gmail.com','0e0b24fc303d2b384be5a2464654a5d2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('32','patient0030@gmail.com','1d0d2cade49078f9d43bbdfab67abbc0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('33','patient0031@gmail.com','0780f11aa0422b8466bce734d1a730ab','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('34','patient0032@gmail.com','c90070ff096dd6858022784617b2f383','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('35','patient0033@gmail.com','ba1d8b273d67c04097d64fad565a79d9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('36','patient0034@gmail.com','3c0d8d9b8a1bdd4eca72ef03f6151254','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('37','patient0035@gmail.com','02d4c7920bb22a908c195e034100d8de','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('38','patient0036@gmail.com','8ae502a489e46e16512581742d93db9c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('39','patient0037@gmail.com','66ff67ba2a11f6975dd7293039ed593e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('40','patient0038@gmail.com','28851508796a4b995d21bfa6cbfdce3a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('41','patient0039@gmail.com','aecdffd6ed3edae913d9e91b4c65530c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('42','patient0040@gmail.com','c0f82517af0829daac3a6cf82e9ecc1e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('43','patient0041@gmail.com','c9df945f744f1f5927f66cf11a8a990f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('44','patient0042@gmail.com','c2e38e55597ae43748ae552b614f5317','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('45','patient0043@gmail.com','99cb58d2d19256c97a9055c0675bcb27','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('46','patient0044@gmail.com','d1f06d78c49ae2f50ed110bf71b14d5d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('47','patient0045@gmail.com','2c4189a6213986088de094a5623ec98b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('48','patient0046@gmail.com','7419ef62d67197ffe2a3232bd7e12652','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('49','patient0047@gmail.com','0bb0666df4640d65ed353b3bfca34d6e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('50','patient0048@gmail.com','bc0137b31ec76a5db842d365640116bd','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('51','patient0049@gmail.com','2d17b1cd9f1f0c85bb90adad7c25ac5e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('52','patient0050@gmail.com','2d0974b2436345d99f7152c3fc44a609','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('53','patient0051@gmail.com','d33f67c5652acb3fac99b9dc16bea0c1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('54','patient0052@gmail.com','164500d002b98f88d1e1b2a806a792d9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('55','patient0053@gmail.com','04886796cb07c66866a1bcb9bfec7a19','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('56','patient0054@gmail.com','028f7ee9eb0c0994a8ba1e60bcffd09e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('57','patient0055@gmail.com','5e9167571c4fdf5f5bceabb11ca7d4c9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('58','patient0056@gmail.com','158939b55b7981a76550ce43c178d8d0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('59','patient0057@gmail.com','bb332482a638036ca44965c5f069d197','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('60','patient0058@gmail.com','b2c3b75b24f611bde67921d19c8dffcd','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('61','patient0059@gmail.com','47f91082e4cc7d6d0fcf49d5aa6f3711','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('62','patient0060@gmail.com','9d4352b8bf376c4349188c5cf26699b8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('63','patient0061@gmail.com','7792dd2aad4d5547e11d9317b03c32c6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('64','patient0062@gmail.com','73cc1f9b54baa5917ae240b96c832690','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('65','patient0063@gmail.com','728eef66ed28de18b6fde6cc4aaf874c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('66','patient0064@gmail.com','b56218f469d935eca49340a717d930f7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('67','patient0065@gmail.com','2aceac02230cdeb39aaf319ac6779462','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('68','patient0066@gmail.com','8a68db05bb4617cf7bdc2901679a28d7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('69','patient0067@gmail.com','75f56f82bbabc12898b7ff63ebebe482','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('70','patient0068@gmail.com','b1ba1f7d91f3156b1bdfc3fa75e8af11','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('71','patient0069@gmail.com','b323b8172b421577bf8e70d411d79a50','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('72','patient0070@gmail.com','162b0ab69006ee0640bbbaafc81041f4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('73','patient0071@gmail.com','43692f46e3168b32434dd507ebc85dbe','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('74','patient0072@gmail.com','c76b3d3ab1522b66814253d642932e9e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('75','patient0073@gmail.com','533e708938a41768fa8e38b3be11a82a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('76','patient0074@gmail.com','8136aba13e6cb914b2bc8d865a027e01','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('77','patient0075@gmail.com','31f123e5785fc03b6370c7f57b4df50d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('78','patient0076@gmail.com','021ed42efda232c8b396e590360a5b89','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('79','patient0077@gmail.com','019121020b208d11b01af68ee1235133','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('80','patient0078@gmail.com','f178006b0a65b291fdb098b6484dcdbb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('81','patient0079@gmail.com','f0d0ddc38e27d44224637a8498ecc8bc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('82','patient0080@gmail.com','96fd0b319802304d48a45170b917cd27','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('83','patient0081@gmail.com','279f4fe9db63a9f4b87e18073956d7cf','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('84','patient0082@gmail.com','97bc5e668896d17a0120151e809ae1a7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('85','patient0083@gmail.com','6bcf53c2bdbee891ffaca1e612b0076c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('86','patient0084@gmail.com','5c085a3a870d577a36adfdf7e2d872e0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('87','patient0085@gmail.com','cccc8bc3d6630bf84a08f9ba361baea0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('88','patient0086@gmail.com','f5102568d9ebd64f1fb698d6ba575e7a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('89','patient0087@gmail.com','585869cdf36ea981c9545fcfef880f1d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('90','patient0088@gmail.com','47fb33421eb25052e477ab7bbc53e72f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('91','patient0089@gmail.com','692bf3658e41106e0685c99ffc6f3343','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('92','patient0090@gmail.com','8b23187c36f529bf661e3fd5b29060c1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('93','patient0091@gmail.com','c3b86052d1fc94bd11c279a17f3f25e1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('94','patient0092@gmail.com','78d7f304a8dd3b9e71d656514c2d4605','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('95','patient0093@gmail.com','5176e3222f668231f94c94103c7330e4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('96','patient0094@gmail.com','3d842a955f86c5982f18ed6fea9fa1a9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('97','patient0095@gmail.com','9ce3eb7e9ba5cbe1c2e9c3afe227e388','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('98','patient0096@gmail.com','f96816687580650f672ee11621c47dcb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('99','patient0097@gmail.com','b4f151bb5aea33c5a0b0dcbc1bd2849b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('100','patient0098@gmail.com','233b47c75b7eb974cd10a4df3c838b9f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('101','patient0099@gmail.com','1f262a60600e30c026663a7ccbed6bab','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('102','patient0100@gmail.com','db2f40f24260bc41db48d82d5e7abf1d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('103','patient0101@gmail.com','814f06ab7f40b2cff77f2c7bdffd3415','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('104','patient0102@gmail.com','d81b9ce93c866abb7f0feb747d88868c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('105','patient0103@gmail.com','b0f07fe0f7de991bfca0de50391eb328','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('106','patient0104@gmail.com','be6c5347746fae91bd02a52a114ee14f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('107','patient0105@gmail.com','28b0eb6a294557fe2f4b242741083a2a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('108','patient0106@gmail.com','84f7b02a8128f5f5775611244c24b941','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('109','patient0107@gmail.com','13448471d89a9cd8d7f71026a0334ec8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('110','patient0108@gmail.com','e3ce1e09813e3376d7ce8c7a625b2470','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('111','patient0109@gmail.com','bbe9047444895de971dcc65fe7f9504f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('114','patient0112@gmail.com','07aeb18febbdbf77511a10fd4aa49942','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('115','patient0113@gmail.com','d64afcd10ad5d5c200d22a4464f8086f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('116','patient0114@gmail.com','8c5781246fcb0296e1f11cd4e2eee68d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('117','patient0115@gmail.com','4bc8f1a601aee89546deeb66b9625008','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('118','patient0116@gmail.com','5072ec0261a35740089ed41e844e51eb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('112','patient0110@gmail.com','2a66acbc1c39026b5d70457bb71b142b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('113','patient0111@gmail.com','7d7c45b9a935cf9d845fc75679a41559','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('119','patient0117@gmail.com','c88a45cebe37ef31231604ff583105be','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('120','patient0118@gmail.com','a8d48ed01e06015083c360366501e726','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('121','patient0119@gmail.com','ed5fc9493b475813203e1c2497a11f6f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('122','patient0120@gmail.com','408b7c8ad06e4d9954fa2d948a01f508','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('123','patient0121@gmail.com','fee67cadcc3a0bec8e00641884903c45','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('124','patient0122@gmail.com','f0f4b6598f2cee45644673998b4f44be','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('125','patient0123@gmail.com','eb62f6b9306db575c2d596b1279627a4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('126','patient0124@gmail.com','a4bab3ce420ea5342f99b468206738eb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('127','patient0125@gmail.com','e36e7d9b1f0df7460ad3ac1958527273','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('128','patient0126@gmail.com','f6c0c55d8d0a5cd1f69ceaf3d5b4e108','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('129','patient0127@gmail.com','4721dc6a803c213861d569b31f3c121f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('130','patient0128@gmail.com','171293841d3fdd4af2e12426ce202ac9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('131','patient0129@gmail.com','c22b7285b63e1d6f09a10dc258858d48','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('132','patient0130@gmail.com','2f8639feef43f2964be0cee184dad78c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('133','patient0131@gmail.com','5db5ae42bae950401219b2da9c583331','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('134','patient0132@gmail.com','dad2fd502d209b12ac27f451b0b9c17e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('135','patient0133@gmail.com','1192769dab5af0c10f46bb20de338201','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('136','patient0134@gmail.com','a9bd0eeb3ce6858df275497bb2089ec4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('137','patient0135@gmail.com','a2a68c298479b64a8536d0fd7c479ee1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('138','patient0136@gmail.com','ba8f3385d13f0bda22b82908092f5963','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('139','patient0137@gmail.com','fc2751520dda99c0c7f267904fb483e7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('140','patient0138@gmail.com','61c0a1c102fcea5965d8ea8e941e16b0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('141','patient0139@gmail.com','ea83196054e0e99f6e21367489cca659','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('142','patient0140@gmail.com','40c0e9499a2b2a53c7b4998ce2baa501','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('143','patient0141@gmail.com','2323c43b77f10b2657f6993ff865e6a4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('144','patient0142@gmail.com','ab1048060528a978a536ee2e9538de28','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('145','patient0143@gmail.com','42812b616b70a5494393685d9efcf93e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('146','patient0144@gmail.com','5150e87be6c34a30cd822e013c4daed5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('147','patient0145@gmail.com','be30a998b7393750806a3058d926469f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('148','patient0146@gmail.com','6caa1e4e0a322c4080f0c23a98392865','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('149','patient0147@gmail.com','b630990075e84cee4c130c4cd86f0e50','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('150','patient0148@gmail.com','612b9796c617960a4e9abe05845c3d43','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('151','patient0149@gmail.com','40948ab6d7a2ad56058b072f272dc887','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('152','patient0150@gmail.com','bda8f8645db921d24845639f76635574','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('153','patient0151@gmail.com','f0bb93e395c7c1a09e6206f2016dfc47','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('154','patient0152@gmail.com','f80f78a0e6c02b5b479cea3b717e9e34','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('155','patient0153@gmail.com','b356b7a12680d1c1d12c729a28ed1079','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('156','patient0154@gmail.com','e85984bd537ecc6d027b43bef22e4f12','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('157','patient0155@gmail.com','adeb12111c95807557664efbf3b746ae','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('158','patient0156@gmail.com','cd365d8672d1b3932cd4357f1b2b057e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('159','patient0157@gmail.com','f9d3742964e8d35a46da512cf46fbeb3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('160','patient0158@gmail.com','1a2dae77a98c395c0252c1d6c1445128','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('161','patient0159@gmail.com','3042e93ba67eba7902731d4bef4c6066','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('162','patient0160@gmail.com','22f112832359ba4c98397b3401367fce','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('163','patient0161@gmail.com','6a2095bc178dbb0ba00e8fd5f10306b2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('164','patient0162@gmail.com','2ba3fb10169ac4d8a3a9eb3085b9ab68','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('165','patient0163@gmail.com','5394c8765bf72ecb92711a1e6f9b8783','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('166','patient0164@gmail.com','58ad03c58828b1f3353ce0113902c5e0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('167','patient0165@gmail.com','536fcc1021bff60edb212ca9b2480757','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('168','patient0166@gmail.com','7f565fba617ebfa2ad7abe7bab010e45','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('169','patient0167@gmail.com','ddd8b970c97a77fa74c14951f486f62b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('170','patient0168@gmail.com','9061198a99f995e44314503d643e49a8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('171','patient0169@gmail.com','e10e3a8c73550292fdeefa75a96a7f1f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('172','patient0170@gmail.com','ed36e2a7eb6e43e1cf1af5e0100416de','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('173','patient0171@gmail.com','898dc2c947cee718e4afd7dfcb2f1a09','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('174','patient0172@gmail.com','2b7f8457c72458d71a5b2b4380972519','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('175','patient0173@gmail.com','21263296b783b2bff8ce23b30feadb7a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('176','patient0174@gmail.com','2028d95822df7f10a5e7cefa22ae90c4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('177','patient0175@gmail.com','e90b327c1ceca11f1a44a8bcf58af34c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('178','patient0176@gmail.com','cd9e5fd837de37a31685fc9ed5d7f166','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('179','patient0177@gmail.com','c5b4b89e78f2a2850f024e6a17b0a813','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('180','patient0178@gmail.com','1063bd2b59244fad952754a2cdb4f42b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('181','patient0179@gmail.com','80d61f4c7a1a889090a7bdac32485de8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('182','patient0180@gmail.com','a410115ed452a9213424d92cacd2a083','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('183','patient0181@gmail.com','5f55a6ece505a982f1ea0f396442bf23','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('184','patient0182@gmail.com','d1aa0137612fb8dd48d20f02aa9c3196','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('185','patient0183@gmail.com','ca0a908e85ac27b2cd0d2b82b3e374e5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('186','patient0184@gmail.com','c7a81b41061b9b204f9edefab0d7d99e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('187','patient0185@gmail.com','54df5e38455d75e5c0e2c55f40f825fa','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('188','patient0186@gmail.com','b67bfa22e4bf6e62d8d0d03a805be453','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('189','patient0187@gmail.com','e344cb2b894fa697f87304273b817f20','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('190','patient0188@gmail.com','b03a75fccca587a511170aa5b7952210','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('191','patient0189@gmail.com','88f028cc6f1743e8f86dc9742ae6a845','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('192','patient0190@gmail.com','78d9e995ba160f4e2aa540095e87d365','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('193','patient0191@gmail.com','f55cae80eb012999557b87cc9c6a0945','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('194','patient0192@gmail.com','59671a88720c7f1320cf72dc8f2423a2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('195','patient0193@gmail.com','116dc50d08e7730abdf176c5f5018c5a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('196','patient0194@gmail.com','371dbe4b2cf1d2e4cae0237b0910ed8c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('197','patient0195@gmail.com','dba756de0b61be1f920b97c5ae43fa23','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('198','patient0196@gmail.com','fbc01d515dac182ba3524a3b11fdf4b2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('199','patient0197@gmail.com','ca62206f0f95192ca6c7c3c92a65a309','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('200','patient0198@gmail.com','8bae7cfc1d80927fe22506cfcf8d5b8c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('201','patient0199@gmail.com','96a0b02d02f54f8e48dad3d9b69a2016','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('202','patient0200@gmail.com','864c210c868936ae8d1fdfd8e0efdb54','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('203','patient0201@gmail.com','155d328d7db586cf215aca5e8088dfed','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('204','patient0202@gmail.com','7e16036a55664f22e6511e460ee09d4f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('205','patient0203@gmail.com','c81c2b9e997a81f84838cd8e60b93a01','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('206','patient0204@gmail.com','a5aad544b38a088b35b395645efe0d61','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('207','patient0205@gmail.com','281d5cbef8ded4e9bee409e3b9c67ab2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('208','patient0206@gmail.com','40975bf37747b01969933d4b6c8f31d5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('209','patient0207@gmail.com','5e90ae5f6eb12b3f3e3c86c0409de103','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('210','patient0208@gmail.com','a9dd14d824822d6d78d0fe3e55dbd7fb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('211','patient0209@gmail.com','a4e23b2609285cfd99de6d9832f21df1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('212','patient0210@gmail.com','7f1a65908b05238c21c134c764c89e28','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('213','patient0211@gmail.com','9e97aba19c4de1b4ea7d69a8ecd3c30d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('214','patient0212@gmail.com','f7d63bbdc0fda6d3c6ae9c061a86910d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('215','patient0213@gmail.com','7d9a22c8598378bd6bb67584611867f7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('216','patient0214@gmail.com','cd6ebdcfe9b6f0ce7ac05d8848a8c956','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('217','patient0215@gmail.com','12195987ef7be240aadf871611319619','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('218','patient0216@gmail.com','b705667936f5d49b801c56aa43bed5ea','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('219','patient0217@gmail.com','6e4d97fcf372625b900dbef16915d429','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('220','patient0218@gmail.com','d972dc8564e175effccbcb3e402650eb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('2','patient0000@gmail.com','4a7d1ed414474e4033ac29ccb8653d9b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('221','patient0219@gmail.com','7b409461742575ae26050a17c961561d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('222','patient0220@gmail.com','164cc88744837aadfd7c50cbd7fe4f92','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('223','patient0221@gmail.com','56c66132e67551c55b1667f9b14de886','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('224','patient0222@gmail.com','0cf0613553f1dd3f98b4009b31c52618','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('225','patient0223@gmail.com','e7c1d363fdf4c85ee426f767361eabf9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('226','patient0224@gmail.com','605b3386cb5ef25b8d60d1bacfeeab7a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('227','patient0225@gmail.com','2b860836a9f611be7eb70765397af3de','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('228','patient0226@gmail.com','66e78b22162c1774129ea149e0171b52','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('229','patient0227@gmail.com','eb37b9bd6dbd6f66cd3fe110037e5974','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('230','patient0228@gmail.com','17badeafa806e96c27aea3347672e9ca','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('231','patient0229@gmail.com','abe2f280ca5367cc24d70089b07050b4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('232','patient0230@gmail.com','66f422b606be164aacabb0c74c66b42d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('233','patient0231@gmail.com','d60d265e5909f0be46362820c04a387a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('234','patient0232@gmail.com','6c052987d532af0c64292b38541801e8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('235','patient0233@gmail.com','7801343c2ec7e347fbaddd0085d250b3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('236','patient0234@gmail.com','c8e585c56adbcb064ff08aa53e5f3aef','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('237','patient0235@gmail.com','cb9d15824c38fb9ec3067d475c3339ca','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('238','patient0236@gmail.com','d8e43605bb0aa00e6d67676ab9e1db5e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('239','patient0237@gmail.com','00fdea78e677259a3e44868468f24bbf','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('240','patient0238@gmail.com','62a8d042a93d5f88fb6636cde700ce69','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('241','patient0239@gmail.com','059fffb74fa5f6ebe37bd1df479c02f7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('242','patient0240@gmail.com','6cc50a2dd22a028e9c264f9443bffb7e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('243','patient0241@gmail.com','03747e36da6ae932adf245e835271bec','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('244','patient0242@gmail.com','e6fb2f85705dfa295a82233013ab335b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('245','patient0243@gmail.com','17b4adf18100c8673e3f2c72dff87722','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('246','patient0244@gmail.com','755e9e9053939dbd61e36d0d32a7e646','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('247','patient0245@gmail.com','54e0f6e4ee558d9346d379b4ca2a25a0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('248','patient0246@gmail.com','7dd5071ff43138f6756e30f4b271c4ac','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('249','patient0247@gmail.com','65b6f89e9041a2a78554f1c3db6c13e9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('250','patient0248@gmail.com','f9bb70abd71ac32fb2aed7673c51fc5c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('251','patient0249@gmail.com','e3f2f5905b9fddcab2fd91cec78a449f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('252','patient0250@gmail.com','17a72486fd216c640e0cacdd027f40c0','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('253','patient0251@gmail.com','9e6d4dd4c62c53b79e9acb0434870435','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('254','patient0252@gmail.com','f7f65a4cbf3a1dcaa70553f62321fb70','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('255','patient0253@gmail.com','1bfbff8b4b58317d8f895278493bf80f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('256','patient0254@gmail.com','a2e11098af33e21d1418187dc541246b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('257','patient0255@gmail.com','9e80dab2f77072016c135c84cf5c899e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('258','patient0256@gmail.com','05e48562d0bd604cf6991bff7e0d0604','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('259','patient0257@gmail.com','8a3fca6bf6bda325a11f7d6a5b06f13c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('260','patient0258@gmail.com','83241188a22b7d05bd505118b2548723','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('261','patient0259@gmail.com','a5b068d96a26baa253aa3dd0894d7607','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('262','patient0260@gmail.com','d04feef70623eaf7167f9172da8650db','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('263','patient0261@gmail.com','761b00dd00830d9ea4713c27591907ae','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('264','patient0262@gmail.com','335e2d36ca1a5def183273b492a32c63','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('265','patient0263@gmail.com','87277281b55376d0231ad94f63e4a7eb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('266','patient0264@gmail.com','5bbac39cd13478e3c41463540d032c22','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('267','patient0265@gmail.com','a9b2b0ce7799c4de9c7a3aed9ebeddeb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('268','patient0266@gmail.com','198f9e9f064617952401a90cfbff7461','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('269','patient0267@gmail.com','94b02d7d3f29b972b34c169cfa68120d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('270','patient0268@gmail.com','0c82a0ea628e0ec608d70d1db9d822d9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('271','patient0269@gmail.com','1640f59af9fc45f93a72652de254d387','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('272','patient0270@gmail.com','89befd1102aeaead24cfe2b9fa9997f9','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('273','patient0271@gmail.com','4f1ac1f615a1c3414134c2d3ae9a3f58','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('274','patient0272@gmail.com','b94d71e6bc4cc21ffbaaef5e4aca6f03','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('275','patient0273@gmail.com','78c734ebceead5b7b07ffd1414b22eed','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('276','patient0274@gmail.com','f1b94f4d3aa113c71deadbf6d40e1217','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('277','patient0275@gmail.com','8ba9c8e5111d95b9242403b319dd6306','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('278','patient0276@gmail.com','5c91a0852433e1b301c59271074bdd04','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('279','patient0277@gmail.com','8566418f640c84b79671a915d659087d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('280','patient0278@gmail.com','3c0aec8e759a22ef8b2c6498b3f85a9f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('281','patient0279@gmail.com','6deaa90ea76ff91937766e94f28bd457','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('282','patient0280@gmail.com','ba7c6756ed24580b279ace913b59851f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('283','patient0281@gmail.com','80736f26d8cb7d6cea55f49176d23e4d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('284','patient0282@gmail.com','31a6754c5f409539d2a74586d51c7c14','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('285','patient0283@gmail.com','d8315808390286c420097a02b18cbb42','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('286','patient0284@gmail.com','33708b5cd432b05542b3a73a24d442db','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('287','patient0285@gmail.com','c9fdbf4198a6798899c28d95e34e63a6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('288','patient0286@gmail.com','2c393e45170ca8e02cc1b670e799da1b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('289','patient0287@gmail.com','03d9b714d7ac602a9755a662c1d65be4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('290','patient0288@gmail.com','c2f18749b709bdb6fcd7b4c665f5e761','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('291','patient0289@gmail.com','8fff381f96317315409ddb08e887b2b5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('292','patient0290@gmail.com','09e36a1bc32c989561144a14e3285857','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('293','patient0291@gmail.com','e960bd3154493f20a5a54c28f5686d4e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('294','patient0292@gmail.com','24a41dfc0b09c248bbc23b5e1ffc16d8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('295','patient0293@gmail.com','a3363a6147d5ccb2bbd06d1fa3c7f276','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('296','patient0294@gmail.com','3ab586f9ea0a8e5f3f1109a4862476a5','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('297','patient0295@gmail.com','4ee7da9a70026f945c33f970f6c2228a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('298','patient0296@gmail.com','2a34e8685490c86e180af62f6f0f4f87','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('299','patient0297@gmail.com','c0c4f87d4e53b61ab4ada355c534db1e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('300','admin0000@gmail.com','4a7d1ed414474e4033ac29ccb8653d9b','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('301','admin0001@gmail.com','25bbdcd06c32d477f7fa1c3e4a91b032','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('302','admin0002@gmail.com','fcd04e26e900e94b9ed6dd604fed2b64','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('303','admin0003@gmail.com','7cd86ecb09aa48c6e620b340f6a74592','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('304','admin0004@gmail.com','95b09698fda1f64af16708ffb859eab9','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('305','admin0005@gmail.com','d39934ce111a864abf40391f3da9cdf5','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('306','admin0006@gmail.com','7f8bb0fe8b33780a08fe6b60ced14529','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('307','admin0007@gmail.com','6950aac2d7932e1f1a4c3cf6ada1316e','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('308','admin0008@gmail.com','926abae84a4bd33c834bc6b981b8cf30','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('309','admin0009@gmail.com','29549a71a57f587d88209b9c1f1b7999','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('310','admin0010@gmail.com','fc1198178c3594bfdda3ca2996eb65cb','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('311','admin0011@gmail.com','ae2bac2e4b4da805d01b2952d7e35ba4','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('312','admin0012@gmail.com','29150bb2319c182c944841c74d2f8d75','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('313','admin0013@gmail.com','c0279f73075a52e1a7dea35065bc8c80','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('314','admin0014@gmail.com','b6fb522815d06fed82b0140be4c74680','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('315','admin0015@gmail.com','0e7e3cf0ded4d9db8b376b317c007f99','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('316','admin0016@gmail.com','c3f484315c27d75d5449e9e0963949da','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('317','admin0017@gmail.com','6858fb45a3d3aef7c29322d3b68dffd1','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('318','admin0018@gmail.com','857778a20b9a41d4ca0d687a36e4bfa8','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('319','admin0019@gmail.com','540bd55a2cf295b8ea9cd78650e89d03','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('320','admin0020@gmail.com','ecee596a242de13b779391cdaa2c528d','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('321','admin0021@gmail.com','d9f5e405a7f74ed652a8f0b31a87f636','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('322','admin0022@gmail.com','147768d3955e38c4e662c0a95d807abc','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('323','admin0023@gmail.com','b26747fc8cb2170baa866b315cf58b7c','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('324','admin0024@gmail.com','096ec814d2392f379695f30ca7041977','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('325','admin0025@gmail.com','ed0a75eeb69b34ddc14beed2678bee12','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('326','admin0026@gmail.com','2ebe25dd3a566f36f80d55440d3c3834','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('327','admin0027@gmail.com','f865c5e07958ad70ef989e905390f6d0','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('328','admin0028@gmail.com','6cb9669ff7bbb140212081ccb0f68543','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('329','admin0029@gmail.com','0e0b24fc303d2b384be5a2464654a5d2','3');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('343','doc0000@gmail.com','4a7d1ed414474e4033ac29ccb8653d9b','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('344','doc0001@gmail.com','25bbdcd06c32d477f7fa1c3e4a91b032','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('345','doc0002@gmail.com','fcd04e26e900e94b9ed6dd604fed2b64','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('346','doc0003@gmail.com','7cd86ecb09aa48c6e620b340f6a74592','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('347','doc0004@gmail.com','95b09698fda1f64af16708ffb859eab9','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('348','doc0005@gmail.com','d39934ce111a864abf40391f3da9cdf5','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('349','doc0006@gmail.com','7f8bb0fe8b33780a08fe6b60ced14529','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('350','doc0007@gmail.com','6950aac2d7932e1f1a4c3cf6ada1316e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('351','doc0008@gmail.com','926abae84a4bd33c834bc6b981b8cf30','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('352','doc0009@gmail.com','29549a71a57f587d88209b9c1f1b7999','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('353','doc0010@gmail.com','fc1198178c3594bfdda3ca2996eb65cb','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('354','doc0011@gmail.com','ae2bac2e4b4da805d01b2952d7e35ba4','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('355','doc0012@gmail.com','29150bb2319c182c944841c74d2f8d75','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('356','doc0013@gmail.com','c0279f73075a52e1a7dea35065bc8c80','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('357','doc0014@gmail.com','b6fb522815d06fed82b0140be4c74680','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('358','doc0015@gmail.com','0e7e3cf0ded4d9db8b376b317c007f99','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('359','doc0016@gmail.com','c3f484315c27d75d5449e9e0963949da','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('360','doc0017@gmail.com','6858fb45a3d3aef7c29322d3b68dffd1','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('361','doc0018@gmail.com','857778a20b9a41d4ca0d687a36e4bfa8','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('362','doc0019@gmail.com','540bd55a2cf295b8ea9cd78650e89d03','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('363','doc0020@gmail.com','ecee596a242de13b779391cdaa2c528d','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('364','doc0021@gmail.com','d9f5e405a7f74ed652a8f0b31a87f636','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('365','doc0022@gmail.com','147768d3955e38c4e662c0a95d807abc','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('366','doc0023@gmail.com','b26747fc8cb2170baa866b315cf58b7c','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('367','doc0024@gmail.com','096ec814d2392f379695f30ca7041977','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('368','doc0025@gmail.com','ed0a75eeb69b34ddc14beed2678bee12','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('369','doc0026@gmail.com','2ebe25dd3a566f36f80d55440d3c3834','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('370','doc0027@gmail.com','f865c5e07958ad70ef989e905390f6d0','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('371','doc0028@gmail.com','6cb9669ff7bbb140212081ccb0f68543','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('372','doc0029@gmail.com','0e0b24fc303d2b384be5a2464654a5d2','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('373','doc0030@gmail.com','1d0d2cade49078f9d43bbdfab67abbc0','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('374','doc0031@gmail.com','0780f11aa0422b8466bce734d1a730ab','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('375','doc0032@gmail.com','c90070ff096dd6858022784617b2f383','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('376','doc0033@gmail.com','ba1d8b273d67c04097d64fad565a79d9','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('377','doc0034@gmail.com','3c0d8d9b8a1bdd4eca72ef03f6151254','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('378','doc0035@gmail.com','02d4c7920bb22a908c195e034100d8de','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('379','doc0036@gmail.com','8ae502a489e46e16512581742d93db9c','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('380','doc0037@gmail.com','66ff67ba2a11f6975dd7293039ed593e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('381','doc0038@gmail.com','28851508796a4b995d21bfa6cbfdce3a','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('382','doc0039@gmail.com','aecdffd6ed3edae913d9e91b4c65530c','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('383','doc0040@gmail.com','c0f82517af0829daac3a6cf82e9ecc1e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('384','doc0041@gmail.com','c9df945f744f1f5927f66cf11a8a990f','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('385','doc0042@gmail.com','c2e38e55597ae43748ae552b614f5317','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('386','doc0043@gmail.com','99cb58d2d19256c97a9055c0675bcb27','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('387','doc0044@gmail.com','d1f06d78c49ae2f50ed110bf71b14d5d','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('388','doc0045@gmail.com','2c4189a6213986088de094a5623ec98b','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('389','doc0046@gmail.com','7419ef62d67197ffe2a3232bd7e12652','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('390','doc0047@gmail.com','0bb0666df4640d65ed353b3bfca34d6e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('391','doc0048@gmail.com','bc0137b31ec76a5db842d365640116bd','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('392','doc0049@gmail.com','2d17b1cd9f1f0c85bb90adad7c25ac5e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('393','doc0050@gmail.com','2d0974b2436345d99f7152c3fc44a609','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('394','doc0051@gmail.com','d33f67c5652acb3fac99b9dc16bea0c1','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('395','doc0052@gmail.com','164500d002b98f88d1e1b2a806a792d9','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('396','doc0053@gmail.com','04886796cb07c66866a1bcb9bfec7a19','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('397','doc0054@gmail.com','028f7ee9eb0c0994a8ba1e60bcffd09e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('398','doc0055@gmail.com','5e9167571c4fdf5f5bceabb11ca7d4c9','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('399','doc0056@gmail.com','158939b55b7981a76550ce43c178d8d0','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('400','doc0057@gmail.com','bb332482a638036ca44965c5f069d197','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('401','doc0058@gmail.com','b2c3b75b24f611bde67921d19c8dffcd','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('402','doc0059@gmail.com','47f91082e4cc7d6d0fcf49d5aa6f3711','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('403','doc0060@gmail.com','9d4352b8bf376c4349188c5cf26699b8','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('404','doc0061@gmail.com','7792dd2aad4d5547e11d9317b03c32c6','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('405','doc0062@gmail.com','73cc1f9b54baa5917ae240b96c832690','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('406','doc0063@gmail.com','728eef66ed28de18b6fde6cc4aaf874c','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('407','doc0064@gmail.com','b56218f469d935eca49340a717d930f7','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('408','doc0065@gmail.com','2aceac02230cdeb39aaf319ac6779462','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('409','doc0066@gmail.com','8a68db05bb4617cf7bdc2901679a28d7','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('410','doc0067@gmail.com','75f56f82bbabc12898b7ff63ebebe482','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('411','doc0068@gmail.com','b1ba1f7d91f3156b1bdfc3fa75e8af11','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('412','doc0069@gmail.com','b323b8172b421577bf8e70d411d79a50','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('413','doc0070@gmail.com','162b0ab69006ee0640bbbaafc81041f4','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('414','doc0071@gmail.com','43692f46e3168b32434dd507ebc85dbe','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('415','doc0072@gmail.com','c76b3d3ab1522b66814253d642932e9e','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('416','doc0073@gmail.com','533e708938a41768fa8e38b3be11a82a','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('417','doc0074@gmail.com','8136aba13e6cb914b2bc8d865a027e01','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('418','doc0075@gmail.com','31f123e5785fc03b6370c7f57b4df50d','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('419','doc0076@gmail.com','021ed42efda232c8b396e590360a5b89','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('420','doc0077@gmail.com','019121020b208d11b01af68ee1235133','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('421','doc0078@gmail.com','f178006b0a65b291fdb098b6484dcdbb','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('422','doc0079@gmail.com','f0d0ddc38e27d44224637a8498ecc8bc','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('423','doc0080@gmail.com','96fd0b319802304d48a45170b917cd27','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('424','doc0081@gmail.com','279f4fe9db63a9f4b87e18073956d7cf','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('425','doc0082@gmail.com','97bc5e668896d17a0120151e809ae1a7','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('426','doc0083@gmail.com','6bcf53c2bdbee891ffaca1e612b0076c','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('427','doc0084@gmail.com','5c085a3a870d577a36adfdf7e2d872e0','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('428','doc0085@gmail.com','cccc8bc3d6630bf84a08f9ba361baea0','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('429','doc0086@gmail.com','f5102568d9ebd64f1fb698d6ba575e7a','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('430','doc0087@gmail.com','585869cdf36ea981c9545fcfef880f1d','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('431','doc0088@gmail.com','47fb33421eb25052e477ab7bbc53e72f','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('432','doc0089@gmail.com','692bf3658e41106e0685c99ffc6f3343','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('433','doc0090@gmail.com','8b23187c36f529bf661e3fd5b29060c1','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('434','doc0091@gmail.com','c3b86052d1fc94bd11c279a17f3f25e1','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('435','doc0092@gmail.com','78d7f304a8dd3b9e71d656514c2d4605','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('436','doc0093@gmail.com','5176e3222f668231f94c94103c7330e4','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('437','doc0094@gmail.com','3d842a955f86c5982f18ed6fea9fa1a9','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('438','doc0095@gmail.com','9ce3eb7e9ba5cbe1c2e9c3afe227e388','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('439','doc0096@gmail.com','f96816687580650f672ee11621c47dcb','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('440','doc0097@gmail.com','b4f151bb5aea33c5a0b0dcbc1bd2849b','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('441','doc0098@gmail.com','233b47c75b7eb974cd10a4df3c838b9f','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('442','doc0099@gmail.com','1f262a60600e30c026663a7ccbed6bab','1');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('444','patient0298@gmail.com','f90a337271004d00cbd620a61844401a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('445','patient0299@gmail.com','6c72b80ca39cd956c16d2fc662186f22','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('446','patient0300@gmail.com','d2ac32e14d651b9ed03f26f845a11597','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('447','patient0301@gmail.com','3bd191aadaebb78ea49f12d8228ad4f8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('448','patient0302@gmail.com','d25922edb7ab92c0ca31328cbdcbd42f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('449','patient0303@gmail.com','087c8abfaee44ebbf0c2871976a2ab18','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('450','patient0304@gmail.com','785ee201dc63daae3aecb2c7cbae60d3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('451','patient0305@gmail.com','31247265f28e5ac616c230743990f79e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('452','patient0306@gmail.com','ba7df060feb0b2ddaee4c4b760f187b3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('453','patient0307@gmail.com','cc1d60fc967b66b66229205d7bb288e8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('454','patient0308@gmail.com','883b79f2889beac4ec9e03a36952f943','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('455','patient0309@gmail.com','944de8673b0f2d1603a6ff33b18b8192','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('563','patient0417@gmail.com','5932477ff12bb1e1092805267bda177d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('564','patient0418@gmail.com','ae55392c12be4f9c134c4dbfa6e17dbc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('565','patient0419@gmail.com','f71ec0487b35da010ea9b14aefe130b2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('566','patient0420@gmail.com','745d4e02f3f10a3bb0872c578fce35e4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('567','patient0421@gmail.com','0026e579a258f1fc012951af08496bd7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('568','patient0422@gmail.com','60238fbc0ec15fab7cd0eb04309e13ed','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('569','patient0423@gmail.com','04be135cad7e049d73e3bb1ac5af388f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('570','patient0424@gmail.com','3810b20210601cb47aae3f1380a264d2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('571','patient0425@gmail.com','3a364dff11bb266e11df80b8a40343c1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('572','patient0426@gmail.com','5167aca0cc67fe216140fd438eb906e3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('573','patient0427@gmail.com','23d38970923b1165915709e05326d2c6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('574','patient0428@gmail.com','83d43c091545e847dd8e1e8e2e5cd317','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('575','patient0429@gmail.com','7dfc6a6e223aeb240f43802fa9577e7a','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('576','patient0430@gmail.com','1b8ecc49a1e5dba91d313dd3a41aaff2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('577','patient0431@gmail.com','28bf5a0160d4921a4f6c52129ff8342e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('578','patient0432@gmail.com','761574251471febc422137d8f958650b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('579','patient0433@gmail.com','8e3c503cec46ebf6e98eabf674068a08','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('580','patient0434@gmail.com','c6a135d746c5a896b4c8ac6bc502fa00','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('581','patient0435@gmail.com','dae4fc1cec467687b3839ebd80561ff1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('582','patient0436@gmail.com','1f973d97ab0c953c00df038510cf6a04','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('583','patient0437@gmail.com','f22b1837642dceefa014b1b616bcee7f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('584','patient0438@gmail.com','77076a235c73f263958f2e620cf1bfcc','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('585','patient0439@gmail.com','c2d8a9fb9ca28a64aa7cd382dda2d0bd','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('586','patient0440@gmail.com','c74a5db553d5600b2ce6ac0d4fdde135','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('587','patient0441@gmail.com','42d470aa848c771c6522022a5e974f97','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('588','patient0442@gmail.com','33953455b0a75819c1498ff010d3cc8b','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('589','patient0443@gmail.com','06dc9c10cb8eb46b5fcca86460df8662','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('590','patient0444@gmail.com','b911f381ef437405e57e24b655f02635','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('591','patient0445@gmail.com','64c17f862a5ad1152dd46845cc33dc04','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('592','patient0446@gmail.com','c20555d88858172f122a535e18ff3ad6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('593','patient0447@gmail.com','d9bde9bd1f581cc9d73a09ad00821b1d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('594','patient0448@gmail.com','b8bf1ad4449a1577f50c42e09e532b66','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('595','patient0449@gmail.com','9732aa7d24a1bc42b7bd1c2a4ca45732','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('596','patient0450@gmail.com','bb3bbeb0f8621a15881bb91b5e80554f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('597','patient0451@gmail.com','b3a2ff810dc887901ddfa67d7c1247ef','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('598','patient0452@gmail.com','b16365302aa017bfadf5b34a84a84e45','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('599','patient0453@gmail.com','d1eda616a25f7846a42bc8ea170f8b40','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('600','patient0454@gmail.com','7efa7f5db79d226368cc3ce93b8f55f6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('601','patient0455@gmail.com','caf49bdf7be3efee8c774830c2b89853','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('602','patient0456@gmail.com','fec8038ae4436caa7188b2e3f0bd216f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('603','patient0457@gmail.com','b238aa416757ab4aa072a7236b997d16','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('604','patient0458@gmail.com','d0f1c52a0107bd8707444bbf130a0234','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('605','patient0459@gmail.com','31cc4e34a6d7da69ae0be6ec1869e749','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('606','patient0460@gmail.com','62c73adf7f7de2790eaf9e83cb13d481','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('607','patient0461@gmail.com','0ca97c92e9f0ce84d59edef0332f6e48','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('608','patient0462@gmail.com','cc79c788e52dd1f4f355975478cd3eae','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('609','patient0463@gmail.com','10aa0381f4e4c21e658592b8e19c3905','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('610','patient0464@gmail.com','a88acb023148c45279bd51687e9d70ce','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('611','patient0465@gmail.com','38a2b3d51d51366c342d0986f2065216','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('612','patient0466@gmail.com','89f05cb285f636e4a39d7f14fffc796e','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('613','patient0467@gmail.com','36f24a4bfc8f2899de3ec6ece77e8523','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('614','patient0468@gmail.com','e3bf28b1285c317068f56f7e4446d1a3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('615','patient0469@gmail.com','aecd3f66c12534f97c7ee1fb28e48c27','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('616','patient0470@gmail.com','fed06cf33acb79f5fb35a2570c5bea10','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('617','patient0471@gmail.com','5cd64180c973428e5c3a03a124caf303','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('618','patient0472@gmail.com','839f4c6c1bc77d1cadce615c9bf90b51','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('619','patient0473@gmail.com','6182c01675b1c28da2aacc8a5d53a27c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('620','patient0474@gmail.com','a9ca98f4c1f674af1ff2d79682bfd5cf','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('621','patient0475@gmail.com','af2e42037de68f4b97e30c748d878502','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('622','patient0476@gmail.com','09139cca80571619841abd34d64aa938','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('623','patient0477@gmail.com','e8d85e1e43b1418da49994f1bf87cbcf','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('624','patient0478@gmail.com','f91ee22ae7a4ed79e8e43f81afcc965d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('625','patient0479@gmail.com','e0a7abe479216a022d2ed84c74f0eb6d','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('626','patient0480@gmail.com','b1bd679ee670417856a31cd0f6f1ffd2','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('627','patient0481@gmail.com','042bea71b7607e3132ecd3fe54e1cac7','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('628','patient0482@gmail.com','ddfe8ecf27a710cf6c890efbc7fdb04c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('629','patient0483@gmail.com','983f3649ff5c524cb40b5ef652a320fd','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('630','patient0484@gmail.com','6282b2ed7a3f9e5c3a870d7c8ce7e4be','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('631','patient0485@gmail.com','ae6965f64b7b4b22932791e356ff21a4','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('632','patient0486@gmail.com','f3d571464884bd70af5194916484632f','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('633','patient0487@gmail.com','ad173c65c23d18db38338331e526efea','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('634','patient0488@gmail.com','c7868c615adbdf63410880824df5c609','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('635','patient0489@gmail.com','b7db60614d7d02ac179324bd593ca4cb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('636','patient0490@gmail.com','8a04731eacb74fb3c52e0d50cb2751fb','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('637','patient0491@gmail.com','555c04de9fafc46f26da9ef3847e4070','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('638','patient0492@gmail.com','86309cb7d4819ee8f927f92a4dea1374','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('639','patient0493@gmail.com','c75b0360e2b18050876f4e11c4d0aaa1','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('640','patient0494@gmail.com','5e1eebb280e07448f42204deebd54c12','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('641','patient0495@gmail.com','11e5895c27453092930d735c625b17e6','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('642','patient0496@gmail.com','7f541fe1ba15e1df0075de40b25078b8','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('643','patient0497@gmail.com','5679c018edf3bdae62890738e361db6c','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('644','patient0498@gmail.com','61f943533966139df1fee4fdc89b29c3','2');
Insert into HR.CREDENTIALS (ID,EMAIL,PASSWORD,TYPE) values ('645','patient0499@gmail.com','e7a373dffb939699b61986cb0cb9650d','2');
REM INSERTING into HR.DEPARTMENT
SET DEFINE OFF;
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('332','Department#02','Description for Department nr.02','0');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('330','Department#00','Description for Department nr.00','4');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('331','Department#01','Description for Department nr.01','4');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('333','Department#03','Description for Department nr.03','1');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('334','Department#04','Description for Department nr.04','2');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('335','Department#05','Description for Department nr.05','7');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('336','Department#06','Description for Department nr.06','7');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('337','Department#07','Description for Department nr.07','0');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('338','Department#08','Description for Department nr.08','4');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('339','Department#09','Description for Department nr.09','6');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('340','Department#10','Description for Department nr.10','4');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('341','Department#11','Description for Department nr.11','3');
Insert into HR.DEPARTMENT (ID_DEPT,NAME,DESCRIPTION,FLOOR) values ('342','Department#12','Description for Department nr.12','1');
REM INSERTING into HR.DOCTOR
SET DEFINE OFF;
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('345','Doctor First Name 0002','Doctor Last Name0002','331','769922','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('343','Doctor First Name 0000','Doctor Last Name0000','332','240488','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('344','Doctor First Name 0001','Doctor Last Name0001','334','203382','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('346','Doctor First Name 0003','Doctor Last Name0003','341','869522','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('347','Doctor First Name 0004','Doctor Last Name0004','330','541487','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('348','Doctor First Name 0005','Doctor Last Name0005','336','507908','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('349','Doctor First Name 0006','Doctor Last Name0006','331','168737','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('350','Doctor First Name 0007','Doctor Last Name0007','335','388044','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('351','Doctor First Name 0008','Doctor Last Name0008','340','141141','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('352','Doctor First Name 0009','Doctor Last Name0009','334','697567','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('353','Doctor First Name 0010','Doctor Last Name0010','332','983891','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('354','Doctor First Name 0011','Doctor Last Name0011','341','173666','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('355','Doctor First Name 0012','Doctor Last Name0012','335','930167','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('356','Doctor First Name 0013','Doctor Last Name0013','339','452416','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('357','Doctor First Name 0014','Doctor Last Name0014','342','934119','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('358','Doctor First Name 0015','Doctor Last Name0015','330','214851','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('359','Doctor First Name 0016','Doctor Last Name0016','333','443904','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('360','Doctor First Name 0017','Doctor Last Name0017','342','650079','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('361','Doctor First Name 0018','Doctor Last Name0018','337','992949','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('362','Doctor First Name 0019','Doctor Last Name0019','330','637570','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('363','Doctor First Name 0020','Doctor Last Name0020','331','646822','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('364','Doctor First Name 0021','Doctor Last Name0021','336','129181','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('365','Doctor First Name 0022','Doctor Last Name0022','336','777773','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('366','Doctor First Name 0023','Doctor Last Name0023','332','740690','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('367','Doctor First Name 0024','Doctor Last Name0024','334','713695','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('368','Doctor First Name 0025','Doctor Last Name0025','339','722356','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('369','Doctor First Name 0026','Doctor Last Name0026','331','770432','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('370','Doctor First Name 0027','Doctor Last Name0027','330','319409','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('371','Doctor First Name 0028','Doctor Last Name0028','333','329378','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('372','Doctor First Name 0029','Doctor Last Name0029','338','273082','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('373','Doctor First Name 0030','Doctor Last Name0030','335','656229','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('374','Doctor First Name 0031','Doctor Last Name0031','341','260268','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('375','Doctor First Name 0032','Doctor Last Name0032','340','944335','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('376','Doctor First Name 0033','Doctor Last Name0033','340','795569','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('377','Doctor First Name 0034','Doctor Last Name0034','338','628363','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('378','Doctor First Name 0035','Doctor Last Name0035','333','308553','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('379','Doctor First Name 0036','Doctor Last Name0036','338','524056','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('380','Doctor First Name 0037','Doctor Last Name0037','341','461687','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('381','Doctor First Name 0038','Doctor Last Name0038','341','815333','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('382','Doctor First Name 0039','Doctor Last Name0039','330','285803','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('383','Doctor First Name 0040','Doctor Last Name0040','339','697637','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('384','Doctor First Name 0041','Doctor Last Name0041','336','114282','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('385','Doctor First Name 0042','Doctor Last Name0042','331','676775','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('386','Doctor First Name 0043','Doctor Last Name0043','331','260117','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('387','Doctor First Name 0044','Doctor Last Name0044','339','383667','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('388','Doctor First Name 0045','Doctor Last Name0045','340','590244','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('389','Doctor First Name 0046','Doctor Last Name0046','341','814901','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('390','Doctor First Name 0047','Doctor Last Name0047','335','999996','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('391','Doctor First Name 0048','Doctor Last Name0048','335','788562','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('392','Doctor First Name 0049','Doctor Last Name0049','337','569698','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('393','Doctor First Name 0050','Doctor Last Name0050','341','277123','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('394','Doctor First Name 0051','Doctor Last Name0051','331','705710','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('395','Doctor First Name 0052','Doctor Last Name0052','335','550283','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('396','Doctor First Name 0053','Doctor Last Name0053','331','849938','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('397','Doctor First Name 0054','Doctor Last Name0054','333','671605','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('398','Doctor First Name 0055','Doctor Last Name0055','332','794876','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('399','Doctor First Name 0056','Doctor Last Name0056','339','489005','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('400','Doctor First Name 0057','Doctor Last Name0057','334','800377','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('401','Doctor First Name 0058','Doctor Last Name0058','331','957397','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('402','Doctor First Name 0059','Doctor Last Name0059','330','315014','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('403','Doctor First Name 0060','Doctor Last Name0060','339','723618','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('404','Doctor First Name 0061','Doctor Last Name0061','330','458700','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('405','Doctor First Name 0062','Doctor Last Name0062','338','787875','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('406','Doctor First Name 0063','Doctor Last Name0063','333','932192','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('407','Doctor First Name 0064','Doctor Last Name0064','341','963934','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('408','Doctor First Name 0065','Doctor Last Name0065','341','262868','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('409','Doctor First Name 0066','Doctor Last Name0066','331','586808','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('410','Doctor First Name 0067','Doctor Last Name0067','332','629045','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('411','Doctor First Name 0068','Doctor Last Name0068','336','849562','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('412','Doctor First Name 0069','Doctor Last Name0069','337','661725','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('413','Doctor First Name 0070','Doctor Last Name0070','336','383566','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('414','Doctor First Name 0071','Doctor Last Name0071','340','207967','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('415','Doctor First Name 0072','Doctor Last Name0072','331','158909','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('416','Doctor First Name 0073','Doctor Last Name0073','339','588588','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('417','Doctor First Name 0074','Doctor Last Name0074','335','744049','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('418','Doctor First Name 0075','Doctor Last Name0075','340','526312','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('419','Doctor First Name 0076','Doctor Last Name0076','338','453919','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('420','Doctor First Name 0077','Doctor Last Name0077','338','362814','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('421','Doctor First Name 0078','Doctor Last Name0078','332','744663','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('422','Doctor First Name 0079','Doctor Last Name0079','341','693291','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('423','Doctor First Name 0080','Doctor Last Name0080','332','268619','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('424','Doctor First Name 0081','Doctor Last Name0081','340','428433','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('425','Doctor First Name 0082','Doctor Last Name0082','337','109727','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('426','Doctor First Name 0083','Doctor Last Name0083','337','295640','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('427','Doctor First Name 0084','Doctor Last Name0084','332','809665','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('428','Doctor First Name 0085','Doctor Last Name0085','332','351391','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('429','Doctor First Name 0086','Doctor Last Name0086','334','486531','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('430','Doctor First Name 0087','Doctor Last Name0087','338','527263','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('431','Doctor First Name 0088','Doctor Last Name0088','340','908027','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('432','Doctor First Name 0089','Doctor Last Name0089','333','715667','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('433','Doctor First Name 0090','Doctor Last Name0090','341','742369','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('434','Doctor First Name 0091','Doctor Last Name0091','336','335577','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('435','Doctor First Name 0092','Doctor Last Name0092','330','551662','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('436','Doctor First Name 0093','Doctor Last Name0093','335','792477','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('437','Doctor First Name 0094','Doctor Last Name0094','339','936554','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('438','Doctor First Name 0095','Doctor Last Name0095','334','849609','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('439','Doctor First Name 0096','Doctor Last Name0096','340','939821','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('440','Doctor First Name 0097','Doctor Last Name0097','334','407342','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('441','Doctor First Name 0098','Doctor Last Name0098','335','539313','1');
Insert into HR.DOCTOR (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_DEPT,PHONE_NUMBER,STATUS) values ('442','Doctor First Name 0099','Doctor Last Name0099','335','201344','1');
REM INSERTING into HR.PATIENT
SET DEFINE OFF;
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('455','First Name 0309','Last Name 0309','address#0309',to_date('07-01-2016','DD-MM-RRRR'),'381597','genetic#0309','ins275739575');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('457','First Name 0311','Last Name 0311','address#0311',to_date('07-01-2016','DD-MM-RRRR'),'429537','genetic#0311','ins810371906');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('456','First Name 0310','Last Name 0310','address#0310',to_date('07-01-2016','DD-MM-RRRR'),'764816','genetic#0310','ins156626578');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('458','First Name 0312','Last Name 0312','address#0312',to_date('07-01-2016','DD-MM-RRRR'),'594381','genetic#0312','ins215501455');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('459','First Name 0313','Last Name 0313','address#0313',to_date('07-01-2016','DD-MM-RRRR'),'892601','genetic#0313','ins766843784');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('460','First Name 0314','Last Name 0314','address#0314',to_date('07-01-2016','DD-MM-RRRR'),'842550','genetic#0314','ins592431972');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('461','First Name 0315','Last Name 0315','address#0315',to_date('07-01-2016','DD-MM-RRRR'),'559337','genetic#0315','ins799550741');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('462','First Name 0316','Last Name 0316','address#0316',to_date('07-01-2016','DD-MM-RRRR'),'969826','genetic#0316','ins570375968');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('463','First Name 0317','Last Name 0317','address#0317',to_date('07-01-2016','DD-MM-RRRR'),'562542','genetic#0317','ins553199090');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('464','First Name 0318','Last Name 0318','address#0318',to_date('07-01-2016','DD-MM-RRRR'),'730480','genetic#0318','ins251468031');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('465','First Name 0319','Last Name 0319','address#0319',to_date('07-01-2016','DD-MM-RRRR'),'855365','genetic#0319','ins512859014');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('466','First Name 0320','Last Name 0320','address#0320',to_date('07-01-2016','DD-MM-RRRR'),'848934','genetic#0320','ins216670993');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('467','First Name 0321','Last Name 0321','address#0321',to_date('07-01-2016','DD-MM-RRRR'),'191982','genetic#0321','ins702948346');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('468','First Name 0322','Last Name 0322','address#0322',to_date('07-01-2016','DD-MM-RRRR'),'406752','genetic#0322','ins314241206');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('469','First Name 0323','Last Name 0323','address#0323',to_date('07-01-2016','DD-MM-RRRR'),'350939','genetic#0323','ins642071468');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('470','First Name 0324','Last Name 0324','address#0324',to_date('07-01-2016','DD-MM-RRRR'),'940696','genetic#0324','ins663073923');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('471','First Name 0325','Last Name 0325','address#0325',to_date('07-01-2016','DD-MM-RRRR'),'300138','genetic#0325','ins635454941');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('472','First Name 0326','Last Name 0326','address#0326',to_date('07-01-2016','DD-MM-RRRR'),'346308','genetic#0326','ins270707576');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('473','First Name 0327','Last Name 0327','address#0327',to_date('07-01-2016','DD-MM-RRRR'),'740282','genetic#0327','ins463631779');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('474','First Name 0328','Last Name 0328','address#0328',to_date('07-01-2016','DD-MM-RRRR'),'817530','genetic#0328','ins941115065');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('475','First Name 0329','Last Name 0329','address#0329',to_date('07-01-2016','DD-MM-RRRR'),'266933','genetic#0329','ins352861996');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('476','First Name 0330','Last Name 0330','address#0330',to_date('07-01-2016','DD-MM-RRRR'),'193174','genetic#0330','ins743475667');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('477','First Name 0331','Last Name 0331','address#0331',to_date('07-01-2016','DD-MM-RRRR'),'619726','genetic#0331','ins930204833');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('478','First Name 0332','Last Name 0332','address#0332',to_date('07-01-2016','DD-MM-RRRR'),'232543','genetic#0332','ins851115519');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('479','First Name 0333','Last Name 0333','address#0333',to_date('07-01-2016','DD-MM-RRRR'),'125780','genetic#0333','ins518884926');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('480','First Name 0334','Last Name 0334','address#0334',to_date('07-01-2016','DD-MM-RRRR'),'767395','genetic#0334','ins560085759');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('481','First Name 0335','Last Name 0335','address#0335',to_date('07-01-2016','DD-MM-RRRR'),'861949','genetic#0335','ins461571898');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('482','First Name 0336','Last Name 0336','address#0336',to_date('07-01-2016','DD-MM-RRRR'),'420372','genetic#0336','ins169824800');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('483','First Name 0337','Last Name 0337','address#0337',to_date('07-01-2016','DD-MM-RRRR'),'307691','genetic#0337','ins264926488');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('484','First Name 0338','Last Name 0338','address#0338',to_date('07-01-2016','DD-MM-RRRR'),'718388','genetic#0338','ins161869284');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('485','First Name 0339','Last Name 0339','address#0339',to_date('07-01-2016','DD-MM-RRRR'),'808747','genetic#0339','ins215296653');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('486','First Name 0340','Last Name 0340','address#0340',to_date('07-01-2016','DD-MM-RRRR'),'515903','genetic#0340','ins952310641');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('487','First Name 0341','Last Name 0341','address#0341',to_date('07-01-2016','DD-MM-RRRR'),'651733','genetic#0341','ins329528398');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('488','First Name 0342','Last Name 0342','address#0342',to_date('07-01-2016','DD-MM-RRRR'),'599411','genetic#0342','ins307096225');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('489','First Name 0343','Last Name 0343','address#0343',to_date('07-01-2016','DD-MM-RRRR'),'324067','genetic#0343','ins388630886');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('490','First Name 0344','Last Name 0344','address#0344',to_date('07-01-2016','DD-MM-RRRR'),'812914','genetic#0344','ins606195667');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('491','First Name 0345','Last Name 0345','address#0345',to_date('07-01-2016','DD-MM-RRRR'),'433935','genetic#0345','ins621427892');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('492','First Name 0346','Last Name 0346','address#0346',to_date('07-01-2016','DD-MM-RRRR'),'345924','genetic#0346','ins477619561');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('493','First Name 0347','Last Name 0347','address#0347',to_date('07-01-2016','DD-MM-RRRR'),'123496','genetic#0347','ins211890840');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('494','First Name 0348','Last Name 0348','address#0348',to_date('07-01-2016','DD-MM-RRRR'),'183221','genetic#0348','ins918730228');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('495','First Name 0349','Last Name 0349','address#0349',to_date('07-01-2016','DD-MM-RRRR'),'181697','genetic#0349','ins340867359');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('496','First Name 0350','Last Name 0350','address#0350',to_date('07-01-2016','DD-MM-RRRR'),'616290','genetic#0350','ins887868316');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('497','First Name 0351','Last Name 0351','address#0351',to_date('07-01-2016','DD-MM-RRRR'),'895677','genetic#0351','ins790854402');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('498','First Name 0352','Last Name 0352','address#0352',to_date('07-01-2016','DD-MM-RRRR'),'773503','genetic#0352','ins579125674');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('499','First Name 0353','Last Name 0353','address#0353',to_date('07-01-2016','DD-MM-RRRR'),'850333','genetic#0353','ins230314120');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('500','First Name 0354','Last Name 0354','address#0354',to_date('07-01-2016','DD-MM-RRRR'),'255940','genetic#0354','ins181382184');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('501','First Name 0355','Last Name 0355','address#0355',to_date('07-01-2016','DD-MM-RRRR'),'322725','genetic#0355','ins678414324');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('502','First Name 0356','Last Name 0356','address#0356',to_date('07-01-2016','DD-MM-RRRR'),'544113','genetic#0356','ins702235083');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('503','First Name 0357','Last Name 0357','address#0357',to_date('07-01-2016','DD-MM-RRRR'),'327571','genetic#0357','ins314623479');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('504','First Name 0358','Last Name 0358','address#0358',to_date('07-01-2016','DD-MM-RRRR'),'378470','genetic#0358','ins863645787');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('505','First Name 0359','Last Name 0359','address#0359',to_date('07-01-2016','DD-MM-RRRR'),'351703','genetic#0359','ins412630806');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('506','First Name 0360','Last Name 0360','address#0360',to_date('07-01-2016','DD-MM-RRRR'),'294817','genetic#0360','ins843912317');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('507','First Name 0361','Last Name 0361','address#0361',to_date('07-01-2016','DD-MM-RRRR'),'747169','genetic#0361','ins519585106');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('508','First Name 0362','Last Name 0362','address#0362',to_date('07-01-2016','DD-MM-RRRR'),'127635','genetic#0362','ins245968038');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('509','First Name 0363','Last Name 0363','address#0363',to_date('07-01-2016','DD-MM-RRRR'),'823899','genetic#0363','ins484330909');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('510','First Name 0364','Last Name 0364','address#0364',to_date('07-01-2016','DD-MM-RRRR'),'241429','genetic#0364','ins308482226');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('511','First Name 0365','Last Name 0365','address#0365',to_date('07-01-2016','DD-MM-RRRR'),'978646','genetic#0365','ins388961284');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('512','First Name 0366','Last Name 0366','address#0366',to_date('07-01-2016','DD-MM-RRRR'),'133598','genetic#0366','ins477521667');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('513','First Name 0367','Last Name 0367','address#0367',to_date('07-01-2016','DD-MM-RRRR'),'436019','genetic#0367','ins920879892');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('514','First Name 0368','Last Name 0368','address#0368',to_date('07-01-2016','DD-MM-RRRR'),'433850','genetic#0368','ins725049216');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('515','First Name 0369','Last Name 0369','address#0369',to_date('07-01-2016','DD-MM-RRRR'),'533591','genetic#0369','ins172608724');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('516','First Name 0370','Last Name 0370','address#0370',to_date('07-01-2016','DD-MM-RRRR'),'538295','genetic#0370','ins469097701');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('517','First Name 0371','Last Name 0371','address#0371',to_date('07-01-2016','DD-MM-RRRR'),'450255','genetic#0371','ins242685110');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('518','First Name 0372','Last Name 0372','address#0372',to_date('07-01-2016','DD-MM-RRRR'),'398701','genetic#0372','ins234501155');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('519','First Name 0373','Last Name 0373','address#0373',to_date('07-01-2016','DD-MM-RRRR'),'933504','genetic#0373','ins731701207');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('520','First Name 0374','Last Name 0374','address#0374',to_date('07-01-2016','DD-MM-RRRR'),'884317','genetic#0374','ins131301413');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('521','First Name 0375','Last Name 0375','address#0375',to_date('07-01-2016','DD-MM-RRRR'),'640259','genetic#0375','ins259851017');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('522','First Name 0376','Last Name 0376','address#0376',to_date('07-01-2016','DD-MM-RRRR'),'989162','genetic#0376','ins770590507');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('523','First Name 0377','Last Name 0377','address#0377',to_date('07-01-2016','DD-MM-RRRR'),'693050','genetic#0377','ins337785683');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('524','First Name 0378','Last Name 0378','address#0378',to_date('07-01-2016','DD-MM-RRRR'),'143684','genetic#0378','ins196705586');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('525','First Name 0379','Last Name 0379','address#0379',to_date('07-01-2016','DD-MM-RRRR'),'551489','genetic#0379','ins749709952');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('526','First Name 0380','Last Name 0380','address#0380',to_date('07-01-2016','DD-MM-RRRR'),'406413','genetic#0380','ins389173559');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('527','First Name 0381','Last Name 0381','address#0381',to_date('07-01-2016','DD-MM-RRRR'),'939951','genetic#0381','ins641852282');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('528','First Name 0382','Last Name 0382','address#0382',to_date('07-01-2016','DD-MM-RRRR'),'699765','genetic#0382','ins866978979');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('529','First Name 0383','Last Name 0383','address#0383',to_date('07-01-2016','DD-MM-RRRR'),'668635','genetic#0383','ins845204370');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('530','First Name 0384','Last Name 0384','address#0384',to_date('07-01-2016','DD-MM-RRRR'),'878602','genetic#0384','ins623233892');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('531','First Name 0385','Last Name 0385','address#0385',to_date('07-01-2016','DD-MM-RRRR'),'529794','genetic#0385','ins602522828');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('5','First Name 0003','Last Name 0003','address#0003',to_date('07-01-2016','DD-MM-RRRR'),'199898','genetic#0003','ins535392416');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('6','First Name 0004','Last Name 0004','address#0004',to_date('07-01-2016','DD-MM-RRRR'),'901686','genetic#0004','ins311308292');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('3','First Name 0001','Last Name 0001','address#0001',to_date('07-01-2016','DD-MM-RRRR'),'241602','genetic#0001','ins110812125');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('4','First Name 0002','Last Name 0002','address#0002',to_date('07-01-2016','DD-MM-RRRR'),'207173','genetic#0002','ins907925049');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('7','First Name 0005','Last Name 0005','address#0005',to_date('07-01-2016','DD-MM-RRRR'),'459683','genetic#0005','ins436520897');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('8','First Name 0006','Last Name 0006','address#0006',to_date('07-01-2016','DD-MM-RRRR'),'893562','genetic#0006','ins892144282');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('9','First Name 0007','Last Name 0007','address#0007',to_date('07-01-2016','DD-MM-RRRR'),'900138','genetic#0007','ins856512717');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('10','First Name 0008','Last Name 0008','address#0008',to_date('07-01-2016','DD-MM-RRRR'),'206503','genetic#0008','ins962160196');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('11','First Name 0009','Last Name 0009','address#0009',to_date('07-01-2016','DD-MM-RRRR'),'275291','genetic#0009','ins434053428');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('12','First Name 0010','Last Name 0010','address#0010',to_date('07-01-2016','DD-MM-RRRR'),'379711','genetic#0010','ins961942066');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('13','First Name 0011','Last Name 0011','address#0011',to_date('07-01-2016','DD-MM-RRRR'),'853849','genetic#0011','ins177013701');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('14','First Name 0012','Last Name 0012','address#0012',to_date('07-01-2016','DD-MM-RRRR'),'523072','genetic#0012','ins402589972');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('15','First Name 0013','Last Name 0013','address#0013',to_date('07-01-2016','DD-MM-RRRR'),'697305','genetic#0013','ins986370014');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('16','First Name 0014','Last Name 0014','address#0014',to_date('07-01-2016','DD-MM-RRRR'),'595418','genetic#0014','ins398698765');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('17','First Name 0015','Last Name 0015','address#0015',to_date('07-01-2016','DD-MM-RRRR'),'721321','genetic#0015','ins180992795');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('18','First Name 0016','Last Name 0016','address#0016',to_date('07-01-2016','DD-MM-RRRR'),'984873','genetic#0016','ins711984142');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('19','First Name 0017','Last Name 0017','address#0017',to_date('07-01-2016','DD-MM-RRRR'),'594351','genetic#0017','ins211404704');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('20','First Name 0018','Last Name 0018','address#0018',to_date('07-01-2016','DD-MM-RRRR'),'130292','genetic#0018','ins942682368');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('21','First Name 0019','Last Name 0019','address#0019',to_date('07-01-2016','DD-MM-RRRR'),'522988','genetic#0019','ins469717837');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('22','First Name 0020','Last Name 0020','address#0020',to_date('07-01-2016','DD-MM-RRRR'),'341292','genetic#0020','ins657805191');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('23','First Name 0021','Last Name 0021','address#0021',to_date('07-01-2016','DD-MM-RRRR'),'680024','genetic#0021','ins751278169');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('24','First Name 0022','Last Name 0022','address#0022',to_date('07-01-2016','DD-MM-RRRR'),'635042','genetic#0022','ins248606698');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('25','First Name 0023','Last Name 0023','address#0023',to_date('07-01-2016','DD-MM-RRRR'),'230599','genetic#0023','ins397034814');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('26','First Name 0024','Last Name 0024','address#0024',to_date('07-01-2016','DD-MM-RRRR'),'936889','genetic#0024','ins934757135');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('27','First Name 0025','Last Name 0025','address#0025',to_date('07-01-2016','DD-MM-RRRR'),'898275','genetic#0025','ins247073485');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('28','First Name 0026','Last Name 0026','address#0026',to_date('07-01-2016','DD-MM-RRRR'),'389005','genetic#0026','ins391895738');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('29','First Name 0027','Last Name 0027','address#0027',to_date('07-01-2016','DD-MM-RRRR'),'723800','genetic#0027','ins668174390');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('30','First Name 0028','Last Name 0028','address#0028',to_date('07-01-2016','DD-MM-RRRR'),'256961','genetic#0028','ins453181277');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('31','First Name 0029','Last Name 0029','address#0029',to_date('07-01-2016','DD-MM-RRRR'),'484851','genetic#0029','ins839012864');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('32','First Name 0030','Last Name 0030','address#0030',to_date('07-01-2016','DD-MM-RRRR'),'838085','genetic#0030','ins220803330');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('33','First Name 0031','Last Name 0031','address#0031',to_date('07-01-2016','DD-MM-RRRR'),'715888','genetic#0031','ins801199921');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('34','First Name 0032','Last Name 0032','address#0032',to_date('07-01-2016','DD-MM-RRRR'),'715198','genetic#0032','ins820695068');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('35','First Name 0033','Last Name 0033','address#0033',to_date('07-01-2016','DD-MM-RRRR'),'907268','genetic#0033','ins747699443');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('36','First Name 0034','Last Name 0034','address#0034',to_date('07-01-2016','DD-MM-RRRR'),'362160','genetic#0034','ins782159093');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('37','First Name 0035','Last Name 0035','address#0035',to_date('07-01-2016','DD-MM-RRRR'),'931867','genetic#0035','ins957456727');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('38','First Name 0036','Last Name 0036','address#0036',to_date('07-01-2016','DD-MM-RRRR'),'911063','genetic#0036','ins736786184');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('39','First Name 0037','Last Name 0037','address#0037',to_date('07-01-2016','DD-MM-RRRR'),'720648','genetic#0037','ins617486320');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('40','First Name 0038','Last Name 0038','address#0038',to_date('07-01-2016','DD-MM-RRRR'),'496987','genetic#0038','ins628433423');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('41','First Name 0039','Last Name 0039','address#0039',to_date('07-01-2016','DD-MM-RRRR'),'767546','genetic#0039','ins705243810');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('42','First Name 0040','Last Name 0040','address#0040',to_date('07-01-2016','DD-MM-RRRR'),'855769','genetic#0040','ins226038461');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('43','First Name 0041','Last Name 0041','address#0041',to_date('07-01-2016','DD-MM-RRRR'),'461807','genetic#0041','ins762548690');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('44','First Name 0042','Last Name 0042','address#0042',to_date('07-01-2016','DD-MM-RRRR'),'282716','genetic#0042','ins448345573');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('45','First Name 0043','Last Name 0043','address#0043',to_date('07-01-2016','DD-MM-RRRR'),'422978','genetic#0043','ins429426423');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('46','First Name 0044','Last Name 0044','address#0044',to_date('07-01-2016','DD-MM-RRRR'),'487603','genetic#0044','ins416700392');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('47','First Name 0045','Last Name 0045','address#0045',to_date('07-01-2016','DD-MM-RRRR'),'785719','genetic#0045','ins241170717');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('48','First Name 0046','Last Name 0046','address#0046',to_date('07-01-2016','DD-MM-RRRR'),'984865','genetic#0046','ins291279233');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('49','First Name 0047','Last Name 0047','address#0047',to_date('07-01-2016','DD-MM-RRRR'),'819717','genetic#0047','ins402185819');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('50','First Name 0048','Last Name 0048','address#0048',to_date('07-01-2016','DD-MM-RRRR'),'135388','genetic#0048','ins540092559');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('51','First Name 0049','Last Name 0049','address#0049',to_date('07-01-2016','DD-MM-RRRR'),'533407','genetic#0049','ins859330495');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('52','First Name 0050','Last Name 0050','address#0050',to_date('07-01-2016','DD-MM-RRRR'),'489764','genetic#0050','ins887343456');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('53','First Name 0051','Last Name 0051','address#0051',to_date('07-01-2016','DD-MM-RRRR'),'672595','genetic#0051','ins448440600');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('54','First Name 0052','Last Name 0052','address#0052',to_date('07-01-2016','DD-MM-RRRR'),'315205','genetic#0052','ins979433791');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('55','First Name 0053','Last Name 0053','address#0053',to_date('07-01-2016','DD-MM-RRRR'),'480831','genetic#0053','ins261490286');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('56','First Name 0054','Last Name 0054','address#0054',to_date('07-01-2016','DD-MM-RRRR'),'947523','genetic#0054','ins771519345');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('57','First Name 0055','Last Name 0055','address#0055',to_date('07-01-2016','DD-MM-RRRR'),'956192','genetic#0055','ins195367720');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('58','First Name 0056','Last Name 0056','address#0056',to_date('07-01-2016','DD-MM-RRRR'),'171465','genetic#0056','ins551717804');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('59','First Name 0057','Last Name 0057','address#0057',to_date('07-01-2016','DD-MM-RRRR'),'365032','genetic#0057','ins358813310');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('60','First Name 0058','Last Name 0058','address#0058',to_date('07-01-2016','DD-MM-RRRR'),'439391','genetic#0058','ins175537898');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('61','First Name 0059','Last Name 0059','address#0059',to_date('07-01-2016','DD-MM-RRRR'),'637978','genetic#0059','ins367543658');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('62','First Name 0060','Last Name 0060','address#0060',to_date('07-01-2016','DD-MM-RRRR'),'424720','genetic#0060','ins385772311');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('63','First Name 0061','Last Name 0061','address#0061',to_date('07-01-2016','DD-MM-RRRR'),'394555','genetic#0061','ins590569105');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('64','First Name 0062','Last Name 0062','address#0062',to_date('07-01-2016','DD-MM-RRRR'),'271735','genetic#0062','ins220990005');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('65','First Name 0063','Last Name 0063','address#0063',to_date('07-01-2016','DD-MM-RRRR'),'751919','genetic#0063','ins740588864');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('66','First Name 0064','Last Name 0064','address#0064',to_date('07-01-2016','DD-MM-RRRR'),'797766','genetic#0064','ins608878458');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('67','First Name 0065','Last Name 0065','address#0065',to_date('07-01-2016','DD-MM-RRRR'),'593043','genetic#0065','ins280557025');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('68','First Name 0066','Last Name 0066','address#0066',to_date('07-01-2016','DD-MM-RRRR'),'271835','genetic#0066','ins637657638');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('69','First Name 0067','Last Name 0067','address#0067',to_date('07-01-2016','DD-MM-RRRR'),'736272','genetic#0067','ins880203613');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('70','First Name 0068','Last Name 0068','address#0068',to_date('07-01-2016','DD-MM-RRRR'),'189952','genetic#0068','ins507329719');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('71','First Name 0069','Last Name 0069','address#0069',to_date('07-01-2016','DD-MM-RRRR'),'233140','genetic#0069','ins482374451');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('72','First Name 0070','Last Name 0070','address#0070',to_date('07-01-2016','DD-MM-RRRR'),'948594','genetic#0070','ins121226037');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('73','First Name 0071','Last Name 0071','address#0071',to_date('07-01-2016','DD-MM-RRRR'),'469175','genetic#0071','ins651459127');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('74','First Name 0072','Last Name 0072','address#0072',to_date('07-01-2016','DD-MM-RRRR'),'284977','genetic#0072','ins392235839');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('75','First Name 0073','Last Name 0073','address#0073',to_date('07-01-2016','DD-MM-RRRR'),'219813','genetic#0073','ins334002947');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('76','First Name 0074','Last Name 0074','address#0074',to_date('07-01-2016','DD-MM-RRRR'),'137152','genetic#0074','ins726052752');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('77','First Name 0075','Last Name 0075','address#0075',to_date('07-01-2016','DD-MM-RRRR'),'200700','genetic#0075','ins744180703');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('78','First Name 0076','Last Name 0076','address#0076',to_date('07-01-2016','DD-MM-RRRR'),'321351','genetic#0076','ins767845277');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('79','First Name 0077','Last Name 0077','address#0077',to_date('07-01-2016','DD-MM-RRRR'),'562621','genetic#0077','ins247635651');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('80','First Name 0078','Last Name 0078','address#0078',to_date('07-01-2016','DD-MM-RRRR'),'153885','genetic#0078','ins899196208');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('83','First Name 0081','Last Name 0081','address#0081',to_date('07-01-2016','DD-MM-RRRR'),'973750','genetic#0081','ins871953000');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('84','First Name 0082','Last Name 0082','address#0082',to_date('07-01-2016','DD-MM-RRRR'),'602322','genetic#0082','ins766967778');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('81','First Name 0079','Last Name 0079','address#0079',to_date('07-01-2016','DD-MM-RRRR'),'807697','genetic#0079','ins551606407');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('82','First Name 0080','Last Name 0080','address#0080',to_date('07-01-2016','DD-MM-RRRR'),'509569','genetic#0080','ins574616521');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('85','First Name 0083','Last Name 0083','address#0083',to_date('07-01-2016','DD-MM-RRRR'),'379881','genetic#0083','ins418535502');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('86','First Name 0084','Last Name 0084','address#0084',to_date('07-01-2016','DD-MM-RRRR'),'622539','genetic#0084','ins291262178');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('87','First Name 0085','Last Name 0085','address#0085',to_date('07-01-2016','DD-MM-RRRR'),'985584','genetic#0085','ins857703289');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('88','First Name 0086','Last Name 0086','address#0086',to_date('07-01-2016','DD-MM-RRRR'),'234403','genetic#0086','ins957017224');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('89','First Name 0087','Last Name 0087','address#0087',to_date('07-01-2016','DD-MM-RRRR'),'437176','genetic#0087','ins616752707');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('90','First Name 0088','Last Name 0088','address#0088',to_date('07-01-2016','DD-MM-RRRR'),'221393','genetic#0088','ins773261839');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('91','First Name 0089','Last Name 0089','address#0089',to_date('07-01-2016','DD-MM-RRRR'),'936011','genetic#0089','ins102319694');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('92','First Name 0090','Last Name 0090','address#0090',to_date('07-01-2016','DD-MM-RRRR'),'620774','genetic#0090','ins937733025');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('93','First Name 0091','Last Name 0091','address#0091',to_date('07-01-2016','DD-MM-RRRR'),'571725','genetic#0091','ins125867366');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('94','First Name 0092','Last Name 0092','address#0092',to_date('07-01-2016','DD-MM-RRRR'),'179856','genetic#0092','ins153587014');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('95','First Name 0093','Last Name 0093','address#0093',to_date('07-01-2016','DD-MM-RRRR'),'416305','genetic#0093','ins825199208');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('96','First Name 0094','Last Name 0094','address#0094',to_date('07-01-2016','DD-MM-RRRR'),'417580','genetic#0094','ins124200196');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('97','First Name 0095','Last Name 0095','address#0095',to_date('07-01-2016','DD-MM-RRRR'),'453444','genetic#0095','ins837076935');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('98','First Name 0096','Last Name 0096','address#0096',to_date('07-01-2016','DD-MM-RRRR'),'674675','genetic#0096','ins638345868');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('99','First Name 0097','Last Name 0097','address#0097',to_date('07-01-2016','DD-MM-RRRR'),'611655','genetic#0097','ins658523665');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('100','First Name 0098','Last Name 0098','address#0098',to_date('07-01-2016','DD-MM-RRRR'),'677706','genetic#0098','ins176641962');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('101','First Name 0099','Last Name 0099','address#0099',to_date('07-01-2016','DD-MM-RRRR'),'789911','genetic#0099','ins702207807');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('102','First Name 0100','Last Name 0100','address#0100',to_date('07-01-2016','DD-MM-RRRR'),'954120','genetic#0100','ins866442070');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('103','First Name 0101','Last Name 0101','address#0101',to_date('07-01-2016','DD-MM-RRRR'),'203512','genetic#0101','ins928551260');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('104','First Name 0102','Last Name 0102','address#0102',to_date('07-01-2016','DD-MM-RRRR'),'758594','genetic#0102','ins279449518');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('105','First Name 0103','Last Name 0103','address#0103',to_date('07-01-2016','DD-MM-RRRR'),'633441','genetic#0103','ins243683657');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('106','First Name 0104','Last Name 0104','address#0104',to_date('07-01-2016','DD-MM-RRRR'),'810457','genetic#0104','ins704599042');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('107','First Name 0105','Last Name 0105','address#0105',to_date('07-01-2016','DD-MM-RRRR'),'777801','genetic#0105','ins789360648');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('108','First Name 0106','Last Name 0106','address#0106',to_date('07-01-2016','DD-MM-RRRR'),'615593','genetic#0106','ins151565371');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('109','First Name 0107','Last Name 0107','address#0107',to_date('07-01-2016','DD-MM-RRRR'),'953840','genetic#0107','ins869964790');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('110','First Name 0108','Last Name 0108','address#0108',to_date('07-01-2016','DD-MM-RRRR'),'400227','genetic#0108','ins483702798');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('111','First Name 0109','Last Name 0109','address#0109',to_date('07-01-2016','DD-MM-RRRR'),'687110','genetic#0109','ins920164612');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('112','First Name 0110','Last Name 0110','address#0110',to_date('07-01-2016','DD-MM-RRRR'),'102229','genetic#0110','ins777124022');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('113','First Name 0111','Last Name 0111','address#0111',to_date('07-01-2016','DD-MM-RRRR'),'873680','genetic#0111','ins355681760');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('114','First Name 0112','Last Name 0112','address#0112',to_date('07-01-2016','DD-MM-RRRR'),'504258','genetic#0112','ins785463228');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('115','First Name 0113','Last Name 0113','address#0113',to_date('07-01-2016','DD-MM-RRRR'),'382340','genetic#0113','ins447239751');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('116','First Name 0114','Last Name 0114','address#0114',to_date('07-01-2016','DD-MM-RRRR'),'105096','genetic#0114','ins575879804');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('117','First Name 0115','Last Name 0115','address#0115',to_date('07-01-2016','DD-MM-RRRR'),'195554','genetic#0115','ins360535385');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('118','First Name 0116','Last Name 0116','address#0116',to_date('07-01-2016','DD-MM-RRRR'),'312406','genetic#0116','ins519185710');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('119','First Name 0117','Last Name 0117','address#0117',to_date('07-01-2016','DD-MM-RRRR'),'983611','genetic#0117','ins169570358');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('120','First Name 0118','Last Name 0118','address#0118',to_date('07-01-2016','DD-MM-RRRR'),'922353','genetic#0118','ins692224162');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('121','First Name 0119','Last Name 0119','address#0119',to_date('07-01-2016','DD-MM-RRRR'),'394991','genetic#0119','ins392276129');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('122','First Name 0120','Last Name 0120','address#0120',to_date('07-01-2016','DD-MM-RRRR'),'291757','genetic#0120','ins936172483');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('123','First Name 0121','Last Name 0121','address#0121',to_date('07-01-2016','DD-MM-RRRR'),'313741','genetic#0121','ins711706843');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('124','First Name 0122','Last Name 0122','address#0122',to_date('07-01-2016','DD-MM-RRRR'),'159274','genetic#0122','ins628220476');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('125','First Name 0123','Last Name 0123','address#0123',to_date('07-01-2016','DD-MM-RRRR'),'122751','genetic#0123','ins401879281');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('126','First Name 0124','Last Name 0124','address#0124',to_date('07-01-2016','DD-MM-RRRR'),'704681','genetic#0124','ins804711841');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('127','First Name 0125','Last Name 0125','address#0125',to_date('07-01-2016','DD-MM-RRRR'),'776413','genetic#0125','ins227953072');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('128','First Name 0126','Last Name 0126','address#0126',to_date('07-01-2016','DD-MM-RRRR'),'115096','genetic#0126','ins757542886');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('129','First Name 0127','Last Name 0127','address#0127',to_date('07-01-2016','DD-MM-RRRR'),'864211','genetic#0127','ins112788582');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('130','First Name 0128','Last Name 0128','address#0128',to_date('07-01-2016','DD-MM-RRRR'),'154870','genetic#0128','ins698439230');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('131','First Name 0129','Last Name 0129','address#0129',to_date('07-01-2016','DD-MM-RRRR'),'775190','genetic#0129','ins418049358');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('132','First Name 0130','Last Name 0130','address#0130',to_date('07-01-2016','DD-MM-RRRR'),'861342','genetic#0130','ins411355330');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('133','First Name 0131','Last Name 0131','address#0131',to_date('07-01-2016','DD-MM-RRRR'),'699501','genetic#0131','ins157562001');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('134','First Name 0132','Last Name 0132','address#0132',to_date('07-01-2016','DD-MM-RRRR'),'693805','genetic#0132','ins549922918');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('135','First Name 0133','Last Name 0133','address#0133',to_date('07-01-2016','DD-MM-RRRR'),'839157','genetic#0133','ins358616979');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('136','First Name 0134','Last Name 0134','address#0134',to_date('07-01-2016','DD-MM-RRRR'),'886351','genetic#0134','ins546023618');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('137','First Name 0135','Last Name 0135','address#0135',to_date('07-01-2016','DD-MM-RRRR'),'561347','genetic#0135','ins361616933');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('138','First Name 0136','Last Name 0136','address#0136',to_date('07-01-2016','DD-MM-RRRR'),'625172','genetic#0136','ins107951222');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('139','First Name 0137','Last Name 0137','address#0137',to_date('07-01-2016','DD-MM-RRRR'),'585366','genetic#0137','ins750939151');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('140','First Name 0138','Last Name 0138','address#0138',to_date('07-01-2016','DD-MM-RRRR'),'141939','genetic#0138','ins390522771');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('141','First Name 0139','Last Name 0139','address#0139',to_date('07-01-2016','DD-MM-RRRR'),'726188','genetic#0139','ins345460576');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('142','First Name 0140','Last Name 0140','address#0140',to_date('07-01-2016','DD-MM-RRRR'),'424487','genetic#0140','ins202379354');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('143','First Name 0141','Last Name 0141','address#0141',to_date('07-01-2016','DD-MM-RRRR'),'871196','genetic#0141','ins577628747');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('144','First Name 0142','Last Name 0142','address#0142',to_date('07-01-2016','DD-MM-RRRR'),'584120','genetic#0142','ins877143762');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('145','First Name 0143','Last Name 0143','address#0143',to_date('07-01-2016','DD-MM-RRRR'),'504089','genetic#0143','ins438011452');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('146','First Name 0144','Last Name 0144','address#0144',to_date('07-01-2016','DD-MM-RRRR'),'305357','genetic#0144','ins299618505');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('147','First Name 0145','Last Name 0145','address#0145',to_date('07-01-2016','DD-MM-RRRR'),'637353','genetic#0145','ins385172804');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('148','First Name 0146','Last Name 0146','address#0146',to_date('07-01-2016','DD-MM-RRRR'),'617084','genetic#0146','ins604305418');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('149','First Name 0147','Last Name 0147','address#0147',to_date('07-01-2016','DD-MM-RRRR'),'174829','genetic#0147','ins983636599');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('150','First Name 0148','Last Name 0148','address#0148',to_date('07-01-2016','DD-MM-RRRR'),'112204','genetic#0148','ins234195401');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('151','First Name 0149','Last Name 0149','address#0149',to_date('07-01-2016','DD-MM-RRRR'),'934413','genetic#0149','ins763818973');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('152','First Name 0150','Last Name 0150','address#0150',to_date('07-01-2016','DD-MM-RRRR'),'562720','genetic#0150','ins800657264');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('153','First Name 0151','Last Name 0151','address#0151',to_date('07-01-2016','DD-MM-RRRR'),'918358','genetic#0151','ins576728271');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('154','First Name 0152','Last Name 0152','address#0152',to_date('07-01-2016','DD-MM-RRRR'),'666604','genetic#0152','ins443065635');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('155','First Name 0153','Last Name 0153','address#0153',to_date('07-01-2016','DD-MM-RRRR'),'232370','genetic#0153','ins768463385');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('156','First Name 0154','Last Name 0154','address#0154',to_date('07-01-2016','DD-MM-RRRR'),'527421','genetic#0154','ins364157018');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('157','First Name 0155','Last Name 0155','address#0155',to_date('07-01-2016','DD-MM-RRRR'),'656498','genetic#0155','ins573689684');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('2','First Name 0000','Last Name 0000','address#0000',to_date('07-01-2016','DD-MM-RRRR'),'133833','genetic#0000','ins621360473');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('158','First Name 0156','Last Name 0156','address#0156',to_date('07-01-2016','DD-MM-RRRR'),'691859','genetic#0156','ins809409630');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('159','First Name 0157','Last Name 0157','address#0157',to_date('07-01-2016','DD-MM-RRRR'),'986866','genetic#0157','ins672811526');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('160','First Name 0158','Last Name 0158','address#0158',to_date('07-01-2016','DD-MM-RRRR'),'286364','genetic#0158','ins383714318');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('161','First Name 0159','Last Name 0159','address#0159',to_date('07-01-2016','DD-MM-RRRR'),'965801','genetic#0159','ins822358443');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('162','First Name 0160','Last Name 0160','address#0160',to_date('07-01-2016','DD-MM-RRRR'),'854526','genetic#0160','ins355794856');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('163','First Name 0161','Last Name 0161','address#0161',to_date('07-01-2016','DD-MM-RRRR'),'340665','genetic#0161','ins639539777');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('164','First Name 0162','Last Name 0162','address#0162',to_date('07-01-2016','DD-MM-RRRR'),'724262','genetic#0162','ins601179951');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('165','First Name 0163','Last Name 0163','address#0163',to_date('07-01-2016','DD-MM-RRRR'),'490865','genetic#0163','ins957042600');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('166','First Name 0164','Last Name 0164','address#0164',to_date('07-01-2016','DD-MM-RRRR'),'676109','genetic#0164','ins641536081');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('167','First Name 0165','Last Name 0165','address#0165',to_date('07-01-2016','DD-MM-RRRR'),'378317','genetic#0165','ins451171218');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('168','First Name 0166','Last Name 0166','address#0166',to_date('07-01-2016','DD-MM-RRRR'),'411046','genetic#0166','ins378120893');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('169','First Name 0167','Last Name 0167','address#0167',to_date('07-01-2016','DD-MM-RRRR'),'639657','genetic#0167','ins925531717');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('170','First Name 0168','Last Name 0168','address#0168',to_date('07-01-2016','DD-MM-RRRR'),'659269','genetic#0168','ins847759587');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('171','First Name 0169','Last Name 0169','address#0169',to_date('07-01-2016','DD-MM-RRRR'),'310538','genetic#0169','ins528131599');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('172','First Name 0170','Last Name 0170','address#0170',to_date('07-01-2016','DD-MM-RRRR'),'305641','genetic#0170','ins815657388');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('173','First Name 0171','Last Name 0171','address#0171',to_date('07-01-2016','DD-MM-RRRR'),'772195','genetic#0171','ins239932521');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('174','First Name 0172','Last Name 0172','address#0172',to_date('07-01-2016','DD-MM-RRRR'),'728672','genetic#0172','ins731668217');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('175','First Name 0173','Last Name 0173','address#0173',to_date('07-01-2016','DD-MM-RRRR'),'912444','genetic#0173','ins827944323');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('176','First Name 0174','Last Name 0174','address#0174',to_date('07-01-2016','DD-MM-RRRR'),'996768','genetic#0174','ins944273719');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('177','First Name 0175','Last Name 0175','address#0175',to_date('07-01-2016','DD-MM-RRRR'),'947829','genetic#0175','ins791115098');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('178','First Name 0176','Last Name 0176','address#0176',to_date('07-01-2016','DD-MM-RRRR'),'798016','genetic#0176','ins289846191');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('179','First Name 0177','Last Name 0177','address#0177',to_date('07-01-2016','DD-MM-RRRR'),'946128','genetic#0177','ins678619310');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('180','First Name 0178','Last Name 0178','address#0178',to_date('07-01-2016','DD-MM-RRRR'),'336062','genetic#0178','ins923181220');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('181','First Name 0179','Last Name 0179','address#0179',to_date('07-01-2016','DD-MM-RRRR'),'718801','genetic#0179','ins417179134');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('182','First Name 0180','Last Name 0180','address#0180',to_date('07-01-2016','DD-MM-RRRR'),'377597','genetic#0180','ins709562449');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('183','First Name 0181','Last Name 0181','address#0181',to_date('07-01-2016','DD-MM-RRRR'),'688046','genetic#0181','ins590834121');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('184','First Name 0182','Last Name 0182','address#0182',to_date('07-01-2016','DD-MM-RRRR'),'295371','genetic#0182','ins176250743');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('185','First Name 0183','Last Name 0183','address#0183',to_date('07-01-2016','DD-MM-RRRR'),'498362','genetic#0183','ins378378468');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('186','First Name 0184','Last Name 0184','address#0184',to_date('07-01-2016','DD-MM-RRRR'),'133153','genetic#0184','ins766328657');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('187','First Name 0185','Last Name 0185','address#0185',to_date('07-01-2016','DD-MM-RRRR'),'724443','genetic#0185','ins239107881');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('188','First Name 0186','Last Name 0186','address#0186',to_date('07-01-2016','DD-MM-RRRR'),'611819','genetic#0186','ins758233164');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('189','First Name 0187','Last Name 0187','address#0187',to_date('07-01-2016','DD-MM-RRRR'),'150153','genetic#0187','ins250144753');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('190','First Name 0188','Last Name 0188','address#0188',to_date('07-01-2016','DD-MM-RRRR'),'867342','genetic#0188','ins714594918');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('191','First Name 0189','Last Name 0189','address#0189',to_date('07-01-2016','DD-MM-RRRR'),'872505','genetic#0189','ins608997497');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('192','First Name 0190','Last Name 0190','address#0190',to_date('07-01-2016','DD-MM-RRRR'),'144597','genetic#0190','ins896318653');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('193','First Name 0191','Last Name 0191','address#0191',to_date('07-01-2016','DD-MM-RRRR'),'644766','genetic#0191','ins546592254');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('194','First Name 0192','Last Name 0192','address#0192',to_date('07-01-2016','DD-MM-RRRR'),'503340','genetic#0192','ins884994635');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('195','First Name 0193','Last Name 0193','address#0193',to_date('07-01-2016','DD-MM-RRRR'),'580103','genetic#0193','ins188471942');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('196','First Name 0194','Last Name 0194','address#0194',to_date('07-01-2016','DD-MM-RRRR'),'979400','genetic#0194','ins732427097');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('197','First Name 0195','Last Name 0195','address#0195',to_date('07-01-2016','DD-MM-RRRR'),'611696','genetic#0195','ins716477134');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('198','First Name 0196','Last Name 0196','address#0196',to_date('07-01-2016','DD-MM-RRRR'),'809328','genetic#0196','ins342090527');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('199','First Name 0197','Last Name 0197','address#0197',to_date('07-01-2016','DD-MM-RRRR'),'538059','genetic#0197','ins600976261');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('200','First Name 0198','Last Name 0198','address#0198',to_date('07-01-2016','DD-MM-RRRR'),'551884','genetic#0198','ins714807124');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('201','First Name 0199','Last Name 0199','address#0199',to_date('07-01-2016','DD-MM-RRRR'),'536296','genetic#0199','ins695945799');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('202','First Name 0200','Last Name 0200','address#0200',to_date('07-01-2016','DD-MM-RRRR'),'429580','genetic#0200','ins450294972');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('203','First Name 0201','Last Name 0201','address#0201',to_date('07-01-2016','DD-MM-RRRR'),'911119','genetic#0201','ins246116385');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('204','First Name 0202','Last Name 0202','address#0202',to_date('07-01-2016','DD-MM-RRRR'),'166670','genetic#0202','ins857661246');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('205','First Name 0203','Last Name 0203','address#0203',to_date('07-01-2016','DD-MM-RRRR'),'678025','genetic#0203','ins289597471');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('206','First Name 0204','Last Name 0204','address#0204',to_date('07-01-2016','DD-MM-RRRR'),'628465','genetic#0204','ins647872077');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('207','First Name 0205','Last Name 0205','address#0205',to_date('07-01-2016','DD-MM-RRRR'),'155837','genetic#0205','ins331534904');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('208','First Name 0206','Last Name 0206','address#0206',to_date('07-01-2016','DD-MM-RRRR'),'544672','genetic#0206','ins727065056');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('209','First Name 0207','Last Name 0207','address#0207',to_date('07-01-2016','DD-MM-RRRR'),'664964','genetic#0207','ins822484003');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('210','First Name 0208','Last Name 0208','address#0208',to_date('07-01-2016','DD-MM-RRRR'),'946066','genetic#0208','ins831005154');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('211','First Name 0209','Last Name 0209','address#0209',to_date('07-01-2016','DD-MM-RRRR'),'672909','genetic#0209','ins803052646');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('212','First Name 0210','Last Name 0210','address#0210',to_date('07-01-2016','DD-MM-RRRR'),'798273','genetic#0210','ins206899607');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('213','First Name 0211','Last Name 0211','address#0211',to_date('07-01-2016','DD-MM-RRRR'),'786926','genetic#0211','ins765936123');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('214','First Name 0212','Last Name 0212','address#0212',to_date('07-01-2016','DD-MM-RRRR'),'627410','genetic#0212','ins416676036');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('215','First Name 0213','Last Name 0213','address#0213',to_date('07-01-2016','DD-MM-RRRR'),'948903','genetic#0213','ins482354128');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('216','First Name 0214','Last Name 0214','address#0214',to_date('07-01-2016','DD-MM-RRRR'),'712084','genetic#0214','ins110843470');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('217','First Name 0215','Last Name 0215','address#0215',to_date('07-01-2016','DD-MM-RRRR'),'262709','genetic#0215','ins435346483');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('218','First Name 0216','Last Name 0216','address#0216',to_date('07-01-2016','DD-MM-RRRR'),'172700','genetic#0216','ins271397434');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('219','First Name 0217','Last Name 0217','address#0217',to_date('07-01-2016','DD-MM-RRRR'),'566737','genetic#0217','ins522211536');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('220','First Name 0218','Last Name 0218','address#0218',to_date('07-01-2016','DD-MM-RRRR'),'635471','genetic#0218','ins898481171');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('221','First Name 0219','Last Name 0219','address#0219',to_date('07-01-2016','DD-MM-RRRR'),'818323','genetic#0219','ins787105704');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('222','First Name 0220','Last Name 0220','address#0220',to_date('07-01-2016','DD-MM-RRRR'),'510445','genetic#0220','ins313743110');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('223','First Name 0221','Last Name 0221','address#0221',to_date('07-01-2016','DD-MM-RRRR'),'203961','genetic#0221','ins932231983');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('224','First Name 0222','Last Name 0222','address#0222',to_date('07-01-2016','DD-MM-RRRR'),'660638','genetic#0222','ins747866987');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('225','First Name 0223','Last Name 0223','address#0223',to_date('07-01-2016','DD-MM-RRRR'),'797417','genetic#0223','ins884631974');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('226','First Name 0224','Last Name 0224','address#0224',to_date('07-01-2016','DD-MM-RRRR'),'936010','genetic#0224','ins986844937');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('227','First Name 0225','Last Name 0225','address#0225',to_date('07-01-2016','DD-MM-RRRR'),'768739','genetic#0225','ins707054821');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('228','First Name 0226','Last Name 0226','address#0226',to_date('07-01-2016','DD-MM-RRRR'),'123035','genetic#0226','ins748832589');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('229','First Name 0227','Last Name 0227','address#0227',to_date('07-01-2016','DD-MM-RRRR'),'652019','genetic#0227','ins429397060');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('230','First Name 0228','Last Name 0228','address#0228',to_date('07-01-2016','DD-MM-RRRR'),'459189','genetic#0228','ins663644976');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('231','First Name 0229','Last Name 0229','address#0229',to_date('07-01-2016','DD-MM-RRRR'),'330250','genetic#0229','ins594444511');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('232','First Name 0230','Last Name 0230','address#0230',to_date('07-01-2016','DD-MM-RRRR'),'340692','genetic#0230','ins684316312');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('233','First Name 0231','Last Name 0231','address#0231',to_date('07-01-2016','DD-MM-RRRR'),'935786','genetic#0231','ins667182988');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('234','First Name 0232','Last Name 0232','address#0232',to_date('07-01-2016','DD-MM-RRRR'),'168825','genetic#0232','ins293119218');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('235','First Name 0233','Last Name 0233','address#0233',to_date('07-01-2016','DD-MM-RRRR'),'654363','genetic#0233','ins884440551');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('236','First Name 0234','Last Name 0234','address#0234',to_date('07-01-2016','DD-MM-RRRR'),'355746','genetic#0234','ins122461088');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('237','First Name 0235','Last Name 0235','address#0235',to_date('07-01-2016','DD-MM-RRRR'),'295533','genetic#0235','ins766483718');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('238','First Name 0236','Last Name 0236','address#0236',to_date('07-01-2016','DD-MM-RRRR'),'984727','genetic#0236','ins258961465');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('239','First Name 0237','Last Name 0237','address#0237',to_date('07-01-2016','DD-MM-RRRR'),'696453','genetic#0237','ins459167050');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('240','First Name 0238','Last Name 0238','address#0238',to_date('07-01-2016','DD-MM-RRRR'),'661974','genetic#0238','ins866042420');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('241','First Name 0239','Last Name 0239','address#0239',to_date('07-01-2016','DD-MM-RRRR'),'756036','genetic#0239','ins139059776');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('242','First Name 0240','Last Name 0240','address#0240',to_date('07-01-2016','DD-MM-RRRR'),'684935','genetic#0240','ins742778872');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('243','First Name 0241','Last Name 0241','address#0241',to_date('07-01-2016','DD-MM-RRRR'),'174832','genetic#0241','ins962059283');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('244','First Name 0242','Last Name 0242','address#0242',to_date('07-01-2016','DD-MM-RRRR'),'666605','genetic#0242','ins105029952');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('245','First Name 0243','Last Name 0243','address#0243',to_date('07-01-2016','DD-MM-RRRR'),'248361','genetic#0243','ins513877090');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('246','First Name 0244','Last Name 0244','address#0244',to_date('07-01-2016','DD-MM-RRRR'),'870190','genetic#0244','ins743303768');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('247','First Name 0245','Last Name 0245','address#0245',to_date('07-01-2016','DD-MM-RRRR'),'539291','genetic#0245','ins903092573');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('248','First Name 0246','Last Name 0246','address#0246',to_date('07-01-2016','DD-MM-RRRR'),'556854','genetic#0246','ins141027193');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('249','First Name 0247','Last Name 0247','address#0247',to_date('07-01-2016','DD-MM-RRRR'),'973048','genetic#0247','ins234007880');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('250','First Name 0248','Last Name 0248','address#0248',to_date('07-01-2016','DD-MM-RRRR'),'996443','genetic#0248','ins843262493');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('251','First Name 0249','Last Name 0249','address#0249',to_date('07-01-2016','DD-MM-RRRR'),'679041','genetic#0249','ins910842176');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('252','First Name 0250','Last Name 0250','address#0250',to_date('07-01-2016','DD-MM-RRRR'),'330267','genetic#0250','ins776198595');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('253','First Name 0251','Last Name 0251','address#0251',to_date('07-01-2016','DD-MM-RRRR'),'731097','genetic#0251','ins774956813');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('254','First Name 0252','Last Name 0252','address#0252',to_date('07-01-2016','DD-MM-RRRR'),'511520','genetic#0252','ins269527651');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('255','First Name 0253','Last Name 0253','address#0253',to_date('07-01-2016','DD-MM-RRRR'),'764103','genetic#0253','ins609778489');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('256','First Name 0254','Last Name 0254','address#0254',to_date('07-01-2016','DD-MM-RRRR'),'732942','genetic#0254','ins663868587');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('257','First Name 0255','Last Name 0255','address#0255',to_date('07-01-2016','DD-MM-RRRR'),'101670','genetic#0255','ins785978145');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('258','First Name 0256','Last Name 0256','address#0256',to_date('07-01-2016','DD-MM-RRRR'),'838406','genetic#0256','ins420129844');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('259','First Name 0257','Last Name 0257','address#0257',to_date('07-01-2016','DD-MM-RRRR'),'999379','genetic#0257','ins587471524');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('260','First Name 0258','Last Name 0258','address#0258',to_date('07-01-2016','DD-MM-RRRR'),'592350','genetic#0258','ins378633963');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('261','First Name 0259','Last Name 0259','address#0259',to_date('07-01-2016','DD-MM-RRRR'),'626512','genetic#0259','ins930757349');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('262','First Name 0260','Last Name 0260','address#0260',to_date('07-01-2016','DD-MM-RRRR'),'736078','genetic#0260','ins654948131');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('263','First Name 0261','Last Name 0261','address#0261',to_date('07-01-2016','DD-MM-RRRR'),'252269','genetic#0261','ins911060456');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('264','First Name 0262','Last Name 0262','address#0262',to_date('07-01-2016','DD-MM-RRRR'),'327191','genetic#0262','ins452653876');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('265','First Name 0263','Last Name 0263','address#0263',to_date('07-01-2016','DD-MM-RRRR'),'702105','genetic#0263','ins254506255');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('266','First Name 0264','Last Name 0264','address#0264',to_date('07-01-2016','DD-MM-RRRR'),'486116','genetic#0264','ins850720572');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('267','First Name 0265','Last Name 0265','address#0265',to_date('07-01-2016','DD-MM-RRRR'),'869596','genetic#0265','ins853191628');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('268','First Name 0266','Last Name 0266','address#0266',to_date('07-01-2016','DD-MM-RRRR'),'460017','genetic#0266','ins751132549');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('269','First Name 0267','Last Name 0267','address#0267',to_date('07-01-2016','DD-MM-RRRR'),'512510','genetic#0267','ins979838291');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('270','First Name 0268','Last Name 0268','address#0268',to_date('07-01-2016','DD-MM-RRRR'),'330960','genetic#0268','ins909979410');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('271','First Name 0269','Last Name 0269','address#0269',to_date('07-01-2016','DD-MM-RRRR'),'593508','genetic#0269','ins905304448');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('272','First Name 0270','Last Name 0270','address#0270',to_date('07-01-2016','DD-MM-RRRR'),'749772','genetic#0270','ins156828037');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('273','First Name 0271','Last Name 0271','address#0271',to_date('07-01-2016','DD-MM-RRRR'),'110360','genetic#0271','ins584493208');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('274','First Name 0272','Last Name 0272','address#0272',to_date('07-01-2016','DD-MM-RRRR'),'901421','genetic#0272','ins184212823');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('275','First Name 0273','Last Name 0273','address#0273',to_date('07-01-2016','DD-MM-RRRR'),'302619','genetic#0273','ins219161707');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('276','First Name 0274','Last Name 0274','address#0274',to_date('07-01-2016','DD-MM-RRRR'),'234627','genetic#0274','ins969383780');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('277','First Name 0275','Last Name 0275','address#0275',to_date('07-01-2016','DD-MM-RRRR'),'350911','genetic#0275','ins694415898');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('278','First Name 0276','Last Name 0276','address#0276',to_date('07-01-2016','DD-MM-RRRR'),'384329','genetic#0276','ins165687331');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('279','First Name 0277','Last Name 0277','address#0277',to_date('07-01-2016','DD-MM-RRRR'),'140119','genetic#0277','ins124093632');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('280','First Name 0278','Last Name 0278','address#0278',to_date('07-01-2016','DD-MM-RRRR'),'622686','genetic#0278','ins419207290');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('281','First Name 0279','Last Name 0279','address#0279',to_date('07-01-2016','DD-MM-RRRR'),'942334','genetic#0279','ins378444609');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('282','First Name 0280','Last Name 0280','address#0280',to_date('07-01-2016','DD-MM-RRRR'),'907671','genetic#0280','ins357015117');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('283','First Name 0281','Last Name 0281','address#0281',to_date('07-01-2016','DD-MM-RRRR'),'277751','genetic#0281','ins913383562');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('284','First Name 0282','Last Name 0282','address#0282',to_date('07-01-2016','DD-MM-RRRR'),'916379','genetic#0282','ins879751306');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('285','First Name 0283','Last Name 0283','address#0283',to_date('07-01-2016','DD-MM-RRRR'),'960110','genetic#0283','ins350537699');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('286','First Name 0284','Last Name 0284','address#0284',to_date('07-01-2016','DD-MM-RRRR'),'174960','genetic#0284','ins858569331');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('287','First Name 0285','Last Name 0285','address#0285',to_date('07-01-2016','DD-MM-RRRR'),'147673','genetic#0285','ins189400675');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('288','First Name 0286','Last Name 0286','address#0286',to_date('07-01-2016','DD-MM-RRRR'),'437248','genetic#0286','ins687046438');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('289','First Name 0287','Last Name 0287','address#0287',to_date('07-01-2016','DD-MM-RRRR'),'905174','genetic#0287','ins569684652');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('290','First Name 0288','Last Name 0288','address#0288',to_date('07-01-2016','DD-MM-RRRR'),'900698','genetic#0288','ins251585546');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('291','First Name 0289','Last Name 0289','address#0289',to_date('07-01-2016','DD-MM-RRRR'),'551231','genetic#0289','ins168057295');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('292','First Name 0290','Last Name 0290','address#0290',to_date('07-01-2016','DD-MM-RRRR'),'951885','genetic#0290','ins208030459');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('293','First Name 0291','Last Name 0291','address#0291',to_date('07-01-2016','DD-MM-RRRR'),'716092','genetic#0291','ins732722377');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('294','First Name 0292','Last Name 0292','address#0292',to_date('07-01-2016','DD-MM-RRRR'),'602279','genetic#0292','ins791701288');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('295','First Name 0293','Last Name 0293','address#0293',to_date('07-01-2016','DD-MM-RRRR'),'466802','genetic#0293','ins803910407');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('296','First Name 0294','Last Name 0294','address#0294',to_date('07-01-2016','DD-MM-RRRR'),'939717','genetic#0294','ins435924379');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('297','First Name 0295','Last Name 0295','address#0295',to_date('07-01-2016','DD-MM-RRRR'),'387292','genetic#0295','ins193303834');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('298','First Name 0296','Last Name 0296','address#0296',to_date('07-01-2016','DD-MM-RRRR'),'962968','genetic#0296','ins952516187');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('299','First Name 0297','Last Name 0297','address#0297',to_date('07-01-2016','DD-MM-RRRR'),'249155','genetic#0297','ins336493460');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('444','First Name 0298','Last Name 0298','address#0298',to_date('07-01-2016','DD-MM-RRRR'),'446446','genetic#0298','ins782822735');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('445','First Name 0299','Last Name 0299','address#0299',to_date('07-01-2016','DD-MM-RRRR'),'520257','genetic#0299','ins627906155');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('446','First Name 0300','Last Name 0300','address#0300',to_date('07-01-2016','DD-MM-RRRR'),'751486','genetic#0300','ins505101240');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('447','First Name 0301','Last Name 0301','address#0301',to_date('07-01-2016','DD-MM-RRRR'),'468363','genetic#0301','ins247069598');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('448','First Name 0302','Last Name 0302','address#0302',to_date('07-01-2016','DD-MM-RRRR'),'510318','genetic#0302','ins761316231');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('449','First Name 0303','Last Name 0303','address#0303',to_date('07-01-2016','DD-MM-RRRR'),'522636','genetic#0303','ins985776508');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('450','First Name 0304','Last Name 0304','address#0304',to_date('07-01-2016','DD-MM-RRRR'),'650665','genetic#0304','ins462278200');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('451','First Name 0305','Last Name 0305','address#0305',to_date('07-01-2016','DD-MM-RRRR'),'989259','genetic#0305','ins691881667');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('452','First Name 0306','Last Name 0306','address#0306',to_date('07-01-2016','DD-MM-RRRR'),'113284','genetic#0306','ins995608222');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('453','First Name 0307','Last Name 0307','address#0307',to_date('07-01-2016','DD-MM-RRRR'),'613039','genetic#0307','ins329938892');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('454','First Name 0308','Last Name 0308','address#0308',to_date('07-01-2016','DD-MM-RRRR'),'582683','genetic#0308','ins592432029');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('609','First Name 0463','Last Name 0463','address#0463',to_date('07-01-2016','DD-MM-RRRR'),'593591','genetic#0463','ins947423216');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('610','First Name 0464','Last Name 0464','address#0464',to_date('07-01-2016','DD-MM-RRRR'),'239325','genetic#0464','ins339728493');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('611','First Name 0465','Last Name 0465','address#0465',to_date('07-01-2016','DD-MM-RRRR'),'179880','genetic#0465','ins915627485');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('612','First Name 0466','Last Name 0466','address#0466',to_date('07-01-2016','DD-MM-RRRR'),'813100','genetic#0466','ins668534909');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('613','First Name 0467','Last Name 0467','address#0467',to_date('07-01-2016','DD-MM-RRRR'),'973537','genetic#0467','ins656734808');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('614','First Name 0468','Last Name 0468','address#0468',to_date('07-01-2016','DD-MM-RRRR'),'776302','genetic#0468','ins890936620');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('615','First Name 0469','Last Name 0469','address#0469',to_date('07-01-2016','DD-MM-RRRR'),'796101','genetic#0469','ins720276484');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('616','First Name 0470','Last Name 0470','address#0470',to_date('07-01-2016','DD-MM-RRRR'),'967532','genetic#0470','ins426982735');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('617','First Name 0471','Last Name 0471','address#0471',to_date('07-01-2016','DD-MM-RRRR'),'167085','genetic#0471','ins560029500');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('618','First Name 0472','Last Name 0472','address#0472',to_date('07-01-2016','DD-MM-RRRR'),'861566','genetic#0472','ins275512485');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('619','First Name 0473','Last Name 0473','address#0473',to_date('07-01-2016','DD-MM-RRRR'),'840433','genetic#0473','ins819312498');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('620','First Name 0474','Last Name 0474','address#0474',to_date('07-01-2016','DD-MM-RRRR'),'646679','genetic#0474','ins991898657');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('621','First Name 0475','Last Name 0475','address#0475',to_date('07-01-2016','DD-MM-RRRR'),'431195','genetic#0475','ins234173421');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('622','First Name 0476','Last Name 0476','address#0476',to_date('07-01-2016','DD-MM-RRRR'),'748063','genetic#0476','ins979584773');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('623','First Name 0477','Last Name 0477','address#0477',to_date('07-01-2016','DD-MM-RRRR'),'450347','genetic#0477','ins708915676');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('624','First Name 0478','Last Name 0478','address#0478',to_date('07-01-2016','DD-MM-RRRR'),'861463','genetic#0478','ins479097156');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('625','First Name 0479','Last Name 0479','address#0479',to_date('07-01-2016','DD-MM-RRRR'),'236165','genetic#0479','ins662819194');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('626','First Name 0480','Last Name 0480','address#0480',to_date('07-01-2016','DD-MM-RRRR'),'909840','genetic#0480','ins627529438');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('627','First Name 0481','Last Name 0481','address#0481',to_date('07-01-2016','DD-MM-RRRR'),'521698','genetic#0481','ins397779466');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('628','First Name 0482','Last Name 0482','address#0482',to_date('07-01-2016','DD-MM-RRRR'),'941723','genetic#0482','ins152195530');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('629','First Name 0483','Last Name 0483','address#0483',to_date('07-01-2016','DD-MM-RRRR'),'593272','genetic#0483','ins612526160');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('630','First Name 0484','Last Name 0484','address#0484',to_date('07-01-2016','DD-MM-RRRR'),'716291','genetic#0484','ins629323217');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('631','First Name 0485','Last Name 0485','address#0485',to_date('07-01-2016','DD-MM-RRRR'),'754171','genetic#0485','ins929505848');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('632','First Name 0486','Last Name 0486','address#0486',to_date('07-01-2016','DD-MM-RRRR'),'319478','genetic#0486','ins208103032');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('633','First Name 0487','Last Name 0487','address#0487',to_date('07-01-2016','DD-MM-RRRR'),'318943','genetic#0487','ins365598557');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('634','First Name 0488','Last Name 0488','address#0488',to_date('07-01-2016','DD-MM-RRRR'),'351086','genetic#0488','ins860238750');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('635','First Name 0489','Last Name 0489','address#0489',to_date('07-01-2016','DD-MM-RRRR'),'118490','genetic#0489','ins236044998');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('636','First Name 0490','Last Name 0490','address#0490',to_date('07-01-2016','DD-MM-RRRR'),'206989','genetic#0490','ins752796617');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('637','First Name 0491','Last Name 0491','address#0491',to_date('07-01-2016','DD-MM-RRRR'),'693047','genetic#0491','ins601693477');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('638','First Name 0492','Last Name 0492','address#0492',to_date('07-01-2016','DD-MM-RRRR'),'584431','genetic#0492','ins105152285');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('639','First Name 0493','Last Name 0493','address#0493',to_date('07-01-2016','DD-MM-RRRR'),'920469','genetic#0493','ins200296058');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('640','First Name 0494','Last Name 0494','address#0494',to_date('07-01-2016','DD-MM-RRRR'),'306386','genetic#0494','ins204185175');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('641','First Name 0495','Last Name 0495','address#0495',to_date('07-01-2016','DD-MM-RRRR'),'129472','genetic#0495','ins594441071');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('642','First Name 0496','Last Name 0496','address#0496',to_date('07-01-2016','DD-MM-RRRR'),'584110','genetic#0496','ins213483943');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('643','First Name 0497','Last Name 0497','address#0497',to_date('07-01-2016','DD-MM-RRRR'),'517140','genetic#0497','ins268572646');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('644','First Name 0498','Last Name 0498','address#0498',to_date('07-01-2016','DD-MM-RRRR'),'138330','genetic#0498','ins669753712');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('645','First Name 0499','Last Name 0499','address#0499',to_date('07-01-2016','DD-MM-RRRR'),'333787','genetic#0499','ins114889871');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('532','First Name 0386','Last Name 0386','address#0386',to_date('07-01-2016','DD-MM-RRRR'),'879038','genetic#0386','ins305861710');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('533','First Name 0387','Last Name 0387','address#0387',to_date('07-01-2016','DD-MM-RRRR'),'405615','genetic#0387','ins882605996');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('534','First Name 0388','Last Name 0388','address#0388',to_date('07-01-2016','DD-MM-RRRR'),'169329','genetic#0388','ins152132520');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('535','First Name 0389','Last Name 0389','address#0389',to_date('07-01-2016','DD-MM-RRRR'),'847265','genetic#0389','ins612669123');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('536','First Name 0390','Last Name 0390','address#0390',to_date('07-01-2016','DD-MM-RRRR'),'550824','genetic#0390','ins395934397');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('537','First Name 0391','Last Name 0391','address#0391',to_date('07-01-2016','DD-MM-RRRR'),'424163','genetic#0391','ins792598492');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('538','First Name 0392','Last Name 0392','address#0392',to_date('07-01-2016','DD-MM-RRRR'),'748700','genetic#0392','ins981578663');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('539','First Name 0393','Last Name 0393','address#0393',to_date('07-01-2016','DD-MM-RRRR'),'488357','genetic#0393','ins308057461');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('540','First Name 0394','Last Name 0394','address#0394',to_date('07-01-2016','DD-MM-RRRR'),'327828','genetic#0394','ins795812967');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('541','First Name 0395','Last Name 0395','address#0395',to_date('07-01-2016','DD-MM-RRRR'),'681364','genetic#0395','ins339314362');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('542','First Name 0396','Last Name 0396','address#0396',to_date('07-01-2016','DD-MM-RRRR'),'621118','genetic#0396','ins684140453');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('543','First Name 0397','Last Name 0397','address#0397',to_date('07-01-2016','DD-MM-RRRR'),'162683','genetic#0397','ins244418195');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('544','First Name 0398','Last Name 0398','address#0398',to_date('07-01-2016','DD-MM-RRRR'),'302732','genetic#0398','ins896444093');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('545','First Name 0399','Last Name 0399','address#0399',to_date('07-01-2016','DD-MM-RRRR'),'534734','genetic#0399','ins583276422');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('546','First Name 0400','Last Name 0400','address#0400',to_date('07-01-2016','DD-MM-RRRR'),'163064','genetic#0400','ins553497482');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('547','First Name 0401','Last Name 0401','address#0401',to_date('07-01-2016','DD-MM-RRRR'),'252697','genetic#0401','ins410271882');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('548','First Name 0402','Last Name 0402','address#0402',to_date('07-01-2016','DD-MM-RRRR'),'730054','genetic#0402','ins381795963');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('549','First Name 0403','Last Name 0403','address#0403',to_date('07-01-2016','DD-MM-RRRR'),'891550','genetic#0403','ins434398083');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('550','First Name 0404','Last Name 0404','address#0404',to_date('07-01-2016','DD-MM-RRRR'),'932168','genetic#0404','ins206557663');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('551','First Name 0405','Last Name 0405','address#0405',to_date('07-01-2016','DD-MM-RRRR'),'127375','genetic#0405','ins640918164');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('552','First Name 0406','Last Name 0406','address#0406',to_date('07-01-2016','DD-MM-RRRR'),'902442','genetic#0406','ins531015000');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('553','First Name 0407','Last Name 0407','address#0407',to_date('07-01-2016','DD-MM-RRRR'),'838347','genetic#0407','ins255555671');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('554','First Name 0408','Last Name 0408','address#0408',to_date('07-01-2016','DD-MM-RRRR'),'317688','genetic#0408','ins613815720');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('555','First Name 0409','Last Name 0409','address#0409',to_date('07-01-2016','DD-MM-RRRR'),'218277','genetic#0409','ins958373836');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('556','First Name 0410','Last Name 0410','address#0410',to_date('07-01-2016','DD-MM-RRRR'),'456845','genetic#0410','ins491708893');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('557','First Name 0411','Last Name 0411','address#0411',to_date('07-01-2016','DD-MM-RRRR'),'395404','genetic#0411','ins872823463');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('558','First Name 0412','Last Name 0412','address#0412',to_date('07-01-2016','DD-MM-RRRR'),'921156','genetic#0412','ins639289167');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('559','First Name 0413','Last Name 0413','address#0413',to_date('07-01-2016','DD-MM-RRRR'),'684742','genetic#0413','ins845654925');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('560','First Name 0414','Last Name 0414','address#0414',to_date('07-01-2016','DD-MM-RRRR'),'819921','genetic#0414','ins734620854');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('561','First Name 0415','Last Name 0415','address#0415',to_date('07-01-2016','DD-MM-RRRR'),'849399','genetic#0415','ins509171846');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('562','First Name 0416','Last Name 0416','address#0416',to_date('07-01-2016','DD-MM-RRRR'),'177934','genetic#0416','ins586053280');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('563','First Name 0417','Last Name 0417','address#0417',to_date('07-01-2016','DD-MM-RRRR'),'332869','genetic#0417','ins393768701');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('564','First Name 0418','Last Name 0418','address#0418',to_date('07-01-2016','DD-MM-RRRR'),'639900','genetic#0418','ins240553252');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('565','First Name 0419','Last Name 0419','address#0419',to_date('07-01-2016','DD-MM-RRRR'),'351522','genetic#0419','ins142367469');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('566','First Name 0420','Last Name 0420','address#0420',to_date('07-01-2016','DD-MM-RRRR'),'416505','genetic#0420','ins414303405');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('567','First Name 0421','Last Name 0421','address#0421',to_date('07-01-2016','DD-MM-RRRR'),'863642','genetic#0421','ins381800342');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('568','First Name 0422','Last Name 0422','address#0422',to_date('07-01-2016','DD-MM-RRRR'),'311938','genetic#0422','ins686911042');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('569','First Name 0423','Last Name 0423','address#0423',to_date('07-01-2016','DD-MM-RRRR'),'781695','genetic#0423','ins250350092');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('570','First Name 0424','Last Name 0424','address#0424',to_date('07-01-2016','DD-MM-RRRR'),'406069','genetic#0424','ins465562982');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('571','First Name 0425','Last Name 0425','address#0425',to_date('07-01-2016','DD-MM-RRRR'),'678754','genetic#0425','ins548867766');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('572','First Name 0426','Last Name 0426','address#0426',to_date('07-01-2016','DD-MM-RRRR'),'464998','genetic#0426','ins344358770');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('573','First Name 0427','Last Name 0427','address#0427',to_date('07-01-2016','DD-MM-RRRR'),'196651','genetic#0427','ins143025905');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('574','First Name 0428','Last Name 0428','address#0428',to_date('07-01-2016','DD-MM-RRRR'),'114867','genetic#0428','ins290241310');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('575','First Name 0429','Last Name 0429','address#0429',to_date('07-01-2016','DD-MM-RRRR'),'460637','genetic#0429','ins613408714');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('576','First Name 0430','Last Name 0430','address#0430',to_date('07-01-2016','DD-MM-RRRR'),'749654','genetic#0430','ins884400709');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('577','First Name 0431','Last Name 0431','address#0431',to_date('07-01-2016','DD-MM-RRRR'),'386634','genetic#0431','ins256930601');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('578','First Name 0432','Last Name 0432','address#0432',to_date('07-01-2016','DD-MM-RRRR'),'791517','genetic#0432','ins522997895');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('579','First Name 0433','Last Name 0433','address#0433',to_date('07-01-2016','DD-MM-RRRR'),'453080','genetic#0433','ins541322600');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('580','First Name 0434','Last Name 0434','address#0434',to_date('07-01-2016','DD-MM-RRRR'),'922685','genetic#0434','ins608675066');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('581','First Name 0435','Last Name 0435','address#0435',to_date('07-01-2016','DD-MM-RRRR'),'973914','genetic#0435','ins697795172');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('582','First Name 0436','Last Name 0436','address#0436',to_date('07-01-2016','DD-MM-RRRR'),'706850','genetic#0436','ins275321378');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('583','First Name 0437','Last Name 0437','address#0437',to_date('07-01-2016','DD-MM-RRRR'),'175202','genetic#0437','ins803974083');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('584','First Name 0438','Last Name 0438','address#0438',to_date('07-01-2016','DD-MM-RRRR'),'109180','genetic#0438','ins175046021');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('585','First Name 0439','Last Name 0439','address#0439',to_date('07-01-2016','DD-MM-RRRR'),'427350','genetic#0439','ins708493641');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('586','First Name 0440','Last Name 0440','address#0440',to_date('07-01-2016','DD-MM-RRRR'),'163958','genetic#0440','ins770807643');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('587','First Name 0441','Last Name 0441','address#0441',to_date('07-01-2016','DD-MM-RRRR'),'428550','genetic#0441','ins319180072');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('588','First Name 0442','Last Name 0442','address#0442',to_date('07-01-2016','DD-MM-RRRR'),'830415','genetic#0442','ins371054741');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('589','First Name 0443','Last Name 0443','address#0443',to_date('07-01-2016','DD-MM-RRRR'),'221054','genetic#0443','ins605041140');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('590','First Name 0444','Last Name 0444','address#0444',to_date('07-01-2016','DD-MM-RRRR'),'297117','genetic#0444','ins134908418');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('591','First Name 0445','Last Name 0445','address#0445',to_date('07-01-2016','DD-MM-RRRR'),'225685','genetic#0445','ins142628310');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('592','First Name 0446','Last Name 0446','address#0446',to_date('07-01-2016','DD-MM-RRRR'),'681728','genetic#0446','ins126491893');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('593','First Name 0447','Last Name 0447','address#0447',to_date('07-01-2016','DD-MM-RRRR'),'664647','genetic#0447','ins467122316');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('594','First Name 0448','Last Name 0448','address#0448',to_date('07-01-2016','DD-MM-RRRR'),'995164','genetic#0448','ins259575402');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('595','First Name 0449','Last Name 0449','address#0449',to_date('07-01-2016','DD-MM-RRRR'),'895391','genetic#0449','ins440645329');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('596','First Name 0450','Last Name 0450','address#0450',to_date('07-01-2016','DD-MM-RRRR'),'797268','genetic#0450','ins770615877');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('597','First Name 0451','Last Name 0451','address#0451',to_date('07-01-2016','DD-MM-RRRR'),'542876','genetic#0451','ins273021619');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('598','First Name 0452','Last Name 0452','address#0452',to_date('07-01-2016','DD-MM-RRRR'),'574952','genetic#0452','ins708274597');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('599','First Name 0453','Last Name 0453','address#0453',to_date('07-01-2016','DD-MM-RRRR'),'637507','genetic#0453','ins503433865');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('600','First Name 0454','Last Name 0454','address#0454',to_date('07-01-2016','DD-MM-RRRR'),'967822','genetic#0454','ins661024847');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('601','First Name 0455','Last Name 0455','address#0455',to_date('07-01-2016','DD-MM-RRRR'),'281060','genetic#0455','ins121605097');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('602','First Name 0456','Last Name 0456','address#0456',to_date('07-01-2016','DD-MM-RRRR'),'286057','genetic#0456','ins406373554');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('603','First Name 0457','Last Name 0457','address#0457',to_date('07-01-2016','DD-MM-RRRR'),'820441','genetic#0457','ins689830582');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('604','First Name 0458','Last Name 0458','address#0458',to_date('07-01-2016','DD-MM-RRRR'),'828378','genetic#0458','ins530474955');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('605','First Name 0459','Last Name 0459','address#0459',to_date('07-01-2016','DD-MM-RRRR'),'692580','genetic#0459','ins115580413');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('606','First Name 0460','Last Name 0460','address#0460',to_date('07-01-2016','DD-MM-RRRR'),'420267','genetic#0460','ins286477111');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('607','First Name 0461','Last Name 0461','address#0461',to_date('07-01-2016','DD-MM-RRRR'),'411557','genetic#0461','ins418172258');
Insert into HR.PATIENT (ID_PATIENT,FIRST_NAME,LAST_NAME,ADDRESS,BIRTHDATE,PHONE_NUMBER,GENETIC_DISORDER,INSURANCE_NUMBER) values ('608','First Name 0462','Last Name 0462','address#0462',to_date('07-01-2016','DD-MM-RRRR'),'572108','genetic#0462','ins880057737');
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ADMIN_PK" ON "HR"."ADMIN" ("ID_ADMIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CREDENTIALS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CREDENTIALS_PK" ON "HR"."CREDENTIALS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CREDENTIALS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CREDENTIALS_UK1" ON "HR"."CREDENTIALS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPARTMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DEPARTMENT_PK" ON "HR"."DEPARTMENT" ("ID_DEPT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DOCTOR_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DOCTOR_PK1" ON "HR"."DOCTOR" ("ID_DOCTOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DOCTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DOCTOR_PK" ON "HR"."PATIENT" ("ID_PATIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HR"."ADMIN" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."ADMIN" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."ADMIN" MODIFY ("ID_ADMIN" NOT NULL ENABLE);
  ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ID_ADMIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CREDENTIALS
--------------------------------------------------------

  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."CREDENTIALS" ADD CONSTRAINT "CREDENTIALS_UK1" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."CREDENTIALS" ADD CONSTRAINT "CREDENTIALS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("FLOOR" NOT NULL ENABLE);
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("ID_DEPT" NOT NULL ENABLE);
  ALTER TABLE "HR"."DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_PK" PRIMARY KEY ("ID_DEPT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "HR"."DOCTOR" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOCTOR" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOCTOR" MODIFY ("ID_DEPT" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOCTOR" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOCTOR" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOCTOR" MODIFY ("ID_DOCTOR" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOCTOR" ADD CONSTRAINT "DOCTOR_PK" PRIMARY KEY ("ID_DOCTOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PATIENT
--------------------------------------------------------

  ALTER TABLE "HR"."PATIENT" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."PATIENT" MODIFY ("BIRTHDATE" NOT NULL ENABLE);
  ALTER TABLE "HR"."PATIENT" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "HR"."PATIENT" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."PATIENT" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."PATIENT" MODIFY ("ID_PATIENT" NOT NULL ENABLE);
  ALTER TABLE "HR"."PATIENT" ADD CONSTRAINT "PATIENT_PK" PRIMARY KEY ("ID_PATIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "ADMIN_FK1" FOREIGN KEY ("ID_ADMIN")
	  REFERENCES "HR"."CREDENTIALS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "HR"."DOCTOR" ADD CONSTRAINT "DOCTOR_FK1" FOREIGN KEY ("ID_DOCTOR")
	  REFERENCES "HR"."CREDENTIALS" ("ID") ENABLE;
  ALTER TABLE "HR"."DOCTOR" ADD CONSTRAINT "DOCTOR_FK4" FOREIGN KEY ("ID_DEPT")
	  REFERENCES "HR"."DEPARTMENT" ("ID_DEPT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PATIENT
--------------------------------------------------------

  ALTER TABLE "HR"."PATIENT" ADD CONSTRAINT "PATIENT_FK1" FOREIGN KEY ("ID_PATIENT")
	  REFERENCES "HR"."CREDENTIALS" ("ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_TR_CREDENTIALS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."AUTO_INCREMENT_TR_CREDENTIALS" 
   before insert on CREDENTIALS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;
/
ALTER TRIGGER "HR"."AUTO_INCREMENT_TR_CREDENTIALS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_TR_DEPARTMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."AUTO_INCREMENT_TR_DEPARTMENT" 
   before insert on DEPARTMENT
   for each row 
begin  
   if inserting then 
      if :NEW."ID_DEPT" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID_DEPT" from dual; 
      end if; 
   end if; 
end;
/
ALTER TRIGGER "HR"."AUTO_INCREMENT_TR_DEPARTMENT" ENABLE;
--------------------------------------------------------
--  DDL for Synonymn DUAL
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "DUAL" FOR "SYS"."DUAL";
