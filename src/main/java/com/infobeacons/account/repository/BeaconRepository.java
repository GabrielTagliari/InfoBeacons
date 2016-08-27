package com.infobeacons.account.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.infobeacons.account.model.Beacon;

/**
 * @author Gabriel
 */
public interface BeaconRepository extends JpaRepository<Beacon, Long>{
	
	Beacon findById(Long id);
	
	Beacon findByMac(String mac);
	
}
