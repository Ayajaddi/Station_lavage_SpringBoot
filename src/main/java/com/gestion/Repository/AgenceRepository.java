package com.gestion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gestion.models.Agence;
@Repository
public interface AgenceRepository extends JpaRepository<Agence, Long> {

}
