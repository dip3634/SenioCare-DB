CREATE TABLE IF NOT EXISTS "EmployeePay"
(
 "PayId" integer NOT NULL,
 "EmpId" integer NOT NULL,
 "TotalWorkingHours" integer,
 "HourlyPay" integer,
 "TotalPay" integer,
 CONSTRAINT pay_pkey PRIMARY KEY ("PayId"),
 CONSTRAINT fkempid FOREIGN KEY ("EmpId")
 REFERENCES public."Employee" ("EmpId")
)