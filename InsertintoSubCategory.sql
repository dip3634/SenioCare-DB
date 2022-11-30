do $$
DECLARE
   typeArray text[]:='{"Columbia","Apollo","Car","Bike","Door Dash","Uber Eats"}';
   recordsPerCategory DECIMAL:=2;
BEGIN
	FOR i IN 1..array_length(typeArray,1) LOOP
	  insert into "SubCategory"("SubCategoryId","CategoryId","Type") 
	  values(i,ceiling(i/recordsPerCategory),typeArray[i]);
  end loop;
END
$$;