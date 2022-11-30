do $$
DECLARE
   typeArray text[]:='{"Health","Banking","Transport","Food"}';
BEGIN
	FOR i IN 1..array_length(typeArray,1) LOOP
	  insert into "Category"("CategoryId","Type") values(i,typeArray[i]);
  end loop;
END
$$;