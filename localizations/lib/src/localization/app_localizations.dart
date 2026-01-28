import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @commonContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// No description provided for @continueBooking.
  ///
  /// In en, this message translates to:
  /// **'Continue Booking'**
  String get continueBooking;

  /// No description provided for @commonAppName.
  ///
  /// In en, this message translates to:
  /// **'Aquarabia Qiddiya City'**
  String get commonAppName;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonExit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get commonExit;

  /// No description provided for @commonClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonClose;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// No description provided for @commonEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get commonEdit;

  /// No description provided for @commonSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get commonSearch;

  /// No description provided for @goAquaArabiaByTaxiInfo1.
  ///
  /// In en, this message translates to:
  /// **'Reaching Aquarabia Qiddiya City by car or taxi is simple and convenient. Whether you’re driving your own vehicle or booking through a ride service, just follow the steps below:\n\n - Step 1: Type “Aquarabia Qiddiya City” into your preferred maps app and follow the road signs leading to Qiddiya City.\n\n - Step 2: Upon arrival, our ushers will welcome you and guide you to the designated parking area.\n\n - Step 3: Once parked, hop on our special QShuttle, which will take you to the theme park in just a few minutes.'**
  String get goAquaArabiaByTaxiInfo1;

  /// No description provided for @goAquaArabiaByTaxiInfo2.
  ///
  /// In en, this message translates to:
  /// **'Pro Tip: Please have your ticket ready to present upon arrival.\nParking spaces are available on a first-come, first-served basis.'**
  String get goAquaArabiaByTaxiInfo2;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// No description provided for @commonInfantsNote.
  ///
  /// In en, this message translates to:
  /// **'Please note that infants age 0-3 don\'t require a ticket.'**
  String get commonInfantsNote;

  /// No description provided for @commonSeniorCitizenNote.
  ///
  /// In en, this message translates to:
  /// **'Nanny and senior citizen should present an ID at the park.'**
  String get commonSeniorCitizenNote;

  /// No description provided for @commonGuestsWithDisabilitiesNote.
  ///
  /// In en, this message translates to:
  /// **'Guests with disabilities are welcome. Please present valid identification at the ticket counter to receive your complimentary ticket.'**
  String get commonGuestsWithDisabilitiesNote;

  /// No description provided for @commonPickerItemsLabel.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get commonPickerItemsLabel;

  /// No description provided for @commonPersonalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get commonPersonalInformation;

  /// No description provided for @commonLoadingCTAFirstThreshold.
  ///
  /// In en, this message translates to:
  /// **'Hang on please...'**
  String get commonLoadingCTAFirstThreshold;

  /// No description provided for @commonLoadingCTASecondThreshold.
  ///
  /// In en, this message translates to:
  /// **'Still loading...'**
  String get commonLoadingCTASecondThreshold;

  /// No description provided for @settingAppVersion.
  ///
  /// In en, this message translates to:
  /// **'App version '**
  String get settingAppVersion;

  /// No description provided for @commonLoadingCTAThirdThreshold.
  ///
  /// In en, this message translates to:
  /// **'Almost there...'**
  String get commonLoadingCTAThirdThreshold;

  /// No description provided for @commonLearnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get commonLearnMore;

  /// No description provided for @b2cOptionalTopLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone number*'**
  String get b2cOptionalTopLabel;

  /// No description provided for @searchError.
  ///
  /// In en, this message translates to:
  /// **'We\'re unable to find what you\'re looking for. Please try again.'**
  String get searchError;

  /// No description provided for @oops.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get oops;

  /// No description provided for @editingProfileHeightSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your height has been saved successfully.'**
  String get editingProfileHeightSuccessMessage;

  /// No description provided for @editingProfileHeightErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Your height was not saved. Please try again.'**
  String get editingProfileHeightErrorMessage;

  /// No description provided for @settingsGenderChanged.
  ///
  /// In en, this message translates to:
  /// **'Your gender has been saved successfully.'**
  String get settingsGenderChanged;

  /// No description provided for @genderSaveError.
  ///
  /// In en, this message translates to:
  /// **'Your gender was not saved. Please try again.'**
  String get genderSaveError;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @heightUnit.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get heightUnit;

  /// No description provided for @heightSelectorScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your height'**
  String get heightSelectorScreenTitle;

  /// No description provided for @editingProfileEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit email address'**
  String get editingProfileEmailTitle;

  /// No description provided for @editingProfileDateOfBirthTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit date of birth'**
  String get editingProfileDateOfBirthTitle;

  /// No description provided for @editingProfileFirstNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit first name'**
  String get editingProfileFirstNameTitle;

  /// No description provided for @editingProfileLastNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit last name'**
  String get editingProfileLastNameTitle;

  /// No description provided for @editingProfileAccessibilityOptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your \n<brandCyan>accessibility</brandCyan> options'**
  String get editingProfileAccessibilityOptionTitle;

  /// No description provided for @digitalCloseEditingDescription.
  ///
  /// In en, this message translates to:
  /// **'If you leave now, changes to your {fieldName} will not be saved.'**
  String digitalCloseEditingDescription(Object fieldName);

  /// No description provided for @editingProfileSaveClose.
  ///
  /// In en, this message translates to:
  /// **'SAVE AND CLOSE'**
  String get editingProfileSaveClose;

  /// No description provided for @editingProfileDiscard.
  ///
  /// In en, this message translates to:
  /// **'DISCARD'**
  String get editingProfileDiscard;

  /// No description provided for @editingProfileEmailHasBeenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your email address has been updated.'**
  String get editingProfileEmailHasBeenUpdated;

  /// No description provided for @editingProfileFieldHasBeenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your {field} has been updated.'**
  String editingProfileFieldHasBeenUpdated(Object field);

  /// No description provided for @editingProfileFieldWasNotUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your {field} was not updated. Please try again.'**
  String editingProfileFieldWasNotUpdated(Object field);

  /// No description provided for @visualImpairment.
  ///
  /// In en, this message translates to:
  /// **'Visual impairment'**
  String get visualImpairment;

  /// No description provided for @displayVisualImpairment.
  ///
  /// In en, this message translates to:
  /// **'Visual'**
  String get displayVisualImpairment;

  /// No description provided for @hearingImpairment.
  ///
  /// In en, this message translates to:
  /// **'Hearing impairment'**
  String get hearingImpairment;

  /// No description provided for @displayHearingImpairment.
  ///
  /// In en, this message translates to:
  /// **'Hearing'**
  String get displayHearingImpairment;

  /// No description provided for @mentalImpairment.
  ///
  /// In en, this message translates to:
  /// **'Mental impairment'**
  String get mentalImpairment;

  /// No description provided for @displayMentalImpairment.
  ///
  /// In en, this message translates to:
  /// **'Mental'**
  String get displayMentalImpairment;

  /// No description provided for @wheelchairUser.
  ///
  /// In en, this message translates to:
  /// **'Wheelchair user'**
  String get wheelchairUser;

  /// No description provided for @displayWheelchairUser.
  ///
  /// In en, this message translates to:
  /// **'Wheelchair'**
  String get displayWheelchairUser;

  /// No description provided for @duplicateTripError.
  ///
  /// In en, this message translates to:
  /// **'Your visit could not be duplicated. Please try again'**
  String get duplicateTripError;

  /// No description provided for @editingProfileNationalityTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your nationality'**
  String get editingProfileNationalityTitle;

  /// No description provided for @editingProfileNationalitySuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your nationality has been updated.'**
  String get editingProfileNationalitySuccessMessage;

  /// No description provided for @editingProfileNationalityErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to update your nationality. Please try again.'**
  String get editingProfileNationalityErrorMessage;

  /// No description provided for @profileMyProfile.
  ///
  /// In en, this message translates to:
  /// **'My profile'**
  String get profileMyProfile;

  /// No description provided for @profileWhyNeedQrCode.
  ///
  /// In en, this message translates to:
  /// **'Why do I need a QR code?'**
  String get profileWhyNeedQrCode;

  /// No description provided for @profileLogOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get profileLogOut;

  /// No description provided for @profileId.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get profileId;

  /// No description provided for @profileMyTickets.
  ///
  /// In en, this message translates to:
  /// **'My Tickets'**
  String get profileMyTickets;

  /// No description provided for @profileSignUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock your next\nadventure!'**
  String get profileSignUpTitle;

  /// No description provided for @profileSignUpDescription.
  ///
  /// In en, this message translates to:
  /// **'Create an account for personalized recommendations and exclusive offers, or sign in to enjoy your benefits!'**
  String get profileSignUpDescription;

  /// No description provided for @profileNoTicketsTitle.
  ///
  /// In en, this message translates to:
  /// **'No tickets yet'**
  String get profileNoTicketsTitle;

  /// No description provided for @profileNoTicketsDescription.
  ///
  /// In en, this message translates to:
  /// **'Your tickets will appear here once you complete your first booking.'**
  String get profileNoTicketsDescription;

  /// No description provided for @profileBuyNow.
  ///
  /// In en, this message translates to:
  /// **'Buy now'**
  String get profileBuyNow;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Configuration'**
  String get settingsTitle;

  /// No description provided for @personalInformationsettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Configuration'**
  String get personalInformationsettingsTitle;

  /// No description provided for @settingsAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get settingsAccount;

  /// No description provided for @settingsQiddiyaApps.
  ///
  /// In en, this message translates to:
  /// **'My Qiddiya Apps'**
  String get settingsQiddiyaApps;

  /// No description provided for @settingsPersonalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal information'**
  String get settingsPersonalInfo;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred language'**
  String get settingsLanguageTitle;

  /// No description provided for @settingsLanguageChanged.
  ///
  /// In en, this message translates to:
  /// **'Your language preference has been successfully updated.'**
  String get settingsLanguageChanged;

  /// No description provided for @settingsTermsConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get settingsTermsConditions;

  /// No description provided for @settingsPaymentMethods.
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get settingsPaymentMethods;

  /// No description provided for @settingsBiometric.
  ///
  /// In en, this message translates to:
  /// **'Biometric'**
  String get settingsBiometric;

  /// No description provided for @settingsAppPermissions.
  ///
  /// In en, this message translates to:
  /// **'App permissions'**
  String get settingsAppPermissions;

  /// No description provided for @settingsAccesibility.
  ///
  /// In en, this message translates to:
  /// **'Accesibility'**
  String get settingsAccesibility;

  /// No description provided for @settingsDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'DELETE ACCOUNT'**
  String get settingsDeleteAccount;

  /// No description provided for @settingsAppPermissionAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'alerts'**
  String get settingsAppPermissionAlertTitle;

  /// No description provided for @settingsAppPermissionAlertDescription.
  ///
  /// In en, this message translates to:
  /// **'Get real-time water theme park updates, purchase receipts, and weather information to make the most of your experience!'**
  String get settingsAppPermissionAlertDescription;

  /// No description provided for @settingsAppPermissionPushNotification.
  ///
  /// In en, this message translates to:
  /// **'Push notifications'**
  String get settingsAppPermissionPushNotification;

  /// No description provided for @settingsAppPermissionInAppNotification.
  ///
  /// In en, this message translates to:
  /// **'In-app notifications'**
  String get settingsAppPermissionInAppNotification;

  /// No description provided for @settingsAppPermissionEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get settingsAppPermissionEmail;

  /// No description provided for @settingsTermsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get settingsTermsAndConditions;

  /// No description provided for @settingsAppPermissionSMS.
  ///
  /// In en, this message translates to:
  /// **'SMS'**
  String get settingsAppPermissionSMS;

  /// No description provided for @settingsAppPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'permissions'**
  String get settingsAppPermissionTitle;

  /// No description provided for @settingsAppPermissionDescription.
  ///
  /// In en, this message translates to:
  /// **'Allow updates on activities, transaction receipts, time-sensitive notifications, and weather information.'**
  String get settingsAppPermissionDescription;

  /// No description provided for @settingsAppPermissionGeolocation.
  ///
  /// In en, this message translates to:
  /// **'Geolocation'**
  String get settingsAppPermissionGeolocation;

  /// No description provided for @settingsAppPermissionPromotionsTitle.
  ///
  /// In en, this message translates to:
  /// **'promotions'**
  String get settingsAppPermissionPromotionsTitle;

  /// No description provided for @settingsAppPermissionPromotionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Be the first to know about new attractions, promotions and offers.'**
  String get settingsAppPermissionPromotionsDescription;

  /// No description provided for @settingsAppPermissionInfo2.
  ///
  /// In en, this message translates to:
  /// **'When you disable notifications, you will continue to receive safety and weather alerts. These are essential for water theme park operations and visitors\' safety.'**
  String get settingsAppPermissionInfo2;

  /// No description provided for @configurationSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get configurationSettingsTitle;

  /// No description provided for @personalInformationTitle.
  ///
  /// In en, this message translates to:
  /// **'Personal information'**
  String get personalInformationTitle;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddress;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBirth;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @accessibilityOptions.
  ///
  /// In en, this message translates to:
  /// **'Accessibility options'**
  String get accessibilityOptions;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageArab.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get languageArab;

  /// No description provided for @customizeProfile.
  ///
  /// In en, this message translates to:
  /// **'Customise Profile'**
  String get customizeProfile;

  /// No description provided for @settingsSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get settingsSearch;

  /// No description provided for @editingProfilePhoneHasBeenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your phone number  has been updated.'**
  String get editingProfilePhoneHasBeenUpdated;

  /// No description provided for @homeCard1Description.
  ///
  /// In en, this message translates to:
  /// **'record-breaking rides'**
  String get homeCard1Description;

  /// No description provided for @homeCard1Title.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get homeCard1Title;

  /// No description provided for @exploreAdvancedFiltersHeightRequirementLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter rider height'**
  String get exploreAdvancedFiltersHeightRequirementLabel;

  /// No description provided for @exploreAdvancedFiltersHeightRequirementUnit.
  ///
  /// In en, this message translates to:
  /// **'CM'**
  String get exploreAdvancedFiltersHeightRequirementUnit;

  /// No description provided for @exploreAdvancedFiltersWeightRequirementLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter rider weight'**
  String get exploreAdvancedFiltersWeightRequirementLabel;

  /// No description provided for @exploreAdvancedFiltersWeightRequirementUnit.
  ///
  /// In en, this message translates to:
  /// **'KG'**
  String get exploreAdvancedFiltersWeightRequirementUnit;

  /// No description provided for @homeCard2Description.
  ///
  /// In en, this message translates to:
  /// **'your tickets to the park'**
  String get homeCard2Description;

  /// No description provided for @homeCard2Title.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get homeCard2Title;

  /// No description provided for @homeCard3Description.
  ///
  /// In en, this message translates to:
  /// **'your visit with ease'**
  String get homeCard3Description;

  /// No description provided for @homeCard3Title.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get homeCard3Title;

  /// No description provided for @onboardingSecondaryAction.
  ///
  /// In en, this message translates to:
  /// **'Log in or Sign up'**
  String get onboardingSecondaryAction;

  /// No description provided for @onboardingStory1Title.
  ///
  /// In en, this message translates to:
  /// **'<brandYellow>Skip</brandYellow> the lines!'**
  String get onboardingStory1Title;

  /// No description provided for @onboardingStory1Description.
  ///
  /// In en, this message translates to:
  /// **'Book your tickets in just a few taps and enjoy exclusive offers.'**
  String get onboardingStory1Description;

  /// No description provided for @onboardingStory2Title.
  ///
  /// In en, this message translates to:
  /// **'<brandCyan>Navigate</brandCyan> like a pro'**
  String get onboardingStory2Title;

  /// No description provided for @onboardingStory2Description.
  ///
  /// In en, this message translates to:
  /// **'Discover park attractions, plan your route, and never miss out on the fun.'**
  String get onboardingStory2Description;

  /// No description provided for @onboardingStory3Title.
  ///
  /// In en, this message translates to:
  /// **'Need any <brandSpecialsPurple>help</brandSpecialsPurple>?'**
  String get onboardingStory3Title;

  /// No description provided for @onboardingStory3Description.
  ///
  /// In en, this message translates to:
  /// **'Get access to our concierge for recommendations and real-time support.'**
  String get onboardingStory3Description;

  /// No description provided for @onboardingStory4Title.
  ///
  /// In en, this message translates to:
  /// **'Get ready to <brandBlue>dive in</brandBlue>'**
  String get onboardingStory4Title;

  /// No description provided for @onboardingStory4Description.
  ///
  /// In en, this message translates to:
  /// **'Unlock new experiences, make memories, and explore the park like never before.'**
  String get onboardingStory4Description;

  /// No description provided for @digitalCloseRegisterTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get digitalCloseRegisterTitle;

  /// No description provided for @startTheAdventure.
  ///
  /// In en, this message translates to:
  /// **'Start the adventure'**
  String get startTheAdventure;

  /// No description provided for @getReadyForAFullDayOfFun.
  ///
  /// In en, this message translates to:
  /// **'Get ready for a full day of fun'**
  String get getReadyForAFullDayOfFun;

  /// No description provided for @digitalCloseRegisterDescription.
  ///
  /// In en, this message translates to:
  /// **'If you leave now, your account will not be registered.'**
  String get digitalCloseRegisterDescription;

  /// No description provided for @digitalCloseRegisterPrimaryText.
  ///
  /// In en, this message translates to:
  /// **'no, continue'**
  String get digitalCloseRegisterPrimaryText;

  /// No description provided for @digitalCloseRegisterSecondaryText.
  ///
  /// In en, this message translates to:
  /// **'yes, cancel'**
  String get digitalCloseRegisterSecondaryText;

  /// No description provided for @countryCodeSelectionCTA.
  ///
  /// In en, this message translates to:
  /// **'Select country code'**
  String get countryCodeSelectionCTA;

  /// No description provided for @digitalPersonalDetailsMinCharError.
  ///
  /// In en, this message translates to:
  /// **'Min. {nrCharacters} characters'**
  String digitalPersonalDetailsMinCharError(Object nrCharacters);

  /// No description provided for @digitalPersonalDetailsMaxCharError.
  ///
  /// In en, this message translates to:
  /// **'Max. {nrCharacters} characters'**
  String digitalPersonalDetailsMaxCharError(Object nrCharacters);

  /// No description provided for @digitalPersonalDetailsEmailFormatError.
  ///
  /// In en, this message translates to:
  /// **'This does not look like a valid email'**
  String get digitalPersonalDetailsEmailFormatError;

  /// No description provided for @digitalPersonalDetailsPhoneAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'This email is already in use with a different phone number'**
  String get digitalPersonalDetailsPhoneAlreadyInUse;

  /// No description provided for @digitalPersonalLastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get digitalPersonalLastName;

  /// No description provided for @digitalPhoneCountryCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get digitalPhoneCountryCodeLabel;

  /// No description provided for @digitalSmsPageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Please <brandCyan>verify</brandCyan> your mobile number'**
  String get digitalSmsPageSubtitle;

  /// No description provided for @digitalSmsPageInfo.
  ///
  /// In en, this message translates to:
  /// **'We sent the code to'**
  String get digitalSmsPageInfo;

  /// No description provided for @digitalSmsPageVerifyCode.
  ///
  /// In en, this message translates to:
  /// **'Verify code'**
  String get digitalSmsPageVerifyCode;

  /// No description provided for @digitalSmsPageResendCode.
  ///
  /// In en, this message translates to:
  /// **'Send new code'**
  String get digitalSmsPageResendCode;

  /// No description provided for @digitalSmsPageResendCodeSuccess.
  ///
  /// In en, this message translates to:
  /// **'A new code was sent to your mobile number.'**
  String get digitalSmsPageResendCodeSuccess;

  /// No description provided for @digitalSmsPageErrorPhoneBadRequest.
  ///
  /// In en, this message translates to:
  /// **'Bad Request: Phone number, verification ID, or OTP code is missing or invalid.'**
  String get digitalSmsPageErrorPhoneBadRequest;

  /// No description provided for @digitalSmsPageErrorInvalidOTP.
  ///
  /// In en, this message translates to:
  /// **'OTP code and/or verification ID is invalid'**
  String get digitalSmsPageErrorInvalidOTP;

  /// No description provided for @digitalSmsPageErrorUserOrTenantNotFound.
  ///
  /// In en, this message translates to:
  /// **'User or tenant not found'**
  String get digitalSmsPageErrorUserOrTenantNotFound;

  /// No description provided for @digitalSmsPageErrorPhoneNumberNotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Phone number has not yet been confirmed'**
  String get digitalSmsPageErrorPhoneNumberNotConfirmed;

  /// No description provided for @digitalSmsPageErrorPhoneUnauthorized.
  ///
  /// In en, this message translates to:
  /// **'The code you entered is incorrect. Please try again.'**
  String get digitalSmsPageErrorPhoneUnauthorized;

  /// No description provided for @digitalSmsPageMaximumResendAttemptsReached.
  ///
  /// In en, this message translates to:
  /// **'Maximum resend attempts reached. Try again later.'**
  String get digitalSmsPageMaximumResendAttemptsReached;

  /// No description provided for @digitalSmsPageSessionExpired.
  ///
  /// In en, this message translates to:
  /// **'The code has expired. Request a new code to continue.'**
  String get digitalSmsPageSessionExpired;

  /// No description provided for @digitalSmsPageAuthenticationUnexpectedError.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error occurred'**
  String get digitalSmsPageAuthenticationUnexpectedError;

  /// No description provided for @digitalEmailPageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Please <brandCyan>verify</brandCyan> your email address'**
  String get digitalEmailPageSubtitle;

  /// No description provided for @digitalPhoneNumberTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your <brandCyan>mobile</brandCyan>\n<brandCyan>number</brandCyan> and dive in!'**
  String get digitalPhoneNumberTitle;

  /// No description provided for @digitalOtpPageResendEmailCodeSuccess.
  ///
  /// In en, this message translates to:
  /// **'A new code was sent to your email address.'**
  String get digitalOtpPageResendEmailCodeSuccess;

  /// No description provided for @digitalResendOtpCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code in '**
  String get digitalResendOtpCode;

  /// No description provided for @digitalRegistrationOrLoginTag.
  ///
  /// In en, this message translates to:
  /// **'LOGIN & SIGN UP'**
  String get digitalRegistrationOrLoginTag;

  /// No description provided for @digitalOtpPageHelperMessageEmailValidation.
  ///
  /// In en, this message translates to:
  /// **'Can\'t find the code? Check your spam or junk folder.'**
  String get digitalOtpPageHelperMessageEmailValidation;

  /// No description provided for @digitalOtpPageHelperMessageEmailEdit.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send a code to verify this email address.'**
  String get digitalOtpPageHelperMessageEmailEdit;

  /// No description provided for @resendCodeErrorCoolDown.
  ///
  /// In en, this message translates to:
  /// **'Your profile has been temporary locked for the next 10 min because you reached the maximum number of resend attempts.'**
  String get resendCodeErrorCoolDown;

  /// No description provided for @maximumVerificationAttemptsReached.
  ///
  /// In en, this message translates to:
  /// **'Your profile has been temporary locked for the next 60 min because you reached the maximum number of verification attempts.'**
  String get maximumVerificationAttemptsReached;

  /// No description provided for @maximumResendAttemptsReached.
  ///
  /// In en, this message translates to:
  /// **'Maximum resend attempts reached. Try again later.'**
  String get maximumResendAttemptsReached;

  /// No description provided for @authenticationPhoneNumberInvalid.
  ///
  /// In en, this message translates to:
  /// **'Phone number is missing or invalid'**
  String get authenticationPhoneNumberInvalid;

  /// No description provided for @authenticationOvertookByOtherDevice.
  ///
  /// In en, this message translates to:
  /// **'Your account was used on another device'**
  String get authenticationOvertookByOtherDevice;

  /// No description provided for @deletePageYesDelete.
  ///
  /// In en, this message translates to:
  /// **'YES, DELETE ACCOUNT'**
  String get deletePageYesDelete;

  /// No description provided for @deletePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get deletePageTitle;

  /// No description provided for @digitalTransactionCompleteUserDeleted.
  ///
  /// In en, this message translates to:
  /// **'Your profile has been deleted'**
  String get digitalTransactionCompleteUserDeleted;

  /// No description provided for @digitalTransactionCompleteUserDeletedInformation1.
  ///
  /// In en, this message translates to:
  /// **'If you change your mind, you can reactivate your account by logging in within seven days.'**
  String get digitalTransactionCompleteUserDeletedInformation1;

  /// No description provided for @digitalTransactionCompleteUserDeletedInformation2.
  ///
  /// In en, this message translates to:
  /// **'Your account will be permanently deleted after seven days. You can always create a new one using the same mobile number and email!'**
  String get digitalTransactionCompleteUserDeletedInformation2;

  /// No description provided for @deletePageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'If you delete your account, you will lose access to:\n  •  Purchased tickets, your entitlements, and favorites history.\n  •  Personalized recommendations and the visit planner.\n  •  Exclusive benefits and rewards.'**
  String get deletePageSubtitle;

  /// No description provided for @deletePageGoHome.
  ///
  /// In en, this message translates to:
  /// **'Explore the park'**
  String get deletePageGoHome;

  /// No description provided for @deleteSuccessPageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'If you change your mind, you can create a new account using the same phone number or email address.'**
  String get deleteSuccessPageSubtitle;

  /// No description provided for @deleteSuccessPageTitle.
  ///
  /// In en, this message translates to:
  /// **'We\'re sorry to see you go'**
  String get deleteSuccessPageTitle;

  /// No description provided for @deleteSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome back! We’re glad to see you again.'**
  String get deleteSuccessMessage;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @digitalRegistrationTitle.
  ///
  /// In en, this message translates to:
  /// **'<brandCyan>Sign up</brandCyan> <brandMediumBlue>for</brandMediumBlue> <brandSpecialsPurple>adventure</brandSpecialsPurple> <brandMediumBlue>at Aquarabia!</brandMediumBlue>'**
  String get digitalRegistrationTitle;

  /// No description provided for @digitalRegistrationTag.
  ///
  /// In en, this message translates to:
  /// **' 1/2'**
  String get digitalRegistrationTag;

  /// No description provided for @digitalRegistrationTag2.
  ///
  /// In en, this message translates to:
  /// **'2/2'**
  String get digitalRegistrationTag2;

  /// No description provided for @digitalRegistrationInformation1.
  ///
  /// In en, this message translates to:
  /// **'Create an account to unlock the fun. It\'s a quick and simple process!'**
  String get digitalRegistrationInformation1;

  /// No description provided for @digitalRegistrationInformation2.
  ///
  /// In en, this message translates to:
  /// **'Easily manage all your bookings and tickets in one place.'**
  String get digitalRegistrationInformation2;

  /// No description provided for @digitalRegistrationInformation3.
  ///
  /// In en, this message translates to:
  /// **'Plan your visit ahead or on the go – you decide!'**
  String get digitalRegistrationInformation3;

  /// No description provided for @digitalRegistrationInformation4.
  ///
  /// In en, this message translates to:
  /// **'Stay connected with park navigation, notifications and ride information.'**
  String get digitalRegistrationInformation4;

  /// No description provided for @digitalRegistrationComplete.
  ///
  /// In en, this message translates to:
  /// **'Crafting your\n<brandYellow>perfect</brandYellow> <brandGreen>day</brandGreen>...'**
  String get digitalRegistrationComplete;

  /// No description provided for @digitalTermsSequence1.
  ///
  /// In en, this message translates to:
  /// **'View our '**
  String get digitalTermsSequence1;

  /// No description provided for @digitalTermsSequence2.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get digitalTermsSequence2;

  /// No description provided for @digitalTermsSequence3.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get digitalTermsSequence3;

  /// No description provided for @digitalTermsSequence4.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy.'**
  String get digitalTermsSequence4;

  /// No description provided for @digitalTransactionCompleteUserGreeting.
  ///
  /// In en, this message translates to:
  /// **'Your profile is ready, {userName}!'**
  String digitalTransactionCompleteUserGreeting(Object userName);

  /// No description provided for @digitalTransactionCompleteInformation1.
  ///
  /// In en, this message translates to:
  /// **'You\'ve created your account and Digital ID.'**
  String get digitalTransactionCompleteInformation1;

  /// No description provided for @digitalTransactionCompleteInformation2.
  ///
  /// In en, this message translates to:
  /// **'Your Digital ID keeps all your tickets in one place.'**
  String get digitalTransactionCompleteInformation2;

  /// No description provided for @digitalTransactionCompleteCompleteProfile.
  ///
  /// In en, this message translates to:
  /// **'Complete my profile'**
  String get digitalTransactionCompleteCompleteProfile;

  /// No description provided for @digitalTransactionCompleteAddBiometric.
  ///
  /// In en, this message translates to:
  /// **'Enable biometrics'**
  String get digitalTransactionCompleteAddBiometric;

  /// No description provided for @digitalTransactionCompleteFaceId.
  ///
  /// In en, this message translates to:
  /// **'Add Face ID'**
  String get digitalTransactionCompleteFaceId;

  /// No description provided for @digitalTransactionCompleteTouchId.
  ///
  /// In en, this message translates to:
  /// **'Add Touch ID'**
  String get digitalTransactionCompleteTouchId;

  /// No description provided for @digitalTransactionCompleteContinue.
  ///
  /// In en, this message translates to:
  /// **'Personalize my profile'**
  String get digitalTransactionCompleteContinue;

  /// No description provided for @digitalTransactionCompleteDone.
  ///
  /// In en, this message translates to:
  /// **'Explore the park'**
  String get digitalTransactionCompleteDone;

  /// No description provided for @digitalPersonalDetailsTag.
  ///
  /// In en, this message translates to:
  /// **'Personal details 2/3'**
  String get digitalPersonalDetailsTag;

  /// No description provided for @digitalPersonalDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Tell us a little <brandCyan>about</brandCyan> yourself'**
  String get digitalPersonalDetailsTitle;

  /// No description provided for @digitalPersonaFirstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get digitalPersonaFirstName;

  /// No description provided for @digitalPersonalSurname.
  ///
  /// In en, this message translates to:
  /// **'Surname'**
  String get digitalPersonalSurname;

  /// No description provided for @digitalPersonalDateBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get digitalPersonalDateBirth;

  /// No description provided for @digitalPersonalEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get digitalPersonalEmailAddress;

  /// No description provided for @digitalPersonalDateHint.
  ///
  /// In en, this message translates to:
  /// **''**
  String get digitalPersonalDateHint;

  /// No description provided for @digitalPersonalEmailHint.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send a code to verify this email address.'**
  String get digitalPersonalEmailHint;

  /// No description provided for @digitalPhoneNumberSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Log in to your account or sign up in a few simple steps. It\'s quick and easy!'**
  String get digitalPhoneNumberSubtitle;

  /// No description provided for @digitalPhoneNumberInputLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get digitalPhoneNumberInputLabel;

  /// No description provided for @digitalPhoneNumberContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get digitalPhoneNumberContinue;

  /// No description provided for @digitalPhoneNumberCannotStartWithZero.
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot start with 0.'**
  String get digitalPhoneNumberCannotStartWithZero;

  /// No description provided for @digitalPhoneNumberInvalidCharacter.
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot contain special characters.'**
  String get digitalPhoneNumberInvalidCharacter;

  /// No description provided for @digitalPhoneNumberTooLong.
  ///
  /// In en, this message translates to:
  /// **'Please ensure your number meets the required length and format for your selected country.'**
  String get digitalPhoneNumberTooLong;

  /// No description provided for @digitalPhoneNumberTooShort.
  ///
  /// In en, this message translates to:
  /// **'Your phone number is too short. Please enter the complete number.'**
  String get digitalPhoneNumberTooShort;

  /// No description provided for @digitalPhoneNumberOnlyDigits.
  ///
  /// In en, this message translates to:
  /// **'Phone number can contain only digits.'**
  String get digitalPhoneNumberOnlyDigits;

  /// No description provided for @digitalOtpPageErrorInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Incorrect code. Please try again.'**
  String get digitalOtpPageErrorInvalidCode;

  /// No description provided for @digitalPersonalDetailsTitleExistingUser.
  ///
  /// In en, this message translates to:
  /// **'Here’s a look at your profile information'**
  String get digitalPersonalDetailsTitleExistingUser;

  /// No description provided for @digitalBiometricsActivationTitle.
  ///
  /// In en, this message translates to:
  /// **'Enable <brandSpecialsPurple>{biometric}</brandSpecialsPurple> authentication'**
  String digitalBiometricsActivationTitle(Object biometric);

  /// No description provided for @digitalBiometricsTagLine.
  ///
  /// In en, this message translates to:
  /// **'Biometric'**
  String get digitalBiometricsTagLine;

  /// No description provided for @digitalBiometricsActivationInformation1.
  ///
  /// In en, this message translates to:
  /// **'Get easy and safe access to your app.'**
  String get digitalBiometricsActivationInformation1;

  /// No description provided for @digitalBiometricsActivationInformation2.
  ///
  /// In en, this message translates to:
  /// **'All biometrics configured on this phone will be able to access the app.'**
  String get digitalBiometricsActivationInformation2;

  /// No description provided for @digitalBiometricsActivationInformation3.
  ///
  /// In en, this message translates to:
  /// **'To disable this, go to security settings in your profile.'**
  String get digitalBiometricsActivationInformation3;

  /// No description provided for @digitalBiometricsActivationReason.
  ///
  /// In en, this message translates to:
  /// **'Please authenticate to activate biometrics'**
  String get digitalBiometricsActivationReason;

  /// No description provided for @digitalBiometricsActivationContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get digitalBiometricsActivationContinue;

  /// No description provided for @digitalBiometricsActivationRetry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get digitalBiometricsActivationRetry;

  /// No description provided for @digitalBiometricsActivatedGreeting.
  ///
  /// In en, this message translates to:
  /// **'Great {userName}, your biometric was added!'**
  String digitalBiometricsActivatedGreeting(Object userName);

  /// No description provided for @digitalBiometricsActivatedInformation1.
  ///
  /// In en, this message translates to:
  /// **'Your profile security setup has been updated.'**
  String get digitalBiometricsActivatedInformation1;

  /// No description provided for @digitalBiometricsActivatedInformation2.
  ///
  /// In en, this message translates to:
  /// **'You can now use biometrics to access the app. To change this, go to account settings.'**
  String get digitalBiometricsActivatedInformation2;

  /// No description provided for @digitalBiometricsActivatedContinue.
  ///
  /// In en, this message translates to:
  /// **'Personalize my profile'**
  String get digitalBiometricsActivatedContinue;

  /// No description provided for @digitalBiometricsActivatedDone.
  ///
  /// In en, this message translates to:
  /// **'Explore the park'**
  String get digitalBiometricsActivatedDone;

  /// No description provided for @digitalBiometricsToggleFaceId.
  ///
  /// In en, this message translates to:
  /// **'Face ID'**
  String get digitalBiometricsToggleFaceId;

  /// No description provided for @digitalBiometricsToggleTouchId.
  ///
  /// In en, this message translates to:
  /// **'Touch ID'**
  String get digitalBiometricsToggleTouchId;

  /// No description provided for @digitalBiometricsToggleDefault.
  ///
  /// In en, this message translates to:
  /// **'Biometric'**
  String get digitalBiometricsToggleDefault;

  /// No description provided for @digitalBiometricsEnabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your {biometric} has been enabled.'**
  String digitalBiometricsEnabledSuccess(Object biometric);

  /// No description provided for @digitalBiometricsEnableError.
  ///
  /// In en, this message translates to:
  /// **'Your {biometric} could not be enabled. Please try again.'**
  String digitalBiometricsEnableError(Object biometric);

  /// No description provided for @digitalBiometricsDisabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your {biometric} has been disabled. Next login we\'ll ask for your phone number to access your account.'**
  String digitalBiometricsDisabledSuccess(Object biometric);

  /// No description provided for @digitalBiometricsPermissionDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Turn on {biometric} permissions'**
  String digitalBiometricsPermissionDialogTitle(Object biometric);

  /// No description provided for @digitalBiometricsPermissionDialogDescription.
  ///
  /// In en, this message translates to:
  /// **'To continue, you must activate the {biometric} permissions from your Mobile Settings'**
  String digitalBiometricsPermissionDialogDescription(Object biometric);

  /// No description provided for @digitalBiometricsPermissionDialogContinue.
  ///
  /// In en, this message translates to:
  /// **'Go to device settings'**
  String get digitalBiometricsPermissionDialogContinue;

  /// No description provided for @digitalBiometricsPermissionDialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get digitalBiometricsPermissionDialogCancel;

  /// No description provided for @digitalGoToDeviceSettigs.
  ///
  /// In en, this message translates to:
  /// **'Go to device settings'**
  String get digitalGoToDeviceSettigs;

  /// No description provided for @digitalPermissionsEnableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable notifications'**
  String get digitalPermissionsEnableNotifications;

  /// No description provided for @digitalPermissionsEnableNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Please enable notifications in your device settings to receive updates and alerts. Notifications may include sounds, alerts, and badge icons.'**
  String get digitalPermissionsEnableNotificationsDesc;

  /// No description provided for @digitalPermissionsEnableGeolocation.
  ///
  /// In en, this message translates to:
  /// **'Location disabled'**
  String get digitalPermissionsEnableGeolocation;

  /// No description provided for @digitalPermissionsEnableGeolocationDesc.
  ///
  /// In en, this message translates to:
  /// **'To continue, you must turn on your location permissions from your Mobile Settings.'**
  String get digitalPermissionsEnableGeolocationDesc;

  /// No description provided for @digitalPermissionsNotificationsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your notification preferences have been updated.'**
  String get digitalPermissionsNotificationsUpdated;

  /// No description provided for @digitalPermissionsNotificationsUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t update your notification preferences. Please, try again.'**
  String get digitalPermissionsNotificationsUpdateFailed;

  /// No description provided for @digitalPermissionsGeolocationUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your geolocation has been updated.'**
  String get digitalPermissionsGeolocationUpdated;

  /// No description provided for @digitalPermissionsGeolocationUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t update your geolocation. Please, try again.'**
  String get digitalPermissionsGeolocationUpdateFailed;

  /// No description provided for @digitalPermissionsPromotionUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your promotion preferences have been updated.'**
  String get digitalPermissionsPromotionUpdated;

  /// No description provided for @digitalPermissionsPromotionUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t update your promotion preferences. Please, try again.'**
  String get digitalPermissionsPromotionUpdateFailed;

  /// No description provided for @digitalPermissionsAlertUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your alert preferences have been updated.'**
  String get digitalPermissionsAlertUpdated;

  /// No description provided for @digitalPermissionsAlertUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t update your alert preferences. Please, try again.'**
  String get digitalPermissionsAlertUpdateFailed;

  /// No description provided for @digitalGetStartedTag.
  ///
  /// In en, this message translates to:
  /// **'get started'**
  String get digitalGetStartedTag;

  /// No description provided for @profileDetails.
  ///
  /// In en, this message translates to:
  /// **'profile details'**
  String get profileDetails;

  /// No description provided for @verificationFailedTitle.
  ///
  /// In en, this message translates to:
  /// **'Something Went Wrong'**
  String get verificationFailedTitle;

  /// No description provided for @verificationFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Verification failed. We are currently experiencing technical difficulties. Please try again later or contact support for assistance'**
  String get verificationFailedMessage;

  /// No description provided for @digitalReactivateTitleName.
  ///
  /// In en, this message translates to:
  /// **'We’re glad to see you again, <brandCyan>{userName}</brandCyan>!'**
  String digitalReactivateTitleName(Object userName);

  /// No description provided for @errorPageTitle.
  ///
  /// In en, this message translates to:
  /// **'There was a problem'**
  String get errorPageTitle;

  /// No description provided for @errorPageTopButton.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get errorPageTopButton;

  /// No description provided for @errorPageBottomButton.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get errorPageBottomButton;

  /// No description provided for @genderSelectorScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your gender'**
  String get genderSelectorScreenTitle;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @settingsAccessibilityOptionChanged.
  ///
  /// In en, this message translates to:
  /// **'Your accessibility options have been saved successfully.'**
  String get settingsAccessibilityOptionChanged;

  /// No description provided for @accessibilityOptionSaveError.
  ///
  /// In en, this message translates to:
  /// **'Your accessibility options were not saved. Please try again.'**
  String get accessibilityOptionSaveError;

  /// No description provided for @navBarHomeItem.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navBarHomeItem;

  /// No description provided for @navBarExploreItem.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get navBarExploreItem;

  /// No description provided for @navBarVisitItem.
  ///
  /// In en, this message translates to:
  /// **'My Visit'**
  String get navBarVisitItem;

  /// No description provided for @navBarTicketsItem.
  ///
  /// In en, this message translates to:
  /// **'Tickets'**
  String get navBarTicketsItem;

  /// No description provided for @notificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationTitle;

  /// No description provided for @digitalSearchResults.
  ///
  /// In en, this message translates to:
  /// **'Search results'**
  String get digitalSearchResults;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Enable in-app notifications to receive the latest updates, news, and offers all in one place.'**
  String get notificationsDesc;

  /// No description provided for @settingsSupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get settingsSupport;

  /// No description provided for @settingsHelpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get settingsHelpAndSupport;

  /// No description provided for @settingsSupportDesc.
  ///
  /// In en, this message translates to:
  /// **'Check out answers to our most frequently asked questions to help guide you!'**
  String get settingsSupportDesc;

  /// No description provided for @notificationsButton.
  ///
  /// In en, this message translates to:
  /// **'Configure notifications'**
  String get notificationsButton;

  /// No description provided for @emptyNotificationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any recent notifications.'**
  String get emptyNotificationSubtitle;

  /// No description provided for @emptyNotificationTitle.
  ///
  /// In en, this message translates to:
  /// **'All Clear!'**
  String get emptyNotificationTitle;

  /// No description provided for @rides.
  ///
  /// In en, this message translates to:
  /// **'Ride'**
  String get rides;

  /// No description provided for @entertainment.
  ///
  /// In en, this message translates to:
  /// **'Entertainment'**
  String get entertainment;

  /// No description provided for @dinning.
  ///
  /// In en, this message translates to:
  /// **'Dine'**
  String get dinning;

  /// No description provided for @shopping.
  ///
  /// In en, this message translates to:
  /// **'Shopping'**
  String get shopping;

  /// No description provided for @shoppingHomeScreen.
  ///
  /// In en, this message translates to:
  /// **'Shop'**
  String get shoppingHomeScreen;

  /// No description provided for @notificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Stay updated!'**
  String get notificationsTitle;

  /// Title for the select avatar screen
  ///
  /// In en, this message translates to:
  /// **'Select your avatar'**
  String get avatarSelectorScreenTitle;

  /// Button text for selecting the avatar
  ///
  /// In en, this message translates to:
  /// **'Select this avatar'**
  String get avatarSelectorScreenButtonText;

  /// Message shown when avatar is successfully updated
  ///
  /// In en, this message translates to:
  /// **'Your profile avatar has been updated.'**
  String get avatarSelectorAvatarUpdatedSucceed;

  /// Message shown when avatar update fails
  ///
  /// In en, this message translates to:
  /// **'Your avatar could not be saved. Please try again'**
  String get avatarSelectorAvatarUpdatedError;

  /// No description provided for @visitPlanner.
  ///
  /// In en, this message translates to:
  /// **'Visit planner'**
  String get visitPlanner;

  /// No description provided for @favourites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favourites;

  /// No description provided for @errorPageMessage.
  ///
  /// In en, this message translates to:
  /// **'Something unexpected happened. Please try again.'**
  String get errorPageMessage;

  /// No description provided for @commonSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get commonSkip;

  /// No description provided for @profileSetupStepperTagLine.
  ///
  /// In en, this message translates to:
  /// **'Profile setup'**
  String get profileSetupStepperTagLine;

  /// No description provided for @helpAndSupportTopicsSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Topics'**
  String get helpAndSupportTopicsSectionTitle;

  /// No description provided for @helpAndSupportCategoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get helpAndSupportCategoryTitle;

  /// No description provided for @helpAndSupportSubCategoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Subcategory'**
  String get helpAndSupportSubCategoryTitle;

  /// No description provided for @helpAndSupportCategoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Description about category goes here.'**
  String get helpAndSupportCategoryDescription;

  /// No description provided for @helpAndSupportStillNeedHelpTitle.
  ///
  /// In en, this message translates to:
  /// **'Still need help?'**
  String get helpAndSupportStillNeedHelpTitle;

  /// No description provided for @helpAndSupportChatWithUs.
  ///
  /// In en, this message translates to:
  /// **'Chat with us'**
  String get helpAndSupportChatWithUs;

  /// No description provided for @helpAndSupportChatWithUsDescription.
  ///
  /// In en, this message translates to:
  /// **'Description about category goes here.'**
  String get helpAndSupportChatWithUsDescription;

  /// No description provided for @helpAndSupportEmailUs.
  ///
  /// In en, this message translates to:
  /// **'Email us'**
  String get helpAndSupportEmailUs;

  /// No description provided for @helpAndSupportEmailUsDescription.
  ///
  /// In en, this message translates to:
  /// **'Description about category goes here.'**
  String get helpAndSupportEmailUsDescription;

  /// No description provided for @helpAndSupportCallUs.
  ///
  /// In en, this message translates to:
  /// **'Call us'**
  String get helpAndSupportCallUs;

  /// No description provided for @helpAndSupportCallUsDescription.
  ///
  /// In en, this message translates to:
  /// **'Description about category goes here.'**
  String get helpAndSupportCallUsDescription;

  /// No description provided for @helpAndSupportParkServices.
  ///
  /// In en, this message translates to:
  /// **'Park services'**
  String get helpAndSupportParkServices;

  /// No description provided for @helpAndSupportParkServicesDescription.
  ///
  /// In en, this message translates to:
  /// **'Find out more information at <brightblue>{phoneNumber}</brightblue>'**
  String helpAndSupportParkServicesDescription(Object phoneNumber);

  /// No description provided for @helpAndSupportEmergencyAssistance.
  ///
  /// In en, this message translates to:
  /// **'Emergency assistance'**
  String get helpAndSupportEmergencyAssistance;

  /// No description provided for @helpAndSupportEmergencyAssistanceDescription.
  ///
  /// In en, this message translates to:
  /// **'Call us at <brightblue>{phoneNumber}</brightblue>'**
  String helpAndSupportEmergencyAssistanceDescription(Object phoneNumber);

  /// No description provided for @helpAndSupportLostAndFound.
  ///
  /// In en, this message translates to:
  /// **'Lost & Found'**
  String get helpAndSupportLostAndFound;

  /// No description provided for @helpAndSupportLostAndFoundDescription.
  ///
  /// In en, this message translates to:
  /// **'Report a lost child or belonging <brightblue>{phoneNumber}</brightblue>'**
  String helpAndSupportLostAndFoundDescription(Object phoneNumber);

  /// No description provided for @callParkServicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Call Park Services'**
  String get callParkServicesTitle;

  /// No description provided for @aquatapConnectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Great! Your Aquatap is connected!'**
  String get aquatapConnectedTitle;

  /// No description provided for @aquatapConnectedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'To complete your mobile-free experience and make cashless payments using your Aquatap, set up a PIN for secure purchases at the water theme park.'**
  String get aquatapConnectedSubtitle;

  /// No description provided for @aquatapConnectedPrimaryButton.
  ///
  /// In en, this message translates to:
  /// **'set up pin & payment'**
  String get aquatapConnectedPrimaryButton;

  /// No description provided for @aquatapCompletedTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Aquatap is set up!'**
  String get aquatapCompletedTitle;

  /// No description provided for @aquatapCompletedInfoPoint1.
  ///
  /// In en, this message translates to:
  /// **'Access the water theme park and any other add-ons and extras using your NFC-powered Aquatap!'**
  String get aquatapCompletedInfoPoint1;

  /// No description provided for @aquatapCompletedInfoPoint2.
  ///
  /// In en, this message translates to:
  /// **'You can deactivate your Aquatap at any time — just visit My profile.'**
  String get aquatapCompletedInfoPoint2;

  /// No description provided for @aquatapCompletedPrimaryButton.
  ///
  /// In en, this message translates to:
  /// **'set up another Aquatap'**
  String get aquatapCompletedPrimaryButton;

  /// No description provided for @aquatapCompletedSecondaryButton.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get aquatapCompletedSecondaryButton;

  /// No description provided for @callEmergencyAssistanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Call Emergency Assistance'**
  String get callEmergencyAssistanceTitle;

  /// No description provided for @callLostAndFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'Report a Lost Child or Belonging'**
  String get callLostAndFoundTitle;

  /// No description provided for @emailError.
  ///
  /// In en, this message translates to:
  /// **'Set up an email app'**
  String get emailError;

  /// No description provided for @emailSubject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get emailSubject;

  /// No description provided for @emailErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'To send an email, you will need to set up an email app on this device first.'**
  String get emailErrorMessage;

  /// No description provided for @visitPlannerCreateYourOwnCTA.
  ///
  /// In en, this message translates to:
  /// **'Create your own'**
  String get visitPlannerCreateYourOwnCTA;

  /// No description provided for @visitPlannerCreateYourOwnDescriptionCTA.
  ///
  /// In en, this message translates to:
  /// **'We hand-pick the best – you choose what fits you!'**
  String get visitPlannerCreateYourOwnDescriptionCTA;

  /// No description provided for @vpGuestUserAccessPromptMainTitle.
  ///
  /// In en, this message translates to:
  /// **'Craft your perfect <brandCyan>Aquarabia</brandCyan> Qiddiya City visit!'**
  String get vpGuestUserAccessPromptMainTitle;

  /// No description provided for @guestAccessPromptFavoriteLoginOrSignUpButton.
  ///
  /// In en, this message translates to:
  /// **'Log in or sign up'**
  String get guestAccessPromptFavoriteLoginOrSignUpButton;

  /// No description provided for @guestAccessPromptFavoriteLoginButton.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get guestAccessPromptFavoriteLoginButton;

  /// No description provided for @vpCustomTripTitle.
  ///
  /// In en, this message translates to:
  /// **'Custom trip {currentStep}/{totalSteps}'**
  String vpCustomTripTitle(Object currentStep, Object totalSteps);

  /// No description provided for @vpCopyVisitTitle.
  ///
  /// In en, this message translates to:
  /// **'Copy visit {currentStep}/{totalSteps}'**
  String vpCopyVisitTitle(int currentStep, int totalSteps);

  /// No description provided for @vpTripDateQuestionVariation.
  ///
  /// In en, this message translates to:
  /// **'When are you planning to visit?'**
  String get vpTripDateQuestionVariation;

  /// No description provided for @planLimitExceedsMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'ve reached the maximum of {limit} trips. Please remove an existing plan to create a new one.'**
  String planLimitExceedsMessage(Object limit);

  /// No description provided for @myVisitSignUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your number and start your adventure!'**
  String get myVisitSignUpTitle;

  /// No description provided for @myVisitSignUpDescription.
  ///
  /// In en, this message translates to:
  /// **'Log in to easily save and access your favourite rides, dining, and experiences'**
  String get myVisitSignUpDescription;

  /// No description provided for @adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get adult;

  /// No description provided for @ages12.
  ///
  /// In en, this message translates to:
  /// **'Ages 12+'**
  String get ages12;

  /// No description provided for @child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get child;

  /// No description provided for @ages4to12.
  ///
  /// In en, this message translates to:
  /// **'Ages 4-12'**
  String get ages4to12;

  /// No description provided for @infant.
  ///
  /// In en, this message translates to:
  /// **'Infant'**
  String get infant;

  /// No description provided for @ages0to4.
  ///
  /// In en, this message translates to:
  /// **'Ages 0-4'**
  String get ages0to4;

  /// No description provided for @senior.
  ///
  /// In en, this message translates to:
  /// **'Senior'**
  String get senior;

  /// No description provided for @ages65Plus.
  ///
  /// In en, this message translates to:
  /// **'Ages 65+'**
  String get ages65Plus;

  /// No description provided for @alertNotificationCta.
  ///
  /// In en, this message translates to:
  /// **'Get instructions'**
  String get alertNotificationCta;

  /// No description provided for @validIdRequired.
  ///
  /// In en, this message translates to:
  /// **'Valid ID required'**
  String get validIdRequired;

  /// No description provided for @peopleOfDetermination.
  ///
  /// In en, this message translates to:
  /// **'People of determination'**
  String get peopleOfDetermination;

  /// No description provided for @peopleWithDisabilities.
  ///
  /// In en, this message translates to:
  /// **'People with registered disabilities'**
  String get peopleWithDisabilities;

  /// No description provided for @companion.
  ///
  /// In en, this message translates to:
  /// **'Companion'**
  String get companion;

  /// No description provided for @driversAndNannies.
  ///
  /// In en, this message translates to:
  /// **'Including drivers & nannies'**
  String get driversAndNannies;

  /// No description provided for @noTicketRequired.
  ///
  /// In en, this message translates to:
  /// **'No ticket required'**
  String get noTicketRequired;

  /// No description provided for @ridesAndExperiences.
  ///
  /// In en, this message translates to:
  /// **'Rides & Experiences'**
  String get ridesAndExperiences;

  /// No description provided for @exploreDirectionToAttraction.
  ///
  /// In en, this message translates to:
  /// **'Go there'**
  String get exploreDirectionToAttraction;

  /// No description provided for @vpCreateMyTripCTA.
  ///
  /// In en, this message translates to:
  /// **'create my trip'**
  String get vpCreateMyTripCTA;

  /// No description provided for @templateEditingTitle.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get templateEditingTitle;

  /// No description provided for @templateEditVisitTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit visit'**
  String get templateEditVisitTitle;

  /// No description provided for @templateDeletedSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'{template} has been deleted.'**
  String templateDeletedSuccessMessage(Object template);

  /// No description provided for @templateDeletedErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'{template} could not be deleted. Please try again.'**
  String templateDeletedErrorMessage(Object template);

  /// No description provided for @templateUpdateAlertMessage.
  ///
  /// In en, this message translates to:
  /// **'Your visit was updated'**
  String get templateUpdateAlertMessage;

  /// No description provided for @vpTripDateQuestion.
  ///
  /// In en, this message translates to:
  /// **'When would you like to visit?'**
  String get vpTripDateQuestion;

  /// No description provided for @vpCopyThisVisit.
  ///
  /// In en, this message translates to:
  /// **'Copy this visit'**
  String get vpCopyThisVisit;

  /// No description provided for @useTemplateButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'USE THIS ITINERARY'**
  String get useTemplateButtonTitle;

  /// No description provided for @createTripFormTemplateSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'<brandYellow>{templateName}</brandYellow> is all set and ready!'**
  String createTripFormTemplateSuccessMessage(Object templateName);

  /// No description provided for @createTripCompleteTransactionButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'view my visit'**
  String get createTripCompleteTransactionButtonTitle;

  /// No description provided for @createTripCompleteTransactionInfoPoint1.
  ///
  /// In en, this message translates to:
  /// **'Make your plan even more personal by adding, editing and refining!'**
  String get createTripCompleteTransactionInfoPoint1;

  /// No description provided for @vpTemplateTripTitle.
  ///
  /// In en, this message translates to:
  /// **'{templateName} {currentStep}/{totalSteps}'**
  String vpTemplateTripTitle(
      int currentStep, int totalSteps, String templateName);

  /// No description provided for @createTripFromTemplateCompleteTransactionButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'view my visit'**
  String get createTripFromTemplateCompleteTransactionButtonTitle;

  /// No description provided for @createTripFromTemplateCompleteTransactionInfoPoint1.
  ///
  /// In en, this message translates to:
  /// **'Make your plan even more personal by adding, editing and refining!'**
  String get createTripFromTemplateCompleteTransactionInfoPoint1;

  /// No description provided for @createTripFromTemplateCompleteTransactionInfoPoint2.
  ///
  /// In en, this message translates to:
  /// **'To browse and manage your visit in map and list view, click on the Explore icon.'**
  String get createTripFromTemplateCompleteTransactionInfoPoint2;

  /// No description provided for @createMyTripTitle.
  ///
  /// In en, this message translates to:
  /// **'Create my trip'**
  String get createMyTripTitle;

  /// No description provided for @makeTheMostOfYourVisit.
  ///
  /// In en, this message translates to:
  /// **'Make the most of your visit!'**
  String get makeTheMostOfYourVisit;

  /// No description provided for @planYourVisit.
  ///
  /// In en, this message translates to:
  /// **'Plan your visit'**
  String get planYourVisit;

  /// No description provided for @prepForDayFullOfFun.
  ///
  /// In en, this message translates to:
  /// **'Prep for a day full of fun'**
  String get prepForDayFullOfFun;

  /// No description provided for @startPlanning.
  ///
  /// In en, this message translates to:
  /// **'start planning'**
  String get startPlanning;

  /// No description provided for @bookYourVisit.
  ///
  /// In en, this message translates to:
  /// **'Book your visit'**
  String get bookYourVisit;

  /// No description provided for @bookYourTickets.
  ///
  /// In en, this message translates to:
  /// **'Book your tickets'**
  String get bookYourTickets;

  /// No description provided for @getTicketsForYourNextVisit.
  ///
  /// In en, this message translates to:
  /// **'Get tickets for your next visit'**
  String get getTicketsForYourNextVisit;

  /// No description provided for @bookNow.
  ///
  /// In en, this message translates to:
  /// **'book now'**
  String get bookNow;

  /// No description provided for @resumeYourBooking.
  ///
  /// In en, this message translates to:
  /// **'Resume your booking'**
  String get resumeYourBooking;

  /// No description provided for @dontMissOutFinishYourPurchase.
  ///
  /// In en, this message translates to:
  /// **'Don’t miss out, finish your purchase'**
  String get dontMissOutFinishYourPurchase;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'PAY NOW'**
  String get payNow;

  /// No description provided for @exploreHomeBook.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get exploreHomeBook;

  /// No description provided for @recordBreakingRides.
  ///
  /// In en, this message translates to:
  /// **'record-breaking rides'**
  String get recordBreakingRides;

  /// No description provided for @addonsHomeBook.
  ///
  /// In en, this message translates to:
  /// **'Add-ons'**
  String get addonsHomeBook;

  /// No description provided for @forTheAddedThrill.
  ///
  /// In en, this message translates to:
  /// **'for the added thrill'**
  String get forTheAddedThrill;

  /// No description provided for @vipBundle.
  ///
  /// In en, this message translates to:
  /// **'VIP bundle'**
  String get vipBundle;

  /// No description provided for @forTheAddedThrillvip.
  ///
  /// In en, this message translates to:
  /// **'for the added thrill'**
  String get forTheAddedThrillvip;

  /// No description provided for @makePaymentsFast.
  ///
  /// In en, this message translates to:
  /// **'You can make payments fast and easy at any merchant and food outlet!'**
  String get makePaymentsFast;

  /// No description provided for @accessParkAddOns.
  ///
  /// In en, this message translates to:
  /// **'Access the park and any other add-ons and extras using your wristband!'**
  String get accessParkAddOns;

  /// No description provided for @deLinkWristband.
  ///
  /// In en, this message translates to:
  /// **'You can de-link your wristband at any time from the My Profile section.'**
  String get deLinkWristband;

  /// No description provided for @immersiveLandsHeadline.
  ///
  /// In en, this message translates to:
  /// **'Special <primary>water</primary> attractions for the <brandYellow>first time</brandYellow>…'**
  String get immersiveLandsHeadline;

  /// No description provided for @immersiveLandsCardButtonCTA.
  ///
  /// In en, this message translates to:
  /// **'Discover the Ride'**
  String get immersiveLandsCardButtonCTA;

  /// No description provided for @immersiveLandsCardButtonCTAWithExperience.
  ///
  /// In en, this message translates to:
  /// **'Discover more'**
  String get immersiveLandsCardButtonCTAWithExperience;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @privacyPolicyUpdatedTitle.
  ///
  /// In en, this message translates to:
  /// **'We’ve <brandCyan>updated</brandCyan> our terms & conditions'**
  String get privacyPolicyUpdatedTitle;

  /// No description provided for @privacyPolicyTermsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get privacyPolicyTermsAndConditions;

  /// No description provided for @privacyVersion.
  ///
  /// In en, this message translates to:
  /// **'VERSION'**
  String get privacyVersion;

  /// No description provided for @privacyPolicyDescription.
  ///
  /// In en, this message translates to:
  /// **'To continue using this application, please review the updated terms and conditions and privacy policy.'**
  String get privacyPolicyDescription;

  /// No description provided for @ticketDetailsParkNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Aquarabia Qiddiya'**
  String get ticketDetailsParkNameTitle;

  /// No description provided for @ticketDetailsParkCityTitle.
  ///
  /// In en, this message translates to:
  /// **'Al-Muzahmiyya 13776'**
  String get ticketDetailsParkCityTitle;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @used.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get used;

  /// No description provided for @ticketVisitPlanningTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan your visit now'**
  String get ticketVisitPlanningTitle;

  /// No description provided for @ticketEmptyStateTitle.
  ///
  /// In en, this message translates to:
  /// **'You don’t have any tickets yet!'**
  String get ticketEmptyStateTitle;

  /// No description provided for @ticketEmptyStateDescription.
  ///
  /// In en, this message translates to:
  /// **'Your adventure starts here. Secure your tickets now and unlock aquatic delights at Aquarabia Qiddiya City!'**
  String get ticketEmptyStateDescription;

  /// No description provided for @ticketEmptyBuyTicketButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Buy tickets now'**
  String get ticketEmptyBuyTicketButtonTitle;

  /// No description provided for @ticketEmptyLinkTicketButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Link a ticket'**
  String get ticketEmptyLinkTicketButtonTitle;

  /// No description provided for @digitalCloseCancelBookingDescription.
  ///
  /// In en, this message translates to:
  /// **'If you cancel, your selections will be lost and you’ll need to restart the booking process to get your tickets.'**
  String get digitalCloseCancelBookingDescription;

  /// No description provided for @cancelBooking.
  ///
  /// In en, this message translates to:
  /// **'yes, cancel my booking'**
  String get cancelBooking;

  /// No description provided for @keepSelections.
  ///
  /// In en, this message translates to:
  /// **'No, keep my selections'**
  String get keepSelections;

  /// No description provided for @digitalCloseCancelBookingTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel your booking?'**
  String get digitalCloseCancelBookingTitle;

  /// No description provided for @phoneDialerError.
  ///
  /// In en, this message translates to:
  /// **'Could not open the phone dialer. Please check your device settings.'**
  String get phoneDialerError;

  /// No description provided for @phoneDialerInitError.
  ///
  /// In en, this message translates to:
  /// **'Could not initialize the phone dialer.'**
  String get phoneDialerInitError;

  /// No description provided for @emailAppNotFound.
  ///
  /// In en, this message translates to:
  /// **'To send an email, you will need to set up an email app on this device first.'**
  String get emailAppNotFound;

  /// No description provided for @openUrlFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not launch the provided URL.'**
  String get openUrlFailed;

  /// No description provided for @genericError.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again.'**
  String get genericError;

  /// No description provided for @b2cNoTicketsTitle.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any tickets yet'**
  String get b2cNoTicketsTitle;

  /// No description provided for @b2cNoTicketsDescription.
  ///
  /// In en, this message translates to:
  /// **'Start your journey and grab tickets to your thrilling day'**
  String get b2cNoTicketsDescription;

  /// No description provided for @b2cNoTicketsButtonText.
  ///
  /// In en, this message translates to:
  /// **'Buy your ticket now'**
  String get b2cNoTicketsButtonText;

  /// No description provided for @shareTicketMessage.
  ///
  /// In en, this message translates to:
  /// **'🎢 Hey! I\'m sharing a ticket for Aquarabia with you. Download the Aquarabia App today. Enjoy! https://aquarabiaqiddiyacity.com/'**
  String get shareTicketMessage;

  /// No description provided for @shareTicketSubject.
  ///
  /// In en, this message translates to:
  /// **'Aquarabia Ticket'**
  String get shareTicketSubject;

  /// No description provided for @shareButtonText.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareButtonText;

  /// No description provided for @b2cBookingStepPaymentTitle.
  ///
  /// In en, this message translates to:
  /// **'Select a <brandWhite>payment method</brandWhite>'**
  String get b2cBookingStepPaymentTitle;

  /// No description provided for @b2cBookingStepPaymentDescription.
  ///
  /// In en, this message translates to:
  /// **'Proceed by choosing your preferred method of payment.'**
  String get b2cBookingStepPaymentDescription;

  /// No description provided for @b2cBookingStepPoliciesTag.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get b2cBookingStepPoliciesTag;

  /// No description provided for @b2cBookingStepTicketSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your <brandWhite>ticket</brandWhite>'**
  String get b2cBookingStepTicketSelectionTitle;

  /// No description provided for @b2cBookingStepTicketSelectionDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose the type of ticket you would like to purchase'**
  String get b2cBookingStepTicketSelectionDescription;

  /// No description provided for @b2cBookingStepTicketSelectionTag.
  ///
  /// In en, this message translates to:
  /// **'Ticket selection'**
  String get b2cBookingStepTicketSelectionTag;

  /// No description provided for @manageTicketTitle.
  ///
  /// In en, this message translates to:
  /// **'Manage this ticket'**
  String get manageTicketTitle;

  /// No description provided for @closeLabel.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeLabel;

  /// No description provided for @getMoreAddOns.
  ///
  /// In en, this message translates to:
  /// **'Get more Add-ons'**
  String get getMoreAddOns;

  /// No description provided for @reScheduleOrCancel.
  ///
  /// In en, this message translates to:
  /// **'Re-Schedule or Cancel'**
  String get reScheduleOrCancel;

  /// No description provided for @reScheduleOrCancelCallService.
  ///
  /// In en, this message translates to:
  /// **'To reschedule or cancel your ticket, please contact our Guest Services team at <boldBlue>{phoneNumber}</boldBlue>'**
  String reScheduleOrCancelCallService(Object phoneNumber);

  /// No description provided for @callGuestService.
  ///
  /// In en, this message translates to:
  /// **'Call Guest Services'**
  String get callGuestService;

  /// No description provided for @b2cBookingStepCheckoutTag.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get b2cBookingStepCheckoutTag;

  /// No description provided for @b2cBookingStepLoginTitle.
  ///
  /// In en, this message translates to:
  /// **'Login/<brandWhite>Register</brandWhite>'**
  String get b2cBookingStepLoginTitle;

  /// No description provided for @b2cBookingStepLoginDescription.
  ///
  /// In en, this message translates to:
  /// **'Almost there! Confirm your details to complete your booking'**
  String get b2cBookingStepLoginDescription;

  /// No description provided for @b2cBookingStepDateSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'<brandWhite>Date</brandWhite> & validity'**
  String get b2cBookingStepDateSelectionTitle;

  /// No description provided for @b2cBookingStepDateSelectionDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the date of your visit. Prices are displayed on the calendar.'**
  String get b2cBookingStepDateSelectionDescription;

  /// No description provided for @b2cBookingStepPoliciesTitle.
  ///
  /// In en, this message translates to:
  /// **'Hi {username}, check theme Park <brandWhite>rules</brandWhite> & policies'**
  String b2cBookingStepPoliciesTitle(Object username);

  /// No description provided for @b2cBookingStepParkPoliciesDescription.
  ///
  /// In en, this message translates to:
  /// **'Please review the rules, guidelines, and terms that apply to your booking and visit.'**
  String get b2cBookingStepParkPoliciesDescription;

  /// No description provided for @b2cBackToCart.
  ///
  /// In en, this message translates to:
  /// **'Back to cart'**
  String get b2cBackToCart;

  /// No description provided for @b2cTryAgainPayment.
  ///
  /// In en, this message translates to:
  /// **'Try again or use a different payment method to complete your booking.'**
  String get b2cTryAgainPayment;

  /// No description provided for @b2cBookingStepGuestsTitle.
  ///
  /// In en, this message translates to:
  /// **'Number of <brandWhite>tickets</brandWhite>'**
  String get b2cBookingStepGuestsTitle;

  /// No description provided for @b2cBookingStepGuestPackagesTitle.
  ///
  /// In en, this message translates to:
  /// **'Number of <brandWhite>packages</brandWhite>'**
  String get b2cBookingStepGuestPackagesTitle;

  /// No description provided for @b2cBookingStepGuestsDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the number of tickets you would like to purchase.'**
  String get b2cBookingStepGuestsDescription;

  /// No description provided for @b2cBookingStepGuestsDescriptionSurfing.
  ///
  /// In en, this message translates to:
  /// **'Select the number of tickets you would like to purchase. Everyone who is surfing or bodyboarding at Surftopia needs a Surfer ticket. You can add non-surfer tickets for people in your group who are coming to the water theme park and not surfing. If no one in your group is surfing, return to the ticket selection and choose a Single Day Ticket or Annual Pass instead!'**
  String get b2cBookingStepGuestsDescriptionSurfing;

  /// No description provided for @b2cBookingStepGuestsTag.
  ///
  /// In en, this message translates to:
  /// **'Ticket selection'**
  String get b2cBookingStepGuestsTag;

  /// No description provided for @b2cDeleteCartItemCloseTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get b2cDeleteCartItemCloseTitle;

  /// No description provided for @b2cDeleteCartItemCloseDescription.
  ///
  /// In en, this message translates to:
  /// **'Deleting this item will remove any add-ons and extras selected for this ticket.'**
  String get b2cDeleteCartItemCloseDescription;

  /// No description provided for @b2cConfirmDeleteCartItem.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete'**
  String get b2cConfirmDeleteCartItem;

  /// No description provided for @b2cCancelDeleteCartItem.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get b2cCancelDeleteCartItem;

  /// No description provided for @b2cBookingStepCartAddMoreTicketsButton.
  ///
  /// In en, this message translates to:
  /// **'Add more tickets'**
  String get b2cBookingStepCartAddMoreTicketsButton;

  /// No description provided for @b2cBookingStepCartTitle.
  ///
  /// In en, this message translates to:
  /// **'Items in your <brandWhite>cart</brandWhite>'**
  String get b2cBookingStepCartTitle;

  /// No description provided for @b2cBookingStepCartDescription.
  ///
  /// In en, this message translates to:
  /// **'Review your selection before checkout'**
  String get b2cBookingStepCartDescription;

  /// No description provided for @b2cBookingStepCartTag.
  ///
  /// In en, this message translates to:
  /// **'My cart'**
  String get b2cBookingStepCartTag;

  /// No description provided for @b2cBookingAgeRestrictionSecondaryBtn.
  ///
  /// In en, this message translates to:
  /// **'No, cancel'**
  String get b2cBookingAgeRestrictionSecondaryBtn;

  /// No description provided for @parkListLoadError.
  ///
  /// In en, this message translates to:
  /// **'There was an error loading the park list. Please try again.'**
  String get parkListLoadError;

  /// No description provided for @errorLoadingResults.
  ///
  /// In en, this message translates to:
  /// **'There was an error loading results. Please try again.'**
  String get errorLoadingResults;

  /// No description provided for @errorLoadingFilters.
  ///
  /// In en, this message translates to:
  /// **'There was an error loading filters. Please try again.'**
  String get errorLoadingFilters;

  /// No description provided for @errorUpdatingFilters.
  ///
  /// In en, this message translates to:
  /// **'Cannot update filters: current filter data not loaded.'**
  String get errorUpdatingFilters;

  /// No description provided for @errorApplyingFilters.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch filter results count'**
  String get errorApplyingFilters;

  /// No description provided for @oops2.
  ///
  /// In en, this message translates to:
  /// **'Oops'**
  String get oops2;

  /// No description provided for @couldNotLoadMap.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load the park map.'**
  String get couldNotLoadMap;

  /// No description provided for @downloadInfo.
  ///
  /// In en, this message translates to:
  /// **'Download information'**
  String get downloadInfo;

  /// No description provided for @notificationPermissionWelcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Stay up to date with important updates, exclusive offers, and personalized reminders by enabling notifications.'**
  String get notificationPermissionWelcomeMessage;

  /// No description provided for @notificationPermissionWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome {firstName}!'**
  String notificationPermissionWelcomeTitle(String firstName);

  /// No description provided for @notificationPermissionAllowButton.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get notificationPermissionAllowButton;

  /// No description provided for @notificationPermissionNotNowButton.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get notificationPermissionNotNowButton;

  /// No description provided for @referenceNumber.
  ///
  /// In en, this message translates to:
  /// **'Reference number: {number}'**
  String referenceNumber(Object number);

  /// No description provided for @b2cGoToMyTickets.
  ///
  /// In en, this message translates to:
  /// **'Go to my tickets'**
  String get b2cGoToMyTickets;

  /// No description provided for @exploreResultsAreTakingLongerThanExpected.
  ///
  /// In en, this message translates to:
  /// **'Results are taking longer than usual. Please wait or try again.'**
  String get exploreResultsAreTakingLongerThanExpected;

  /// No description provided for @exploreTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get exploreTryAgain;

  /// No description provided for @exploreLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get exploreLoading;

  /// No description provided for @exploreSearchCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get exploreSearchCancel;

  /// No description provided for @exploreSortByAZ.
  ///
  /// In en, this message translates to:
  /// **'A-Z'**
  String get exploreSortByAZ;

  /// No description provided for @exploreSortByZA.
  ///
  /// In en, this message translates to:
  /// **'Z-A'**
  String get exploreSortByZA;

  /// No description provided for @exploreSortByDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get exploreSortByDistance;

  /// No description provided for @exploreSortByWaitTime.
  ///
  /// In en, this message translates to:
  /// **'Wait time'**
  String get exploreSortByWaitTime;

  /// No description provided for @exploreSortByTitle.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get exploreSortByTitle;

  /// No description provided for @exploreSortByApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get exploreSortByApply;

  /// No description provided for @exploreSortByClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get exploreSortByClose;

  /// No description provided for @b2cYourTicketsAreReady.
  ///
  /// In en, this message translates to:
  /// **'Your tickets are ready, {userName}'**
  String b2cYourTicketsAreReady(Object userName);

  /// No description provided for @creaditDebitCardTitle.
  ///
  /// In en, this message translates to:
  /// **'My credit and debit cards'**
  String get creaditDebitCardTitle;

  /// No description provided for @creaditDebitCardDesc.
  ///
  /// In en, this message translates to:
  /// **'Add your card details to make purchases quicker and enjoy seamless payments! You can save up to four cards on your account.'**
  String get creaditDebitCardDesc;

  /// No description provided for @addNewCard.
  ///
  /// In en, this message translates to:
  /// **'Add new card'**
  String get addNewCard;

  /// No description provided for @defaultLabel.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultLabel;

  /// No description provided for @otherLabel.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get otherLabel;

  /// No description provided for @expiry.
  ///
  /// In en, this message translates to:
  /// **'Expiry'**
  String get expiry;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @expiredOn.
  ///
  /// In en, this message translates to:
  /// **'Expired on'**
  String get expiredOn;

  /// No description provided for @paymentMethodInfo.
  ///
  /// In en, this message translates to:
  /// **'You can save up to four cards on your account. If you wish to add an additional card, you will need to delete an existing card.'**
  String get paymentMethodInfo;

  /// No description provided for @paymentMethodsTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get paymentMethodsTitle;

  /// No description provided for @vpGuestUserAccessPromptHeaderTitle.
  ///
  /// In en, this message translates to:
  /// **'GET STARTED'**
  String get vpGuestUserAccessPromptHeaderTitle;

  /// No description provided for @vpGuestUserAccessPromptSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan your visit'**
  String get vpGuestUserAccessPromptSubTitle;

  /// No description provided for @vpGuestUserAccessPromptSubTitleDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign in to discover personalized suggestions, find exclusive offers, and share tickets with friends and family to build your perfect visit!'**
  String get vpGuestUserAccessPromptSubTitleDescription;

  /// No description provided for @vpFlexible.
  ///
  /// In en, this message translates to:
  /// **'Flexible'**
  String get vpFlexible;

  /// No description provided for @vpExactDate.
  ///
  /// In en, this message translates to:
  /// **'Exact date'**
  String get vpExactDate;

  /// No description provided for @vpInfoMessage.
  ///
  /// In en, this message translates to:
  /// **'<bold>Pro tip!</bold> Add favorites here now to include them in your trip plan.'**
  String get vpInfoMessage;

  /// No description provided for @vpDayPreferenceTitle.
  ///
  /// In en, this message translates to:
  /// **'day preference'**
  String get vpDayPreferenceTitle;

  /// No description provided for @vpMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get vpMonth;

  /// No description provided for @participantsVpInfoMessage.
  ///
  /// In en, this message translates to:
  /// **'<bold>Pro tip!</bold> Infants and children age four and under enter for free, but please register them below!'**
  String get participantsVpInfoMessage;

  /// No description provided for @talkActivitesTitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s talk activities!'**
  String get talkActivitesTitle;

  /// No description provided for @talkActivitesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'What types of attractions or activities are most appealing to your group?'**
  String get talkActivitesSubtitle;

  /// No description provided for @talkVpInfoMessage.
  ///
  /// In en, this message translates to:
  /// **'<bold>Pro tip!</bold> The options below are tried-and-tested ride combinations based on different thrill levels.'**
  String get talkVpInfoMessage;

  /// No description provided for @vpActionPackedTitle.
  ///
  /// In en, this message translates to:
  /// **'How action-packed would you like your day?'**
  String get vpActionPackedTitle;

  /// No description provided for @actionPackedInfoMessage.
  ///
  /// In en, this message translates to:
  /// **'<bold>Pro tip!</bold> Your custom plan needs to reflect what kind of day you want at Aquarabia Qiddiya City.'**
  String get actionPackedInfoMessage;

  /// No description provided for @templateEditPersonaliseAdventure.
  ///
  /// In en, this message translates to:
  /// **'Personalize your new adventure!'**
  String get templateEditPersonaliseAdventure;

  /// No description provided for @templateEditYourTheme.
  ///
  /// In en, this message translates to:
  /// **'Select your theme'**
  String get templateEditYourTheme;

  /// No description provided for @myVisitFavoriteListEmptyStateLabel.
  ///
  /// In en, this message translates to:
  /// **'Your favorites await!'**
  String get myVisitFavoriteListEmptyStateLabel;

  /// No description provided for @exploreNoFavourites.
  ///
  /// In en, this message translates to:
  /// **'No favorites'**
  String get exploreNoFavourites;

  /// No description provided for @exploreYourFavoriteAwaits.
  ///
  /// In en, this message translates to:
  /// **'Your favorites await!'**
  String get exploreYourFavoriteAwaits;

  /// No description provided for @exploreYourFavoriteAwaitsDescription.
  ///
  /// In en, this message translates to:
  /// **'Save items you enjoy here for easy access next time. Start exploring and tap the star icon to build your list!'**
  String get exploreYourFavoriteAwaitsDescription;

  /// No description provided for @myVisitFavoriteListEmptyStateDescription.
  ///
  /// In en, this message translates to:
  /// **'Save items you enjoy here for easy access next time. Start exploring and tap the star icon to build your list!'**
  String get myVisitFavoriteListEmptyStateDescription;

  /// No description provided for @onboardingPrimaryAction.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE THE PARK'**
  String get onboardingPrimaryAction;

  /// No description provided for @vpCreatedTripDaysToGoTitle.
  ///
  /// In en, this message translates to:
  /// **'{num} days to go'**
  String vpCreatedTripDaysToGoTitle(Object num);

  /// No description provided for @addToList.
  ///
  /// In en, this message translates to:
  /// **'Include favorites'**
  String get addToList;

  /// No description provided for @cardType.
  ///
  /// In en, this message translates to:
  /// **'{name} card'**
  String cardType(Object name);

  /// No description provided for @deleteCard.
  ///
  /// In en, this message translates to:
  /// **'Delete Card'**
  String get deleteCard;

  /// No description provided for @deletePageOtpTag.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deletePageOtpTag;

  /// No description provided for @saveDefault.
  ///
  /// In en, this message translates to:
  /// **'Save as default payment method'**
  String get saveDefault;

  /// No description provided for @b2cBookingAgeRestrictiobBsTitle.
  ///
  /// In en, this message translates to:
  /// **'Before you continue'**
  String get b2cBookingAgeRestrictiobBsTitle;

  /// No description provided for @b2cEmptyCartErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any items in your cart!'**
  String get b2cEmptyCartErrorTitle;

  /// No description provided for @b2cEmptyCartErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Please start your ticket booking journey again.'**
  String get b2cEmptyCartErrorMessage;

  /// No description provided for @b2cEmptyCartErrorTryAgainButton.
  ///
  /// In en, this message translates to:
  /// **'Book tickets'**
  String get b2cEmptyCartErrorTryAgainButton;

  /// No description provided for @b2cEmptyCartErrorStartAgainButton.
  ///
  /// In en, this message translates to:
  /// **'Book tickets'**
  String get b2cEmptyCartErrorStartAgainButton;

  /// No description provided for @b2cBookingStepAddonsTitle.
  ///
  /// In en, this message translates to:
  /// **'Make your <brandWhite>experience</brandWhite> even more WOW!'**
  String get b2cBookingStepAddonsTitle;

  /// No description provided for @b2cBookingStepAddonsDescription.
  ///
  /// In en, this message translates to:
  /// **'Grab the extras that turn fun into unforgettable experiences!'**
  String get b2cBookingStepAddonsDescription;

  /// No description provided for @b2cBookingStepAddonsTag.
  ///
  /// In en, this message translates to:
  /// **'Extras & Add-ons'**
  String get b2cBookingStepAddonsTag;

  /// No description provided for @digitalRegistrationEmailError.
  ///
  /// In en, this message translates to:
  /// **'Email address already registered.'**
  String get digitalRegistrationEmailError;

  /// No description provided for @b2cSelectAddonsSaveSelectionButton.
  ///
  /// In en, this message translates to:
  /// **'save selection'**
  String get b2cSelectAddonsSaveSelectionButton;

  /// No description provided for @optionalMessageFavOptions.
  ///
  /// In en, this message translates to:
  /// **'<bold>Pro tip!</bold> Add favorites here now to include them in your trip plan.'**
  String get optionalMessageFavOptions;

  /// No description provided for @vpNeedsAndWantsTitle.
  ///
  /// In en, this message translates to:
  /// **'Is there anything you know you want to add?'**
  String get vpNeedsAndWantsTitle;

  /// No description provided for @vpMyFavourites.
  ///
  /// In en, this message translates to:
  /// **'My favorites'**
  String get vpMyFavourites;

  /// No description provided for @includeFavourites.
  ///
  /// In en, this message translates to:
  /// **'Include favorites'**
  String get includeFavourites;

  /// No description provided for @templateEditNoTicketsYet.
  ///
  /// In en, this message translates to:
  /// **'No tickets yet'**
  String get templateEditNoTicketsYet;

  /// No description provided for @templateEditBuyNow.
  ///
  /// In en, this message translates to:
  /// **'BUY NOW'**
  String get templateEditBuyNow;

  /// No description provided for @deleteVisitTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {TemplateName}?'**
  String deleteVisitTitle(Object TemplateName);

  /// No description provided for @deleteVisitDescription.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone and the preferences will be lost.'**
  String get deleteVisitDescription;

  /// No description provided for @confirmDeleteVisit.
  ///
  /// In en, this message translates to:
  /// **'YES, DELETE VISIT'**
  String get confirmDeleteVisit;

  /// No description provided for @tripBannerTitleNoTickets.
  ///
  /// In en, this message translates to:
  /// **'Book your tickets'**
  String get tripBannerTitleNoTickets;

  /// No description provided for @tripBannerTitleWithTickets.
  ///
  /// In en, this message translates to:
  /// **'View your tickets'**
  String get tripBannerTitleWithTickets;

  /// No description provided for @templateRideAndAttractionTitle.
  ///
  /// In en, this message translates to:
  /// **'Rides & Experiences'**
  String get templateRideAndAttractionTitle;

  /// No description provided for @templateNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Template'**
  String get templateNameTitle;

  /// No description provided for @templateNameDesc.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet cons adipiscing elit dolore.'**
  String get templateNameDesc;

  /// No description provided for @ridesAndAttractions.
  ///
  /// In en, this message translates to:
  /// **'Rides & Experiences'**
  String get ridesAndAttractions;

  /// No description provided for @digitalNewsletter.
  ///
  /// In en, this message translates to:
  /// **'I would like to receive news and updates'**
  String get digitalNewsletter;

  /// No description provided for @b2cBookingStepVIPGuestsDescription.
  ///
  /// In en, this message translates to:
  /// **'Select up to 12 participants for your VIP Experience'**
  String get b2cBookingStepVIPGuestsDescription;

  /// No description provided for @b2cBookingStepDateSelectionVIPDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the date of your visit. Prices are displayed on the calendar. All prices are in Saudi Riyals, inclusive of VAT.'**
  String get b2cBookingStepDateSelectionVIPDescription;

  /// No description provided for @b2cBookingStepVIPGuestsTitle.
  ///
  /// In en, this message translates to:
  /// **'<brandWhite>Who</brandWhite> is coming?'**
  String get b2cBookingStepVIPGuestsTitle;

  /// No description provided for @b2cBookingAgeRestrictionWarning.
  ///
  /// In en, this message translates to:
  /// **'You must be {age} or older to book tickets.'**
  String b2cBookingAgeRestrictionWarning(int age);

  /// No description provided for @b2cBookingAgeRestrictionBsTitle.
  ///
  /// In en, this message translates to:
  /// **'Before you continue'**
  String get b2cBookingAgeRestrictionBsTitle;

  /// No description provided for @b2cBookingAgeRestrictionBsDescription.
  ///
  /// In en, this message translates to:
  /// **'To buy tickets online, you must be age {age} or older. Please confirm your age.'**
  String b2cBookingAgeRestrictionBsDescription(int age);

  /// No description provided for @b2cBookingAgeRestrictionPrimaryBtn.
  ///
  /// In en, this message translates to:
  /// **'Yes, I\'m {age} or older'**
  String b2cBookingAgeRestrictionPrimaryBtn(int age);

  /// No description provided for @b2cAccountVerificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you already have an account?'**
  String get b2cAccountVerificationTitle;

  /// No description provided for @b2cAccountVerificationDescription.
  ///
  /// In en, this message translates to:
  /// **'If you already have an Aquarabia Qiddiya City account, please login, or alternatively checkout as guest.'**
  String get b2cAccountVerificationDescription;

  /// No description provided for @b2cAccountVerificationPrimaryButton.
  ///
  /// In en, this message translates to:
  /// **'Login or register'**
  String get b2cAccountVerificationPrimaryButton;

  /// No description provided for @b2cAccountVerificationSecondaryButton.
  ///
  /// In en, this message translates to:
  /// **'Checkout as guest'**
  String get b2cAccountVerificationSecondaryButton;

  /// No description provided for @b2cEmailValidatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your email has been validated and added to your profile'**
  String get b2cEmailValidatedSuccess;

  /// No description provided for @checkYourConnectionToAccessFullFeatures.
  ///
  /// In en, this message translates to:
  /// **'Check your connection to access the full features of the app.'**
  String get checkYourConnectionToAccessFullFeatures;

  /// No description provided for @connectedAquaTapTicketTitle.
  ///
  /// In en, this message translates to:
  /// **'AquaTap'**
  String get connectedAquaTapTicketTitle;

  /// No description provided for @aquaTapTicketConnectedStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get aquaTapTicketConnectedStateTitle;

  /// No description provided for @exploreEntertainment.
  ///
  /// In en, this message translates to:
  /// **'Entertainment'**
  String get exploreEntertainment;

  /// No description provided for @exploreFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get exploreFavorites;

  /// No description provided for @exploreFavouritesHeadline.
  ///
  /// In en, this message translates to:
  /// **'Make the <brandCyan>most</brandCyan> of your park <brandGreen>experience</brandGreen>!'**
  String get exploreFavouritesHeadline;

  /// No description provided for @exploreFavouritesSubheadline.
  ///
  /// In en, this message translates to:
  /// **'Save your favourites'**
  String get exploreFavouritesSubheadline;

  /// No description provided for @exploreFavouritesDescription.
  ///
  /// In en, this message translates to:
  /// **'Quickly access your must-visit rides, attractions, events, and more!'**
  String get exploreFavouritesDescription;

  /// No description provided for @exploreRidesAndAttractions.
  ///
  /// In en, this message translates to:
  /// **'Rides & Experiences'**
  String get exploreRidesAndAttractions;

  /// No description provided for @exploreShopping.
  ///
  /// In en, this message translates to:
  /// **'Shopping'**
  String get exploreShopping;

  /// No description provided for @wearablePairingSuccessMsg.
  ///
  /// In en, this message translates to:
  /// **'Your Aquatap is now linked to your ticket.'**
  String get wearablePairingSuccessMsg;

  /// No description provided for @cameraDisabledBSTitle.
  ///
  /// In en, this message translates to:
  /// **'Your camera is disabled'**
  String get cameraDisabledBSTitle;

  /// No description provided for @cameraDisabledBSDescription.
  ///
  /// In en, this message translates to:
  /// **'To continue, you need to enable camera access in your device settings.'**
  String get cameraDisabledBSDescription;

  /// No description provided for @qrScannerTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan the QR code'**
  String get qrScannerTitle;

  /// No description provided for @selectTicketToLinkTitle.
  ///
  /// In en, this message translates to:
  /// **'Link your <brandSpecialsPurple>Aquatap</brandSpecialsPurple> to a <brandCyan>Ticket</brandCyan>'**
  String get selectTicketToLinkTitle;

  /// No description provided for @selectTicketToLinkDescription.
  ///
  /// In en, this message translates to:
  /// **'Enjoy fast and easy payments with your NFC Aquatap while exploring the park.'**
  String get selectTicketToLinkDescription;

  /// No description provided for @pairingMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'Select <brandCyan>how</brandCyan> to connect your <brandSpecialsPurple>Aquatap</brandSpecialsPurple>'**
  String get pairingMethodTitle;

  /// No description provided for @pairingMethodDescription.
  ///
  /// In en, this message translates to:
  /// **'Enjoy fast and easy payments with your Aquatap while exploring the water theme park!'**
  String get pairingMethodDescription;

  /// No description provided for @pairViaQRTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan the <brandCyan>QR code</brandCyan> on the back of your Aquatap'**
  String get pairViaQRTitle;

  /// No description provided for @pairViaQRDescription.
  ///
  /// In en, this message translates to:
  /// **'Scan your QR code in a well-lit area to ensure the process is smooth and easy!'**
  String get pairViaQRDescription;

  /// No description provided for @descriptionOfScanViaQrOption.
  ///
  /// In en, this message translates to:
  /// **'Scan the QR code on the back of your Aquatap'**
  String get descriptionOfScanViaQrOption;

  /// No description provided for @titleOfScanNfcOption.
  ///
  /// In en, this message translates to:
  /// **'Scan an NFC tag'**
  String get titleOfScanNfcOption;

  /// No description provided for @descriptionOfScanNfcOption.
  ///
  /// In en, this message translates to:
  /// **'Automatically detect your Aquatap ID using your phone'**
  String get descriptionOfScanNfcOption;

  /// No description provided for @titleOfManualCodeOption.
  ///
  /// In en, this message translates to:
  /// **'Enter a manual code'**
  String get titleOfManualCodeOption;

  /// No description provided for @descriptionOfManualCodeOption.
  ///
  /// In en, this message translates to:
  /// **'Enter the ID code on the back of your Aquatap'**
  String get descriptionOfManualCodeOption;

  /// No description provided for @aquatapActivationTag.
  ///
  /// In en, this message translates to:
  /// **'Aquatap activation {currentStep}/{totalSteps}'**
  String aquatapActivationTag(int currentStep, int totalSteps);

  /// No description provided for @exploreDining.
  ///
  /// In en, this message translates to:
  /// **'Dining'**
  String get exploreDining;

  /// No description provided for @homeTicketsBought.
  ///
  /// In en, this message translates to:
  /// **'Make the most of your visit'**
  String get homeTicketsBought;

  /// No description provided for @homeCard4Title.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get homeCard4Title;

  /// No description provided for @homeCard4Description.
  ///
  /// In en, this message translates to:
  /// **'record-breaking rides'**
  String get homeCard4Description;

  /// No description provided for @homeButtonCardTitleActiveCart.
  ///
  /// In en, this message translates to:
  /// **'Resume your booking'**
  String get homeButtonCardTitleActiveCart;

  /// No description provided for @homeButtonCardTitleTicketsBought.
  ///
  /// In en, this message translates to:
  /// **'Plan your visit'**
  String get homeButtonCardTitleTicketsBought;

  /// No description provided for @homeButtonCardTitleWithoutTickets.
  ///
  /// In en, this message translates to:
  /// **'Book your tickets'**
  String get homeButtonCardTitleWithoutTickets;

  /// No description provided for @homeButtonCardSubtitleActiveCart.
  ///
  /// In en, this message translates to:
  /// **'Finish your purchase.'**
  String get homeButtonCardSubtitleActiveCart;

  /// No description provided for @homeButtonCardSubtitleTicketsBought.
  ///
  /// In en, this message translates to:
  /// **'Prep for a day full of fun'**
  String get homeButtonCardSubtitleTicketsBought;

  /// No description provided for @homeButtonCardSubtitleWithoutTickets.
  ///
  /// In en, this message translates to:
  /// **'Enjoy 22 rides and experiences!'**
  String get homeButtonCardSubtitleWithoutTickets;

  /// No description provided for @homeAreYouSureCloseCartTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to close your cart?'**
  String get homeAreYouSureCloseCartTitle;

  /// No description provided for @homeAreYouSureCloseCartDescription.
  ///
  /// In en, this message translates to:
  /// **'Please note that if you proceed, all items currently in your cart will be cleared. You\'ll need to start the booking process from scratch to secure your tickets.'**
  String get homeAreYouSureCloseCartDescription;

  /// No description provided for @homeYesClearMyCart.
  ///
  /// In en, this message translates to:
  /// **'yes, clear my cart'**
  String get homeYesClearMyCart;

  /// No description provided for @homeNoProceedToCheckout.
  ///
  /// In en, this message translates to:
  /// **'no, proceed to checkout'**
  String get homeNoProceedToCheckout;

  /// No description provided for @homeCTATicketsBought.
  ///
  /// In en, this message translates to:
  /// **'START PLANNING'**
  String get homeCTATicketsBought;

  /// No description provided for @homeCTAWithoutTickets.
  ///
  /// In en, this message translates to:
  /// **'Book now'**
  String get homeCTAWithoutTickets;

  /// No description provided for @partnersOfficialPremierPartnersTitle.
  ///
  /// In en, this message translates to:
  /// **'Official premier partners'**
  String get partnersOfficialPremierPartnersTitle;

  /// No description provided for @partnersOfficialPartnersTitle.
  ///
  /// In en, this message translates to:
  /// **'Official partners'**
  String get partnersOfficialPartnersTitle;

  /// No description provided for @partnersOfficialProviders.
  ///
  /// In en, this message translates to:
  /// **'Official providers'**
  String get partnersOfficialProviders;

  /// No description provided for @partnersDiscoverTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover our partners'**
  String get partnersDiscoverTitle;

  /// No description provided for @partnersViewAllCTA.
  ///
  /// In en, this message translates to:
  /// **'View all partners'**
  String get partnersViewAllCTA;

  /// No description provided for @exploreMainCategories.
  ///
  /// In en, this message translates to:
  /// **'MAIN CATEGORIES'**
  String get exploreMainCategories;

  /// No description provided for @explorePersonalised.
  ///
  /// In en, this message translates to:
  /// **'PERSONALIZED'**
  String get explorePersonalised;

  /// No description provided for @exploreMyVisits.
  ///
  /// In en, this message translates to:
  /// **'My Visits'**
  String get exploreMyVisits;

  /// No description provided for @exploreMyVisitGuestUserAccessPromptHeaderTitle.
  ///
  /// In en, this message translates to:
  /// **'My visit'**
  String get exploreMyVisitGuestUserAccessPromptHeaderTitle;

  /// No description provided for @exploreUserFeature.
  ///
  /// In en, this message translates to:
  /// **'User feature'**
  String get exploreUserFeature;

  /// No description provided for @exploreOther.
  ///
  /// In en, this message translates to:
  /// **'OTHER'**
  String get exploreOther;

  /// No description provided for @exploreNoVisits.
  ///
  /// In en, this message translates to:
  /// **'No Visits'**
  String get exploreNoVisits;

  /// No description provided for @exploreAttractionsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover the water theme park'**
  String get exploreAttractionsListTitle;

  /// No description provided for @exploreRidesSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Record-Breaking Rides'**
  String get exploreRidesSectionTitle;

  /// No description provided for @exploreRidesFilters.
  ///
  /// In en, this message translates to:
  /// **'Rides & Experiences filters'**
  String get exploreRidesFilters;

  /// No description provided for @exploreDiningFilters.
  ///
  /// In en, this message translates to:
  /// **'Dining filters'**
  String get exploreDiningFilters;

  /// No description provided for @exploreShoppingFilters.
  ///
  /// In en, this message translates to:
  /// **'Shopping filters'**
  String get exploreShoppingFilters;

  /// No description provided for @exploreAdvancedFiltersShowResults.
  ///
  /// In en, this message translates to:
  /// **'SHOW ALL RESULTS'**
  String get exploreAdvancedFiltersShowResults;

  /// No description provided for @exploreMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get exploreMore;

  /// No description provided for @exploreNoWaitTimeSpan.
  ///
  /// In en, this message translates to:
  /// **'No wait'**
  String get exploreNoWaitTimeSpan;

  /// No description provided for @exploreReadMore.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get exploreReadMore;

  /// No description provided for @exploreLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get exploreLocationLabel;

  /// No description provided for @exploreRideTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Ride type'**
  String get exploreRideTypeLabel;

  /// No description provided for @exploreThrillLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Thrill level'**
  String get exploreThrillLevelLabel;

  /// No description provided for @exploreHeightRequirementLabel.
  ///
  /// In en, this message translates to:
  /// **'Height requirement'**
  String get exploreHeightRequirementLabel;

  /// No description provided for @exploreWeightRequirementLabel.
  ///
  /// In en, this message translates to:
  /// **'Weight requirement'**
  String get exploreWeightRequirementLabel;

  /// No description provided for @exploreAdultCompanionLabel.
  ///
  /// In en, this message translates to:
  /// **'Adult companion'**
  String get exploreAdultCompanionLabel;

  /// No description provided for @exploreHelpAndSupportMoreQuestionsAnswered.
  ///
  /// In en, this message translates to:
  /// **'More questions answered'**
  String get exploreHelpAndSupportMoreQuestionsAnswered;

  /// No description provided for @exploreFeaturesLabel.
  ///
  /// In en, this message translates to:
  /// **'Ride features'**
  String get exploreFeaturesLabel;

  /// No description provided for @exploreRestaurantTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Restaurant type'**
  String get exploreRestaurantTypeLabel;

  /// No description provided for @exploreMenuHighlightsLabel.
  ///
  /// In en, this message translates to:
  /// **'Menu highlights'**
  String get exploreMenuHighlightsLabel;

  /// No description provided for @exploreDietaryPreferencesLabel.
  ///
  /// In en, this message translates to:
  /// **'Dining preferences'**
  String get exploreDietaryPreferencesLabel;

  /// No description provided for @exploreCuisineTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Cuisine type'**
  String get exploreCuisineTypeLabel;

  /// No description provided for @exploreStoreTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Store type'**
  String get exploreStoreTypeLabel;

  /// No description provided for @exploreExclusiveDealsLabel.
  ///
  /// In en, this message translates to:
  /// **'Exclusive deals'**
  String get exploreExclusiveDealsLabel;

  /// No description provided for @exploreFeaturedCollectionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Featured collections'**
  String get exploreFeaturedCollectionsLabel;

  /// No description provided for @exploreFiltersReset.
  ///
  /// In en, this message translates to:
  /// **'RESET'**
  String get exploreFiltersReset;

  /// No description provided for @exploreAdvancedFiltersReset.
  ///
  /// In en, this message translates to:
  /// **'RESET'**
  String get exploreAdvancedFiltersReset;

  /// No description provided for @exploreSortButton.
  ///
  /// In en, this message translates to:
  /// **'Sort by • '**
  String get exploreSortButton;

  /// No description provided for @exploreListResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get exploreListResultsTitle;

  /// No description provided for @exploreShoppingFeaturedCollectionsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Spring-themed items'**
  String get exploreShoppingFeaturedCollectionsPlaceholder;

  /// No description provided for @exploreExclusiveDealsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'10% off on all items'**
  String get exploreExclusiveDealsPlaceholder;

  /// No description provided for @exploreDietaryPreferencesPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Vegetarian'**
  String get exploreDietaryPreferencesPlaceholder;

  /// No description provided for @exploreMenuHighlightsPlaceholder1.
  ///
  /// In en, this message translates to:
  /// **'Snacks'**
  String get exploreMenuHighlightsPlaceholder1;

  /// No description provided for @exploreMenuHighlightsPlaceholder2.
  ///
  /// In en, this message translates to:
  /// **'Frozen beverages'**
  String get exploreMenuHighlightsPlaceholder2;

  /// No description provided for @exploreDiningSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'FEATURED DINING'**
  String get exploreDiningSectionTitle;

  /// No description provided for @exploreSearchRecentSearches.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get exploreSearchRecentSearches;

  /// No description provided for @exploreSearchCleanHistory.
  ///
  /// In en, this message translates to:
  /// **'Clear history'**
  String get exploreSearchCleanHistory;

  /// No description provided for @exploreNoResults.
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get exploreNoResults;

  /// No description provided for @exploreTrySearchingForSomethingElse.
  ///
  /// In en, this message translates to:
  /// **'Try searching for something else'**
  String get exploreTrySearchingForSomethingElse;

  /// No description provided for @exploreSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get exploreSearch;

  /// No description provided for @exploreFacilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities'**
  String get exploreFacilities;

  /// No description provided for @exploreFavoriteNoInternetConnectionOnRemove.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t remove \'{name}\' from your list because you\'re offline. Check your connection and try again.'**
  String exploreFavoriteNoInternetConnectionOnRemove(Object name);

  /// No description provided for @exploreFavoriteRemovedSuccess.
  ///
  /// In en, this message translates to:
  /// **'{name} was removed from your favorites.'**
  String exploreFavoriteRemovedSuccess(Object name);

  /// No description provided for @exploreFavoriteAddError.
  ///
  /// In en, this message translates to:
  /// **'Sorry, there was an error adding {name} to your favourites. Please try again later!'**
  String exploreFavoriteAddError(Object name);

  /// No description provided for @exploreFavoriteRemoveError.
  ///
  /// In en, this message translates to:
  /// **'Unable to remove {name} from your favourites.'**
  String exploreFavoriteRemoveError(Object name);

  /// No description provided for @exploreFavoriteNoInternetConnectionOnAdd.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t add \'{name}\' to your favourites because you\'re offline. Check your connection and try again.'**
  String exploreFavoriteNoInternetConnectionOnAdd(Object name);

  /// No description provided for @exploreFavoriteAddedSuccess.
  ///
  /// In en, this message translates to:
  /// **'{name} was added to your favorites!'**
  String exploreFavoriteAddedSuccess(Object name);

  /// No description provided for @privacyPolicyAgreementPrefix.
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get privacyPolicyAgreementPrefix;

  /// No description provided for @startNavigation.
  ///
  /// In en, this message translates to:
  /// **'Start navigation'**
  String get startNavigation;

  /// No description provided for @openGoogleMaps.
  ///
  /// In en, this message translates to:
  /// **'Open Google Maps'**
  String get openGoogleMaps;

  /// No description provided for @cardSavedMessage.
  ///
  /// In en, this message translates to:
  /// **'Your card has been saved successfully.'**
  String get cardSavedMessage;

  /// No description provided for @creditCardStoreFailed.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t save your credit card at the moment. Please try again to save your payment method information.'**
  String get creditCardStoreFailed;

  /// No description provided for @goBackToPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Go to Payment methods'**
  String get goBackToPaymentMethod;

  /// No description provided for @addNewCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Add a <brandBlue>new</brandBlue> card'**
  String get addNewCardTitle;

  /// No description provided for @cardHolderName.
  ///
  /// In en, this message translates to:
  /// **'Cardholder name'**
  String get cardHolderName;

  /// No description provided for @bracketedExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry date (MM/YY)'**
  String get bracketedExpiryDate;

  /// No description provided for @bracketedSecurityCode.
  ///
  /// In en, this message translates to:
  /// **'Security code (CVV)'**
  String get bracketedSecurityCode;

  /// No description provided for @deleteCardConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {cardNumber}?'**
  String deleteCardConfirmationTitle(Object cardNumber);

  /// No description provided for @deleteCardConfirmationDesc.
  ///
  /// In en, this message translates to:
  /// **'This will permanently remove the card from your account and unlink this payment method from any connected Aquataps.'**
  String get deleteCardConfirmationDesc;

  /// No description provided for @setDefultCardConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Would you like to set this card as your default payment method?'**
  String get setDefultCardConfirmationTitle;

  /// No description provided for @setDefultCardConfirmationDescription.
  ///
  /// In en, this message translates to:
  /// **'Your current default payment method is {cardNumber}.'**
  String setDefultCardConfirmationDescription(Object cardNumber);

  /// No description provided for @deleteCatdBtn.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete card'**
  String get deleteCatdBtn;

  /// No description provided for @yesSetDefaultButton.
  ///
  /// In en, this message translates to:
  /// **'Yes, set as default'**
  String get yesSetDefaultButton;

  /// No description provided for @cardDeletedSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your card has been deleted successfully.'**
  String get cardDeletedSuccessMessage;

  /// No description provided for @setDefaultSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your {cardNumber} has been set as your default payment method.'**
  String setDefaultSuccessMessage(Object cardNumber);

  /// No description provided for @setDefailtFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Your {cardNumber} was not set as your default payment method. Please try again.'**
  String setDefailtFailedMessage(Object cardNumber);

  /// No description provided for @cardDeletedFailedMessage.
  ///
  /// In en, this message translates to:
  /// **'Your credit card was not deleted. Please try again.'**
  String get cardDeletedFailedMessage;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @errorInternetConnectionMessage.
  ///
  /// In en, this message translates to:
  /// **'It seems there´s problem connecting to the server. Please check your internet connection or try again later.'**
  String get errorInternetConnectionMessage;

  /// No description provided for @connectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get connectionFailed;

  /// No description provided for @vpCreatingYourVisitLoading.
  ///
  /// In en, this message translates to:
  /// **'We are <brandGreen>creating</brandGreen> your\n<brandYellow>visit</brandYellow>, just a moment...'**
  String get vpCreatingYourVisitLoading;

  /// No description provided for @totalToPay.
  ///
  /// In en, this message translates to:
  /// **'Total to pay'**
  String get totalToPay;

  /// No description provided for @ticketTotal.
  ///
  /// In en, this message translates to:
  /// **'Ticket total'**
  String get ticketTotal;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @ticketSummary.
  ///
  /// In en, this message translates to:
  /// **'Order summary'**
  String get ticketSummary;

  /// No description provided for @digitalRegistrationCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'CREATE ACCOUNT '**
  String get digitalRegistrationCreateAccount;

  /// No description provided for @exploreNoSearchResultsTile.
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get exploreNoSearchResultsTile;

  /// No description provided for @exploreNoSearchResultsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Try searching for something else.'**
  String get exploreNoSearchResultsSubtitle;

  /// No description provided for @b2cPaymentErrorDescription.
  ///
  /// In en, this message translates to:
  /// **'Try again or use a different payment method to complete your booking.'**
  String get b2cPaymentErrorDescription;

  /// No description provided for @commonReturn.
  ///
  /// In en, this message translates to:
  /// **'return'**
  String get commonReturn;

  /// No description provided for @exploreViewAllRides.
  ///
  /// In en, this message translates to:
  /// **'VIEW ALL RIDES & EXPERIENCES'**
  String get exploreViewAllRides;

  /// No description provided for @exploreViewAllDining.
  ///
  /// In en, this message translates to:
  /// **'VIEW ALL DINING'**
  String get exploreViewAllDining;

  /// No description provided for @exploreViewAllShopping.
  ///
  /// In en, this message translates to:
  /// **'VIEW ALL SHOPPING'**
  String get exploreViewAllShopping;

  /// No description provided for @exploreStoresSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'POPULAR STORES'**
  String get exploreStoresSectionTitle;

  /// No description provided for @downloadMapTitle.
  ///
  /// In en, this message translates to:
  /// **'Downloading map...'**
  String get downloadMapTitle;

  /// No description provided for @downloadMapSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Please wait. This may take a few seconds.'**
  String get downloadMapSubTitle;

  /// No description provided for @connectionLostAdviceMessage.
  ///
  /// In en, this message translates to:
  /// **'Check your connection to access the full features of the app.'**
  String get connectionLostAdviceMessage;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @exploreNoAttractionsFoundError.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get exploreNoAttractionsFoundError;

  /// No description provided for @exploreAllCategories.
  ///
  /// In en, this message translates to:
  /// **'All categories'**
  String get exploreAllCategories;

  /// No description provided for @exploreNoTrips.
  ///
  /// In en, this message translates to:
  /// **'NO TRIPS'**
  String get exploreNoTrips;

  /// No description provided for @chipText.
  ///
  /// In en, this message translates to:
  /// **'User feature'**
  String get chipText;

  /// No description provided for @exploreFavouritesTitle.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get exploreFavouritesTitle;

  /// No description provided for @exploreParkMapListViewButton.
  ///
  /// In en, this message translates to:
  /// **'LIST VIEW'**
  String get exploreParkMapListViewButton;

  /// No description provided for @exploreShowLess.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get exploreShowLess;

  /// No description provided for @exploreWaitTimeSpan.
  ///
  /// In en, this message translates to:
  /// **' wait'**
  String get exploreWaitTimeSpan;

  /// No description provided for @exploreProductTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Product type'**
  String get exploreProductTypeLabel;

  /// No description provided for @exploreAccessibilityInformationText.
  ///
  /// In en, this message translates to:
  /// **'Accessibility information'**
  String get exploreAccessibilityInformationText;

  /// No description provided for @exploreAdvancedFiltersUpdating.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get exploreAdvancedFiltersUpdating;

  /// No description provided for @exploreAdvancedFiltersShowResultsWithCount.
  ///
  /// In en, this message translates to:
  /// **'SHOW RESULTS ({count})'**
  String exploreAdvancedFiltersShowResultsWithCount(Object count);

  /// No description provided for @exploreFastPassLabel.
  ///
  /// In en, this message translates to:
  /// **'AquaFast Pass'**
  String get exploreFastPassLabel;

  /// No description provided for @exploreGenderPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Male / Female'**
  String get exploreGenderPlaceholder;

  /// No description provided for @exploreCommaSeparator.
  ///
  /// In en, this message translates to:
  /// **', '**
  String get exploreCommaSeparator;

  /// No description provided for @bookTicketsTitle.
  ///
  /// In en, this message translates to:
  /// **'AquaFast Pass'**
  String get bookTicketsTitle;

  /// No description provided for @fastPassDesc.
  ///
  /// In en, this message translates to:
  /// **'Book now and skip the queue!'**
  String get fastPassDesc;

  /// No description provided for @fastPassButton.
  ///
  /// In en, this message translates to:
  /// **'BOOK'**
  String get fastPassButton;

  /// No description provided for @visitName1.
  ///
  /// In en, this message translates to:
  /// **'Visit name 1'**
  String get visitName1;

  /// No description provided for @visitName2.
  ///
  /// In en, this message translates to:
  /// **'Visit name 2'**
  String get visitName2;

  /// No description provided for @visitName3.
  ///
  /// In en, this message translates to:
  /// **'Visit name 3'**
  String get visitName3;

  /// No description provided for @visitName4.
  ///
  /// In en, this message translates to:
  /// **'Visit name 4'**
  String get visitName4;

  /// No description provided for @whoGoingTripProTip.
  ///
  /// In en, this message translates to:
  /// **'<bold>Pro tip!</bold> Children age four and under enter for free, but please register them below!'**
  String get whoGoingTripProTip;

  /// No description provided for @notificationsViewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get notificationsViewAll;

  /// No description provided for @notificationsUnreadOnly.
  ///
  /// In en, this message translates to:
  /// **'Unread only'**
  String get notificationsUnreadOnly;

  /// No description provided for @notificationReadAll.
  ///
  /// In en, this message translates to:
  /// **'Read all'**
  String get notificationReadAll;

  /// No description provided for @notificationsToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get notificationsToday;

  /// No description provided for @notificationsYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get notificationsYesterday;

  /// No description provided for @notificationsOlder.
  ///
  /// In en, this message translates to:
  /// **'Older'**
  String get notificationsOlder;

  /// No description provided for @aquaTapTitle.
  ///
  /// In en, this message translates to:
  /// **'Aquatap'**
  String get aquaTapTitle;

  /// No description provided for @b2cAquaTapManualCodeActivationHeader.
  ///
  /// In en, this message translates to:
  /// **'Enter the <brandCyan>number</brandCyan> on the back of your <brandCyan>Aquatap</brandCyan>'**
  String get b2cAquaTapManualCodeActivationHeader;

  /// No description provided for @guestSelectionInfoToastMessage.
  ///
  /// In en, this message translates to:
  /// **'Please note that infants age 0–3 don\'t require a ticket.'**
  String get guestSelectionInfoToastMessage;

  /// No description provided for @visitPlannerUpcomingEvents.
  ///
  /// In en, this message translates to:
  /// **'Upcoming trips'**
  String get visitPlannerUpcomingEvents;

  /// No description provided for @visitPlannerOneUpcomingEvent.
  ///
  /// In en, this message translates to:
  /// **'Upcoming trip'**
  String get visitPlannerOneUpcomingEvent;

  /// No description provided for @visitPlannerPastEvents.
  ///
  /// In en, this message translates to:
  /// **'Past trips'**
  String get visitPlannerPastEvents;

  /// No description provided for @visitPlannerOnePastEvent.
  ///
  /// In en, this message translates to:
  /// **'Past trip'**
  String get visitPlannerOnePastEvent;

  /// No description provided for @b2cBookingStepDateTicketsDescription.
  ///
  /// In en, this message translates to:
  /// **'You do not need to select a date for your visit!'**
  String get b2cBookingStepDateTicketsDescription;

  /// No description provided for @vpExploreMyVisitEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Let the fun begin!'**
  String get vpExploreMyVisitEmptyTitle;

  /// No description provided for @vpExploreMyVisitEmptyDescription.
  ///
  /// In en, this message translates to:
  /// **'You can customise your plan, pick from ready-made itineraries or save to your favorites.'**
  String get vpExploreMyVisitEmptyDescription;

  /// No description provided for @vpExploreMyVisitEmptyButton.
  ///
  /// In en, this message translates to:
  /// **'Plan my visit'**
  String get vpExploreMyVisitEmptyButton;

  /// No description provided for @deleteAquaTapTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to deactivate this Aquatap {wearableId}?'**
  String deleteAquaTapTitle(String wearableId);

  /// No description provided for @deleteAquaTapDescription.
  ///
  /// In en, this message translates to:
  /// **'You will lose your payment method and access to add-ons and experiences through your Aquatap {wearableId}.'**
  String deleteAquaTapDescription(Object wearableId);

  /// No description provided for @deleteAquaTapBtn.
  ///
  /// In en, this message translates to:
  /// **'YES, DEACTIVATE'**
  String get deleteAquaTapBtn;

  /// No description provided for @successDeleteAquaTapMsg.
  ///
  /// In en, this message translates to:
  /// **'Your Aquatap has been deactivated.'**
  String get successDeleteAquaTapMsg;

  /// No description provided for @errorDeleteAquaTapMsg.
  ///
  /// In en, this message translates to:
  /// **'Your Aquatap was not deactivated. Please try again.'**
  String get errorDeleteAquaTapMsg;

  /// No description provided for @exploreSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get exploreSelectAll;

  /// No description provided for @addPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'ADD a payment method'**
  String get addPaymentMethod;

  /// No description provided for @linkPaymentMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'<brandCyan>Link</brandCyan> a payment method for cashless transactions'**
  String get linkPaymentMethodTitle;

  /// No description provided for @selectCardDesc.
  ///
  /// In en, this message translates to:
  /// **'Select a card you would like to use for cashless transactions using your Aquatap.'**
  String get selectCardDesc;

  /// No description provided for @ticketDetailsPriceTitle.
  ///
  /// In en, this message translates to:
  /// **'TOTAL PRICE (inc VAT)'**
  String get ticketDetailsPriceTitle;

  /// No description provided for @digitalReactivateInformation1.
  ///
  /// In en, this message translates to:
  /// **'It looks like this mobile number is linked to an Aquarabia Qiddiya City account scheduled for deletion. Reactivate it now and keep everything at your fingertips!'**
  String get digitalReactivateInformation1;

  /// No description provided for @digitalReactivateInformation2.
  ///
  /// In en, this message translates to:
  /// **'Regain access to your tickets, entitlements, and favorites.'**
  String get digitalReactivateInformation2;

  /// No description provided for @digitalReactivateInformation3.
  ///
  /// In en, this message translates to:
  /// **'Recover your personal information exactly as you left it.'**
  String get digitalReactivateInformation3;

  /// No description provided for @didUserPrefsQ1Title.
  ///
  /// In en, this message translates to:
  /// **'What types of <brandGreen>activities</brandGreen>\ndo you <brandSpecialsPurple>enjoy</brandSpecialsPurple>?'**
  String get didUserPrefsQ1Title;

  /// No description provided for @b2cBookingStepExperienceTitle.
  ///
  /// In en, this message translates to:
  /// **'Book an\n<brandWhite>experience</brandWhite> & make your day WOW!'**
  String get b2cBookingStepExperienceTitle;

  /// No description provided for @b2cBookingStepExperienceDescription.
  ///
  /// In en, this message translates to:
  /// **'Make your time in the water theme park even more brilliant!'**
  String get b2cBookingStepExperienceDescription;

  /// No description provided for @b2cBookingStepExperienceTag.
  ///
  /// In en, this message translates to:
  /// **'experiences'**
  String get b2cBookingStepExperienceTag;

  /// No description provided for @digitalEditYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Edit your phone number'**
  String get digitalEditYourPhoneNumber;

  /// No description provided for @didUserPrefsQ3_first_time.
  ///
  /// In en, this message translates to:
  /// **'This is my first time!'**
  String get didUserPrefsQ3_first_time;

  /// No description provided for @didUserPrefsQ3_multiple_times_year.
  ///
  /// In en, this message translates to:
  /// **'Three times or more a year'**
  String get didUserPrefsQ3_multiple_times_year;

  /// No description provided for @personalPreferencesStepperTagLine.
  ///
  /// In en, this message translates to:
  /// **'PERSONAL PREFERENCES'**
  String get personalPreferencesStepperTagLine;

  /// No description provided for @didUserPrefsQ3Title.
  ///
  /// In en, this message translates to:
  /// **'How <brandGreen>often</brandGreen> do you <brandCyan>visit</brandCyan>\ntheme parks?'**
  String get didUserPrefsQ3Title;

  /// No description provided for @pairViaNfcTitle.
  ///
  /// In en, this message translates to:
  /// **'Hold your phone above the <brandCyan>Aquatap</brandCyan> to link the devices'**
  String get pairViaNfcTitle;

  /// No description provided for @pairViaNfcDescription.
  ///
  /// In en, this message translates to:
  /// **'To link the two devices, hold your NFC-powered Aquatap to the upper section on the back of your mobile.'**
  String get pairViaNfcDescription;

  /// No description provided for @nfcDisabledBSTitle.
  ///
  /// In en, this message translates to:
  /// **'Turn on NFC'**
  String get nfcDisabledBSTitle;

  /// No description provided for @nfcDisabledBSDescription.
  ///
  /// In en, this message translates to:
  /// **'To continue, you need to enable NFS connection in your device settings.'**
  String get nfcDisabledBSDescription;

  /// No description provided for @parkPoliciesTitle.
  ///
  /// In en, this message translates to:
  /// **'Water theme park policies'**
  String get parkPoliciesTitle;

  /// No description provided for @homeLiveStreamTitle.
  ///
  /// In en, this message translates to:
  /// **'Don\'t miss these <brandYellow>live</brandYellow> <brandCyan>moments</brandCyan>'**
  String get homeLiveStreamTitle;

  /// No description provided for @setupPin.
  ///
  /// In en, this message translates to:
  /// **'<brandCyan>Set up a PIN</brandCyan> for your security'**
  String get setupPin;

  /// No description provided for @confirmPin.
  ///
  /// In en, this message translates to:
  /// **'<brandCyan>Confirm</brandCyan> your PIN'**
  String get confirmPin;

  /// No description provided for @enterPinDesc.
  ///
  /// In en, this message translates to:
  /// **'Enter a four-digit PIN to use when making payments. You will be required to enter this PIN for each transaction.'**
  String get enterPinDesc;

  /// No description provided for @reEnterPinDesc.
  ///
  /// In en, this message translates to:
  /// **'Please re-enter your four-digit PIN.'**
  String get reEnterPinDesc;

  /// No description provided for @pinVerificationFailed.
  ///
  /// In en, this message translates to:
  /// **'Sorry, verification failed. We\'re currently experiencing technical difficulties. Please try again later or contact Customer Services for assistance.'**
  String get pinVerificationFailed;

  /// No description provided for @pinSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Your payment method\nis set up!'**
  String get pinSuccessTitle;

  /// No description provided for @pinSuccessPoint1.
  ///
  /// In en, this message translates to:
  /// **'You can now make fast and easy payments at any merchant and food outlet!'**
  String get pinSuccessPoint1;

  /// No description provided for @pinSuccessPoint2.
  ///
  /// In en, this message translates to:
  /// **'Use your Aquatap to access the water theme park and your other add-ons and extras!'**
  String get pinSuccessPoint2;

  /// No description provided for @pinSuccessPoint3.
  ///
  /// In en, this message translates to:
  /// **'You can deactivate your Aquatap at any time — just visit My profile.'**
  String get pinSuccessPoint3;

  /// No description provided for @homeParkOpenStatus.
  ///
  /// In en, this message translates to:
  /// **'open'**
  String get homeParkOpenStatus;

  /// No description provided for @homeParkClosingStatus.
  ///
  /// In en, this message translates to:
  /// **'closing'**
  String get homeParkClosingStatus;

  /// No description provided for @homeParkClosedStatus.
  ///
  /// In en, this message translates to:
  /// **'closed'**
  String get homeParkClosedStatus;

  /// No description provided for @homeDiscoverMapTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover the water theme park'**
  String get homeDiscoverMapTitle;

  /// No description provided for @exploreWeAreOpen.
  ///
  /// In en, this message translates to:
  /// **'We\'re open!'**
  String get exploreWeAreOpen;

  /// No description provided for @exploreLetTheFunBegin.
  ///
  /// In en, this message translates to:
  /// **'Let the fun begin!'**
  String get exploreLetTheFunBegin;

  /// No description provided for @exploreOpeningDay.
  ///
  /// In en, this message translates to:
  /// **'Park opens'**
  String get exploreOpeningDay;

  /// No description provided for @exploreDays.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get exploreDays;

  /// No description provided for @exploreHours.
  ///
  /// In en, this message translates to:
  /// **'Hrs'**
  String get exploreHours;

  /// No description provided for @exploreMin.
  ///
  /// In en, this message translates to:
  /// **'Mins'**
  String get exploreMin;

  /// No description provided for @exploreSec.
  ///
  /// In en, this message translates to:
  /// **'Secs'**
  String get exploreSec;

  /// No description provided for @b2cRemoveAddonsCartDescription.
  ///
  /// In en, this message translates to:
  /// **'You can remove any experiences and add-ons attached to this ticket, or delete the ticket from the cart.'**
  String get b2cRemoveAddonsCartDescription;

  /// No description provided for @goToDeviceSettigsCta.
  ///
  /// In en, this message translates to:
  /// **'Go to device settings'**
  String get goToDeviceSettigsCta;

  /// No description provided for @exploreUrgent.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get exploreUrgent;

  /// No description provided for @notificationSilence.
  ///
  /// In en, this message translates to:
  /// **'Silence updates for 1 hour'**
  String get notificationSilence;

  /// No description provided for @exploreGetInstructions.
  ///
  /// In en, this message translates to:
  /// **'Get instructions'**
  String get exploreGetInstructions;

  /// No description provided for @informationCardCompletedFinish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get informationCardCompletedFinish;

  /// No description provided for @informationCardCompletedRouteSubTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'ve reached your destination!'**
  String get informationCardCompletedRouteSubTitle;

  /// No description provided for @informationCardCompletedRouteTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'ve arrived at {destination}!'**
  String informationCardCompletedRouteTitle(Object destination);

  /// No description provided for @routeInformationCardDistance.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get routeInformationCardDistance;

  /// No description provided for @routeInformationCardDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get routeInformationCardDone;

  /// No description provided for @routeInformationCardMinAway.
  ///
  /// In en, this message translates to:
  /// **'min away'**
  String get routeInformationCardMinAway;

  /// No description provided for @routeInformationCardMinsAway.
  ///
  /// In en, this message translates to:
  /// **'mins away'**
  String get routeInformationCardMinsAway;

  /// No description provided for @oopsExclamation.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get oopsExclamation;

  /// No description provided for @exploreDistanceKm.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get exploreDistanceKm;

  /// No description provided for @exploreDistanceMeter.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get exploreDistanceMeter;

  /// No description provided for @wearablePaymentMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get wearablePaymentMethodTitle;

  /// No description provided for @exploreThePark.
  ///
  /// In en, this message translates to:
  /// **'Explore the Park'**
  String get exploreThePark;

  /// No description provided for @welcomeTo.
  ///
  /// In en, this message translates to:
  /// **'Welcome to {name}'**
  String welcomeTo(Object name);

  /// No description provided for @enjoyYourVisit.
  ///
  /// In en, this message translates to:
  /// **'Enjoy your visit!'**
  String get enjoyYourVisit;

  /// No description provided for @discoverAllTheAttractions.
  ///
  /// In en, this message translates to:
  /// **'Discover all the attractions we have to offer.'**
  String get discoverAllTheAttractions;

  /// No description provided for @commonAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get commonAdd;

  /// No description provided for @linkCardDesc.
  ///
  /// In en, this message translates to:
  /// **'You can link this payment method again in the future if you change your mind.'**
  String get linkCardDesc;

  /// No description provided for @successDeletePaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Your payment method was deleted successfully'**
  String get successDeletePaymentMethod;

  /// No description provided for @errorDeletePaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Your payment method was not deleted. Please try again.'**
  String get errorDeletePaymentMethod;

  /// No description provided for @aboutYouTag.
  ///
  /// In en, this message translates to:
  /// **'About you'**
  String get aboutYouTag;

  /// No description provided for @aboutYouDesc.
  ///
  /// In en, this message translates to:
  /// **'Add your preferences to personalize your experience and in-app recommendations.'**
  String get aboutYouDesc;

  /// No description provided for @personalPreferences.
  ///
  /// In en, this message translates to:
  /// **'Personal preferences'**
  String get personalPreferences;

  /// No description provided for @pinErrorInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Incorrect code. Please try again.'**
  String get pinErrorInvalidCode;

  /// No description provided for @b2cByGabrielMedinaTag.
  ///
  /// In en, this message translates to:
  /// **'BY GABRIEL MEDINA'**
  String get b2cByGabrielMedinaTag;

  /// No description provided for @upcomingOnTag.
  ///
  /// In en, this message translates to:
  /// **'UPCOMING ON'**
  String get upcomingOnTag;

  /// No description provided for @activitiesErrorRetryButton.
  ///
  /// In en, this message translates to:
  /// **'RETRY'**
  String get activitiesErrorRetryButton;

  /// No description provided for @digitalExploreFavouritesTitle.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get digitalExploreFavouritesTitle;

  /// No description provided for @digitalExploreFavouritesSubheadline.
  ///
  /// In en, this message translates to:
  /// **'Save your favorites'**
  String get digitalExploreFavouritesSubheadline;

  /// No description provided for @digitalExploreFavouritesHeadline.
  ///
  /// In en, this message translates to:
  /// **'Make the <brandCyan>most</brandCyan> of your water theme park <brandSpecialsPurple>experience</brandSpecialsPurple>!'**
  String get digitalExploreFavouritesHeadline;

  /// No description provided for @digitalExploreFavouritesDescription.
  ///
  /// In en, this message translates to:
  /// **'For quick access, save your must-visit rides, experiences, events, and more!'**
  String get digitalExploreFavouritesDescription;

  /// No description provided for @annualEmailAddressCommunicationText.
  ///
  /// In en, this message translates to:
  /// **'I agree that this email address will be used for any communication from Aquarabia Qiddiya City with Annual Pass holders.'**
  String get annualEmailAddressCommunicationText;

  /// No description provided for @junoonDropChipLabel.
  ///
  /// In en, this message translates to:
  /// **'Record-breaking'**
  String get junoonDropChipLabel;

  /// No description provided for @junoonDropTitle.
  ///
  /// In en, this message translates to:
  /// **'JUNOON DROP'**
  String get junoonDropTitle;

  /// No description provided for @junoonDropDescription.
  ///
  /// In en, this message translates to:
  /// **'Get ready for the world’s tallest and longest water coaster!'**
  String get junoonDropDescription;

  /// No description provided for @junoonDropTags.
  ///
  /// In en, this message translates to:
  /// **'family'**
  String get junoonDropTags;

  /// No description provided for @colossalCanyonChipLabel.
  ///
  /// In en, this message translates to:
  /// **'Adventure'**
  String get colossalCanyonChipLabel;

  /// No description provided for @colossalCanyonTitle.
  ///
  /// In en, this message translates to:
  /// **'COLOSSAL CANYON'**
  String get colossalCanyonTitle;

  /// No description provided for @colossalCanyonDescription.
  ///
  /// In en, this message translates to:
  /// **'Get ready for the ultimate thrill-seeking escapade in the region!'**
  String get colossalCanyonDescription;

  /// No description provided for @colossalCanyonTags.
  ///
  /// In en, this message translates to:
  /// **'experience'**
  String get colossalCanyonTags;

  /// No description provided for @surftopiaChipLabel.
  ///
  /// In en, this message translates to:
  /// **'Surfing'**
  String get surftopiaChipLabel;

  /// No description provided for @surftopiaTitle.
  ///
  /// In en, this message translates to:
  /// **'Surftopia'**
  String get surftopiaTitle;

  /// No description provided for @surftopiaDescription.
  ///
  /// In en, this message translates to:
  /// **'Catch waves in Saudi’s first surf pool!'**
  String get surftopiaDescription;

  /// No description provided for @surftopiaTags.
  ///
  /// In en, this message translates to:
  /// **'experience'**
  String get surftopiaTags;

  /// No description provided for @aquaticarChipLabel.
  ///
  /// In en, this message translates to:
  /// **'Aquaticar®'**
  String get aquaticarChipLabel;

  /// No description provided for @aquaticarTitle.
  ///
  /// In en, this message translates to:
  /// **'Aquaticar'**
  String get aquaticarTitle;

  /// No description provided for @aquaticarDescription.
  ///
  /// In en, this message translates to:
  /// **'A first-of-its-kind underwater adventure ride that takes you on an immersive journey!'**
  String get aquaticarDescription;

  /// No description provided for @aquaticarTags.
  ///
  /// In en, this message translates to:
  /// **'experience'**
  String get aquaticarTags;

  /// No description provided for @exploreAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get exploreAll;

  /// No description provided for @pricePerPerson.
  ///
  /// In en, this message translates to:
  /// **'per person'**
  String get pricePerPerson;

  /// No description provided for @pluralAnnualPass.
  ///
  /// In en, this message translates to:
  /// **'Annual Passes'**
  String get pluralAnnualPass;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
