package com.infobeacons.account.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.infobeacons.account.model.Beacon;
import com.infobeacons.account.model.User;
import com.infobeacons.account.service.BeaconService;

@Component
public class BeaconValidator implements Validator {
    @Autowired
    private BeaconService beaconService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Beacon beacon = (Beacon) o;
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "uuid", "NotEmpty");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "major", "NotEmpty");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "minor", "NotEmpty");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mac", "NotEmpty");
        if (beaconService.findByMac(beacon.getMac()) != null) {
            errors.rejectValue("mac", "Duplicate.beaconForm.mac");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "text", "NotEmpty");
    }
}
