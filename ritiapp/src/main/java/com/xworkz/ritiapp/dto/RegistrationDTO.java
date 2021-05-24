package com.xworkz.ritiapp.dto;

import java.util.Date;

import lombok.Data;

@Data
public class RegistrationDTO {
	private String fullName;
	private String email;
	private String dateOfBirth;
	private String address;
	private long contactNo;
	private String gender;
	private String password;
	private String confirmPassword;
}
