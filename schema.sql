CREATE TABLE IF NOT EXISTS `Order` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`Code` VARCHAR(255),
	`PartnerCode` VARCHAR(255),
	`Dplus` VARCHAR(255),
	`DplusInDc` VARCHAR(255),
	`DplusInDcDisplay` VARCHAR(255),
	`DplusPickup` VARCHAR(255),
	`DplusReturn` VARCHAR(255),
	`DplusReturnFromReturnDc` VARCHAR(255),
	`DplusInDcByHour` VARCHAR(255),
	`DplusReturnByHour` VARCHAR(255),
	`DplusByHour` VARCHAR(255),
	`DcCenterLeadTime` VARCHAR(255),
	`LoadingToDestDcLeadTime` VARCHAR(255),
	`PickupLeadTime` VARCHAR(255),
	`LoadingToDcCenterLeadTime` VARCHAR(255),
	`InboundDestDcLeadTime` VARCHAR(255),
	`SLALevel3Status` VARCHAR(255),
	`TikiSuccessStartus` VARCHAR(255),
	`TikiAttemptStartus` VARCHAR(255)
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS `OrderAddress` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`SourceName` TEXT,
	`SourcePhoneNumber1` VARCHAR(255),
	`SourcePhoneNumber2` VARCHAR(255),
	`SourceCityId` VARCHAR(255),
	`SourceCityName` VARCHAR(255),
	`SourceDistrictId` VARCHAR(255),
	`SourceDistrictName` VARCHAR(255),
	`SourceWardId` VARCHAR(255),
	`SourceWardName` VARCHAR(255),
	`SourceAddress` LONGTEXT,
	`SourceWarehouseId` VARCHAR(255),
	`SourceWarehouseCode` VARCHAR(255),
	`DestName` VARCHAR(255),
	`DestEmail` VARCHAR(255),
	`DestPhoneNumber1` VARCHAR(255),
	`DestPhoneNumber2` VARCHAR(255),
	`DestCityId` VARCHAR(255),
	`DestCityName` VARCHAR(255),
	`DestDistrictId` VARCHAR(255),
	`DestDistrictName` VARCHAR(255),
	`DestWardId` VARCHAR(255),
	`DestWardName` VARCHAR(255),
	`DestAddress` LONGTEXT,
	`ReturnName` VARCHAR(255),
	`ReturnPhoneNumber1` VARCHAR(255),
	`ReturnPhoneNumber2` VARCHAR(255),
	`ReturnCityId` VARCHAR(255),
	`ReturnCityName` VARCHAR(255),
	`ReturnDistrictId` VARCHAR(255),
	`ReturnDistrictName` VARCHAR(255),
	`ReturnWardId` VARCHAR(255),
	`ReturnWardName` VARCHAR(255),
	`ReturnAddress` LONGTEXT
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS `OrderDeployment` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`SortingCode` VARCHAR(255),
	`ReturnSortingCode` VARCHAR(255),
	`IsSorted` VARCHAR(255),
	`PickupType` VARCHAR(255),
	`PickupTypeName` VARCHAR(255),
	`HardToDelivery` VARCHAR(255),
	`OrderDirection` VARCHAR(255),
	`OrderDirectionName` VARCHAR(255),
	`OrderStatus` VARCHAR(255),
	`OrderStatusName` VARCHAR(255),
	`OrderPhysicalStatus` VARCHAR(255),
	`OrderPhysicalStatusName` VARCHAR(255),
	`StatusContent` LONGTEXT,
	`CancelContent` LONGTEXT,
	`LostContent` LONGTEXT,
	`InQueue` VARCHAR(255),
	`ScheduleTime` VARCHAR(255),
	`DplusInDc` VARCHAR(255),
	`DcId` VARCHAR(255),
	`DcName` VARCHAR(255),
	`DcRegion` VARCHAR(255),
	`DcRegionName` VARCHAR(255),
	`SourceDcId` VARCHAR(255),
	`SourceDcName` VARCHAR(255),
	`DestDcId` VARCHAR(255),
	`DestDcName` VARCHAR(255),
	`IsPickupByApp` VARCHAR(255),
	`IsDeliveryByApp` VARCHAR(255),
	`IsReturnByApp` VARCHAR(255),
	`DeliveryRouteName` VARCHAR(255),
	`ReturnRouteName` VARCHAR(255),
	`LoadingDcId` VARCHAR(255),
	`LoadingDcName` VARCHAR(255),
	`DplusComplete` VARCHAR(255),
	`DplusFirstAttemptTime` VARCHAR(255),
	`CompletedById` VARCHAR(255),
	`CompletedByDcId` VARCHAR(255),
	`CompletedByDcName` VARCHAR(255),
	`CompletedByUserName` VARCHAR(255),
	`NumberOfDeploy` VARCHAR(255),
	`NumberOfDelivery` VARCHAR(255),
	`NumberOfPickup` VARCHAR(255),
	`NumberOfDeployReturn` VARCHAR(255),
	`NumberOfReturn` VARCHAR(255),
	`LastStep` VARCHAR(255),
	`PersonInChargeUsername` VARCHAR(255),
	`PersonInChargeId` VARCHAR(255),
	`PickedupByUserName` VARCHAR(255),
	`PickedupById` VARCHAR(255),
	`PickupByDcId` VARCHAR(255),
	`PickupByDcName` VARCHAR(255),
	`ReturnedByUserName` VARCHAR(255),
	`ReturnedById` VARCHAR(255),
	`ReturnByDcId` VARCHAR(255),
	`ReturnByDcName` VARCHAR(255),
	`LastDmUserName` VARCHAR(255),
	`LastDmId` VARCHAR(255),
	`ExpectedDestDcId` VARCHAR(255),
	`ExpectedDestDcName` VARCHAR(255),
	`ExpectedSourceDcId` VARCHAR(255),
	`ExpectedSourceDcName` VARCHAR(255),
	`ExpectedReturnDcId` VARCHAR(255),
	`ExpectedReturnDcName` VARCHAR(255)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `OrderDeploymentInfo` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`ReturnReceiveDate` VARCHAR(255),
	`LastPickupRejectDate` VARCHAR(255),
	`ReceiveDate` VARCHAR(255),
	`StartDate` VARCHAR(255),
	`DeliveryDate` VARCHAR(255),
	`LastFailDate` VARCHAR(255),
	`LastRejectDate` VARCHAR(255),
	`CompleteDate` VARCHAR(255),
	`ReturnDate` VARCHAR(255),
	`EndDate` VARCHAR(255),
	`LeadTimeNumber` VARCHAR(255),
	`UpdateToReturnDate` VARCHAR(255),
	`FirstInboundCenterDate` VARCHAR(255),
	`FirstOutboundCenterDate` VARCHAR(255),
	`LastOutboundCenterDate` VARCHAR(255),
	`LastLoadingTime` VARCHAR(255),
	`LastPickupDate` VARCHAR(255),
	`LastPickupFailDate` VARCHAR(255),
	`PickedDate` VARCHAR(255),
	`LastDeliveryFailDate` VARCHAR(255),
	`LastDeliveryDate` VARCHAR(255),
	`LastReturnFailDate` VARCHAR(255),
	`LastReturnDate` VARCHAR(255),
	`LeadtimePickup` VARCHAR(255),
	`LeadtimeDelivery` VARCHAR(255),
	`LeadtimeReturn` VARCHAR(255),
	`Leadtime` VARCHAR(255),
	`LeadtimePickupToFirstInbound` VARCHAR(255),
	`LeadtimeFirstInboundToFirstOutbound` VARCHAR(255),
	`LeadtimeFirstOutboundToReceive` VARCHAR(255),
	`LeadtimeCreateToCom` VARCHAR(255),
	`LeadtimeCreateToReturn` VARCHAR(255),
	`LeadtimeUpdateToReturnToReturn` VARCHAR(255)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `OrderFinance` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`DcFactor` VARCHAR(255),
	`DistrictFactor` VARCHAR(255),
	`WeightFactor` VARCHAR(255),
	`CollectAmount` VARCHAR(255),
	`PayDate` VARCHAR(255),
	`LoadingToCorpTime` VARCHAR(255),
	`CorpReceiveTime` VARCHAR(255),
	`ReceiveFromDmTime` VARCHAR(255),
	`FirstAttemptTime` VARCHAR(255),
	`CashierId` VARCHAR(255),
	`CashierUserName` VARCHAR(255),
	`DestCashierId` VARCHAR(255),
	`DestCashierUserName` VARCHAR(255),
	`CodStatus` VARCHAR(255),
	`CollectBillId` VARCHAR(255),
	`PaymentCodStatus` VARCHAR(255),
	`PaymentCodStatusName` VARCHAR(255),
	`PaymentFeeStatus` VARCHAR(255),
	`PaymentFeeStatusName` VARCHAR(255),
	`PaymentReturnFeeStatus` VARCHAR(255),
	`PaymentReturnFeeStatusName` VARCHAR(255),
	`PaymentRegularStatus` VARCHAR(255),
	`PaymentRegularStatusName` VARCHAR(255),
	`IsPaid` VARCHAR(255),
	`IsPaidFee` VARCHAR(255),
	`PaymentBillId` VARCHAR(255),
	`PaymentBillCode` VARCHAR(255),
	`PaymentFeeBillId` VARCHAR(255),
	`PaymentFeeBillCode` VARCHAR(255),
	`PaymentRegularBillId` VARCHAR(255),
	`PaymentRegularBillCode` VARCHAR(255),
	`FreightFee` VARCHAR(255),
	`CodFee` VARCHAR(255),
	`CodFeePercentByFreightFee` VARCHAR(255),
	`RejectFee` VARCHAR(255),
	`ReturnFee` VARCHAR(255),
	`SubFee` VARCHAR(255),
	`ReturnFeePercentByFreightFee` VARCHAR(255),
	`TotalFeeWithoutVat` VARCHAR(255),
	`FeeVat` VARCHAR(255),
	`TotalFee` VARCHAR(255),
	`IsCustomerPayFee` VARCHAR(255),
	`FeeType` VARCHAR(255),
	`FeeTypeName` VARCHAR(255)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `OrderGeneral` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`OrderType` VARCHAR(255),
	`OrderTypeName` VARCHAR(255),
	`Note` LONGTEXT,
	`FixedNote` VARCHAR(255),
	`ReturnNote` VARCHAR(255),
	`CustomerId` VARCHAR(255),
	`CustomerName` VARCHAR(255),
	`CustomerUserName` VARCHAR(255),
	`CustomerCode` VARCHAR(255),
	`PartnerWarehouseCode` VARCHAR(255),
	`WarehouseId` VARCHAR(255),
	`IsAssignedTo` VARCHAR(255),
	`IsOutOfServe` VARCHAR(255),
	`ServiceType` VARCHAR(255),
	`ServiceId` VARCHAR(255),
	`ServiceName` VARCHAR(255),
	`OrderTag` VARCHAR(255),
	`IsFlashSale` VARCHAR(255),
	`IsCheck` VARCHAR(255),
	`IsLazmallG` VARCHAR(255),
	`IsFirstMile` VARCHAR(255),
	`PartnerCreatedTime` VARCHAR(255),
	`InvoiceNumber` VARCHAR(255),
	`InvoicePublishDate` VARCHAR(255),
	`CreatedBy` VARCHAR(255),
	`CreatedByUserName` VARCHAR(255),
	`UpdatedBy` VARCHAR(255),
	`UpdatedByUserName` VARCHAR(255),
	`CreatedTime` VARCHAR(255),
	`UpdatedTime` VARCHAR(255),
	`IsDeleted` VARCHAR(255),
	`Route` VARCHAR(255),
	`RouteName` VARCHAR(255),
	`SlaIndex` VARCHAR(255),
	`DataSource` VARCHAR(255)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `OrderProduct` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`ProductName` LONGTEXT,
	`BonusProductName1` VARCHAR(255),
	`BonusProductName2` VARCHAR(255),
	`NumberOfProducts` VARCHAR(255),
	`ProductPrice` VARCHAR(255),
	`InvoiceNumber` VARCHAR(255),
	`InvoicePublishDate` VARCHAR(255),
	`Weight` VARCHAR(255),
	`Length` VARCHAR(255),
	`Width` VARCHAR(255),
	`Height` VARCHAR(255),
	`WeightPoint` VARCHAR(255),
	`WeightBySize` VARCHAR(255),
	`BonusWeight1` VARCHAR(255),
	`BonusWeight2` VARCHAR(255),
	`FinalWeight` VARCHAR(255),
	`CubicWeight` VARCHAR(255)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `OrderTrackInfo` (
	`Id` VARCHAR(255) PRIMARY KEY,
	`FirstPickupFailTime` VARCHAR(255),
	`FirstPickupFailReason` VARCHAR(255),
	`SecondPickupFailTime` VARCHAR(255),
	`SecondPickupFailReason` VARCHAR(255),
	`ThirdPickupFailTime` VARCHAR(255),
	`ThirdPickupFailReason` VARCHAR(255),
	`FirstDeliveryFailTime` VARCHAR(255),
	`FirstDeliveryFailReason` VARCHAR(255),
	`SecondDeliveryFailTime` VARCHAR(255),
	`SecondDeliveryFailReason` VARCHAR(255),
	`ThirdDeliveryFailTime` VARCHAR(255),
	`ThirdDeliveryFailReason` VARCHAR(255),
	`FirstReturnFailTime` VARCHAR(255),
	`FirstReturnFailReason` VARCHAR(255),
	`SecondReturnFailTime` VARCHAR(255),
	`SecondReturnFailReason` VARCHAR(255),
	`ThirdReturnFailTime` VARCHAR(255),
	`ThirdReturnFailReason` VARCHAR(255),
	`OrderStatusLevel1` VARCHAR(255),
	`OrderStatusLevel1Name` VARCHAR(255),
	`OrderStatusLevel2` VARCHAR(255),
	`OrderStatusLevel2Name` VARCHAR(255),
	`OrderStatusLevel3` VARCHAR(255),
	`OrderStatusLevel3Name` VARCHAR(255),
	`OrderStatusLevel1Time` VARCHAR(255),
	`OrderStatusLevel2Time` VARCHAR(255),
	`OrderStatusLevel3Time` VARCHAR(255),
	`PersonInChargeId` VARCHAR(255),
	`PersonInChargeUserName` VARCHAR(255),
	`DcId` VARCHAR(255),
	`DcName` TEXT,
	`OrderType` VARCHAR(255),
	`OrderTypeName` VARCHAR(255),
	`IsDeleted` VARCHAR(255),
	`SLALevel3` VARCHAR(255),
	`SlaTime` VARCHAR(255),
	`SLAReturnLevel4` VARCHAR(255),
	`SlaReturnTime` VARCHAR(255)
) ENGINE=INNODB;