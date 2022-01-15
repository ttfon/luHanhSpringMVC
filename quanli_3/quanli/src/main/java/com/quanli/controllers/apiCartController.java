
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quanli.controllers;

import com.quanli.pojos.Cart;
import com.quanli.pojos.Phong;
import com.quanli.pojos.User;
import com.quanli.service.PhongService;
import com.quanli.service.UserService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author AD
 */
@RestController
public class apiCartController {
    @Autowired
    private PhongService phongService;
    @Autowired
    private UserService userDetailsService;
    @GetMapping("/api/phong")
    public ResponseEntity<List<Phong>>listphong()
    {
        List<Phong> phongs=this.phongService.getPhong();
        return new ResponseEntity<>(phongs,HttpStatus.OK);
    }
     @GetMapping("/api/user")
    public ResponseEntity<List<User>>listusername()
    {
        List<User> users=this.userDetailsService.getAllUser();
        return new ResponseEntity<>(users,HttpStatus.OK);
    }
    @PostMapping("/api/addcart")
    public int addtocart(@RequestBody Cart cart,HttpSession session)
    {
        Map<Integer,Cart> cartitems = (Map<Integer,Cart>) session.getAttribute("cart");
        if(cartitems == null)
        {
            cartitems = new HashMap<>();
        }
        if(cartitems.containsKey(cart.getPhongid())==true)
        {
            Cart c= cartitems.get(cart.getPhongid());
            c.setSoluong(c.getSoluong()+1);
        }
        else
        {
            cartitems.put(cart.getPhongid(), cart);
        }
        return countCartItem(cartitems);
    }
    public static int countCartItem( Map<Integer,Cart> cartitems)
    {
        int count = 0;
        if(cartitems != null)
        {
        for(Cart c: cartitems.values())
            count += c.getSoluong();
        }
        return count;
    }

}
