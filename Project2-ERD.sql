
CREATE TABLE "application_record" (
    "ID" int   NOT NULL,
    "CODE_GENDER" text   NOT NULL,
    "FLAG_OWN_CAR" text   NOT NULL,
    "FLAG_OWN_REALTY" text   NOT NULL,
    "CNT_CHILDREN" int   NOT NULL,
    "AMT_INCOME_TOTAL" int   NOT NULL,
    "NAME_INCOME_TYPE" text   NOT NULL,
    "NAME_EDUCATION_TYPE" text   NOT NULL,
    "NAME_FAMILY_STATUS" text   NOT NULL,
    "NAME_HOUSING_TYPE" text   NOT NULL,
    "DAYS_BIRTH" int   NOT NULL,
    "DAYS_EMPLOYED" int   NOT NULL,
    "FLAG_MOBILE" int   NOT NULL,
    "FLAG_WORK_PHONE" int   NOT NULL,
    "FLAG_PHONE" int   NOT NULL,
    "FLAG_EMAIL" int   NOT NULL,
    "OCCUPATION_TYPE" text   NOT NULL,
    "CNT_FAM_MEMBERS" int   NOT NULL,
    CONSTRAINT "pk_application_record" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "credit_record" (
    "ID" int   NOT NULL,
    "MONTHS_BALANCE" INT   NOT NULL,
    "STATUS" TEXT   NOT NULL,
    CONSTRAINT "pk_credit_record" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "application_record" ADD CONSTRAINT "fk_application_record_ID" FOREIGN KEY("ID")
REFERENCES "credit_record" ("ID");

