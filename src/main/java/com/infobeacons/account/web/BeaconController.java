package com.infobeacons.account.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infobeacons.account.model.Beacon;
import com.infobeacons.account.service.BeaconService;

/**
 * @author Gabriel
 */
@Controller
public class BeaconController {
	
	private String numero;
	
	@Autowired
	private BeaconService beaconService;
	
	@RequestMapping(value = {"/", "/listBeacons"}, method = RequestMethod.GET)
    public String listBeacons(Model model) {
        List<Beacon> beacon = beaconService.findAll();
        System.out.println(beacon.get(0).toString());
        model.addAttribute("beacon", beacon);
        return "listBeacons";
    }
	
	
}
