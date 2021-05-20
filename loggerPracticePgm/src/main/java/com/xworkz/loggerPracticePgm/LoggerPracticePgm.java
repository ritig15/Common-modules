package com.xworkz.loggerPracticePgm;

import org.apache.log4j.Logger;

public class LoggerPracticePgm {
	//DriverManagerDataSource
		static Logger logger;
		static {
			logger = logger.getLogger(LoggerPracticePgm.class);
			// logger=logger.getLogger("Mailsender");
		}

		public static void main(String[] args) {
			logger.debug("Hello");
			logger.debug("World");
			demo();
		}

		public static void demo() {
			logger.trace("Trace message");
			logger.debug("Debug message");
			logger.fatal("Fatal message");
			logger.error("Error message");
			logger.info("Info message");
			logger.warn("Warning message");
			logger.hashCode();
		}
	}
