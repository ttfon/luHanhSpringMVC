/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.repository;

import com.quanli.pojos.DonPhong;
import java.util.List;

/**
 *
 * @author AD
 */
public interface DonPhongRepository {
   List<DonPhong> getDonPhong();
    List<DonPhong> getDoanhThuTheoKS();       
    List<DonPhong> getLishSuById(String id);
    List<DonPhong> getAllDonPhong();
    void xoa(int  id);
    DonPhong getDPById(int id);
    void update(DonPhong donphong);
    List<DonPhong> getDonPhongByDate(String date);
}
