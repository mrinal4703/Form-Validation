/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.toc_formvalidation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControllerClass {
    
    @RequestMapping("/signup")
    public String signup(){
        return "signup";
    }
    @RequestMapping("/signin")
    public String signin(){
        return "signin";
    }
    @RequestMapping("/successlogin")
    public String successlogin(){
        return "successlogin";
    }
    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public String signin1(){
        return "signin";
    }
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String signup1(){
        return "signup";
    }
}
