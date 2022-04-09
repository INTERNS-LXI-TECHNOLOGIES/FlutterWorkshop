import 'package:json_annotation/json_annotation.dart';

import 'api_account.dart';
import 'api_account_change_password.dart';
import 'api_account_reset_password_finish.dart';
import 'api_account_reset_password_init.dart';
import 'api_activate.dart';
import 'api_amc_histories.dart';
import 'api_amc_histories_id.dart';
import 'api_amcs.dart';
import 'api_amcs_id.dart';
import 'api_answers.dart';
import 'api_answers_id.dart';
import 'api_attempt_histories.dart';
import 'api_attempt_histories_id.dart';
import 'api_audio.dart';
import 'api_audio_id.dart';
import 'api_authenticate.dart';
import 'api_branches.dart';
import 'api_branches_id.dart';
import 'api_brands.dart';
import 'api_brands_id.dart';
import 'api_call_center_executives.dart';
import 'api_call_center_executives_id.dart';
import 'api_categories.dart';
import 'api_categories_id.dart';
import 'api_cities.dart';
import 'api_cities_id.dart';
import 'api_customer_addresses.dart';
import 'api_customer_addresses_id.dart';
import 'api_customers.dart';
import 'api_customers_id.dart';
import 'api_districts.dart';
import 'api_districts_id.dart';
import 'api_extended_warranties.dart';
import 'api_extended_warranties_id.dart';
import 'api_extended_warranty_histories.dart';
import 'api_extended_warranty_histories_id.dart';
import 'api_feedbacks.dart';
import 'api_feedbacks_id.dart';
import 'api_job_histories.dart';
import 'api_job_histories_id.dart';
import 'api_job_types.dart';
import 'api_job_types_id.dart';
import 'api_jobs.dart';
import 'api_jobs_id.dart';
import 'api_loyalty_programs.dart';
import 'api_loyalty_programs_id.dart';
import 'api_messages.dart';
import 'api_messages_id.dart';
import 'api_pin_codes.dart';
import 'api_pin_codes_id.dart';
import 'api_products.dart';
import 'api_products_id.dart';
import 'api_promotional_messages.dart';
import 'api_promotional_messages_id.dart';
import 'api_purchased_products.dart';
import 'api_purchased_products_id.dart';
import 'api_questions.dart';
import 'api_questions_id.dart';
import 'api_register.dart';
import 'api_safety_tips.dart';
import 'api_safety_tips_id.dart';
import 'api_service_executive_ratings.dart';
import 'api_service_executive_ratings_id.dart';
import 'api_service_executives.dart';
import 'api_service_executives_id.dart';
import 'api_service_types.dart';
import 'api_service_types_id.dart';
import 'api_states.dart';
import 'api_states_id.dart';
import 'api_ticket_histories.dart';
import 'api_ticket_histories_id.dart';
import 'api_tickets.dart';
import 'api_tickets_id.dart';
import 'api_users.dart';
import 'api_users_authorities.dart';
import 'api_users_login.dart';
import 'api_warranties.dart';
import 'api_warranties_id.dart';
import 'api_warranty_histories.dart';
import 'api_warranty_histories_id.dart';

part 'paths.g.dart';

@JsonSerializable()
class Paths {
  @JsonKey(name: '/api/account')
  ApiAccount? apiAccount;
  @JsonKey(name: '/api/account/change-password')
  ApiAccountChangePassword? apiAccountChangePassword;
  @JsonKey(name: '/api/account/reset-password/finish')
  ApiAccountResetPasswordFinish? apiAccountResetPasswordFinish;
  @JsonKey(name: '/api/account/reset-password/init')
  ApiAccountResetPasswordInit? apiAccountResetPasswordInit;
  @JsonKey(name: '/api/activate')
  ApiActivate? apiActivate;
  @JsonKey(name: '/api/amc-histories')
  ApiAmcHistories? apiAmcHistories;
  @JsonKey(name: '/api/amc-histories/{id}')
  ApiAmcHistoriesId? apiAmcHistoriesId;
  @JsonKey(name: '/api/amcs')
  ApiAmcs? apiAmcs;
  @JsonKey(name: '/api/amcs/{id}')
  ApiAmcsId? apiAmcsId;
  @JsonKey(name: '/api/answers')
  ApiAnswers? apiAnswers;
  @JsonKey(name: '/api/answers/{id}')
  ApiAnswersId? apiAnswersId;
  @JsonKey(name: '/api/attempt-histories')
  ApiAttemptHistories? apiAttemptHistories;
  @JsonKey(name: '/api/attempt-histories/{id}')
  ApiAttemptHistoriesId? apiAttemptHistoriesId;
  @JsonKey(name: '/api/audio')
  ApiAudio? apiAudio;
  @JsonKey(name: '/api/audio/{id}')
  ApiAudioId? apiAudioId;
  @JsonKey(name: '/api/authenticate')
  ApiAuthenticate? apiAuthenticate;
  @JsonKey(name: '/api/branches')
  ApiBranches? apiBranches;
  @JsonKey(name: '/api/branches/{id}')
  ApiBranchesId? apiBranchesId;
  @JsonKey(name: '/api/brands')
  ApiBrands? apiBrands;
  @JsonKey(name: '/api/brands/{id}')
  ApiBrandsId? apiBrandsId;
  @JsonKey(name: '/api/call-center-executives')
  ApiCallCenterExecutives? apiCallCenterExecutives;
  @JsonKey(name: '/api/call-center-executives/{id}')
  ApiCallCenterExecutivesId? apiCallCenterExecutivesId;
  @JsonKey(name: '/api/categories')
  ApiCategories? apiCategories;
  @JsonKey(name: '/api/categories/{id}')
  ApiCategoriesId? apiCategoriesId;
  @JsonKey(name: '/api/cities')
  ApiCities? apiCities;
  @JsonKey(name: '/api/cities/{id}')
  ApiCitiesId? apiCitiesId;
  @JsonKey(name: '/api/customer-addresses')
  ApiCustomerAddresses? apiCustomerAddresses;
  @JsonKey(name: '/api/customer-addresses/{id}')
  ApiCustomerAddressesId? apiCustomerAddressesId;
  @JsonKey(name: '/api/customers')
  ApiCustomers? apiCustomers;
  @JsonKey(name: '/api/customers/{id}')
  ApiCustomersId? apiCustomersId;
  @JsonKey(name: '/api/districts')
  ApiDistricts? apiDistricts;
  @JsonKey(name: '/api/districts/{id}')
  ApiDistrictsId? apiDistrictsId;
  @JsonKey(name: '/api/extended-warranties')
  ApiExtendedWarranties? apiExtendedWarranties;
  @JsonKey(name: '/api/extended-warranties/{id}')
  ApiExtendedWarrantiesId? apiExtendedWarrantiesId;
  @JsonKey(name: '/api/extended-warranty-histories')
  ApiExtendedWarrantyHistories? apiExtendedWarrantyHistories;
  @JsonKey(name: '/api/extended-warranty-histories/{id}')
  ApiExtendedWarrantyHistoriesId? apiExtendedWarrantyHistoriesId;
  @JsonKey(name: '/api/feedbacks')
  ApiFeedbacks? apiFeedbacks;
  @JsonKey(name: '/api/feedbacks/{id}')
  ApiFeedbacksId? apiFeedbacksId;
  @JsonKey(name: '/api/job-histories')
  ApiJobHistories? apiJobHistories;
  @JsonKey(name: '/api/job-histories/{id}')
  ApiJobHistoriesId? apiJobHistoriesId;
  @JsonKey(name: '/api/job-types')
  ApiJobTypes? apiJobTypes;
  @JsonKey(name: '/api/job-types/{id}')
  ApiJobTypesId? apiJobTypesId;
  @JsonKey(name: '/api/jobs')
  ApiJobs? apiJobs;
  @JsonKey(name: '/api/jobs/{id}')
  ApiJobsId? apiJobsId;
  @JsonKey(name: '/api/loyalty-programs')
  ApiLoyaltyPrograms? apiLoyaltyPrograms;
  @JsonKey(name: '/api/loyalty-programs/{id}')
  ApiLoyaltyProgramsId? apiLoyaltyProgramsId;
  @JsonKey(name: '/api/messages')
  ApiMessages? apiMessages;
  @JsonKey(name: '/api/messages/{id}')
  ApiMessagesId? apiMessagesId;
  @JsonKey(name: '/api/pin-codes')
  ApiPinCodes? apiPinCodes;
  @JsonKey(name: '/api/pin-codes/{id}')
  ApiPinCodesId? apiPinCodesId;
  @JsonKey(name: '/api/products')
  ApiProducts? apiProducts;
  @JsonKey(name: '/api/products/{id}')
  ApiProductsId? apiProductsId;
  @JsonKey(name: '/api/promotional-messages')
  ApiPromotionalMessages? apiPromotionalMessages;
  @JsonKey(name: '/api/promotional-messages/{id}')
  ApiPromotionalMessagesId? apiPromotionalMessagesId;
  @JsonKey(name: '/api/purchased-products')
  ApiPurchasedProducts? apiPurchasedProducts;
  @JsonKey(name: '/api/purchased-products/{id}')
  ApiPurchasedProductsId? apiPurchasedProductsId;
  @JsonKey(name: '/api/questions')
  ApiQuestions? apiQuestions;
  @JsonKey(name: '/api/questions/{id}')
  ApiQuestionsId? apiQuestionsId;
  @JsonKey(name: '/api/register')
  ApiRegister? apiRegister;
  @JsonKey(name: '/api/safety-tips')
  ApiSafetyTips? apiSafetyTips;
  @JsonKey(name: '/api/safety-tips/{id}')
  ApiSafetyTipsId? apiSafetyTipsId;
  @JsonKey(name: '/api/service-executive-ratings')
  ApiServiceExecutiveRatings? apiServiceExecutiveRatings;
  @JsonKey(name: '/api/service-executive-ratings/{id}')
  ApiServiceExecutiveRatingsId? apiServiceExecutiveRatingsId;
  @JsonKey(name: '/api/service-executives')
  ApiServiceExecutives? apiServiceExecutives;
  @JsonKey(name: '/api/service-executives/{id}')
  ApiServiceExecutivesId? apiServiceExecutivesId;
  @JsonKey(name: '/api/service-types')
  ApiServiceTypes? apiServiceTypes;
  @JsonKey(name: '/api/service-types/{id}')
  ApiServiceTypesId? apiServiceTypesId;
  @JsonKey(name: '/api/states')
  ApiStates? apiStates;
  @JsonKey(name: '/api/states/{id}')
  ApiStatesId? apiStatesId;
  @JsonKey(name: '/api/ticket-histories')
  ApiTicketHistories? apiTicketHistories;
  @JsonKey(name: '/api/ticket-histories/{id}')
  ApiTicketHistoriesId? apiTicketHistoriesId;
  @JsonKey(name: '/api/tickets')
  ApiTickets? apiTickets;
  @JsonKey(name: '/api/tickets/{id}')
  ApiTicketsId? apiTicketsId;
  @JsonKey(name: '/api/users')
  ApiUsers? apiUsers;
  @JsonKey(name: '/api/users/authorities')
  ApiUsersAuthorities? apiUsersAuthorities;
  @JsonKey(name: '/api/users/{login}')
  ApiUsersLogin? apiUsersLogin;
  @JsonKey(name: '/api/warranties')
  ApiWarranties? apiWarranties;
  @JsonKey(name: '/api/warranties/{id}')
  ApiWarrantiesId? apiWarrantiesId;
  @JsonKey(name: '/api/warranty-histories')
  ApiWarrantyHistories? apiWarrantyHistories;
  @JsonKey(name: '/api/warranty-histories/{id}')
  ApiWarrantyHistoriesId? apiWarrantyHistoriesId;

  Paths({
    this.apiAccount,
    this.apiAccountChangePassword,
    this.apiAccountResetPasswordFinish,
    this.apiAccountResetPasswordInit,
    this.apiActivate,
    this.apiAmcHistories,
    this.apiAmcHistoriesId,
    this.apiAmcs,
    this.apiAmcsId,
    this.apiAnswers,
    this.apiAnswersId,
    this.apiAttemptHistories,
    this.apiAttemptHistoriesId,
    this.apiAudio,
    this.apiAudioId,
    this.apiAuthenticate,
    this.apiBranches,
    this.apiBranchesId,
    this.apiBrands,
    this.apiBrandsId,
    this.apiCallCenterExecutives,
    this.apiCallCenterExecutivesId,
    this.apiCategories,
    this.apiCategoriesId,
    this.apiCities,
    this.apiCitiesId,
    this.apiCustomerAddresses,
    this.apiCustomerAddressesId,
    this.apiCustomers,
    this.apiCustomersId,
    this.apiDistricts,
    this.apiDistrictsId,
    this.apiExtendedWarranties,
    this.apiExtendedWarrantiesId,
    this.apiExtendedWarrantyHistories,
    this.apiExtendedWarrantyHistoriesId,
    this.apiFeedbacks,
    this.apiFeedbacksId,
    this.apiJobHistories,
    this.apiJobHistoriesId,
    this.apiJobTypes,
    this.apiJobTypesId,
    this.apiJobs,
    this.apiJobsId,
    this.apiLoyaltyPrograms,
    this.apiLoyaltyProgramsId,
    this.apiMessages,
    this.apiMessagesId,
    this.apiPinCodes,
    this.apiPinCodesId,
    this.apiProducts,
    this.apiProductsId,
    this.apiPromotionalMessages,
    this.apiPromotionalMessagesId,
    this.apiPurchasedProducts,
    this.apiPurchasedProductsId,
    this.apiQuestions,
    this.apiQuestionsId,
    this.apiRegister,
    this.apiSafetyTips,
    this.apiSafetyTipsId,
    this.apiServiceExecutiveRatings,
    this.apiServiceExecutiveRatingsId,
    this.apiServiceExecutives,
    this.apiServiceExecutivesId,
    this.apiServiceTypes,
    this.apiServiceTypesId,
    this.apiStates,
    this.apiStatesId,
    this.apiTicketHistories,
    this.apiTicketHistoriesId,
    this.apiTickets,
    this.apiTicketsId,
    this.apiUsers,
    this.apiUsersAuthorities,
    this.apiUsersLogin,
    this.apiWarranties,
    this.apiWarrantiesId,
    this.apiWarrantyHistories,
    this.apiWarrantyHistoriesId,
  });

  factory Paths.fromJson(Map<String, dynamic> json) => _$PathsFromJson(json);

  Map<String, dynamic> toJson() => _$PathsToJson(this);
}
