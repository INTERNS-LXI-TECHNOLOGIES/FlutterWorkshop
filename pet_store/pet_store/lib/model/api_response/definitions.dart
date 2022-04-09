import 'package:json_annotation/json_annotation.dart';

import 'amc_history_dto.dart';
import 'amcdto.dart';
import 'answer_dto.dart';
import 'attempt_history_dto.dart';
import 'audio_dto.dart';
import 'branch_dto.dart';
import 'brand_dto.dart';
import 'call_center_executive_dto.dart';
import 'category_dto.dart';
import 'city_dto.dart';
import 'customer_address_dto.dart';
import 'customer_dto.dart';
import 'district_dto.dart';
import 'extended_warranty_dto.dart';
import 'extended_warranty_history_dto.dart';
import 'feedback_dto.dart';
import 'job_dto.dart';
import 'job_history_dto.dart';
import 'job_type_dto.dart';
import 'jwt_token.dart';
import 'key_and_password_vm.dart';
import 'login_vm.dart';
import 'loyalty_program_dto.dart';
import 'managed_user_vm.dart';
import 'message_dto.dart';
import 'password_change_dto.dart';
import 'pin_code_dto.dart';
import 'product_dto.dart';
import 'promotional_message_dto.dart';
import 'purchased_product_dto.dart';
import 'question_dto.dart';
import 'safety_tip_dto.dart';
import 'service_executive_dto.dart';
import 'service_executive_rating_dto.dart';
import 'service_type_dto.dart';
import 'state_dto.dart';
import 'ticket_dto.dart';
import 'ticket_history_dto.dart';
import 'user.dart';
import 'user_dto.dart';
import 'warranty_dto.dart';
import 'warranty_history_dto.dart';

part 'definitions.g.dart';

@JsonSerializable()
class Definitions {
  @JsonKey(name: 'AMCDTO')
  Amcdto? amcdto;
  @JsonKey(name: 'AMCHistoryDTO')
  AmcHistoryDto? amcHistoryDto;
  @JsonKey(name: 'AnswerDTO')
  AnswerDto? answerDto;
  @JsonKey(name: 'AttemptHistoryDTO')
  AttemptHistoryDto? attemptHistoryDto;
  @JsonKey(name: 'AudioDTO')
  AudioDto? audioDto;
  @JsonKey(name: 'BranchDTO')
  BranchDto? branchDto;
  @JsonKey(name: 'BrandDTO')
  BrandDto? brandDto;
  @JsonKey(name: 'CallCenterExecutiveDTO')
  CallCenterExecutiveDto? callCenterExecutiveDto;
  @JsonKey(name: 'CategoryDTO')
  CategoryDto? categoryDto;
  @JsonKey(name: 'CityDTO')
  CityDto? cityDto;
  @JsonKey(name: 'CustomerAddressDTO')
  CustomerAddressDto? customerAddressDto;
  @JsonKey(name: 'CustomerDTO')
  CustomerDto? customerDto;
  @JsonKey(name: 'DistrictDTO')
  DistrictDto? districtDto;
  @JsonKey(name: 'ExtendedWarrantyDTO')
  ExtendedWarrantyDto? extendedWarrantyDto;
  @JsonKey(name: 'ExtendedWarrantyHistoryDTO')
  ExtendedWarrantyHistoryDto? extendedWarrantyHistoryDto;
  @JsonKey(name: 'FeedbackDTO')
  FeedbackDto? feedbackDto;
  @JsonKey(name: 'JWTToken')
  JwtToken? jwtToken;
  @JsonKey(name: 'JobDTO')
  JobDto? jobDto;
  @JsonKey(name: 'JobHistoryDTO')
  JobHistoryDto? jobHistoryDto;
  @JsonKey(name: 'JobTypeDTO')
  JobTypeDto? jobTypeDto;
  @JsonKey(name: 'KeyAndPasswordVM')
  KeyAndPasswordVm? keyAndPasswordVm;
  @JsonKey(name: 'LoginVM')
  LoginVm? loginVm;
  @JsonKey(name: 'LoyaltyProgramDTO')
  LoyaltyProgramDto? loyaltyProgramDto;
  @JsonKey(name: 'ManagedUserVM')
  ManagedUserVm? managedUserVm;
  @JsonKey(name: 'MessageDTO')
  MessageDto? messageDto;
  @JsonKey(name: 'PasswordChangeDTO')
  PasswordChangeDto? passwordChangeDto;
  @JsonKey(name: 'PinCodeDTO')
  PinCodeDto? pinCodeDto;
  @JsonKey(name: 'ProductDTO')
  ProductDto? productDto;
  @JsonKey(name: 'PromotionalMessageDTO')
  PromotionalMessageDto? promotionalMessageDto;
  @JsonKey(name: 'PurchasedProductDTO')
  PurchasedProductDto? purchasedProductDto;
  @JsonKey(name: 'QuestionDTO')
  QuestionDto? questionDto;
  @JsonKey(name: 'SafetyTipDTO')
  SafetyTipDto? safetyTipDto;
  @JsonKey(name: 'ServiceExecutiveDTO')
  ServiceExecutiveDto? serviceExecutiveDto;
  @JsonKey(name: 'ServiceExecutiveRatingDTO')
  ServiceExecutiveRatingDto? serviceExecutiveRatingDto;
  @JsonKey(name: 'ServiceTypeDTO')
  ServiceTypeDto? serviceTypeDto;
  @JsonKey(name: 'StateDTO')
  StateDto? stateDto;
  @JsonKey(name: 'TicketDTO')
  TicketDto? ticketDto;
  @JsonKey(name: 'TicketHistoryDTO')
  TicketHistoryDto? ticketHistoryDto;
  @JsonKey(name: 'User')
  User? user;
  @JsonKey(name: 'UserDTO')
  UserDto? userDto;
  @JsonKey(name: 'WarrantyDTO')
  WarrantyDto? warrantyDto;
  @JsonKey(name: 'WarrantyHistoryDTO')
  WarrantyHistoryDto? warrantyHistoryDto;

  Definitions({
    this.amcdto,
    this.amcHistoryDto,
    this.answerDto,
    this.attemptHistoryDto,
    this.audioDto,
    this.branchDto,
    this.brandDto,
    this.callCenterExecutiveDto,
    this.categoryDto,
    this.cityDto,
    this.customerAddressDto,
    this.customerDto,
    this.districtDto,
    this.extendedWarrantyDto,
    this.extendedWarrantyHistoryDto,
    this.feedbackDto,
    this.jwtToken,
    this.jobDto,
    this.jobHistoryDto,
    this.jobTypeDto,
    this.keyAndPasswordVm,
    this.loginVm,
    this.loyaltyProgramDto,
    this.managedUserVm,
    this.messageDto,
    this.passwordChangeDto,
    this.pinCodeDto,
    this.productDto,
    this.promotionalMessageDto,
    this.purchasedProductDto,
    this.questionDto,
    this.safetyTipDto,
    this.serviceExecutiveDto,
    this.serviceExecutiveRatingDto,
    this.serviceTypeDto,
    this.stateDto,
    this.ticketDto,
    this.ticketHistoryDto,
    this.user,
    this.userDto,
    this.warrantyDto,
    this.warrantyHistoryDto,
  });

  factory Definitions.fromJson(Map<String, dynamic> json) {
    return _$DefinitionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DefinitionsToJson(this);
}
