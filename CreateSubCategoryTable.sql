CREATE TABLE IF NOT EXISTS "SubCategory"
(
 "SubCategoryId" integer NOT NULL,
 "CategoryId" integer NOT NULL,
 "Type" character varying(60),
 CONSTRAINT subcategory_pkey PRIMARY KEY ("SubCategoryId"),
 CONSTRAINT "CategoryId" FOREIGN KEY ("CategoryId")
 REFERENCES public."Category" ("CategoryId")
)