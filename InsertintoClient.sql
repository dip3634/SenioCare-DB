do $$
DECLARE
   noOfRecords INT:=4000;
   co INT:=0;
BEGIN
	FOR i IN 1..noOfRecords LOOP
	  if (i+co)%5=0 then
	  	co=co+1;
	  end if;
	  insert into "Client"("ClientId","PersonId") values(i,i+co);
  end loop;
END
$$;
