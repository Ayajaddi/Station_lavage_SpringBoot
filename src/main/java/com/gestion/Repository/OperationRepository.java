package com.gestion.Repository;

import java.util.Date;
import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.gestion.models.Operation;
@Repository
public interface OperationRepository extends JpaRepository<Operation, Long> {

	@Query("select o from Operation o JOIN o.bus b where b.matricule= :x")

	List<Operation> getOperationByBus(@Param("x")Long matricule);
	
	
	
	@Query("select o from Operation o  where o.dateOperation= :date")

	
	
	List<Operation> getOperationByDate(@Param("date")Date dateOperation);
	
	
	

	

}
