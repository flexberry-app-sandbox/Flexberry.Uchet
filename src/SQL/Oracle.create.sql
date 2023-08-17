﻿



CREATE TABLE "Филиал"
(

	"primaryKey" RAW(16) NOT NULL,

	"Название" NVARCHAR2(255) NULL,

	"Адрес" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Пользователь"
(

	"primaryKey" RAW(16) NOT NULL,

	"ФИО" NVARCHAR2(255) NULL,

	"Админ" NUMBER(1) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "РабочееМесто"
(

	"primaryKey" RAW(16) NOT NULL,

	"ИнвНомер" NVARCHAR2(255) NULL,

	"Кабинет" NVARCHAR2(255) NULL,

	"Место" NVARCHAR2(255) NULL,

	"Филиал" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Операции"
(

	"primaryKey" RAW(16) NOT NULL,

	"Дата" DATE NULL,

	"Действие" NVARCHAR2(9) NULL,

	"Состояние" NVARCHAR2(7) NULL,

	"Оборудование" RAW(16) NOT NULL,

	"Админ" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Вендор"
(

	"primaryKey" RAW(16) NOT NULL,

	"Название" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ПО"
(

	"primaryKey" RAW(16) NOT NULL,

	"Название" NVARCHAR2(255) NULL,

	"Версия" NVARCHAR2(255) NULL,

	"Freeware" NUMBER(1) NULL,

	"Вендор" RAW(16) NOT NULL,

	"РабочееМесто" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Тип"
(

	"primaryKey" RAW(16) NOT NULL,

	"Название" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Оборудование"
(

	"primaryKey" RAW(16) NOT NULL,

	"ИнвНомер" NVARCHAR2(255) NULL,

	"Название" NVARCHAR2(255) NULL,

	"ДатаДобавления" DATE NULL,

	"Сотрудник" RAW(16) NOT NULL,

	"Тип" RAW(16) NOT NULL,

	"РабочееМесто" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "РабочееМесто"
	ADD CONSTRAINT "РабочееМесто__5817" FOREIGN KEY ("Филиал") REFERENCES "Филиал" ("primaryKey");

CREATE INDEX "РабочееМесто__9316" on "РабочееМесто" ("Филиал");

ALTER TABLE "Операции"
	ADD CONSTRAINT "Операции_FОбо_8586" FOREIGN KEY ("Оборудование") REFERENCES "Оборудование" ("primaryKey");

CREATE INDEX "Операции_IОбо_3737" on "Операции" ("Оборудование");

ALTER TABLE "Операции"
	ADD CONSTRAINT "Операции_FПол_8681" FOREIGN KEY ("Админ") REFERENCES "Пользователь" ("primaryKey");

CREATE INDEX "Операции_IАдмин" on "Операции" ("Админ");

ALTER TABLE "ПО"
	ADD CONSTRAINT "ПО_FВендор_0" FOREIGN KEY ("Вендор") REFERENCES "Вендор" ("primaryKey");

CREATE INDEX "ПО_IВендор" on "ПО" ("Вендор");

ALTER TABLE "ПО"
	ADD CONSTRAINT "ПО_FРабочееМе_2658" FOREIGN KEY ("РабочееМесто") REFERENCES "РабочееМесто" ("primaryKey");

CREATE INDEX "ПО_IРабочееМесто" on "ПО" ("РабочееМесто");

ALTER TABLE "Оборудование"
	ADD CONSTRAINT "Оборудование__5873" FOREIGN KEY ("Сотрудник") REFERENCES "Пользователь" ("primaryKey");

CREATE INDEX "Оборудование__4367" on "Оборудование" ("Сотрудник");

ALTER TABLE "Оборудование"
	ADD CONSTRAINT "Оборудование__5552" FOREIGN KEY ("Тип") REFERENCES "Тип" ("primaryKey");

CREATE INDEX "Оборудование__8333" on "Оборудование" ("Тип");

ALTER TABLE "Оборудование"
	ADD CONSTRAINT "Оборудование__3252" FOREIGN KEY ("РабочееМесто") REFERENCES "РабочееМесто" ("primaryKey");

CREATE INDEX "Оборудование__9930" on "Оборудование" ("РабочееМесто");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");


