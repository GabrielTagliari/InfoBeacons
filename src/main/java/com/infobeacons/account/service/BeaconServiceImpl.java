package com.infobeacons.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infobeacons.account.model.Beacon;
import com.infobeacons.account.repository.BeaconRepository;

/**
 * @author Gabriel
 */
@Service
public class BeaconServiceImpl implements BeaconService {
	
	@Autowired
	private BeaconRepository beaconRepository;
	
	@Override
	public Beacon findById(Long id) {
		Beacon beacon = beaconRepository.findById(id);
		System.out.println("Beacon: " + beacon);
		return beacon;
	}

	@Override
	public List<Beacon> findAll() {
		return beaconRepository.findAll();
	}

	@Override
	public Beacon findByMac(String mac) {
		return beaconRepository.findByMac(mac);
	}

	@Override
	public void removeBeacon(Long id) {
		beaconRepository.delete(id);		
	}
	
}
