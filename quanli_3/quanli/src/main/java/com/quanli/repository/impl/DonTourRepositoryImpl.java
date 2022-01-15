/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.repository.impl;

import com.quanli.pojos.DonTour;
import com.quanli.repository.DonTourRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author AD
 */
@Repository
@Transactional
public class DonTourRepositoryImpl implements DonTourRepository{

     @Autowired
    private LocalSessionFactoryBean sessionFactoryBean;
    @Override
    public List<DonTour> getDoanhThu() {
       Session session = this.sessionFactoryBean.getObject().getCurrentSession();
       String query = "select dp.ngaytao, sum(dp.tongtien) from DonTour as dp group by dp.ngaytao";
              
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public List<DonTour> getLishSuById(String id) {
         Session session = this.sessionFactoryBean.getObject().getCurrentSession();
         String query = "From CTDonTour dp where dp.dontour.sdt =:id";
         Query q = session.createQuery(query);
         q.setParameter("id", id);
         return q.getResultList();
    }

    @Override
    public List<DonTour> getAllDonTour() {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
         Query q = session.createQuery("From DonTour ");
        return q.getResultList(); 
    }

    @Override
    public void xoa(int id) {
         Session session = this.sessionFactoryBean.getObject().getCurrentSession();
      DonTour donphong = session.get(DonTour.class, id);
      session.remove(donphong);
    }

    @Override
    public DonTour getDTById(int id) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        DonTour donphong = session.get(DonTour.class, id);
        return donphong;
    }

    @Override
    public void update(DonTour donphong) {
          Session session = this.sessionFactoryBean.getObject().getCurrentSession();
        session.update(donphong);
    }

    @Override
    public List<DonTour> getDonByDate(String date) {
        Session session = this.sessionFactoryBean.getObject().getCurrentSession();
       Query q = session.createQuery("From DonTour dp where dp.ngaytao like CONCAT('%', :lp, '%')");
       q.setParameter("lp", date);
       return q.getResultList();
    }
    
}
