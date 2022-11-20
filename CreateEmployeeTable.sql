CREATE TABLE IF NOT EXISTS "Employee"
(
 "EmpId" integer NOT NULL,
 "PersonId" integer NOT NULL,
 "SessionActive" boolean,
 "RequestAssigned" boolean,
 "Role" character varying(60) NOT NULL,
 CONSTRAINT employee_pkey PRIMARY KEY ("EmpId"),
 CONSTRAINT fkpersonid FOREIGN KEY ("PersonId")
 REFERENCES public."Person" ("PersonId")
)