package com.hkbank.service;

import java.util.ArrayList;

import com.hkbank.model.Person;

import java.util.List;

import org.springframework.stereotype.Service;

/** 
* Copyright : adobocode.com , 2010 
* 
* @author Paul Sydney Orozco | xtrycatchx@gmail.com 
*/ 
@Service 
public class DummyService {

    /** 
     * This method supposed to be returning a Collection of Person objects from 
     * a DAO layer For this tutorial, let us just hard-code this List of Person 
     * objects 
     */ 
    public List<Person> getDummyList() { 
        List<Person> list = new ArrayList<Person>(); 
        Person p1 = new Person(); 
        p1.setId(12345); 
        p1.setName("Paul"); 
        p1.setAge(27); 
        p1.setAddress("Dalaguete, Cebu");

        Person p2 = new Person(); 
        p2.setId(54321); 
        p2.setName("Sydney"); 
        p2.setAge(25); 
        p2.setAddress("Cebu City");

        list.add(p1); 
        list.add(p2); 
        return list; 
    }

    /** 
     * This method supposed to be returning Person object from a DAO layer For 
     * this tutorial, let us just hard-code the Person instance 
     */ 
    public Person retrievePerson(int id) { 
        Person person = new Person(); 
        person.setId(56789); 
        person.setName("Nikki"); 
        person.setAge(63); 
        person.setAddress("Dalaguete, Cebu"); 
        return person; 
    }

    /** 
     * This method supposed to be persisting the passed Person object For this 
     * tutorial, let us include the persisting DAO layer and assume the method 
     * successful saved or updated the Person object 
     */ 
    public void savePerson(Person person) { 
        System.out.println("\n\nSaving" + person); 
    } 
}