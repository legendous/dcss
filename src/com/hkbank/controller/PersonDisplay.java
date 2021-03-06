package com.hkbank.controller;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.ui.ModelMap; 
import org.springframework.web.bind.annotation.RequestMapping; 
import com.hkbank.service.DummyService;

/** 
* PersonDisplay class, display controller for the 'personDisplay.jsp' Copyright 
* : adobocode.com , 2010 
* 
* @author Paul Sydney Orozco | xtrycatchx@gmail.com 
* 
*/ 
@Controller 
public class PersonDisplay {

    private final DummyService dummyService;

    @Autowired 
    public PersonDisplay(DummyService dummyService) { 
        this.dummyService = dummyService; 
    }

    @RequestMapping("/personDisplay.htm") 
    public ModelMap defaultHandler() { 
        return new ModelMap("personList", this.dummyService.getDummyList()); 
    } 
}