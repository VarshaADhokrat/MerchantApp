<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IOP | Setting</title>

    <!-- Google Font: Source Sans Pro -->
    <!-- <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">

    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">


    <!-- Theme style css -->
    <link href="${contextPath}/resources/css/adminlte.min.css" rel="stylesheet">

    <!-- Custom style css -->
    <link href="${contextPath}/resources/css/custom.css" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">

<!-- /.content-wrapper start -->
	<div class="wrapper">

		<!-- Main Sidebar Container -->

		<!-- Content Wrapper. Contains page content -->
		<div class="merchantForm-wrapper">
			<!-- header start -->
			<header class="merchantForm__header">
				<img src="${contextPath}/resources/images/header-logo.svg" usemap="#image-map">

				<map name="image-map">
					<area target="_blank" alt="IOP" title="IOP" href="https://indiaonlinepay.com/home"
						coords="1130,236,1309,85" shape="rect">
				</map>
			</header>

			<!-- header end -->

			<!-- Main content -->
			<section class="content">
				<div class="merchantForm__contentHeader">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
							    <div class="merchantForm__contentHeader-content">
                                    <h3>Merchant Registration</h3>
                                    <p>You are currently registering from India. Your IP address is 103.19.133.42</p>
                                </div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<!-- form start -->
					<div class="merchantForm">
						<form:form modelAttribute="merchant" action="sign-up" method="POST" id="cstm-form" autocomplete="off">

							<!-- Personal Information Form start here -->
							<div class="tab-content merchantForm_grayBG" id="personalInfoForm">
								<!-- Vertical Timeline navigation start -->
								<div class="timelinenavigation">
									<ul>
										<li>
											1
										</li>
									</ul>
								</div>
								<!-- Vertical Timeline navigation end -->

								<!-- form content start -->
								<div class="tab-pane show active">
									<div class="row mt-2">
										<div class="col-md-4">
											<div class="form-group">
												<label for="personalDocId">Personal Id Card</label>
												<select class="form-control select2" name="personalDocId"
													id="personalDocId"
													style="width: 100%;">
													<option value="0">-- Select Personal ID --</option>
													<option value="1">
														Aadhar Card
													</option>
													<option value="2">Passport</option>
												</select>
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group">
													<label for="personalIdNumber">Personal Id Card Number</label>
													<input type="text" class="form-control" name="personalIdNumber"
														id="personalIdNumber" placeholder="Aadhar Card / Passport No">

													<span id="adhaarSuccess" style="color: green;"></span>
													<span id="adhaarError" style="color: red;"></span>
											</div>
										</div>

										<div class="col-sm-12 col-md-4">
											<div class="row">
												<div class="col col-sm-12 col-md-12 col-lg-6">
													<div class="verifyBtnBox">
														<div class="form-group">
															<label for="verifyAadhaar">Verify Aadhaar With OTP<span class="danger">*</span></label>
															<button type="button" class="btn btn-secondary" data-toggle="modal" onclick="generateOTP(document.getElementById('personalIdNumber').value)"
															data-target="#generate-otp">
																Verify
															</button>
														</div>
													</div>
												</div>
												<div class="col col-sm-12 col-md-12 col-lg-6">
													<div class="verifyBtnBox">
                                                            <div class="form-group">
                                                                <label>Verify Aadhaar Without OTP<span class="danger">*</span></label>
                                                                <button type="button" class="btn btn-secondary verify-btn"
                                                                 onclick="validateAdhaarAndShowMessage(document.getElementById('personalIdNumber').value)" >
                                                                    Verify
                                                                </button>
                                                            </div>
                                                    </div>
												</div>
											</div>
										</div>
									</div>

									<div class="row mt-2">
										<div class="col-md-4">
											<div class="form-group">
												<label for="firstName">First Name</label>
												<input type="text" class="form-control" name="firstName"
														id="firstName" placeholder="Enter your First Name">
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group">
												<label for="lastName">Last Name</label>
												<input type="text" class="form-control" name="lastName"
														id="lastName" placeholder="Enter your Last Name">
											</div>
										</div>

										<div class="col-md-4" id="startDateTime1">
											<div class="form-group">
												<label>Date of Birth</label>
												<input type="date" class="form-control" name="dob"
														id="dob" placeholder="DD/MM/YYYY">
											</div>
										</div>
									</div>

									<div class="row mt-2">
										<div class="col-md-4">
											<div class="form-group">
												<label for="address">Address</label>
												<input type="text" class="form-control" name="address"
														id="address" placeholder="Enter your Address">
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group customSelect">
												<label for="personalCity">City</label>
												<select class="form-control select2" name="personalCity" id="personalCity"
														style="width: 100%;">
													<option value="0">-- Select State --</option>
													<option value="">
														Maharashtra
													</option>
													<option value="">Maharashtra1
													</option>
												</select>
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group">
												<label for="personalStateId">State</label>
												<select class="form-control select2" name="personalStateId" id="personalStateId"
														style="width: 100%;">
													<option value="0">-- Select State --</option>
													<option value="">
														Maharashtra
													</option>
													<option value="">Maharashtra1
													</option>
												</select>
											</div>
										</div>
									</div>

									<div class="row mt-2">
										<div class="col-md-4">
											<div class="form-group">
												<label for="postalCode">Postal Code</label>
												<input type="text" class="form-control" name="postalCode"
														id="postalCode" placeholder="Enter Postal Code">
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group">
												<label for="personalCountryId">Country</label>
												<input type="text" class="form-control" name="personalCountryId"
														id="personalCountry" placeholder="India" disabled>
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group">
												<label for="personalPan">Personal PAN</label>
												<input type="text" class="form-control" name="personalPan"
														id="personalPan" placeholder="Enter Personal PAN No.">
														<span id="panSuccess" style="color: green;"></span>
														<span id="panError" style="color: red;"></span>
											</div>
										</div>
									</div>

									<div class="row mt-2">
										<div class="col-md-4">
											<div class="form-group">
												<label for="mobileNumber">Mobile Number</label>
												<div class="input-group">
													<div class="input-group-addon">+91</div>
													<input id="mobileNumber" name="mobileNumber"
															placeholder="Enter Mobile Number" type="text"
															class="form-control">
												</div>
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group">
												<label for="email">Email Address</label>
												<input type="text" class="form-control" name="email" id="email"
														placeholder="Enter your Email">
											</div>
										</div>
									</div>

									<div class="row mt-2">
										<div
												class="col-md-12 d-flex align-middle justify-content-end formBtnSection">
											<div class="form-group mb-0">
												<button  onclick="enableEditBusiness('personalInfoForm')" id="editButton" type="button" class="btn btn-secondary editBtn">
													Edit
												</button>
											</div>
											<div class="form-group mb-0">
												<button onclick="validateAndNextBusiness('personalInfoForm')" id="nextButton" type="button" class="btn btn-secondary nextBtn">
													Next
												</button>


												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- form content end -->
							</div>

							<!-- Personal Information Form end here -->

							<!-- Business & Processing Form Merge start here -->
							<div class="tab-content merchantForm_grayBG mt-5" id="businessForm">
								<!-- Vertical Timeline navigation -->
								<div class="timelinenavigation">
									<ul>
										<li>
											2
										</li>
									</ul>
								</div>
								<div class="tab-pane">
                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessType">Business Type</label>
                                                <select class="form-control select2" name="businessType"
                                                        id="businessType"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select Business Type --</option>
                                                    <option value="">
                                                        ABC
                                                    </option>
                                                    <option value="">XYZ</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="cinNumber">CIN Number<span class="danger">*</span></label>
                                                <input type="text" class="form-control text-uppercase required"
                                                       id="cinNumber" placeholder="Enter CIN Number" required="true"/>
                                                <span id="cinSuccess1" style="color: green;"></span>
                                                <span id="cinError1" style="color: red;"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="legalBusinessName">Legal Business Name</label>
                                                <input type="text" class="form-control" name="legalBusinessName"
                                                        id="legalBusinessName" placeholder="Enter Business Name">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessAddress">Address</label>
                                                <input type="text" class="form-control" name="businessAddress"
                                                        id="businessAddress" placeholder="Enter Business Address">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessState">State</label>
                                                <select class="form-control select2" name="businessState"
                                                        id="businessState"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select State --</option>
                                                    <option value="">
                                                        Maharashtra
                                                    </option>
                                                    <option value="">Maharashtra1
                                                    </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessPostalCode">Postal Code</label>
                                                <input type="text" class="form-control"
                                                        name="businessPostalCode" id="businessPostalCode"
                                                        placeholder="Enter Postal Code">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessCountry">Country</label>
                                                <input type="text" class="form-control" name="businessCountry"
                                                        id="businessCountry" placeholder="India" disabled>
                                            </div>
                                        </div>

                                        <div class="col-md-4" id="startDateTime">
                                            <div class="form-group">
                                                <label for="businessStartDate">Business Start Date</label>
                                                <input type="date" class="form-control" name="businessStartDate"
                                                        id="businessStartDate" placeholder="DD/MM/YYYY">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessPhone">Business Phone Number</label>
                                                <input type="text" class="form-control" name="businessPhone" id="businessPhone"
                                                placeholder="Enter Business Phone Number">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessEmail">Business Email Address</label>
                                                <input type="text" class="form-control" name="businessEmail"
                                                id="businessEmail" placeholder="Enter Business Email">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessWebsite">Business Website</label>
                                                <input type="text" class="form-control" name="businessWebsite"
                                                        id="businessWebsite" placeholder="https://">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="businessPan">Business PAN</label>
                                                <input type="text" class="form-control" name="businessPan"
                                                    id="businessPan" placeholder="Enter Business PAN Number">

                                                   <span id="panSuccess1" style="color: green;"></span>
                                                   <span id="panError1" style="color: red;"></span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="gstNumber">GST Number</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group form-control gstCheckNumber">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                 id="checkYes" name="checkYes">
                                                                <label class="form-check-label" for="checkYes">Yes</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                id="checkNo" name="checkNo">
                                                                <label class="form-check-label" for="checkNo">No</label>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control"
                                                            name="gstNumber" id="gstNumber"
                                                            placeholder="Enter GST Number">
                                                            <span id="gstSuccess1" style="color: green;"></span>
                                                            <span id="gstError1" style="color: red;"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Expected Turnover</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control"
                                                                    name="monthly" id="monthly"
                                                                    placeholder="Monthly ₹">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control"
                                                                    name="annual" id="annual"
                                                                    placeholder="Annual ₹">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Processing Type</label>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group form-control custom-checkbox">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                        id="domesticCheck" name="domesticCheck">
                                                                <label class="form-check-label"
                                                                        for="domesticCheck">Domestic</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group form-control">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                        id="internationalCheck"
                                                                        name="internationalCheck">
                                                                <label class="form-check-label"
                                                                        for="internationalCheck">International</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group form-control">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                        id="both" name="both">
                                                                <label class="form-check-label"
                                                                        for="both">Both</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Ticket Size</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control"
                                                                    name="minTransactionSize"
                                                                    id="minTransactionSize"
                                                                    placeholder="Minimum Transaction Size ₹">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control"
                                                                    name="maxTransactionSize"
                                                                    id="maxTransactionSize"
                                                                    placeholder="Maximum Transaction Size ₹">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Expected Volume</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control"
                                                                    name="domesticVolume" id="domesticVolume"
                                                                    placeholder="Domestic %">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control"
                                                                    name="internationalVolume"
                                                                    id="internationalVolume"
                                                                    placeholder="International %">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="paymentMethod">Payment Method</label>
                                                <select class="form-control select2" name="paymentMethod"
                                                        id="paymentMethod1"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select Method --</option>
                                                    <option value="">Debit Card
                                                    </option>
                                                    <option value="">Credit Card
                                                    </option>
                                                    <option value="">UPI
                                                    </option>
                                                    <option value="">Net Banking
                                                    </option>
                                                    <option value="">Wallet
                                                    </option>
                                                    <option value="">Others
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Payouts</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group form-control">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                        id="currentDayPayout"
                                                                        name="currentDayPayout">
                                                                <label class="form-check-label"
                                                                        for="currentDayPayout">Current Day
                                                                    Payout</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group form-control">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                        id="t1Payout" name="t1Payout">
                                                                <label class="form-check-label" for="t1Payout">T
                                                                    + 1 Payouts</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="policyURL">Privacy Policy URL</label>
                                                <input type="text" class="form-control" name="policyURL"
                                                        id="policyURL" placeholder="https://">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="paymentMethod">Refund Policy</label>
                                                <select class="form-control select2" name="paymentMethod"
                                                        id="refundPolicy"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select Policy --</option>
                                                    <option value="">No Refund
                                                    </option>
                                                    <option value="">100% Refund
                                                    </option>
                                                    <option value="">30 Days Refund
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-12 d-flex align-middle justify-content-end formBtnSection">
                                            <div class="form-group mb-0">
                                                <button type="button" onclick="enableEditBusiness('businessForm')" class="btn btn-secondary editBtn">
                                                    Edit
                                                </button>
                                            </div>
                                            <div class="form-group mb-0">
                                                <button type="button" onclick="validateAndNextBusiness('businessForm')" class="btn btn-secondary nextBtn">
                                                    Next
                                                </button>
                                            </div>
                                        </div>
                                    </div>
								</div>
							</div>
							<!-- Business & Processing Form Merge end here -->

							<!-- Bank Information Form start here -->
                            <div class="tab-content merchantForm_grayBG mt-5" id="bankInformation">
                                <!-- Vertical Timeline navigation -->
                                <div class="timelinenavigation">
                                    <ul>
                                        <li>
                                            3
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-pane">
                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="ifscRoutingBankCode">Bank IFSC Code</label>
                                                <input type="text" class="form-control" name="bankIFSCCode"
                                                       id="ifscRoutingBankCode" placeholder="Enter Bank IFSC Code">
                                                       <span id="ifscSuccess1" style="color: green;"></span>
                                                        <span id="ifscError1" style="color: red;"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankAccountNo">Bank Account Number</label>
                                                <input type="text" class="form-control" name="bankAccountNo"
                                                       id="bankAccountNo" placeholder="Enter Bank Account Number">

                                                      <span id="accSuccess1" style="color: green;"></span>
                                                      <span id="accError1" style="color: red;"></span>

                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankAccountName">Account Holder Name</label>
                                                <input type="text" class="form-control" name="bankAccountName"
                                                       id="bankAccountName" placeholder="Enter Account Holder Name">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankName">Bank Name</label>
                                                <input type="text" class="form-control" name="bankName"
                                                id="bankName" placeholder="Enter Bank Name">
                                                <!-- <select class="form-control select2" name="bankName"
                                                        id="bankName"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select Bank --</option>
                                                    <option value="">
                                                        AAAA
                                                    </option>
                                                    <option value="">BBBB</option>
                                                </select> -->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankStateName">Bank State Name</label>
                                                <input type="text" class="form-control" name="bankStateName"
                                                id="bankStateName" placeholder="Enter Bank State Name">

                                                <!-- <select class="form-control select2" name="bankStateName"
                                                        id="bankStateName"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select State --</option>
                                                    <option value="">
                                                        Maharashtra
                                                    </option>
                                                    <option value="">Maharashtra1
                                                    </option>
                                                </select> -->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankCityName">Bank City Name</label>
                                                <input type="text" class="form-control" name="bankCityName"
                                                id="bankCityName" placeholder="Enter Bank City Name">
                                                <!-- <select class="form-control select2" name="bankCityName"
                                                        id="bankCityName"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select City --</option>
                                                    <option value="">
                                                        Mumbai
                                                    </option>
                                                    <option value="">Pune
                                                    </option>
                                                </select> -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankCountry">Bank Country</label>
                                                <input type="text" class="form-control" name="bankCountry"
                                                id="bankCountry" placeholder="Enter Bank Country">
                                                <!-- <select class="form-control select2" name="bankCountry"
                                                        id="bankCountry"
                                                        style="width: 100%;">
                                                    <option value="0">-- Select Country --</option>
                                                    <option value="">India
                                                    </option>
                                                    <option value="">Singapore
                                                    </option>
                                                    <option value="">Canada
                                                    </option>
                                                </select> -->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankPostalCode">Bank Postal Code</label>
                                                <input type="text" class="form-control" name="bankPostalCode"
                                                       id="bankPostalCode" placeholder="Enter Bank Postal Code">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="bankAddress">Bank Address</label>
                                                <input type="text" class="form-control" name="bankAddress"
                                                       id="bankAddress" placeholder="Enter Bank Address">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2">
                                        <div class="col-md-12 d-flex align-middle justify-content-end formBtnSection">
                                            <div class="form-group mb-0">
                                                <button type="button" onclick="enableEditBusiness('bankInformation')" class="btn btn-secondary editBtn">
                                                    Edit
                                                </button>
                                            </div>
                                            <div class="form-group mb-0">
                                                <button type="button" onclick="validateAndNextBusiness('bankInformation')" class="btn btn-secondary nextBtn">
                                                    Next
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Bank Information Form end here -->


							<!-- terms condition start -->
							<div class="container">
								<div class="termsCondition">
									<div class="row">
										<div class="col-md-12 ">
											<div class="form-group custom-checkbox">
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														name="termsCondition" id="termsCondition">
													<label class="form-check-label" for="termsCondition">By
														Clicking on Submit, I
														hereby
														certify that the above statement are true and
														correct to
														the
														best of my knowledge. I understand that a false
														statement
														may disqualify me from India Online Pay
														on-Boarding.
														<br />I
														have
														read and hereby accept all the Terms and
														Conditions.</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- terms condition start -->

							<!-- /.card-body -->
							<div class="card-footer" style="text-align:center">
								<button type="submit" class="btn btn-primary" >Submit</button>
							</div>
						</form:form>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
	</div>
	<!-- /.content-wrapper end -->


<!-- jQuery -->
<!-- <script src="plugins/jquery/jquery.min.js"></script> -->
<!-- jQuery UI 1.11.4 -->
<!-- <script src="plugins/jquery-ui/jquery-ui.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"/>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>

<script>

// Declare accessToken and clientId in a scope accessible to both functions
            let accessToken;
            let client_Id;
            const clientId = 'MDIxNjBiMDItN2QzOS00MTA5LWFmNWEtNjE3MDExNjE1Nzlj';
            const client_secret = 'ZFp6eXVCdm40Wk14b0hGTGlUZlkzZz09LENyM002TlhpbGRRT2lJTklCWVlGT01PRk1SaTYzN2VjODFvQ1NmOWg5b009';

            // Function to fetch the access token
            function fetchAccessToken() {
                const apiEndpointToken = 'https://api-qa.cygnetfintech.com/iamapi/authenticate/get_token';

                const formData = new FormData();
                formData.append('client_id', clientId);
                formData.append('client_secret', client_secret);

                // Fetch the access token
                return fetch(apiEndpointToken, {
                    method: 'POST',
                    body: formData,
                })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok for Token generation api');
                    }
                    return response.json();
                })
                .then(data => {
                    console.log(data);
                    accessToken = data.result.access_token; // Store the access token
                });
                console.log(apiEndpointToken);

            }

            // **************** Function to AutoPopulateStateField start ****************
                function autoPopulateStateField(stateName) {
                    const personalStateDropdown = document.getElementById('personalStateId');
                    if (personalStateDropdown) {
                        for (let i = 0; i < personalStateDropdown.options.length; i++) {
                            if (personalStateDropdown.options[i].text === stateName) {
                                personalStateDropdown.options[i].selected = true;
                                break;
                            }
                        }
                    } else {
                        console.error('Dropdown or Aadhar card state not found');
                    }
                }
            // **************** Function to AutoPopulateStateField end ****************

            // **************** Function to validate Aadhar number with OTP start ****************

            function generateOTP(aadharNumber) {
            console.log("Aadhar Number:", aadharNumber);
                // Fetch the personal ID number
                const personalIdNumberElement = document.getElementById("personalIdNumber");
                const personalIdNumber = personalIdNumberElement.value;
                console.log("Personal ID Number:", personalIdNumber);

                // Get the selected personal document value
                const personalDocIdElement = document.getElementById("personalDocId");
                const selectedDocValue = personalDocIdElement.value;

                console.log("Selected Document Value:", selectedDocValue);

                // Check the selected document type
                if (selectedDocValue === '1') {
                    fetchAccessToken()
                        .then(() => {
                            const apiEndpointGenerateOTP = 'https://api-qa.cygnetfintech.com/apihub/Fintech/generateaadhaarOtp';
                            const requestBody = JSON.stringify({ id_number: aadharNumber });

                            // Generate Aadhaar OTP API calling
                            return fetch(apiEndpointGenerateOTP, {
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/json',
                                    'Authorization': 'Bearer ' + accessToken,
                                    'clientid': clientId,
                                },
                                body: requestBody,
                            });
                        })
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            alert('OTP sent successfully');
                            client_Id = data.result.data.client_id;
                            console.log("hello1");
                            showAadharCardDetails(data);

                            // Auto-populate the state field
                            //const aadharCardState = data.result.data.address.state;

                            // Auto-populate the state field
                            autoPopulateStateField(data.result.address.state);

                            //const personalStateDropdown1 = document.getElementById('personalStateId');

                            //if (personalStateDropdown1 && aadharCardState) {
                              //  personalStateDropdown1.value = aadharCardState;
                            //} else {
                              //  console.error('Dropdown or Aadhar card state not found');
                            //}

                        })
                        .catch(error => {
                            console.error('There was a problem with the fetch operation:', error);
                        });
                } else if (selectedDocValue === '2') {
                    // Code for the second option (if any)
                }
            }

            // **************** Function to validate Aadhar number with OTP end ****************


            // ************* Function to validate Adhaar number without OTP start *************

                // Function to hide the adhaarSuccess message
                function hideAdhaarSuccess() {
                    adhaarSuccess.textContent = ''; // Clear any previous success messages
                }

                // Event listener for changes in the DOM
                document.addEventListener('DOMNodeRemoved', function (event) {
                    const removedElement = event.target;

                    // Check if the removed element is an input field with the class 'form-control'
                    if (removedElement.classList && removedElement.classList.contains('form-control')) {
                        hideAdhaarSuccess();
                    }
                });

                function validateAdhaarAndShowMessage(adhaarNumber) {
                    // Fetch the personal ID number
                    const personalAdhaarIdElement = document.getElementById("personalIdNumber");
                    const personalAdhaarId = personalAdhaarIdElement.value;

                    // Get the selected personal document value
                    const personalAdhaarDocIdElement = document.getElementById("personalDocId");
                    const selectedAdhaarDocValue = personalAdhaarDocIdElement.value;

                    fetchAccessToken()
                    .then(() => {
                        let verifyAdhaarNumber = 'https://api-qa.cygnetfintech.com/apihub/Fintech/validateaadhaar';
                        const requestBody = JSON.stringify({ id_number: adhaarNumber });

                        // Perform PAN card validation API calling
                        return fetch(verifyAdhaarNumber, {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                                'Authorization': 'Bearer ' + accessToken,
                                'clientid': clientId,
                            },
                            body: requestBody
                        });
                    })
                    .then(response => {
                        if (!response.ok) {
                            // If the response is not okay, handle the error
                            return response.json().then(errorData => {
                                throw new Error(`Error: ${errorData.message}`);
                            });
                        }
                        return response.json();
                        console.log("verifyAdhaarNumber");
                    })
                    .then(data => {
                        // Check the response from the server and update the UI accordingly
                        if (data.success) {
                            adhaarSuccess.textContent = 'Adhaar Number verified successfully';
                            adhaarError.textContent = ''; // Clear any previous error messages

                            autoPopulateStateField(data.result.data.state);

                            //const stateName = data.result.data.state;

                         } else {
                            adhaarSuccess.textContent = ''; // Clear any previous success messages
                            adhaarError.textContent = 'Adhaar Number not verified';

                       }
                    })
                    .catch(error => {

                        // Handle errors, and log to console for debugging
                        adhaarSuccess.textContent = ''; // Clear any previous success messages
                        adhaarError.textContent = 'Invalid Adhaar number';

                        console.error('There was a problem with the Adhaar number validation:', error);
                    });
                }

                document.addEventListener('DOMContentLoaded', function() {
                    const verifyButton = document.querySelector('.verify-btn');
                    verifyButton.addEventListener('click', function() {
                        validateAdhaarAndShowMessage(document.getElementById('personalIdNumber').value);
                    });
                });

            // ************* Function to validate Adhaar number without OTP end *************


             // Function to validate PERSONAL PAN card number

                        function validatePanCardAndShowMessage(data) {
                            fetchAccessToken()
                            .then(() => {
                                let verifyPANCard = 'https://api-qa.cygnetfintech.com/apihub/Fintech/panverifylite';
                                const requestBody = JSON.stringify({ id_number: data });

                                // Perform PAN card validation API calling
                                return fetch(verifyPANCard, {
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/json',
                                        'Authorization': 'Bearer ' + accessToken,
                                        'clientid': clientId,
                                    },
                                    body: requestBody
                                });
                            })
                            .then(response => {
                                if (!response.ok) {
                                    return response.json().then(errorData => {
                                        throw new Error(`Error: ${errorData.message}`);
                                    });
                                }
                                return response.json();
                            })
                            .then(data => {
                                if (data.success) {
                                    panSuccess.textContent = 'Personal  Pan Card verified successfully';
                                    panError.textContent = ''; // Clear any previous error messages

                                } else {
                                    panSuccess.textContent = ''; // Clear any previous success messages
                                    panError.textContent = 'Personal Pan Card not verified';

                                }
                            })
                            .catch(error => {
                                panSuccess.textContent = ''; // Clear any previous success messages
                                panError.textContent = 'Invalid personal pan card number';
                            });
                        }

                        // Attach the event listener to the input field
                        const personalPanInput = document.getElementById('personalPan');
                        personalPanInput.addEventListener('input', function () {
                            if (this.value.length === 10) {
                                validatePanCardAndShowMessage(this.value);
                            } else {
                                panSuccess.textContent = '';
                                panError.textContent = 'Invalid personal pan card number';

                            }
                        });

       // Function to validate business PAN card and show message

// Function to validate business PAN card and show message
function validateBusinessPanCardAndShowMessage(data) {
    fetchAccessToken()
        .then(() => {
            let verifybusinessPANCard = 'https://api-qa.cygnetfintech.com/apihub/Fintech/panverifylite';
            const requestBody = JSON.stringify({ id_number: data });

            // Perform PAN card validation API calling
            return fetch(verifybusinessPANCard, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': 'Bearer ' + accessToken,
                    'clientid': clientId,
                },
                body: requestBody
            });
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Failed to validate Business  PAN card');
            }
            return response.json();
        })
        .then(data => {
                if (data.success) {
                    panSuccess1.textContent = 'Business PAN card verified successfully';
                    panError1.textContent = ''; // Clear any previous error messages
                } else {
                    panSuccess1.textContent = ''; // Clear any previous success messages
                    panError1.textContent = 'Business PAN card not verified';

                }

        })
        .catch(error => {
                panSuccess1.textContent = ''; // Clear any previous success messages
                panError1.textContent = 'Error validating PAN card';
        });
}

// Attach event listener to the input field
const businessPanInput = document.getElementById('businessPan');
businessPanInput.addEventListener('input', function () {
    if (this.value.length === 10) {
        // If the input length is 10, trigger the validation function
        validateBusinessPanCardAndShowMessage(this.value);
    } else {
            panSuccess1.textContent = '';
            panError1.textContent = 'Invalid business pan card number';
    }
});



            // Function to validate IFSC only
             function validateIFSCAndShowMessage(ifscCode) {
                 const verifyIFSCCardUrl = 'https://ifsc.razorpay.com/' + ifscCode;

                 fetch(verifyIFSCCardUrl)
                     .then(response => {
                         if (!response.ok) {
                             throw new Error(`Error: ${response.status}`);
                         }
                         return response.json();
                     })
                     .then(data => {
                         console.log("ifsc", data);

                         if (data) {
                            console.log(data);
                             ifscSuccess1.textContent = 'IFSC code verified successfully';
                             ifscError1.textContent = ''; // Clear any previous success message

                             const bankName = data.BANK;
                             document.getElementById('bankName').value = bankName;

                             const bankCityName = data.CITY;
                             document.getElementById('bankCityName').value = bankCityName;

                             const bankAddress = data.ADDRESS;
                             document.getElementById('bankAddress').value = bankAddress;

                             const bankStateName = data.STATE;
                             document.getElementById('bankStateName').value = bankStateName;

                             const addressPart = bankAddress.split(', ');
                             const lastPart = addressPart[addressPart.length - 1];

                             const postalCodes = lastPart.replace(/\D/g, ''); // Remove non-digit characters
                             document.getElementById('bankPostalCode').value = postalCodes;
                         } else {
                             ifscError1.textContent = 'IFSC code not verified';
                             ifscSuccess1.textContent = ''; // Clear any previous success message
                         }
                     })
                     .catch(error => {

                         ifscSuccess1.textContent = ''; // Clear any previous success messages
                         ifscError1.textContent = 'Invalid IFSC Code';
                         console.error('There was a problem with the validation:', error);
                     });
             }

             // Event listener for IFSC input (Scenario 1)
             const bankIFSCCodeInput  = document.getElementById('ifscRoutingBankCode');

             bankIFSCCodeInput .addEventListener('input', function () {
                 const ifscCode = bankIFSCCodeInput.value;
                 if (ifscCode.length === 11) {
                     validateIFSCAndShowMessage(ifscCode);
                 } else {
                     ifscError1.textContent = 'IFSC code not verified';
                     ifscSuccess1.textContent = '';
                 }
             });


             // Function to validate both IFSC code and account number and show bank details
               function validateIFSCAndAccountShowMessage(ifscCode, accountNumber) {


               console.log(accessToken)
                   fetchAccessToken()
                       .then(() => {
                           let verifyIFSCCard = 'https://api-qa.cygnetfintech.com/apihub/Fintech/bankaccverify';
                           const requestBody = JSON.stringify({ ifsc: ifscCode, id_number: accountNumber });
                           return fetch(verifyIFSCCard, {
                               method: 'POST',
                               headers: {
                                   'Content-Type': 'application/json',
                                   'Authorization': 'Bearer ' + accessToken,
                                   'clientid': clientId,
                               },
                               body: requestBody
                           });
                       })
                       .then(response => response.json())
                       .then(data => {
                           if (data) {
                             console.log("account number", data);
                               accSuccess1.textContent = 'Account number verified successfully';
                               accError1.textContent = ''; // Clear any previous success message

                               const bankAccountName = data.result.full_name;
                               document.getElementById('bankAccountName').value = bankAccountName;

                           } else {
                               accError1.textContent = 'Account number not verified';
                               accSuccess1.textContent = ''; // Clear any previous success message
                           }
                       })
                       .catch(error => {
                           accSuccess1.textContent = ''; // Clear any previous success messages
                           accError1.textContent = 'Invalid Account Number';
                           console.error('There was a problem with the validation:', error);
                       });

               }
               const bankAccountNoButton = document.getElementById('bankAccountNo');
               bankAccountNoButton.addEventListener('click', function () {
                   const ifscCode = document.getElementById('ifscRoutingBankCode').value;
                   const accountNumber = document.getElementById('bankAccountNo').value;

                   if(accountNumber.length >= 8 && accountNumber.length <= 16){
                   validateIFSCAndAccountShowMessage(ifscCode, accountNumber);
                   }else{
                   accError1.textContent = 'Account number not verified';
                   accSuccess1.textContent = '';
                   }
               });



            // CIN validation
              function validateCINAndShowMessage(data) {
                  fetchAccessToken()
                  .then(() => {
                        let verifycinnumber = 'https://api-qa.cygnetfintech.com/apihub/Fintech/cinverify';
                         const requestBody = JSON.stringify({ id_number: data });
                        return fetch(verifycinnumber, {
                          method: 'POST',
                          headers: {
                              'Content-Type': 'application/json',
                              'Authorization': 'Bearer ' + accessToken,
                              'clientid': clientId,
                          },
                          body: requestBody
                      });
                  })
                  .then(response => {
                      if (!response.ok) {
                          return response.json().then(errorData => {
                               throw new Error(`Error: ${errorData.message}`);
                          });
                      }
                      return response.json();
                  })
                  .then(data => {

                  console.log('data', data);
                   if (data.success) {
                   cinSuccess1.textContent = 'CIN Number  verified';
                   cinError1.textContent = '';
                           cinSuccess1.textContent = 'CIN Number successfully verified';
                           cinError1.textContent = '';
                           const businessName = data.result.company_name;
                           document.getElementById('legalBusinessName').value = businessName;
                           const businessAddress = data.result.details.company_info.registered_address;
                           document.getElementById('businessAddress').value = businessAddress;
                          // const businessPostalCode = data.result.data.address;
                          // document.getElementById('businessPostalCode').value = businessPostalCode;
                         //  const addressParts = businessAddress.split(',').map(part => part.trim());
                        //  const postalCode = addressParts[addressParts.length - 1].match(/\d+/);
                         //  const extractedState = addressParts[addressParts.length - 1];
                         // document.getElementById('businessStartDate').value = extractedState;
                         //  const city = addressParts.slice(0, -4).join(', ');
                          // document.getElementById('businessCity').value = city;
                          // document.getElementById('businessPostalCode').value = postalCode ? postalCode[0] : '';
                      } else {
                          cinSuccess1.textContent = 'CIN Number not verified';
                          cinError1.textContent = ''; // Clear any previous error messages
                      }
                  })
                  .catch(error => {
                     cinSuccess1.textContent = ''; // Clear any previous success messages
                     cinError1.textContent = 'Invalid CIN Number';
                     console.error('There was a problem with the  CIN number validation:', error);
                  });
              }

              const businessCINInput = document.getElementById('cinNumber');
              businessCINInput.addEventListener('input', function () {
                console.log('this.value', this.value);
                  if (this.value.length === 21) {
                      validateCINAndShowMessage(this.value);
                  } else {
                      cinSuccess1.textContent = '';
                      cinError1.textContent = 'Invalid CIN Number';
                  }
              });


           // NEXT BUTTON script

           function validateAndNext(personalInfoForm) {
                // Sample validation logic
                var personalDocId = document.getElementById("personalDocId").value;
                var personalIdNumber = document.getElementById("personalIdNumber").value;
                var verifyBtnBox = document.getElementsByClassName("verifyBtnBox").value;
                var firstName = document.getElementById("firstName").value;
                var lastName = document.getElementById("lastName").value;
                var dob = document.getElementById("dob").value;
                var address = document.getElementById("address").value;
                var personalCity = document.getElementById("personalCity").value;
                var personalStateId = document.getElementById("personalStateId").value;
                var postalCode = document.getElementById("postalCode").value;
                var personalCountry = document.getElementById("personalCountry").value;
                var personalPan = document.getElementById("personalPan").value;
                var mobileNumber = document.getElementById("mobileNumber").value;
                var email = document.getElementById("email").value;



                // Check if the required fields are not empty
                var validationPassed = personalDocId !== "" && personalIdNumber !== "" && verifyBtnBox !== "" && firstName !== ""
                && lastName !== "" && dob !== "" && address !== "" && personalCity !== "" && personalStateId !== ""
                && postalCode !== "" && personalCountry !== "" && personalPan !== "" && mobileNumber !== "" && email !== "";

                console.log("Hello", validationPassed);
                if (validationPassed) {
                    // Scroll to the second form
                    document
                        .getElementById("businessForm")
                        .scrollIntoView({ behavior: "smooth" });

                    // Change the background color of the first form
                    var personalInfoElement = document.getElementById("personalInfoForm");
                    console.log(personalInfoElement)
                    personalInfoElement.style.backgroundColor = "#000";

                    // Change the style of the first timeline navigation item
                    document.querySelector(
                        ".timelinenavigation ul li:first-child"
                    ).style.backgroundColor = "#f00";
                }
           }


            // Add event listener to the button

            document.getElementById('nextButton').addEventListener('click', function() {
                validateAndNext('businessForm');
            });

             document.getElementById('editButton').addEventListener('click', function() {
                 enableEdit('personalInfoForm');
             });

            // **************** Function to validate Aadhar number with OTP start ****************

                        function generateOTP(aadharNumber) {

                             console.log(aadharNumber)
                            // Fetch the personal ID number
                          //  const personalIdNumberElement = document.getElementById("personalIdNumber");
                          //  const personalIdNumber = personalIdNumberElement.value;

                            // Get the selected personal document value
                            const personalDocIdElement = document.getElementById("personalDocId");
                            console.log("aadharNumber", aadharNumber)
                            const selectedDocValue = personalDocIdElement.value;
                                console.log("selectedDocValue",selectedDocValue)
                            // Check the selected document type
                            if (selectedDocValue === '1') {
                                fetchAccessToken()
                                    .then(() => {
                                        const apiEndpointGenerateOTP = 'https://api-qa.cygnetfintech.com/apihub/Fintech/generateaadhaarOtp';
                                        const requestBody = JSON.stringify({ id_number: aadharNumber });


                                        return fetch(apiEndpointGenerateOTP, {
                                            method: 'POST',
                                            headers: {
                                                'Content-Type': 'application/json',
                                                'Authorization': 'Bearer ' + accessToken,
                                                'clientid': clientId,
                                            },
                                            body: requestBody,
                                        });
                                    })
                                    .then(response => {
                                        if (!response.ok) {
                                            throw new Error('Network response was not ok');
                                        }
                                        return response.json();
                                    })
                                    .then(data => {
                                        alert('OTP sent successfully');
                                        client_Id = data.result.data.client_id;
                                        console.log("hello1");
                                       // showAadharCardDetails(data);

                                        // Auto-populate the state field
                                        //const aadharCardState = data.result.data.address.state;

                                        // Auto-populate the state field
                                        autoPopulateStateField(data.result.address.state);

                                        //const personalStateDropdown1 = document.getElementById('personalStateId');

                                        //if (personalStateDropdown1 && aadharCardState) {
                                          //  personalStateDropdown1.value = aadharCardState;
                                        //} else {
                                          //  console.error('Dropdown or Aadhar card state not found');
                                        //}

                                    })
                                    .catch(error => {
                                        console.error('There was a problem with the fetch operation:', error);
                                    });
                            } else if (selectedDocValue === '2') {
                                // Code for the second option (if any)
                            }
                        }

                        // **************** Function to validate Aadhar number with OTP end ****************


                        // ************* Function to validate Adhaar number without OTP start *************

                            // Function to hide the adhaarSuccess message
                            function hideAdhaarSuccess() {
                                adhaarSuccess.textContent = ''; // Clear any previous success messages
                            }

                            // Event listener for changes in the DOM
                            document.addEventListener('DOMNodeRemoved', function (event) {
                                const removedElement = event.target;

                                // Check if the removed element is an input field with the class 'form-control'
                                if (removedElement.classList && removedElement.classList.contains('form-control')) {
                                    hideAdhaarSuccess();
                                }
                            });

                            function validateAdhaarAndShowMessage(adhaarNumber) {
                                // Fetch the personal ID number
                                const personalAdhaarIdElement = document.getElementById("personalIdNumber");
                                const personalAdhaarId = personalAdhaarIdElement.value;

                                // Get the selected personal document value
                                const personalAdhaarDocIdElement = document.getElementById("personalDocId");
                                const selectedAdhaarDocValue = personalAdhaarDocIdElement.value;

                                fetchAccessToken()
                                .then(() => {
                                    let verifyAdhaarNumber = 'https://api-qa.cygnetfintech.com/apihub/Fintech/validateaadhaar';
                                    const requestBody = JSON.stringify({ id_number: adhaarNumber });

                                    // Perform PAN card validation API calling
                                    return fetch(verifyAdhaarNumber, {
                                        method: 'POST',
                                        headers: {
                                            'Content-Type': 'application/json',
                                            'Authorization': 'Bearer ' + accessToken,
                                            'clientid': clientId,
                                        },
                                        body: requestBody
                                    });
                                })
                                .then(response => {
                                    if (!response.ok) {
                                        // If the response is not okay, handle the error
                                        return response.json().then(errorData => {
                                            throw new Error(`Error: ${errorData.message}`);
                                        });
                                    }
                                    return response.json();
                                    console.log("verifyAdhaarNumber");
                                })
                                .then(data => {
                                    // Check the response from the server and update the UI accordingly
                                    if (data.success) {
                                        adhaarSuccess.textContent = 'Adhaar Number verified successfully';
                                        adhaarError.textContent = ''; // Clear any previous error messages

                                        autoPopulateStateField(data.result.data.state);

                                        //const stateName = data.result.data.state;

                                     } else {
                                        adhaarSuccess.textContent = ''; // Clear any previous success messages
                                        adhaarError.textContent = 'Adhaar Number not verified';

                                   }
                                })
                                .catch(error => {

                                    // Handle errors, and log to console for debugging
                                    adhaarSuccess.textContent = ''; // Clear any previous success messages
                                    adhaarError.textContent = 'Invalid Adhaar number';
                                    console.error('There was a problem with the Adhaar number validation:', error);
                                });
                            }

                        // ************* Function to validate Adhaar number without OTP end *************

              // Submit OTP (Add this part to your code)
                        document.getElementById('submit-otp').addEventListener('click', function () {
                         //$('#submit-otp').on('click', function () {
                            const otp_data = document.getElementById('otp').value;

                            console.log(otp_data)
                            console.log(accessToken)
                            console.log(clientId)
                            console.log("hello3");
                            //console.log(client_Id)
                            fetchAccessToken() // Fetch the access token
                                .then(() => {
                                    const apiEndpointSubmitOTP = 'https://api-qa.cygnetfintech.com/apihub/Fintech/submitaadhaarOTP';
                                    const requestBody = JSON.stringify({
                                        client_id: client_Id,
                                        otp: otp_data,
                                    });
                                    console.log(requestBody)
                                    // Submit Aadhaar OTP API calling
                                    return fetch(apiEndpointSubmitOTP, {
                                        method: 'POST',
                                        headers: {
                                            'Content-Type': 'application/json',
                                            'Authorization': 'Bearer ' + accessToken,
                                            'clientid': clientId,
                                        },
                                        body: requestBody,
                                    });
                                })
                                .then(response => {
                                     console.log(response);
                                    if (!response.ok) {
                                    otpError.textContent = 'Please Enter Correct OTP';
                                     document.getElementById('lastName').value ='';
                                     document.getElementById('address').value ='';


                                        throw new Error('Network response was not ok');
                                    }
                                    otpError.textContent = ' ';
                                    return response.json();
                                })
                                .then(data => {

                                    // Handle the response data as needed
                                     console.log(data.result.data.full_name);
                                     console.log(data.result.data.dob);
                                     console.log(data.result.data.gender);
                                     console.log(data.result.data.address.country);
                                     console.log(data.result.data.address.state);
                                     console.log(data.result.data.state);

                                    //document.getElementById('full_name').style.display = 'block';
                                    //document.getElementById('full_name').innerHTML = data.result.data.full_name;
                                    document.getElementById('otp').style.display = 'none';
                                    document.getElementById('successFullyBox').style.display = 'block';
                                    document.getElementById('address').value=data.result.data.address.loc+", "+data.result.data.address.vtc+", "+data.result.data.address.subdist+", "+data.result.data.address.street+", "+data.result.data.address.house+", "+data.result.data.address.landmark;

                                    <!--full name split-->
                                    // Assuming data.result.data.full_name is a string like "John Middle Doe"
                                    const fullName = data.result.data.full_name;

                                    // Split the full name into an array of parts
                                    const nameParts = fullName.split(' ');

                                    // Get the first name and last name
                                    const firstName = nameParts[0];
                                    const lastName = nameParts[nameParts.length - 1];

                                    // Now, set the values in your HTML elements
                                    document.getElementById('firstName').value = firstName;
                                    document.getElementById('lastName').value = lastName;

                                    //document.getElementById('dob').value=data.result.data.dob;
                                    // Assuming data.result.data.dob is a string like "1997-12-31T00:00:00.000Z"
                                    <!-- dob convert into yy/mm/dd --->
                                    const dobString = data.result.data.dob;

                                    // Convert the string to a Date object
                                    const dobDate = new Date(dobString);

                                    // Format the date as YYYY/MM/DD
                                    const formattedDob = dobDate.toISOString().split('T')[0];

                                    // Now, use formattedDob in your code

                                    document.getElementById('dob').value = formattedDob;

                                    const ZipCode = data.result.data.zip;
                                    document.getElementById('postalCode').value = ZipCode;

                                    const City = data.result.data.address.dist;
                                    document.getElementById('personalCity').value = City;

                                     // Auto-populate the state field
                                     autoPopulateStateField(data.result.data.address.state);
                                    <!--end of dob convert-->


                                   // alert(data.result.data.full_name);
                                   console.log("@@@@@@@@@@@@@@@@@@@@@@@"+data.result.data.full_name);


                                })
                                .catch(error => {
                                 console.error('There was a problem with the fetch operation:', error);
                                });
                        });
                     </script>


   //Business Pan and personal pan should be capslock below code
                     <script>
                     $('#businessTypeId').on('change', function() {

                                     if(this.value === "1")

                                     { $("#businessPan").val($("#personalPan").val()) }
                                     else

                                     { $("#businessPan").val("") }
                                     });

                             //  code for capslock on for following field

                                      document.getElementById("personalPan").addEventListener("input", function () {
                                      this.value = this.value.toUpperCase();
                                      });

                                      document.getElementById("businessPan").addEventListener("input", function () {
                                        this.value = this.value.toUpperCase();
                                       });
    //Edit and Next Button code
                            // PersonalInfoForm page functions
                           // PersonalInfoForm page functions
                           function validateAndNextPersonalInfo(personalInfoForm) {
                               // Your validation logic goes here
                               // For demonstration, let's just log a message
                               console.log("Personal Info Form Validation and Next");
                               // Disable the input fields after clicking "Next"
                               disableFormFields(personalInfoForm);
                           }

                           function disableFormFields(personalInfoForm) {
                               // Disable all input fields in the specified form
                               var form = document.getElementById(personalInfoForm);
                               var inputFields = form.getElementsByTagName('input');
                               for (var i = 0; i < inputFields.length; i++) {
                                   inputFields[i].readOnly = true;
                               }
                           }

                           function enableEdit(personalInfoForm) {
                               var form = document.getElementById(personalInfoForm);
                               if (form) {
                                   var inputFields = form.getElementsByTagName('input');
                                   for (var i = 0; i < inputFields.length; i++) {
                                       inputFields[i].readOnly = false;
                                   }
                               } else {
                                   console.error("Form not found with ID: " + personalInfoForm);
                               }
                           }

                           // BusinessForm page functions
                           function validateAndNextBusiness(businessForm) {
                               // Your validation logic goes here
                               // For demonstration, let's just log a message
                               console.log("Business Form Validation and Next");
                               // Disable the input fields after clicking "Next"
                               disableFormFields(businessForm);
                           }

                           function enableEditBusiness(businessForm) {
                               var form = document.getElementById(businessForm);
                               if (form) {
                                   var inputFields = form.getElementsByTagName('input');
                                   for (var i = 0; i < inputFields.length; i++) {
                                       inputFields[i].readOnly = false;
                                   }
                               } else {
                                   console.error("Form not found with ID: " + businessForm);
                               }
                           }


                 // Bank page functions
                           function validateAndNextBusiness(bankInformation) {
                               // Your validation logic goes here
                               // For demonstration, let's just log a message
                               console.log("Business Form Validation and Next");
                               // Disable the input fields after clicking "Next"
                               disableFormFields(bankInformation);
                           }

                           function enableEditBusiness(bankInformation) {
                               var form = document.getElementById(bankInformation);
                               if (form) {
                                   var inputFields = form.getElementsByTagName('input');
                                   for (var i = 0; i < inputFields.length; i++) {
                                       inputFields[i].readOnly = false;
                                   }
                               } else {
                                   console.error("Form not found with ID: " + bankInformation);
                               }
                           }


                              </script>



<style>
        .popup {
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            display: none;
        }

        .popup-content {
            background-color: white;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888888;
            width: 30%;
            font-weight: bolder;
        }

        .popup-content button {
            display: block;
            margin: 0 auto;
        }

        .show {
            display: block;
        }

        h1 {
            color: green;
        }
        .verifyBtnBox {
            display: flex;
            align-items: center;
            height: 100%;
        }

        .verifyBtnBox .btn {
            width: 100%;
        }

        #adhaarSuccess, #adhaarError, #panSuccess, #panError, #gstSuccess1, #gstError1, #panSuccess1, #panError1
        #accSuccess1, #accError1, {
            position: absolute;
        }
    </style>
<!--css link for multiselect dropdown (Payment Mode)-->
<!--<link type="text/css" rel="stylesheet" href="https://pixinvent.com/bootstrap-admin-template/robust/app-assets/vendors/css/forms/selects/select2.min.css">-->
<!-- Form wizard with step validation section start -->
<!-- Modal -->
<div class="modal fade" id="generate-otp" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Enter OTP</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="text" class="form-control required text-uppercase" id="otp" placeholder="Enter OTP" name="OTP" />

                 <span id="otpError" style="color: red;"></span>

                <div id="successFullyBox" class="successFullyBox" style="display: none;">
                    <h2 style="color: green;">Success</h2>
               </div>
            </div>
            <div class="modal-footer p-4">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button id="submit-otp" type="button" class="btn btn-primary">Submit OTP</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>
