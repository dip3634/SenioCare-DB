do $$
DECLARE
   noOfRecords INT:=1000;
   typeArray text[]:='{"Health","Banking","Transport","Food"}';
   modVal INT:=0;
BEGIN
	FOR i IN 1..noOfRecords LOOP
	  modVal=mod(i,4);
	  if modVal=0 THEN
	  modVal=4;
	  end if;
	  insert into "Employee"("EmpId","PersonId","SessionActive","RequestAssigned","Role") values(i,i*5,false,false,typeArray[modVal]);
  end loop;
END
$$;

