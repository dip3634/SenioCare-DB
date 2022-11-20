CREATE TABLE IF NOT EXISTS "Category"
(
 "CategoryId" integer NOT NULL,
 "Type" character varying(60) NOT NULL,
 CONSTRAINT category_pkey PRIMARY KEY ("CategoryId")
)