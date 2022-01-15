/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.repository.impl;

import com.quanli.pojos.CTDonPhong;
import com.quanli.pojos.CTDonTour;
import com.quanli.repository.CTDTRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Karis
 */
@Repository
@Transactional
public class CTDTRepositoryImpl implements CTDTRepository{

    
     @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    @Override
    public List<CTDonTour> getCTByIdDP(int id) {
      Session session = this.sessionFactoryBean.getObject().getCurrentSession();
         Query q = session.createQuery("From CTDonTour ct where ct.dontour.id =:id ");
         q.setParameter("id", id);
        return q.getResultList();
    }

    @Override
    public void xoa(int id) {
       Session session = this.sessionFactoryBean.getObject().getCurrentSession();
      CTDonTour donphong = session.get(CTDonTour.class, id);
      session.remove(donphong);  
    }
    
}
