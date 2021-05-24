package com.xworkz.ritiapp.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xworkz.ritiapp.dto.RegistrationDTO;
import com.xworkz.ritiapp.entity.Endgame21v02Entity;
import com.xworkz.ritiapp.repository.Endgame21v02Repo;

@Service
public class RegistrationServiceImpl implements RegistrationService {
	private static Logger logger;

	@Autowired
	private Endgame21v02Repo repo;

	@SuppressWarnings("static-access")
	public RegistrationServiceImpl() {
		logger = logger.getLogger("RegistrationServiceImpl");
		logger.info("Created " + this.getClass().getSimpleName());
	}

	public String validateAndSave(RegistrationDTO dto) {
		logger.info("Invoked validateAndSave in RegistrationServiceImpl");
		Endgame21v02Entity entity = new Endgame21v02Entity();
		try {
			Endgame21v02Entity endgame21v02Entity = this.repo.getByEmailId(dto.getEmail());
			if (endgame21v02Entity == null) {
				logger.info("Checking whether  endgame21v02Entity is null in validateAndSave in RegistrationServiceImpl");
				BeanUtils.copyProperties(dto, entity);
				logger.info("Copied dto to entity in validateAndSave in RegistrationServiceImpl");
				entity.setRegisteredBy("Riti");
				LocalDateTime locDate = LocalDateTime.now();
				logger.info("Setting Local date & time in validateAndSave in RegistrationServiceImpl");
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
				logger.info("Formatting Local date & time in format 'dd-MM-yyyy HH:mm:ss' in validateAndSave in RegistrationServiceImpl");
				String date = formatter.format(locDate);
				logger.info("Setting Registered date & time with Local date & time in validateAndSave in RegistrationServiceImpl");
				entity.setRegisteredDate(date);
				logger.info("Invoking save in validateAndSave in RegistrationServiceImpl");
				int affectedRows = this.repo.save(entity);
				if (affectedRows > 0) {
					logger.info("User registered successfully");
					return "User registered successfully";
				} else {
					logger.info("User not registered ");
					return "User not registered ";
				}
			} else {
				logger.info("User already exists!!");
				return "User already exists!!";
			}
		} catch (Exception e) {
			e.getMessage();
			logger.error("You have an exception!!",e);
			
		}
		return "";
	}
}
