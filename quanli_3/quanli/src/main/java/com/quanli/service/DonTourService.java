/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.service;

import com.quanli.pojos.DonTour;
import java.util.List;

/**
 *
 * @author AD
 */
public interface DonTourService {
     List<DonTour> getDoanhThu();
      List<DonTour> getLishSuById(String id);
       List<DonTour> getAllDonTour();
    void xoa(int  id);
    DonTour getDTById(int id);
    void update(DonTour donphong);
     List<DonTour> getDonByDate(String date);
}
