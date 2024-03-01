package com.MarchantSignupForm.dao;


import com.MarchantSignupForm.model.MerchantInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MerchantInfoRepository extends JpaRepository<MerchantInfo, Long> {
        // Add custom queries if needed
    }

