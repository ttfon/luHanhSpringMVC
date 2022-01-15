/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.controllers;

import com.quanli.pojos.DonPhong;
import com.quanli.pojos.DonTour;
import com.quanli.service.CTDTService;
import com.quanli.service.CTDonPhongService;
import com.quanli.service.DonPhongService;
import com.quanli.service.DonTourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author AD
 */
@Controller
public class NhanVienController {
    @Autowired
    private CTDonPhongService cTDonPhongService;
    @Autowired
    private DonPhongService donPhongService;
    @Autowired
    private DonTourService donTourService;
    @Autowired
    private CTDTService cTDTService;
    @RequestMapping("nhanvien/thungan")
    public String show(Model model,@RequestParam(name="name", required = false,defaultValue = "")String name)
    {
         model.addAttribute("hoadon", this.donPhongService.getAllDonPhong());
       model.addAttribute("dontour", this.donTourService.getAllDonTour());
       model.addAttribute("hoadon", this.donPhongService.getDonPhongByDate(name));
       model.addAttribute("dontour", this.donTourService.getDonByDate(name));
        return "thungan";
    }
    @RequestMapping("/nhanvien/hoadon/xoa/{id}")
    public String xoahoadon(@PathVariable(value="id")int id)
    {
        this.donPhongService.xoa(id);
        return "redirect:/nhanvien/thungan";
    }
     @RequestMapping("/nhanvien/hoadon/tour/xoa/{id}")
    public String xoahoadonTour(@PathVariable(value="id")int id)
    {
        this.donTourService.xoa(id);
        return "redirect:/nhanvien/thungan";
    }
    @RequestMapping("/nhanvien/hoadon/detail/{id}")
    public String detail(@PathVariable(value="id")int id,Model model)
    {
        model.addAttribute("hoadon", this.cTDonPhongService.getCTByIdDP(id));
        return "detaildp";
    }
     @RequestMapping("/nhanvien/hoadon/tour/detail/{id}")
    public String detailTour(@PathVariable(value="id")int id,Model model)
    {
        model.addAttribute("hoadon", this.cTDTService.getCTByIdDP(id));
        return "detaildt";
    }
     @RequestMapping("/nhanvien/hoadon/update/{id}")
    public String updatehoadon(@PathVariable(value="id")int id,Model model)
    {
        DonPhong donphong =this.donPhongService.getDPById(id);
        model.addAttribute("hoadon",donphong );
        
        return "updatehoadon";
    }
  
     @RequestMapping("/nhanvien/hoadon/tour/update/{id}")
    public String updatehoadonTour(@PathVariable(value="id")int id,Model model)
    {
        DonTour dontour =this.donTourService.getDTById(id);
        model.addAttribute("hoadon",dontour );
        
        return "updatehoadontour";
    }
   
    @RequestMapping("/cthoadon/delete/{id}")
    public String ctdelete(@PathVariable(value="id")int id)
    {
        this.cTDonPhongService.xoa(id);
     return "redirect:/nhanvien/thungan";   
    }
    @RequestMapping("/cthoadon/tour/delete/{id}")
    public String ctdeleteTour(@PathVariable(value="id")int id)
    {
        this.cTDTService.xoa(id);
     return "redirect:/nhanvien/thungan";   
    }
}
