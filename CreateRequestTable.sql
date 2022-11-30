CREATE TABLE IF NOT EXISTS "Request"
(
 "ReqId" integer NOT NULL,
 "ClientId" integer NOT NULL,
 "EmpId" integer NOT NULL,
 "StartTime" date,
 "EndTime" date,
 "Category" integer,
 "SubCategory" integer,
 "Comments" char varying(200),
 "Status" char varying(50),
 CONSTRAINT  req_pkey PRIMARY KEY ("ReqId"),
 CONSTRAINT fkclientid FOREIGN KEY ("ClientId")
 REFERENCES public."Client" ("ClientId"),
 CONSTRAINT fkempid FOREIGN KEY ("EmpId")
 REFERENCES public."Employee" ("EmpId")
)