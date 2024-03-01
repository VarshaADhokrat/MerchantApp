package com.MarchantSignupForm.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MerchantDto {

        private String personalId;

        private String personalIdCardNumber;

        private String firstName;
        private String lastName;
        private String email;
        private String dob;
        private String address;
        private String personalCountry;

        private String postalCode;
        private String personalHome;
        private String personalMobile;

        private String personalPan;


        private String personalIdNumber;

        //BUSINESS INFORMATION - 17
        private String legalBusinessName;

        private String businessWebsite;
        private String businessStartDate;

        private String gstNumber;

        private String businessEmail;
        private String businessAddress;


        private String businessCity;
        private String businessPostalCode;
        private String businessPhone;
        private String bussinessType;
        private String cinNumber;
        private String bussinesscountry;
        private String businessstate;
        private String businessPan;
        private String processingType;
        private String ticketsize;
        private String expectedturnover;

        private String expectedvolume;

        private String paymentmethod;
        private String payout;
        private String privacypolicyurl;
        private String refundpolicy;

//banking info

        private String bankifsccode;
        private String bankaccountnumber;

        private String bankholdername;

        private String bankname;

        private String bankstatename;

        private String bankcityname;
        private String bankcountry;

        private String bankpostalcode;
        private String bankaddress;


    }



