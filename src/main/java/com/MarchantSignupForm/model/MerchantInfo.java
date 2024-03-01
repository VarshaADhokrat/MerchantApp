package com.MarchantSignupForm.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;


import java.util.Date;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class MerchantInfo {


        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long personalId;

       // private String personalIdCardNumber;

        private String firstName;
        private String lastName;
        private String email;
        private String dob;
        private String address;
        private String personalCountry;

        private String postalCode;
       // private String personalHome;
        private String mobileNumber;

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
        private String businessType;
        private String cinNumber;
        private String businessCountry;
        private String businessState;
        private String businessPan;
        private String processingType;
        private String ticketsize;
        private String monthly;

        private String annual;

        private String paymentMethod1;
        private String currentDayPayout;
        private String t1Payout;
        private String policyURL;
        private String refundPolicy;

//banking info

        private String bankIFSCCode;
        private String bankAccountNo;

        private String bankAccountName;

        private String bankName;

        private String bankstatename;

        private String bankCityName;
        private String bankCountry;

        private String bankPostalCode;
        private String bankAddress;


}

