/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.repository;

import com.quanli.pojos.CTDonPhong;
import java.util.List;

/**
 *
 * @author Karis
 */
public interface CTDonPhongRepository {
     List<CTDonPhong> getCTByIdDP(int id);
      void xoa(int  id);
}
