package com.QLDVSpringMVC.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PasswordService {
	private static BCryptPasswordEncoder passwordEcorder = new BCryptPasswordEncoder();
	   public String bcryptEncryptor(String Text) {
	       return passwordEcorder.encode(Text);
	   }

	   public Boolean doPasswordsMatch(String rawPassword,String encodedPassword) {
	      return passwordEcorder.matches(rawPassword, encodedPassword);
	   }
}
