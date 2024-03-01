package com.MarchantSignupForm.controller;


import com.MarchantSignupForm.dto.MerchantDto;
import com.MarchantSignupForm.model.MerchantInfo;
import com.MarchantSignupForm.service.MerchantInfoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@RestController

public class MerchantInfoController {

    @Autowired
    private MerchantInfoService merchantInfoService;


//    @GetMapping("/")
//    public ModelAndView index() {
//        return new ModelAndView("create_page");
//    }

//    @PostMapping("/signup")
//    public ResponseEntity<MerchantInfo> signupMerchant(@RequestBody MerchantDto merchantDto) {
//        MerchantInfo savedMerchant = merchantInfoService.saveMerchantInfo(merchantDto);
//        return new ResponseEntity<>(savedMerchant, HttpStatus.CREATED);
//    }

    @RequestMapping("/sign-up")
    public ModelAndView  createMerchantInfo(@ModelAttribute("merchantInfo") MerchantInfo merchantInfo) {
      return new ModelAndView("merchant_Form");
    }



    @RequestMapping(value = "/sign-up", method = RequestMethod.POST)
    public ModelAndView saveMerchantInfo(@ModelAttribute("merchant") MerchantInfo merchantInfo, ModelMap map, HttpServletRequest request) {

        System.out.println(merchantInfo);
        merchantInfoService.saveMerchantInfo(merchantInfo);
        return  new ModelAndView("merchant_Form");
    }

//    @GetMapping("/sign-up")
//    public String showSignupForm(Model model) {
//        // Add an empty MerchantInfo object to the model
//        model.addAttribute("merchantInfo", new MerchantInfo());
//        return "merchantForm"; // Return the view name without the file extension
//    }


//    @PostMapping("/sign-up")
//    public String showSignupForm(@ModelAttribute ("merchantInfo") MerchantInfo merchantInfo) {
//        merchantInfoService.saveMerchantInfo(merchantInfo);
//        System.out.println(merchantInfo);
//        return "/merchantForm";
//    }

//    @GetMapping("/get/{personalId}")
//    public ModelAndView getMerchantInfo(@PathVariable String personalId) {
//        MerchantInfo merchantInfo = merchantInfoService.getMerchantInfo(personalId);
//        return new ModelAndView(new RedirectView(""))
//                .addObject("merchantInfo", merchantInfo);
//    }

    // Add other API endpoints as needed
}

