package com.infobeacons.account.web;

import java.io.IOException;
import java.util.List;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.infobeacons.account.model.Beacon;
import com.infobeacons.account.service.BeaconService;
import com.infobeacons.account.validator.BeaconValidator;

/**
 * @author Gabriel
 */
@Controller
public class BeaconController {
	
	private static final String TITULO_CADASTRAR = "Cadastrar Beacon";
	private static final String TITULO_EDITAR = "Editar Beacon";
	private static final String CADASTRAR = "Cadastrar";
	private static final String EDITAR = "Editar";
	
	private String titulo;
	private String botao;
	
	private Boolean isCadastro;

	@Autowired
	private BeaconService beaconService;
	
	@Autowired
	private BeaconValidator beaconValidator;
	
	@Autowired
	private FileUploadController fileUploadController;

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
		isCadastro = Boolean.TRUE;
		titulo = TITULO_CADASTRAR;
		botao = CADASTRAR;
		model.addAttribute("isCadastro", isCadastro);
		model.addAttribute("titulo", titulo);
		model.addAttribute("botao", botao);
        model.addAttribute("beaconForm", new Beacon());

        return "addBeacon";
    }

    @RequestMapping(value = "/addBeacon", method = RequestMethod.POST)
    public String addBeacon(@ModelAttribute("beaconForm") Beacon beaconForm, 
    		@RequestParam("file") MultipartFile file, BindingResult bindingResult, 
    		Model model) throws IOException {
    	
    	System.out.println("entrei no post para editar");
    	
        beaconValidator.validate(beaconForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "addBeacon";
        }
        
        String img = fileUploadController.uploadFile(file);
        beaconForm.setImg(img);
        
        beaconService.save(beaconForm);
        
        return "redirect:/listBeacons";
    }
    
	@RequestMapping("/listBeacons/edit/{id}")
	public String editBeacon(@PathVariable Long id , Model model) {
		isCadastro = Boolean.FALSE;
		titulo = TITULO_EDITAR;
		botao = EDITAR;
		
		model.addAttribute("isCadastro", isCadastro);
		model.addAttribute("titulo", titulo);
		model.addAttribute("botao", botao);
		Beacon beacon = beaconService.findById(id);
		
		model.addAttribute("beaconForm", beacon);
		String imgPath = "data:image/jpg;base64,"+beacon.getImg();
		model.addAttribute("imgPath", imgPath);
		return "addBeacon";
	}
	
	@RequestMapping(value = "/listBeacons/edit/{id}", method = RequestMethod.POST)
    public String editBeacon(@ModelAttribute("beaconForm") Beacon beaconForm, 
    		@RequestParam("file") MultipartFile file, BindingResult bindingResult, 
    		Model model) throws IOException {
    	
    	System.out.println("entrei no post para editar");
    	
        beaconValidator.validate(beaconForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "addBeacon";
        }
        
        String img = fileUploadController.uploadFile(file);
        beaconForm.setImg(img);
        
        beaconService.save(beaconForm);
        
        return "redirect:/listBeacons";
    }
}
