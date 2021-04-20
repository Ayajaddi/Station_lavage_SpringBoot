package com.gestion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gestion.models.Bus;
@Repository
public interface BusRepository extends JpaRepository<Bus, Long> {

}
