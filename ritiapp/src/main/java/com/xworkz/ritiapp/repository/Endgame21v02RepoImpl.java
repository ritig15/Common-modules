package com.xworkz.ritiapp.repository;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.ritiapp.entity.Endgame21v02Entity;

@Repository
public class Endgame21v02RepoImpl implements Endgame21v02Repo {
	private static Logger logger;

	@Autowired
	private SessionFactory factory;

	@SuppressWarnings("static-access")
	public Endgame21v02RepoImpl() {
		logger = logger.getLogger("Endgame21v02RepoImpl");
		logger.info("Created " + this.getClass().getSimpleName());
	}

	
	public Integer save(Endgame21v02Entity entity) {
		Session session = null;
		Integer affectedRow=0;
		logger.info("Invoked save in Endgame21v02RepoImpl");
		try {
			session = factory.openSession();
			Transaction transaction = session.beginTransaction();
			affectedRow=(Integer)session.save(entity);
			transaction.commit();
		} catch (Exception e) {
			logger.error("You have an exception!",e);
			e.getMessage();
			session.getTransaction().rollback();
		}
		return affectedRow;
	}

	@Override
	public Endgame21v02Entity getByEmailId(String email) {
		Endgame21v02Entity entity=null;
		Session session =null;
		logger.info("Invoked getByEmailId in Endgame21v02RepoImpl");
		try {
			session = factory.openSession();
			@SuppressWarnings("rawtypes")
			Query query = session.createNamedQuery("getByEmailId");
			query.setParameter("emailID", email);
			entity = (Endgame21v02Entity)query.uniqueResult();

		} catch (Exception e) {
			logger.error("You have an exception!!",e);
			e.getMessage();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return entity;
	}

}
