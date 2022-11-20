CREATE TABLE IF NOT EXISTS "Client"
(
 "ClientId" integer NOT NULL,
 "PersonId" integer NOT NULL,
 CONSTRAINT client_pkey PRIMARY KEY ("ClientId"),
 CONSTRAINT fkpersonid FOREIGN KEY ("PersonId")
 REFERENCES public."Person" ("PersonId")
)