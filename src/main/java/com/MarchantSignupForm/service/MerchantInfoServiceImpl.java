package com.MarchantSignupForm.service;

import com.MarchantSignupForm.dao.MerchantInfoRepository;
import com.MarchantSignupForm.dto.MerchantDto;
import com.MarchantSignupForm.model.MerchantInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MerchantInfoServiceImpl implements MerchantInfoService{


        @Autowired
        private MerchantInfoRepository merchantInfoRepository;

        @Override
        public MerchantInfo saveMerchantInfo(MerchantInfo merchantInfo) {
            return merchantInfoRepository.save(merchantInfo);
        }

//        @Override
//        public MerchantInfo getMerchantInfo(String personalId) {
//            return merchantInfoRepository.findById(personalId).orElse(null);
//        }

        // Add other methods as needed

}
