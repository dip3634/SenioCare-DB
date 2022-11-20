CREATE TABLE IF NOT EXISTS "Person"
(
 "PersonId" integer NOT NULL,
 "FirstName" character varying(60) NOT NULL,
 "LastName" character varying(60) NOT NULL,
 "Address" character varying(100),
 "DateofBirth" date,
 "Email" character varying(80),
 "PhoneNumber" character varying(15) NOT NULL,
 "SSN" character varying(20),
 CONSTRAINT person_pkey PRIMARY KEY ("PersonId")
)