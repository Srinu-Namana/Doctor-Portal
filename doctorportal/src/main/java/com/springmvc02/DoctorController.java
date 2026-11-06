package com.springmvc02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DoctorController {

    @Autowired
    DoctorDAO doctorDao;

    // Display all doctors
    @RequestMapping(value = { "/", "/index" })
    public String homePage(Model model) {

        List<Doctor> doctorlist = doctorDao.getAllDoctors();

        model.addAttribute("list", doctorlist);

        return "index";
    }

    // Display Add Doctor form
    @RequestMapping(value = "/add-doctor",method = RequestMethod.GET)
    public String addDoctorPage(Model model) {

        model.addAttribute("doctor", new Doctor());

        return "add-doctor";
    }

    // Insert doctor
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addDoctor(@ModelAttribute("doctor") Doctor doctor) {

        doctorDao.insert(doctor);

        return "redirect:/index";
    }

    // Delete doctor
    @RequestMapping(value = "/delete-doctor/{id}",method = RequestMethod.GET)
    public String deleteDoctor(@PathVariable("id") Integer id) {

        doctorDao.delete(id);

        return "redirect:/index";
    }
    
    // Edit doctor
    @RequestMapping(value = "/edit-doctor/{id}")
    public String editDoctorForm(@PathVariable("id") Integer id,Model model) {
       Doctor doctor = doctorDao.getDoctor(id);
       model.addAttribute("doctor", doctor);
        return "update-doctor";
    }
    
    @RequestMapping(value = "update",method = RequestMethod.POST)
    public String updateDoctor(@ModelAttribute ("doctor") Doctor doctor) {
    	doctorDao.update(doctor);
    	return "redirect:/index";
    }

    
    
}
