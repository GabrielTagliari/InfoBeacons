package com.infobeacons.account.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.infobeacons.account.model.Beacon;
import com.infobeacons.account.model.User;
import com.infobeacons.account.service.BeaconService;
import com.infobeacons.account.validator.BeaconValidator;

/**
 * @author Gabriel
 */
@Controller
public class BeaconController {

	@Autowired
	private BeaconService beaconService;
	
	@Autowired
	private BeaconValidator beaconValidator;

	@RequestMapping(value = { "/", "/listBeacons" }, method = RequestMethod.GET)
	public String listBeacons(Model model) {
		List<Beacon> beacon = beaconService.findAll();
		System.out.println(beacon.get(0).toString());
		model.addAttribute("beacon", beacon);
		return "listBeacons";
	}

	@ResponseBody
	@RequestMapping(value = "/listBeacons/all", method = RequestMethod.GET)
	public List<Beacon> getAll(Model model) {
		List<Beacon> beacon = beaconService.findAll();
		System.out.println(beacon);
		return beacon;
	}

	@ResponseBody
	@RequestMapping(value = "/listBeacons/{mac}", method = RequestMethod.GET)
	public Beacon getById(@PathVariable String mac, Model model) {
		Beacon beacon = beaconService.findByMac(mac);
		System.out.println(beacon);
		return beacon;
	}

	@RequestMapping("/listBeacons/remove/{id}")
	public String removeBeacon(@PathVariable Long id) {
		beaconService.removeBeacon(id);
		System.out.println("metodo de remover");
		return "redirect:/listBeacons";
	}
	
	@RequestMapping(value = "/addBeacon", method = RequestMethod.GET)
    public String addBeacon(Model model) {
        model.addAttribute("beaconForm", new Beacon());

        return "addBeacon";
    }

    @RequestMapping(value = "/addBeacon", method = RequestMethod.POST)
    public String addBeacon(@ModelAttribute("beaconForm") Beacon beaconForm, BindingResult bindingResult, Model model) {
        beaconValidator.validate(beaconForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "addBeacon";
        }

        beaconService.save(beaconForm);

        return "redirect:/listBeacons";
    }
}
