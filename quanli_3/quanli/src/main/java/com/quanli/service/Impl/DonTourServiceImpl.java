/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.service.Impl;

import com.quanli.pojos.DonTour;
import com.quanli.repository.DonTourRepository;
import com.quanli.service.DonTourService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author AD
 */
@Service
public class DonTourServiceImpl implements DonTourService{

    @Autowired
    private DonTourRepository donTourRepository;
    @Override
    public List<DonTour> getDoanhThu() {
       return this.donTourRepository.getDoanhThu();
    }

    @Override
    public List<DonTour> getLishSuById(String id) {
        return this.donTourRepository.getLishSuById(id);
    }

    @Override
    public List<DonTour> getAllDonTour() {
        return this.donTourRepository.getAllDonTour();
    }

    @Override
    public void xoa(int id) {
         this.donTourRepository.xoa(id);
    }

    @Override
    public DonTour getDTById(int id) {
         return this.donTourRepository.getDTById(id);
    }

    @Override
    public void update(DonTour donphong) {
         this.donTourRepository.update(donphong);
    }

    @Override
    public List<DonTour> getDonByDate(String string) {
       return this.donTourRepository.getDonByDate(string);
    }
    
}
