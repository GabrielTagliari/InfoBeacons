package com.infobeacons.account.service;

import java.util.List;

import com.infobeacons.account.model.Beacon;

/**
 * @author Gabriel
 */
public interface BeaconService {

	Beacon findById(Long id);

	List<Beacon> findAll();

}
