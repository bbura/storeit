// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get commonContinue => 'متابعة';

  @override
  String get continueBooking => 'أضف إلى السلة';

  @override
  String get commonAppName => 'Aquarabia Qiddiya City';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonExit => 'خروج';

  @override
  String get commonClose => 'إغلاق';

  @override
  String get commonDone => 'تم';

  @override
  String get commonEdit => 'تعديل';

  @override
  String get commonSearch => 'بحث';

  @override
  String get goAquaArabiaByTaxiInfo1 =>
      'الوصول إلى أكواريبيا مدينة القدية بالسيارة أو التاكسي في غاية السهولة. ما عليكم سوى اتباع الخطوات التالية:\n\nالخطوة 1: اكتبوا \"أكواريبيا مدينة القدية\" في تطبيق الخرائط، واتبعوا اللوحات الإرشادية المؤدية إلى مدينة القدية.\n\nالخطوة 2: عند الوصول، سيرحب بكم موظفونا ويرشدونكم إلى منطقة المواقف المخصصة.\n\nالخطوة 3: بعد إيقاف السيارة، استقلوا حافلتنا الخاصة بالنقل الترددي لتوصلكم إلى المتنزه الترفيهي خلال دقائق قليلة فقط.';

  @override
  String get goAquaArabiaByTaxiInfo2 =>
      'نصيحة هامة: يُرجى تجهيز التذكرة لتقديمها عند الوصول .تتوفر مواقف السيارات وفق أسبقية الوصول.';

  @override
  String get commonSave => 'حفظ';

  @override
  String get commonInfantsNote =>
      'يرجى ملاحظة أن الأطفال بعمر ثلاثة أعوام فأقل لا يحتاجون إلى تذكرة.';

  @override
  String get commonSeniorCitizenNote =>
      'تتوفر تذاكر كبار السن، وتذاكر المرافقين، وتذاكر ذوي الإعاقة للشراء في المتنزه.';

  @override
  String get commonGuestsWithDisabilitiesNote =>
      'نرحب بضيوفنا من ذوي الإعاقة. يرجى إبراز بطاقة إثبات الإعاقة عند شباك التذاكر للحصول على تذكرتكم.';

  @override
  String get commonPickerItemsLabel => 'جميع الخيارات';

  @override
  String get commonPersonalInformation => 'المعلومات الشخصية';

  @override
  String get commonLoadingCTAFirstThreshold => 'Hang on please...';

  @override
  String get commonLoadingCTASecondThreshold => 'Still loading...';

  @override
  String get settingAppVersion => 'إصدار التطبيق ';

  @override
  String get commonLoadingCTAThirdThreshold => 'Almost there...';

  @override
  String get commonLearnMore => 'لمعرفة المزيد';

  @override
  String get b2cOptionalTopLabel => '*رقم الهاتف';

  @override
  String get searchError => 'لم نعثر على نتائج. يرجى إعادة المحاولة';

  @override
  String get oops => 'عذرًا!';

  @override
  String get editingProfileHeightSuccessMessage => 'تم حفظ الطول بنجاح.';

  @override
  String get editingProfileHeightErrorMessage =>
      'نعتذر، لم يتم حفظ الطول. يرجى إعادة المحاولة.';

  @override
  String get settingsGenderChanged => 'تم حفظ الجنس بنجاح';

  @override
  String get genderSaveError => 'نعتذر، لم يتم حفظ الجنس. يرجى إعادة المحاولة.';

  @override
  String get height => 'الطول';

  @override
  String get heightUnit => 'سم';

  @override
  String get heightSelectorScreenTitle => 'اختاروا طولكم';

  @override
  String get editingProfileEmailTitle => 'تعديل البريد الإلكتروني';

  @override
  String get editingProfileDateOfBirthTitle => 'تعديل تاريخ الميلاد';

  @override
  String get editingProfileFirstNameTitle => 'تعديل الاسم الأول';

  @override
  String get editingProfileLastNameTitle => 'تعديل اسم العائلة';

  @override
  String get editingProfileAccessibilityOptionTitle =>
      'اختاروا من بين خيارات <brandCyan>تسهيلات الاستخدام</brandCyan>';

  @override
  String digitalCloseEditingDescription(Object fieldName) {
    return 'اذا غادرتم الآن، لن يتم حفظ التغييرات في $fieldName.';
  }

  @override
  String get editingProfileSaveClose => 'حفظ وإغلاق';

  @override
  String get editingProfileDiscard => 'تجاهل';

  @override
  String get editingProfileEmailHasBeenUpdated =>
      'لقد تم تحديث عنوان بريدك الإلكتروني.';

  @override
  String editingProfileFieldHasBeenUpdated(Object field) {
    return 'تم تحديث $field.';
  }

  @override
  String editingProfileFieldWasNotUpdated(Object field) {
    return 'لم يتم تحديث $field .يُرجى المحاولة مرة أخرى';
  }

  @override
  String get visualImpairment => 'ضعف البصر';

  @override
  String get displayVisualImpairment => 'بصرية';

  @override
  String get hearingImpairment => 'ضعف السمع';

  @override
  String get displayHearingImpairment => 'السمع';

  @override
  String get mentalImpairment => 'التحديات الذهنية';

  @override
  String get displayMentalImpairment => 'الذهنية';

  @override
  String get wheelchairUser => 'مستخدمي الكراسي المتحركة';

  @override
  String get displayWheelchairUser => 'كرسي متحرك';

  @override
  String get duplicateTripError => 'تعذر نسخ زيارتك. يرجى المحاولة مرة أخرى';

  @override
  String get editingProfileNationalityTitle => 'اختاروا الجنسية';

  @override
  String get editingProfileNationalitySuccessMessage => 'تم حفظ جنسيتكم بنجاح.';

  @override
  String get editingProfileNationalityErrorMessage =>
      'نعتذر، لم يتم حفظ الجنسية. يرجى إعادة المحاولة.';

  @override
  String get profileMyProfile => 'ملفي الشخصي';

  @override
  String get profileWhyNeedQrCode => 'لماذا أحتاج إلى رمز QR؟';

  @override
  String get profileLogOut => 'تسجيل الخروج';

  @override
  String get profileId => 'رقم العضوية';

  @override
  String get profileMyTickets => 'تذاكري';

  @override
  String get profileSignUpTitle => 'استعدوا لمغامرتكم القادمة!';

  @override
  String get profileSignUpDescription =>
      'أنشؤوا حسابًا للحصول على عروض حصرية وتوصيات مخصصة، أو سجلوا الدخول للاستفادة من مزايا حسابكم!';

  @override
  String get profileNoTicketsTitle => 'لا يوجد لديك أي تذاكر';

  @override
  String get profileNoTicketsDescription =>
      'سيتم عرض التذاكر هنا عند إتمام أول حجز';

  @override
  String get profileBuyNow => 'احصلوا عليها الآن';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get personalInformationsettingsTitle => 'الإعدادات';

  @override
  String get settingsAccount => 'حسابي';

  @override
  String get settingsQiddiyaApps => 'My Qiddiya Apps';

  @override
  String get settingsPersonalInfo => 'المعلومات الشخصية';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsLanguageTitle => 'اختر لغتك';

  @override
  String get settingsLanguageChanged => 'تم تحديث خيارات اللغة المفضلة بنجاح.';

  @override
  String get settingsTermsConditions => 'الشروط والأحكام';

  @override
  String get settingsPaymentMethods => 'طرق الدفع';

  @override
  String get settingsBiometric => 'المصادقة ياستخدام البصمة';

  @override
  String get settingsAppPermissions => 'صلاحيات التطبيق';

  @override
  String get settingsAccesibility => 'إمكانية الوصول';

  @override
  String get settingsDeleteAccount => 'حذف الحساب';

  @override
  String get settingsAppPermissionAlertTitle => 'التنبيهات';

  @override
  String get settingsAppPermissionAlertDescription =>
      'إبقوا على اطلاع دائم مع التحديثات الفورية للمتنزه المائي وأحوال الطقس وإيصالات الشراء لتحسين تجربة زيارتكم!';

  @override
  String get settingsAppPermissionPushNotification => 'الإشعارات';

  @override
  String get settingsAppPermissionInAppNotification => 'إشعارات داخل التطبيق';

  @override
  String get settingsAppPermissionEmail => 'البريد الإلكتروني';

  @override
  String get settingsTermsAndConditions => 'الشروط والأحكام';

  @override
  String get settingsAppPermissionSMS => 'الرسائل النصية';

  @override
  String get settingsAppPermissionTitle => 'التصريحات';

  @override
  String get settingsAppPermissionDescription =>
      'السماح بتلقي تحديثات الأنشطة وإيصالات الدفع والإشعارات العاجلة ومعلومات الطقس.';

  @override
  String get settingsAppPermissionGeolocation => 'الموقع الجغرافي';

  @override
  String get settingsAppPermissionPromotionsTitle => 'العروض الترويجية';

  @override
  String get settingsAppPermissionPromotionsDescription =>
      'كونوا أول من يعرف عن التجارب الجديدة والعروض والخصومات!';

  @override
  String get settingsAppPermissionInfo2 =>
      'ستستمر في تلقي تنبيهات الطقس والسلامة حتى وإن قمت بتعطيل الإشعارات، لأن هذه التنبيهات أساسية لضمان سلامة الزوار وضمان سير المتنزه المائي بكفاءة.';

  @override
  String get configurationSettingsTitle => 'الإعدادات';

  @override
  String get personalInformationTitle => 'المعلومات الشخصية';

  @override
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get emailAddress => 'البريد الإلكتروني';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'اسم العائلة';

  @override
  String get dateOfBirth => 'تاريخ الميلاد';

  @override
  String get nationality => 'الجنسية';

  @override
  String get gender => 'الجنس';

  @override
  String get accessibilityOptions => 'خيارات تسهيلات الاستخدام';

  @override
  String get add => 'أضف';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageArab => 'العربية';

  @override
  String get customizeProfile => ' تخصيص الملف الشخصي';

  @override
  String get settingsSearch => 'بحث';

  @override
  String get editingProfilePhoneHasBeenUpdated =>
      'Your phone number  has been updated.';

  @override
  String get homeCard1Description => 'record-breaking rides';

  @override
  String get homeCard1Title => 'Explore';

  @override
  String get exploreAdvancedFiltersHeightRequirementLabel =>
      'أدخلوا طول الراكب للتحقق من الأهلية';

  @override
  String get exploreAdvancedFiltersHeightRequirementUnit => 'سم';

  @override
  String get exploreAdvancedFiltersWeightRequirementLabel =>
      'أدخلوا وزن الراكب للتحقق من الأهلية.';

  @override
  String get exploreAdvancedFiltersWeightRequirementUnit => 'كج';

  @override
  String get homeCard2Description => ' تذاكر دخولكم إلى المتنزه';

  @override
  String get homeCard2Title => 'احجزوا';

  @override
  String get homeCard3Description => 'زيارتكم بكل سهولة';

  @override
  String get homeCard3Title => 'خططوا';

  @override
  String get onboardingSecondaryAction => 'تسجيل الدخول أو إنشاء حساب';

  @override
  String get onboardingStory1Title =>
      '<brandYellow>تخطوا</brandYellow> الطوابير!';

  @override
  String get onboardingStory1Description =>
      'احجزوا تذاكركم بسهولة واستمتعوا بعروض حصرية!';

  @override
  String get onboardingStory2Title =>
      '<brandCyan>انطلقوا</brandCyan> بثقة داخل المدينة';

  @override
  String get onboardingStory2Description =>
      'اكتشفوا المتنزه المائي، خططوا لرحلتكم، واستمتعوا بكل لحظة.';

  @override
  String get onboardingStory3Title =>
      'هل تحتاجون إلى <brandSpecialsPurple>مساعدة؟</brandSpecialsPurple>';

  @override
  String get onboardingStory3Description =>
      'تواصلوا مع خدمة رفيق المغامرات للحصول على دعم فوري.';

  @override
  String get onboardingStory4Title =>
      'استعدوا <brandBlue>للمغامرة!</brandBlue>';

  @override
  String get onboardingStory4Description =>
      'عيشوا تجارب جديدة، اصنعوا ذكريات لا تنسى واستمتعوا باستكشاف المتنزه المائي.';

  @override
  String get digitalCloseRegisterTitle => 'هل أنتم متأكدون؟';

  @override
  String get startTheAdventure => 'ابدأوا المغامرة';

  @override
  String get getReadyForAFullDayOfFun => 'استعدوا ليوم كامل من المتعة';

  @override
  String get digitalCloseRegisterDescription =>
      'إذا غادرتم الآن، لن يتم تسجيل الحساب.';

  @override
  String get digitalCloseRegisterPrimaryText => 'لا، متابعة';

  @override
  String get digitalCloseRegisterSecondaryText => 'نعم، إلغاء';

  @override
  String get countryCodeSelectionCTA => 'اختاروا رمز الدولة';

  @override
  String digitalPersonalDetailsMinCharError(Object nrCharacters) {
    return 'الحد الأدنى $nrCharacters حروف';
  }

  @override
  String digitalPersonalDetailsMaxCharError(Object nrCharacters) {
    return 'الحد الأقصى $nrCharacters حروف';
  }

  @override
  String get digitalPersonalDetailsEmailFormatError =>
      'يبدو أن البريد الالكتروني المدخل غير صحيح';

  @override
  String get digitalPersonalDetailsPhoneAlreadyInUse =>
      'هذا البريد الإلكتروني مستخدم بالفعل برقم هاتف مختلف';

  @override
  String get digitalPersonalLastName => 'اسم العائلة';

  @override
  String get digitalPhoneCountryCodeLabel => 'رمز';

  @override
  String get digitalSmsPageSubtitle =>
      'يرجى <brandCyan>تأكيد</brandCyan> رقم هاتفكم';

  @override
  String get digitalSmsPageInfo => 'أرسلنا الرمز إلى';

  @override
  String get digitalSmsPageVerifyCode => 'تأكيد الرمز';

  @override
  String get digitalSmsPageResendCode => 'إرسال رمز جديد';

  @override
  String get digitalSmsPageResendCodeSuccess =>
      'تم إرسال رمز جديد إلى رقم هاتفك.';

  @override
  String get digitalSmsPageErrorPhoneBadRequest =>
      'طلب غير صالح: رقم الهاتف أو معرف التحقق أو رمز التحقق مفقود أو غير صالح.';

  @override
  String get digitalSmsPageErrorInvalidOTP =>
      'رمز التحقق و/أو معرف التحقق غير صالح';

  @override
  String get digitalSmsPageErrorUserOrTenantNotFound =>
      'لم يتم العثور على المستخدم أو المستأجر';

  @override
  String get digitalSmsPageErrorPhoneNumberNotConfirmed =>
      'لم يتم تأكيد رقم الهاتف بعد';

  @override
  String get digitalSmsPageErrorPhoneUnauthorized =>
      'الرمز المدخل غير صحيح. يرجى المحاولة مرة أخرى.';

  @override
  String get digitalSmsPageMaximumResendAttemptsReached =>
      'تم الوصول إلى الحد الأقصى لمحاولات إعادة الإرسال. حاول مرة أخرى لاحقاً.';

  @override
  String get digitalSmsPageSessionExpired =>
      'انتهت صلاحية الرمز. اطلب رمزاً جديداً للمتابعة.';

  @override
  String get digitalSmsPageAuthenticationUnexpectedError => 'حدث خطأ غير متوقع';

  @override
  String get digitalEmailPageSubtitle =>
      'Please <brandCyan>verify</brandCyan> your email address';

  @override
  String get digitalPhoneNumberTitle =>
      'أدخل <brandCyan>رقم هاتفك</brandCyan> وابدأ المغامرة!';

  @override
  String get digitalOtpPageResendEmailCodeSuccess =>
      'تم إرسال رمز جديد إلى عنوان بريدكم الإلكتروني.';

  @override
  String get digitalResendOtpCode => ' إعادة إرسال الرمز خلال';

  @override
  String get digitalRegistrationOrLoginTag => 'تسجيل الدخول وإنشاء حساب';

  @override
  String get digitalOtpPageHelperMessageEmailValidation =>
      'لم تجد الرمز؟ تحقق من صندوق البريد العشوائي أو الرسائل غير المرغوب بها.';

  @override
  String get digitalOtpPageHelperMessageEmailEdit =>
      'سنرسل رمزاً للتحقق من بريدكم الإلكتروني.';

  @override
  String get resendCodeErrorCoolDown =>
      'تم تعليق حسابك مؤقتًا بسبب كثرة محاولات إرسال الرمز.';

  @override
  String get maximumVerificationAttemptsReached =>
      'لقد تم ايقاف صلاحية الدخول لحسابك لمدة 60 دقيقة، وذلك لانك قد وصلت للحد الأقصى من محاولات التحقق غير الناجحة.';

  @override
  String get maximumResendAttemptsReached =>
      'Maximum resend attempts reached. Try again later.';

  @override
  String get authenticationPhoneNumberInvalid => 'رقم الهاتف مفقود أو غير صالح';

  @override
  String get authenticationOvertookByOtherDevice =>
      'Your account was used on another device';

  @override
  String get deletePageYesDelete => 'نعم، إحذف الحساب';

  @override
  String get deletePageTitle => 'هل تودون تأكيد حذف حسابكم؟';

  @override
  String get digitalTransactionCompleteUserDeleted => 'تم حذف ملفكم الشخصي';

  @override
  String get digitalTransactionCompleteUserDeletedInformation1 =>
      'يمكنكم إعادة تفعيل الحساب خلال سبعة أيام من خلال تسجيل الدخول.';

  @override
  String get digitalTransactionCompleteUserDeletedInformation2 =>
      'سيتم حذف حسابكم نهائيًا بعد سبعة أيام. يمكنكم لاحقاً إنشاء حساب جديد باستخدام نفس رقم الجوال والبريد الإلكتروني.';

  @override
  String get deletePageSubtitle =>
      'في حال حذف حسابكم، لن تتمكنوا من الوصول إلى ما يلي:\n  •  التذاكر والامتيازات وسجل الخيارات المفضلة.\n  •  اقتراحات مخصصة وجدول الزيارة.\n  •  المزايا الحصرية والمكافآت.';

  @override
  String get deletePageGoHome => 'اكتشف المتنزه';

  @override
  String get deleteSuccessPageSubtitle =>
      'إذا غيّرت رأيك، يمكنك إنشاء حساب جديد باستخدام نفس رقم الهاتف أو البريد الإلكتروني.';

  @override
  String get deleteSuccessPageTitle => 'نأسف لمغادرتك';

  @override
  String get deleteSuccessMessage =>
      'مرحبًا بعودتك! نحن سعداء لرؤيتك مرة أخرى.';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get digitalRegistrationTitle =>
      '<brandCyan>سجلوا</brandCyan> <brandMediumBlue>الآن واستمتعوا </brandMediumBlue> <brandSpecialsPurple>بالمغامرة</brandSpecialsPurple> <brandMediumBlue>في أكواريبيا مدينة القدية!</brandMediumBlue>';

  @override
  String get digitalRegistrationTag => '٢/١';

  @override
  String get digitalRegistrationTag2 => '٢/٢';

  @override
  String get digitalRegistrationInformation1 =>
      'انشؤوا حسابكم الآن. خطوات بسيطة تفصلكم عن عالم مليء بالمرح!';

  @override
  String get digitalRegistrationInformation2 =>
      'احجزوا تذاكركم وأديروا حجوزاتكم بكل سهولة من مكان واحد!';

  @override
  String get digitalRegistrationInformation3 =>
      'الخيار لكم! يمكنكم التخطيط لزيارتكم قبل أو أثناء تواجدكم.';

  @override
  String get digitalRegistrationInformation4 =>
      'فعلوا الإشعارات!! وابقَوا على اتصال مع نظام الخرائط في المتنزه للحصول على كافة المعلومات حول الألعاب';

  @override
  String get digitalRegistrationComplete =>
      'Crafting your\n<brandYellow>perfect</brandYellow> <brandGreen>day</brandGreen>...';

  @override
  String get digitalTermsSequence1 => 'اطلعوا على ';

  @override
  String get digitalTermsSequence2 => 'الشروط والأحكام';

  @override
  String get digitalTermsSequence3 => ' و ';

  @override
  String get digitalTermsSequence4 => 'سياسة الخصوصية.';

  @override
  String digitalTransactionCompleteUserGreeting(Object userName) {
    return 'مبروك يا $userName، حسابك جاهز!';
  }

  @override
  String get digitalTransactionCompleteInformation1 =>
      'تم إنشاء حسابكم وهويتكم الرقمية بنجاح.';

  @override
  String get digitalTransactionCompleteInformation2 =>
      'تعمل هويتكم الرقمية على جمع تذاكركم في مكان واحد.';

  @override
  String get digitalTransactionCompleteCompleteProfile => 'استكمال ملفي الشخصي';

  @override
  String get digitalTransactionCompleteAddBiometric => 'إضافة البصمة';

  @override
  String get digitalTransactionCompleteFaceId => 'أضف معرف الوجه';

  @override
  String get digitalTransactionCompleteTouchId => 'أضف بصمة الإصبع';

  @override
  String get digitalTransactionCompleteContinue => 'تخصيص ملفي الشخصي';

  @override
  String get digitalTransactionCompleteDone => 'اكتشفوا المتنزه المائي';

  @override
  String get digitalPersonalDetailsTag => 'التفاصيل الشخصية 2/3';

  @override
  String get digitalPersonalDetailsTitle =>
      'أخبرنا قليلاً <brandCyan>عنك</brandCyan>';

  @override
  String get digitalPersonaFirstName => 'الاسم الأول';

  @override
  String get digitalPersonalSurname => 'اسم العائلة';

  @override
  String get digitalPersonalDateBirth => 'تاريخ الميلاد';

  @override
  String get digitalPersonalEmailAddress => ' البريد الإلكتروني';

  @override
  String get digitalPersonalDateHint => '';

  @override
  String get digitalPersonalEmailHint =>
      'سنرسل رمزًا للتحقق من بريدك الإلكتروني.';

  @override
  String get digitalPhoneNumberSubtitle =>
      'سجلوا الدخول إلى حسابكم أو أنشئوا حسابًا جديدًا بخطوات بسيطة وسريعة!';

  @override
  String get digitalPhoneNumberInputLabel => 'رقم الهاتف';

  @override
  String get digitalPhoneNumberContinue => 'متابعة';

  @override
  String get digitalPhoneNumberCannotStartWithZero =>
      'لا يمكن لرقم الهاتف أن يبدأ بصفر.';

  @override
  String get digitalPhoneNumberInvalidCharacter =>
      'لا يمكن لرقم الهاتف أن يحتوي على رموز خاصة.';

  @override
  String get digitalPhoneNumberTooLong =>
      'يُرجى التأكد من أن رقم الجوال المدخل يتطابق مع عدد أرقام وصيغة البلد المختارة.';

  @override
  String get digitalPhoneNumberTooShort =>
      'رقم هاتفك غير مكتمل. تأكد من إدخال رقم هاتفك كاملاً.';

  @override
  String get digitalPhoneNumberOnlyDigits =>
      'يمكن لرقم الهاتف أن يحتوي على أرقام فقط.';

  @override
  String get digitalOtpPageErrorInvalidCode =>
      'الرمز المدخل غير صحيح. يرجى المحاولة مرة أخرى.';

  @override
  String get digitalPersonalDetailsTitleExistingUser =>
      'نظرة على معلومات ملفكم الشخصي.';

  @override
  String digitalBiometricsActivationTitle(Object biometric) {
    return 'تفعيل المصادقة <brandSpecialsPurple>$biometric</brandSpecialsPurple>';
  }

  @override
  String get digitalBiometricsTagLine => 'المصادقة باستخدام البصمة';

  @override
  String get digitalBiometricsActivationInformation1 =>
      'احصل على وصول سريع وآمن للتطبيق.';

  @override
  String get digitalBiometricsActivationInformation2 =>
      'جميع البصمات المسجلة على هذا الهاتف ستكون قادرة على الدخول للتطبيق.';

  @override
  String get digitalBiometricsActivationInformation3 =>
      'يمكنك إلغاء ذلك من إعدادات الأمان في حسابك.';

  @override
  String get digitalBiometricsActivationReason =>
      'الرجاء المصادقة لتفعيل المقاييس الحيوية';

  @override
  String get digitalBiometricsActivationContinue => 'متابعة';

  @override
  String get digitalBiometricsActivationRetry => 'أعد المحاولة';

  @override
  String digitalBiometricsActivatedGreeting(Object userName) {
    return 'ممتاز يا $userName، تم إضافة بصمتك بنجاح!';
  }

  @override
  String get digitalBiometricsActivatedInformation1 =>
      'تم تحديث إعدادات الأمان لحسابك.';

  @override
  String get digitalBiometricsActivatedInformation2 =>
      'بإمكانك الآن استخدام بصمتك لدخول التطبيق. لتغيير ذلك، يرجى الذهاب إلى إعدادات الحساب.';

  @override
  String get digitalBiometricsActivatedContinue => 'تخصيص ملفي الشخصي';

  @override
  String get digitalBiometricsActivatedDone => 'اكتشف المتنزه';

  @override
  String get digitalBiometricsToggleFaceId => 'بصمة الوجه';

  @override
  String get digitalBiometricsToggleTouchId => 'بصمة الإصبع';

  @override
  String get digitalBiometricsToggleDefault => 'البصمة';

  @override
  String digitalBiometricsEnabledSuccess(Object biometric) {
    return 'تم تفعيل $biometric.';
  }

  @override
  String digitalBiometricsEnableError(Object biometric) {
    return 'تعذّر تفعيل $biometric. يرجى المحاولة مرة أخرى.';
  }

  @override
  String digitalBiometricsDisabledSuccess(Object biometric) {
    return 'تم تعطيل $biometric. في تسجيل الدخول التالي، سنطلب رقم هاتفكم للوصول إلى حسابكم.';
  }

  @override
  String digitalBiometricsPermissionDialogTitle(Object biometric) {
    return 'تفعيل صلاحيات $biometric';
  }

  @override
  String digitalBiometricsPermissionDialogDescription(Object biometric) {
    return 'للإستمرار، يجب تفعيل صلاحيات $biometric من إعدادات الهاتف';
  }

  @override
  String get digitalBiometricsPermissionDialogContinue =>
      'الذهاب إلى إعدادات الجهاز';

  @override
  String get digitalBiometricsPermissionDialogCancel => 'إلغاء';

  @override
  String get digitalGoToDeviceSettigs => 'اذهب الى اعدادات الجهاز';

  @override
  String get digitalPermissionsEnableNotifications => 'تفعيل الإشعارات';

  @override
  String get digitalPermissionsEnableNotificationsDesc =>
      'يرجى تفعيل الإشعارات في إعدادات جهازكم لتلقي التحديثات والتنبيهات. قد تتضمن الإشعارات أصواتًا وتنبيهات وأيقونات.';

  @override
  String get digitalPermissionsEnableGeolocation => 'الموقع معطل';

  @override
  String get digitalPermissionsEnableGeolocationDesc =>
      'للإستمرار، يجب تفعيل صلاحيات الموقع من إعدادات الهاتف.';

  @override
  String get digitalPermissionsNotificationsUpdated =>
      'تم تحديث تفضيلات الإشعارات لديكم.';

  @override
  String get digitalPermissionsNotificationsUpdateFailed =>
      'لم نتمكن من تحديث تفضيلات الإشعارات الخاصة بكم. يرجى المحاولة مرة أخرى.';

  @override
  String get digitalPermissionsGeolocationUpdated =>
      'تم تحديث موقعكم الجغرافي.';

  @override
  String get digitalPermissionsGeolocationUpdateFailed =>
      'لم نتمكن من تحديث موقعكم الجغرافي. يرجى المحاولة مرة أخرى.';

  @override
  String get digitalPermissionsPromotionUpdated =>
      'تم تحديث تفضيلات العروض الخاصة بكم.';

  @override
  String get digitalPermissionsPromotionUpdateFailed =>
      'لم نتمكن من تحديث تفضيلات العروض الخاصة بكم. يرجى المحاولة مرة أخرى.';

  @override
  String get digitalPermissionsAlertUpdated =>
      'تم تحديث تفضيلات التنبيهات الخاصة بكم.';

  @override
  String get digitalPermissionsAlertUpdateFailed =>
      'We couldn\'t update your alert preferences. Please, try again.';

  @override
  String get digitalGetStartedTag => 'ابدأوا الآن';

  @override
  String get profileDetails => 'معلومات الملف الشخصي';

  @override
  String get verificationFailedTitle => 'عذراً، حدث خطأ غير متوقع';

  @override
  String get verificationFailedMessage =>
      'فشل التحقق. نواجه حاليًا بعض الصعوبات التقنية. يرجى المحاولة مرة أخرى لاحقًا أو التواصل مع الدعم للحصول على المساعدة.';

  @override
  String digitalReactivateTitleName(Object userName) {
    return 'We’re glad to see you again, <brandCyan>$userName</brandCyan>!';
  }

  @override
  String get errorPageTitle => 'حدث مشكلة';

  @override
  String get errorPageTopButton => 'إعادة المحاولة';

  @override
  String get errorPageBottomButton => 'العودة';

  @override
  String get genderSelectorScreenTitle => 'الجنس';

  @override
  String get male => 'ذكر';

  @override
  String get female => 'أنثى';

  @override
  String get settingsAccessibilityOptionChanged =>
      'تم حفظ خيارات تسهيلات الاستخدام بنجاح.';

  @override
  String get accessibilityOptionSaveError =>
      'لم يتم حفظ خيارات الوصول الخاصة بك. يرجى المحاولة مرة أخرى.';

  @override
  String get navBarHomeItem => 'الرئيسية';

  @override
  String get navBarExploreItem => 'استكشف';

  @override
  String get navBarVisitItem => 'زيارتي';

  @override
  String get navBarTicketsItem => 'التذاكر';

  @override
  String get notificationTitle => 'الإشعارات';

  @override
  String get digitalSearchResults => 'نتائج البحث';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get notificationsDesc =>
      'للحصول على آخر التحديثات والعروض، قوموا بتفعيل إشعارات التطبيق';

  @override
  String get settingsSupport => 'الدعم';

  @override
  String get settingsHelpAndSupport => 'الدعم والمساعدة';

  @override
  String get settingsSupportDesc => 'احصلوا على إجابات لجميع تساؤلاتكم';

  @override
  String get notificationsButton => 'إعداد الإشعارات';

  @override
  String get emptyNotificationSubtitle => 'لا توجد إشعارات جديدة!';

  @override
  String get emptyNotificationTitle => 'لا جديد!';

  @override
  String get rides => 'الألعاب';

  @override
  String get entertainment => 'الترفيه';

  @override
  String get dinning => 'المطاعم';

  @override
  String get shopping => 'التسوق';

  @override
  String get shoppingHomeScreen => 'التسوق';

  @override
  String get notificationsTitle => 'ابقوا على اطلاع!';

  @override
  String get avatarSelectorScreenTitle => 'اختاروا الأفاتار الخاص بكم';

  @override
  String get avatarSelectorScreenButtonText => 'اختاروا هذا الأفاتار';

  @override
  String get avatarSelectorAvatarUpdatedSucceed =>
      'تم تحديث الأفاتار الخاص بكم.';

  @override
  String get avatarSelectorAvatarUpdatedError =>
      'لم نتمكن من حفظ الأفاتار الخاص بكم. يرجى إعادة المحاولة.';

  @override
  String get visitPlanner => 'منظم الزيارات';

  @override
  String get favourites => 'الخيارات المفضلة';

  @override
  String get errorPageMessage => ' يرجى المحاولة مرة أخرى.';

  @override
  String get commonSkip => 'تخطي';

  @override
  String get profileSetupStepperTagLine => 'إعداد الملف الشخصي';

  @override
  String get helpAndSupportTopicsSectionTitle => 'المواضيع';

  @override
  String get helpAndSupportCategoryTitle => 'الفئة';

  @override
  String get helpAndSupportSubCategoryTitle => 'الفئة الفرعية';

  @override
  String get helpAndSupportCategoryDescription => 'الوصف حول الفئة هنا.';

  @override
  String get helpAndSupportStillNeedHelpTitle =>
      'هل لا تزال بحاجة إلى مساعدة؟ ';

  @override
  String get helpAndSupportChatWithUs => 'تواصلوا معنا';

  @override
  String get helpAndSupportChatWithUsDescription => 'وصف الفئة هنا.';

  @override
  String get helpAndSupportEmailUs => 'راسلونا عبر البريد الإلكتروني';

  @override
  String get helpAndSupportEmailUsDescription => 'وصف الفئة هنا.';

  @override
  String get helpAndSupportCallUs => 'اتصلوا بنا';

  @override
  String get helpAndSupportCallUsDescription =>
      'Description about category goes here.';

  @override
  String get helpAndSupportParkServices => 'خدمات المنتزه';

  @override
  String helpAndSupportParkServicesDescription(Object phoneNumber) {
    return 'للمزيد من المعلومات اتصل على <brightblue>$phoneNumber</brightblue>';
  }

  @override
  String get helpAndSupportEmergencyAssistance => 'المساعدة الطارئة';

  @override
  String helpAndSupportEmergencyAssistanceDescription(Object phoneNumber) {
    return 'اتصل بنا على <brightblue>$phoneNumber</brightblue>';
  }

  @override
  String get helpAndSupportLostAndFound => 'المفقودات';

  @override
  String helpAndSupportLostAndFoundDescription(Object phoneNumber) {
    return 'للإبلاغ عن طفل أو غرض مفقود <brightblue>$phoneNumber</brightblue>';
  }

  @override
  String get callParkServicesTitle => 'الاتصال بخدمات المنتزه';

  @override
  String get aquatapConnectedTitle => 'رائع! جهاز Aquatap الخاص بك متصل!';

  @override
  String get aquatapConnectedSubtitle =>
      'لإكمال تجربتك المجانية عبر الهاتف المحمول، يمكنك أيضًا إعداد رقم سري لعمليات الشراء الآمنة في المنتزه.';

  @override
  String get aquatapConnectedPrimaryButton =>
      'قم بإعداد الرقم السري وطريقة الدفع.';

  @override
  String get aquatapCompletedTitle => 'تم إعداد أكواتاب!';

  @override
  String get aquatapCompletedInfoPoint1 =>
      'يمكنك الوصول إلى الحديقة وأي إضافات وميزات أخرى باستخدام جهاز Aquatap الخاص بك!';

  @override
  String get aquatapCompletedInfoPoint2 =>
      'يمكنك إلغاء تنشيط جهاز Aquatap الخاص بك في أي وقت من قسم ملفي الشخصي.';

  @override
  String get aquatapCompletedPrimaryButton => 'إعداد أكواتاب أخرى';

  @override
  String get aquatapCompletedSecondaryButton => 'إنهاء';

  @override
  String get callEmergencyAssistanceTitle => 'الاتصال بالمساعدة الطارئة';

  @override
  String get callLostAndFoundTitle => 'الإبلاغ عن طفل مفقود أو ممتلكات';

  @override
  String get emailError => 'إعداد تطبيق بريد إلكتروني';

  @override
  String get emailSubject => 'الموضوع';

  @override
  String get emailErrorMessage =>
      'لإرسال بريد إلكتروني، تحتاج إلى إعداد تطبيق بريد إلكتروني على هذا الجهاز أولاً.';

  @override
  String get visitPlannerCreateYourOwnCTA => 'خططوا لزيارتكم';

  @override
  String get visitPlannerCreateYourOwnDescriptionCTA =>
      'ننتقي بعناية أروع ما لدينا، وأنتم تختارون ما يليق بكم!';

  @override
  String get vpGuestUserAccessPromptMainTitle =>
      'خططوا لزيارتكم المثالية إلى أكواريبيا مدينة القدية!';

  @override
  String get guestAccessPromptFavoriteLoginOrSignUpButton =>
      'تسجيل الدخول أو إنشاء حساب';

  @override
  String get guestAccessPromptFavoriteLoginButton => 'تسجيل الدخول';

  @override
  String vpCustomTripTitle(Object currentStep, Object totalSteps) {
    return 'رحلة مفصلة $currentStep/$totalSteps';
  }

  @override
  String vpCopyVisitTitle(int currentStep, int totalSteps) {
    return 'نسخ الزيارة $currentStep/$totalSteps';
  }

  @override
  String get vpTripDateQuestionVariation => 'متى تخطط للزيارة؟';

  @override
  String planLimitExceedsMessage(Object limit) {
    return 'لقد وصلت إلى الحد الأقصى وهو $limit رحلات. يرجى إزالة خطة موجودة لإنشاء خطة جديدة.';
  }

  @override
  String get myVisitSignUpTitle => 'أدخل رقمك وابدأ مغامرتك!';

  @override
  String get myVisitSignUpDescription =>
      'قم بتسجيل الدخول لحفظ والوصول بسهولة إلى رحلاتك المفضلة، والمطاعم، والتجارب.';

  @override
  String get adult => 'بالغ';

  @override
  String get ages12 => 'من 12 سنة فما فوق';

  @override
  String get child => 'طفل';

  @override
  String get ages4to12 => 'من 5 إلى 12 سنة';

  @override
  String get infant => 'رضيع';

  @override
  String get ages0to4 => 'من 0 إلى 4 سنوات';

  @override
  String get senior => 'كبار السعوديين';

  @override
  String get ages65Plus => 'من 60 سنة فما فوق';

  @override
  String get alertNotificationCta => 'احصل على التعليمات';

  @override
  String get validIdRequired => 'يتطلب بطاقة هوية سارية';

  @override
  String get peopleOfDetermination => 'الاشخاص ذوي الإعاقة';

  @override
  String get peopleWithDisabilities => 'ذوي الإعاقات المسجلة';

  @override
  String get companion => 'مرافق';

  @override
  String get driversAndNannies => 'يشمل مقدمي الرعاية، السائقين، والمربيات';

  @override
  String get noTicketRequired => 'لا حاجة لتذكرة';

  @override
  String get ridesAndExperiences => 'الألعاب والتجارب';

  @override
  String get exploreDirectionToAttraction => 'الإتجاهات';

  @override
  String get vpCreateMyTripCTA => 'صمم رحلتي';

  @override
  String get templateEditingTitle => 'التفضيلات';

  @override
  String get templateEditVisitTitle => 'تعديل الزيارة';

  @override
  String templateDeletedSuccessMessage(Object template) {
    return 'تم إلغاء $template';
  }

  @override
  String templateDeletedErrorMessage(Object template) {
    return '$template could not be deleted. Please try again.';
  }

  @override
  String get templateUpdateAlertMessage => 'Your visit was updated';

  @override
  String get vpTripDateQuestion => 'متى تريد الزيارة؟';

  @override
  String get vpCopyThisVisit => 'نسخ الزيارة';

  @override
  String get useTemplateButtonTitle => 'استخدموا هذا النموذج';

  @override
  String createTripFormTemplateSuccessMessage(Object templateName) {
    return '<brandYellow>$templateName</brandYellow> أصبحت جاهزة!';
  }

  @override
  String get createTripCompleteTransactionButtonTitle => 'عرض زياراتي';

  @override
  String get createTripCompleteTransactionInfoPoint1 =>
      'خصصوا خطة رحلتكم لتناسبكم أكثر بإضافة التفاصيل وتعديلها';

  @override
  String vpTemplateTripTitle(
      int currentStep, int totalSteps, String templateName) {
    return '$templateName $currentStep/$totalSteps';
  }

  @override
  String get createTripFromTemplateCompleteTransactionButtonTitle =>
      'عرض زياراتي';

  @override
  String get createTripFromTemplateCompleteTransactionInfoPoint1 =>
      'خصصوا خطة رحلتكم لتناسبكم أكثر بإضافة التفاصيل وتعديلها';

  @override
  String get createTripFromTemplateCompleteTransactionInfoPoint2 =>
      'لتصفح وإدارة زياراتكم عبر الخريطة أو عرض القائمة، اضغطوا على أيقونة الاستكشاف';

  @override
  String get createMyTripTitle => 'صمم رحلتي';

  @override
  String get makeTheMostOfYourVisit => 'استفيدوا من زيارتكم إلى أقصى حد!';

  @override
  String get planYourVisit => 'احجز تذاكرك';

  @override
  String get prepForDayFullOfFun => 'احصل على تذاكر لزيارتك القادمة';

  @override
  String get startPlanning => 'ابدأ التخطيط';

  @override
  String get bookYourVisit => 'احجزوا زيارتكم';

  @override
  String get bookYourTickets => 'احجزوا تذاكركم';

  @override
  String get getTicketsForYourNextVisit => 'احصل على تذاكر لزيارتك القادمة';

  @override
  String get bookNow => 'احجز الآن';

  @override
  String get resumeYourBooking => 'أكملوا عملية الحجز';

  @override
  String get dontMissOutFinishYourPurchase =>
      'لا تفوّتوا الفرصة، أكمِلوا عملية الشراء';

  @override
  String get payNow => 'ادفعوا الآن';

  @override
  String get exploreHomeBook => 'استكشاف';

  @override
  String get recordBreakingRides => 'ركوب قياسي';

  @override
  String get addonsHomeBook => 'الإضافات';

  @override
  String get forTheAddedThrill => 'لإضافة الإثارة';

  @override
  String get vipBundle => 'حزمة VIP';

  @override
  String get forTheAddedThrillvip => 'التي تضيف لمسة إضافية من الدهشة';

  @override
  String get makePaymentsFast =>
      'يمكنك إجراء المدفوعات بسرعة وسهولة في أي متجر أو منفذ طعام!';

  @override
  String get accessParkAddOns =>
      'ادخل إلى الحديقة وأي إضافات أو خدمات أخرى باستخدام سوارك!';

  @override
  String get deLinkWristband =>
      'يمكنك إلغاء ربط سوارك في أي وقت من قسم \'ملفي الشخصي\'.';

  @override
  String get immersiveLandsHeadline =>
      'تجارب <primary>مائية</primary> مميزة <brandYellow>لأول مرة</brandYellow> في السعودية';

  @override
  String get immersiveLandsCardButtonCTA => 'اكتشفوا اللعبة';

  @override
  String get immersiveLandsCardButtonCTAWithExperience => 'اكتشفوا التجربة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get privacyPolicyUpdatedTitle =>
      'تم <brandCyan>تحديث</brandCyan> الشروط والأحكام';

  @override
  String get privacyPolicyTermsAndConditions => 'الشروط و الاحكام';

  @override
  String get privacyVersion => 'نسخة';

  @override
  String get privacyPolicyDescription =>
      'لمتابعة استخدام التطبيق، الرجاء مراجعة الشروط والأحكام وسياسة الخصوصية المحدثة.';

  @override
  String get ticketDetailsParkNameTitle => 'أكواربيا القدية';

  @override
  String get ticketDetailsParkCityTitle => 'المزاحمية 13776';

  @override
  String get active => 'نشط';

  @override
  String get used => 'مستخدم';

  @override
  String get ticketVisitPlanningTitle => 'خطط لزيارتك الآن';

  @override
  String get ticketEmptyStateTitle => 'لا يوجد لديكم أي تذاكر حتى الآن!';

  @override
  String get ticketEmptyStateDescription =>
      'مغامرتكم تبدأ هنا. اشتروا تذاكركم وافتحوا الباب ليوم مليئ بالمغامرات في أكواريبيا مدينة القدية.';

  @override
  String get ticketEmptyBuyTicketButtonTitle => 'اشتروا تذاكركم الآن';

  @override
  String get ticketEmptyLinkTicketButtonTitle => 'ربط تذكرة';

  @override
  String get digitalCloseCancelBookingDescription =>
      'في حال تم الإلغاء، سيتم فقد جميع الاختيارات التي قمتم بها، وستحتاجون إلى إعادة بدء الحجز من البداية لشراء التذاكر.';

  @override
  String get cancelBooking => 'نعم، إلغاء';

  @override
  String get keepSelections => 'لا، متابعة';

  @override
  String get digitalCloseCancelBookingTitle => 'هل أنتم متأكدون من الإلغاء؟';

  @override
  String get phoneDialerError =>
      'غير قادر على بدء المكالمة، يرجى المحاولة مرة أخرى';

  @override
  String get phoneDialerInitError =>
      'اتصل بشبكة واي فاي أو قم بإيقاف تشغيل وضع الطيران لإجراء مكالمة.';

  @override
  String get emailAppNotFound =>
      'لإرسال بريد إلكتروني، ستحتاج إلى إعداد تطبيق البريد الإلكتروني على هذا الجهاز أولاً.';

  @override
  String get openUrlFailed => 'تعذر فتح الرابط المطلوب.';

  @override
  String get genericError => 'حدث خطأ غير متوقع. يرجى المحاولة لاحقًا.';

  @override
  String get b2cNoTicketsTitle => 'ليس لديك أي تذاكر بعد';

  @override
  String get b2cNoTicketsDescription =>
      'ابدأ رحلتك واحصل على تذاكر ليومك المثير.';

  @override
  String get b2cNoTicketsButtonText => 'اشتر تذكرتك الآن';

  @override
  String get shareTicketMessage =>
      '🎢 مرحبًا! سأشارك معك تذكرة لـ Aquarabia. قم بتنزيل تطبيق Aquarabia اليوم. استمتع! https://aquarabiaqiddiyacity.com/';

  @override
  String get shareTicketSubject => 'تذكرة Aquarabia';

  @override
  String get shareButtonText => 'مشاركة';

  @override
  String get b2cBookingStepPaymentTitle =>
      'اختاروا <brandWhite>وسيلة الدفع</brandWhite>';

  @override
  String get b2cBookingStepPaymentDescription =>
      'لإكمال طلبكم، يرجى اختيار وسيلة الدفع المفضلة.';

  @override
  String get b2cBookingStepPoliciesTag => 'الدفع';

  @override
  String get b2cBookingStepTicketSelectionTitle =>
      'اختاروا <brandWhite>تذكرتكم</brandWhite>';

  @override
  String get b2cBookingStepTicketSelectionDescription =>
      'اختاروا نوع التذكرة المُراد شراؤها';

  @override
  String get b2cBookingStepTicketSelectionTag => 'اختيار التذاكر';

  @override
  String get manageTicketTitle => 'إدارة هذه التذكرة';

  @override
  String get closeLabel => 'يغلق';

  @override
  String get getMoreAddOns => 'احصل على المزيد من الإضافات';

  @override
  String get reScheduleOrCancel => 'إعادة الجدولة أو الإلغاء';

  @override
  String reScheduleOrCancelCallService(Object phoneNumber) {
    return 'لإعادة جدولة أو إلغاء تذكرتك، يرجى الاتصال بفريق خدمات الضيوف لدينا على الرقم <boldBlue>$phoneNumber</boldBlue>';
  }

  @override
  String get callGuestService => 'اتصل بخدمات الضيوف';

  @override
  String get b2cBookingStepCheckoutTag => 'الدفع';

  @override
  String get b2cBookingStepLoginTitle =>
      'سجلوا الدخول أو <brandWhite>أنشئوا</brandWhite> حسابكم';

  @override
  String get b2cBookingStepLoginDescription =>
      'للمتابعة، يرجى إنشاء حسابكم أو سجلوا الدخول إلى حسابكم الحالي.';

  @override
  String get b2cBookingStepDateSelectionTitle =>
      '<brandWhite>التاريخ</brandWhite> والصلاحية';

  @override
  String get b2cBookingStepDateSelectionDescription =>
      'اختاروا تاريخ زيارتكم. جميع الأسعار معروضة على التقويم.';

  @override
  String b2cBookingStepPoliciesTitle(Object username) {
    return 'مرحبًا $username، تحقق من <brandWhite>قواعد</brandWhite> وسياسات المتنزه الترفيهي';
  }

  @override
  String get b2cBookingStepParkPoliciesDescription =>
      'يرجى الاطلاع على التعليمات والإرشادات والشروط التي تنطبق على حجزكم وزيارتكم القادمة.';

  @override
  String get b2cBackToCart => 'العودة إلى سلة المشتريات';

  @override
  String get b2cTryAgainPayment =>
      'يرجى المحاولة مرة أخرى أو اختيار وسيلة دفع أخرى لإتمام الحجز.';

  @override
  String get b2cBookingStepGuestsTitle =>
      'عدد <brandWhite>التذاكر</brandWhite>';

  @override
  String get b2cBookingStepGuestPackagesTitle =>
      'عدد <brandWhite>التذاكر<brandWhite>';

  @override
  String get b2cBookingStepGuestsDescription =>
      'اختاروا عدد التذاكر المُراد شراؤها.';

  @override
  String get b2cBookingStepGuestsDescriptionSurfing =>
      'اختاروا عدد التذاكر التي ترغبون بشرائها. يحتاج كل من سيقوم بركوب الأمواج أو التزلج على المياه في سيرفتوبيا إلى تذكرة راكب أمواج. يمكنكم إضافة تذاكر للأفراد الذين سيزورون المتنزه المائي دون تجربة ركوب الأمواج. وإذا لم يكن أيٌّ من أفراد مجموعتكم سيركبون الأمواج، عودوا إلى اختيار التذاكر واختاروا تذكرة يوم واحد أو التذكرة السنوية!';

  @override
  String get b2cBookingStepGuestsTag => 'اختيار التذكرة';

  @override
  String get b2cDeleteCartItemCloseTitle => 'هل أنتم متأكدون؟';

  @override
  String get b2cDeleteCartItemCloseDescription =>
      'حذف هذا الخيار سيزيل أي إضافات مرتبطة بهذه التذكرة.';

  @override
  String get b2cConfirmDeleteCartItem => 'نعم، احذف';

  @override
  String get b2cCancelDeleteCartItem => 'إلغاء';

  @override
  String get b2cBookingStepCartAddMoreTicketsButton =>
      'إضافة المزيد من التذاكر';

  @override
  String get b2cBookingStepCartTitle =>
      'العناصر الموجودة في <brandWhite>السلة</brandWhite>';

  @override
  String get b2cBookingStepCartDescription =>
      'اطّلعوا على اختياراتكم قبل الدفع';

  @override
  String get b2cBookingStepCartTag => 'سلّة مشترياتي';

  @override
  String get b2cBookingAgeRestrictionSecondaryBtn => 'لا، إلغاء';

  @override
  String get parkListLoadError =>
      'حدث خطأ أثناء تحميل قائمة المتنزهات الترفيهية. يرجى إعادة المحاولة.';

  @override
  String get errorLoadingResults =>
      'حدث خطأ أثناء تحميل النتائج. يرجى إعادة المحاولة.';

  @override
  String get errorLoadingFilters =>
      'حدث خطأ أثناء تحميل الفلاتر. يُرجى المحاولة مرة أخرى.';

  @override
  String get errorUpdatingFilters =>
      'Cannot update filters: current filter data not loaded.';

  @override
  String get errorApplyingFilters => 'Failed to fetch filter results count';

  @override
  String get oops2 => 'عذراً';

  @override
  String get couldNotLoadMap => 'لم نتمكن من تحميل خريطة الحديقة.';

  @override
  String get downloadInfo => 'تحميل المعلومات';

  @override
  String get notificationPermissionWelcomeMessage =>
      'احصلوا على تحديثات فورية حول أوقات الإنتظار والفعاليات الخاصة. قم بتفعيل الإشعارات لتحسين تجربتكم!';

  @override
  String notificationPermissionWelcomeTitle(String firstName) {
    return 'مرحباً $firstName!';
  }

  @override
  String get notificationPermissionAllowButton => 'السماح بالإشعارات';

  @override
  String get notificationPermissionNotNowButton => 'ليس الآن';

  @override
  String referenceNumber(Object number) {
    return 'Reference number: $number';
  }

  @override
  String get b2cGoToMyTickets => 'Go to my tickets';

  @override
  String get exploreResultsAreTakingLongerThanExpected =>
      'تستغرق النتائج وقتًا أطول من المعتاد. يرجى الانتظار أو المحاولة مرة أخرى.';

  @override
  String get exploreTryAgain => 'حاول مرة أخرى';

  @override
  String get exploreLoading => 'جاري التحميل...';

  @override
  String get exploreSearchCancel => 'إلغاء';

  @override
  String get exploreSortByAZ => 'أ-ي';

  @override
  String get exploreSortByZA => 'ي-أ';

  @override
  String get exploreSortByDistance => 'المسافة';

  @override
  String get exploreSortByWaitTime => 'مدة الإنتظار';

  @override
  String get exploreSortByTitle => 'رتب حسب';

  @override
  String get exploreSortByApply => 'تفعيل';

  @override
  String get exploreSortByClose => 'إغلاق';

  @override
  String b2cYourTicketsAreReady(Object userName) {
    return 'تذاكركم جاهزة، يا $userName!';
  }

  @override
  String get creaditDebitCardTitle => 'بطاقات الائتمان والخصم';

  @override
  String get creaditDebitCardDesc =>
      'أضيفوا تفاصيل بطاقتكم لإجراء عمليات الشراء بشكل أسرع والاستمتاع بدفع سهل وسلس وسريع! يمكنكم حفظ ما يصل إلى أربع بطاقات في حسابكم.';

  @override
  String get addNewCard => 'إضافة بطاقة جديدة';

  @override
  String get defaultLabel => 'الإعدادات الإفتراضية';

  @override
  String get otherLabel => 'أخرى';

  @override
  String get expiry => 'تاريخ الانتهاء';

  @override
  String get expired => 'انتهت صلاحيتها في';

  @override
  String get expiredOn => 'تاريخ الإنتهاء';

  @override
  String get paymentMethodInfo =>
      'يمكنكم حفظ ما يصل إلى أربع بطاقات في حسابكم. إذا كنتم ترغبون في إضافة بطاقة إضافية، يرجى حذف بطاقة.';

  @override
  String get paymentMethodsTitle => 'طرق الدفع';

  @override
  String get vpGuestUserAccessPromptHeaderTitle => 'ابدأوا الآن';

  @override
  String get vpGuestUserAccessPromptSubTitle => 'خططوا لزيارتكم';

  @override
  String get vpGuestUserAccessPromptSubTitleDescription =>
      'تسجيل الدخول لاكتشاف التوصيات الشخصية والعروض الحصرية، ومشاركة التذاكر مع العائلة والأصدقاء لتنظيم زيارتكم المثالية.';

  @override
  String get vpFlexible => 'تاريخ مرن';

  @override
  String get vpExactDate => 'تاريخ محدد';

  @override
  String get vpInfoMessage =>
      '<bold>نصيحة هامة!</bold> أضيفوا خياراتكم المفضلة هنا الآن ليتم إضافتها إلى خطة رحلتكم.';

  @override
  String get vpDayPreferenceTitle => 'اليوم المفضل';

  @override
  String get vpMonth => 'شهر';

  @override
  String get participantsVpInfoMessage =>
      'نصيحة هامة! الدخول مجاني للرضع والأطفال دون الاربع أعوام، ولكن يرجى تسجيلهم أدناه!';

  @override
  String get talkActivitesTitle => 'جميع الأنشطة بإنتظاركم';

  @override
  String get talkActivitesSubtitle =>
      'ما أنواع الأنشطة أو التجارب التي تثير اهتمام مجموعتكم؟';

  @override
  String get talkVpInfoMessage =>
      '<bold>نصيحة هامة!</bold> فيما يلي مجموعة من الألعاب التي تم تجربتها بنجاح، مع مراعاة مستويات التشويق المختلفة لتناسب جميع الأذواق.';

  @override
  String get vpActionPackedTitle =>
      'إلى أي مدى ترغبون أن يكون يومكم مليئًا بالتشويق والمغامرة؟';

  @override
  String get actionPackedInfoMessage =>
      '<bold>نصيحة هامة!</bold> خططوا ليومكم في أكواريبيا مدينة القدية بطريقة تعكس أسلوبكم المفضل في الاستمتاع!';

  @override
  String get templateEditPersonaliseAdventure => 'صمموا مغامرتكم الجديدة!';

  @override
  String get templateEditYourTheme => 'اختاروا سمة رحلتكم';

  @override
  String get myVisitFavoriteListEmptyStateLabel =>
      'خياراتكم المفضلة بانتظاركم!';

  @override
  String get exploreNoFavourites => 'لا توجد خيارات مفضلة';

  @override
  String get exploreYourFavoriteAwaits => 'خياراتكم المفضلة بانتظاركم!';

  @override
  String get exploreYourFavoriteAwaitsDescription =>
      'احفظوا العناصر المفضلة هنا لتتمكنوا من الوصول إليها بسهولة في المرة القادمة. ابدأوا بالاستكشاف واضغطوا على أيقونة النجمة لإضافة العناصر إلى قائمتكم!';

  @override
  String get myVisitFavoriteListEmptyStateDescription =>
      'احفظوا العناصر المفضلة هنا لتتمكنوا من الوصول إليها بسهولة في المستقبل. إبدأوا بالاستكشاف واضغطوا على أيقونة النجمة لإضافتها إلى قائمتكم!';

  @override
  String get onboardingPrimaryAction => 'اكتشفوا المتنزه المائي';

  @override
  String vpCreatedTripDaysToGoTitle(Object num) {
    return '$num أيام متبقية';
  }

  @override
  String get addToList => 'إضافة الخيارات المفضلة';

  @override
  String cardType(Object name) {
    return '$name بطاقة';
  }

  @override
  String get deleteCard => 'حذف البطاقة';

  @override
  String get deletePageOtpTag => 'حذف الحساب';

  @override
  String get saveDefault => 'حفظ كطريقة الدفع الأساسية';

  @override
  String get b2cBookingAgeRestrictiobBsTitle => 'لحظة ... قبل أن تكملوا';

  @override
  String get b2cEmptyCartErrorTitle => 'لا توجد تذاكر في سلة مشترياتكم!';

  @override
  String get b2cEmptyCartErrorMessage => 'يرجى البدء من جديد لحجز التذاكر.';

  @override
  String get b2cEmptyCartErrorTryAgainButton => 'احجزوا التذاكر';

  @override
  String get b2cEmptyCartErrorStartAgainButton => 'احجزوا التذاكر';

  @override
  String get b2cBookingStepAddonsTitle =>
      'اجعلوا <brandWhite>يومكم</brandWhite> رائع أكثر!';

  @override
  String get b2cBookingStepAddonsDescription =>
      'احصلوا على الإضافات وارتقوا بتجربتكم في أكواريبيا مدينة القدية!';

  @override
  String get b2cBookingStepAddonsTag => 'الإضافات';

  @override
  String get digitalRegistrationEmailError =>
      'Email address already registered.';

  @override
  String get b2cSelectAddonsSaveSelectionButton => 'حفظ الإختيار';

  @override
  String get optionalMessageFavOptions =>
      '<bold>نصيحة هامة!</bold> أضيفوا خياراتكم المفضلة هنا الآن ليتم إضافتها إلى خطة رحلتكم.';

  @override
  String get vpNeedsAndWantsTitle => 'هل لديكم أي متطلبات أو رغبات خاصة؟';

  @override
  String get vpMyFavourites => 'خياراتي المفضلة';

  @override
  String get includeFavourites => 'إضافة الخيارات المفضلة';

  @override
  String get templateEditNoTicketsYet => 'لا يوجد لديك أي تذاكر';

  @override
  String get templateEditBuyNow => 'احصلوا على تذاكركم';

  @override
  String deleteVisitTitle(Object TemplateName) {
    return 'هل أنتم متأكدون من عملية حذف $TemplateName?';
  }

  @override
  String get deleteVisitDescription =>
      'لا يمكن التراجع عن هذا الإجراء، وسيتم فقدان الخيارات المفضلة.';

  @override
  String get confirmDeleteVisit => 'نعم، قم بحذف الزيارة';

  @override
  String get tripBannerTitleNoTickets => 'احجز تذاكرك';

  @override
  String get tripBannerTitleWithTickets => 'عرض التذاكر';

  @override
  String get templateRideAndAttractionTitle => 'الألعاب والتجارب';

  @override
  String get templateNameTitle => 'نموذج';

  @override
  String get templateNameDesc =>
      'لوريم إيبسوم دولور سيت أميت كونز أديبسينغ إليت دولور.';

  @override
  String get ridesAndAttractions => 'الألعاب والتجارب';

  @override
  String get digitalNewsletter => 'أرغب في تلقي الأخبار والتحديثات';

  @override
  String get b2cBookingStepVIPGuestsDescription =>
      'اختاروا حتى 12 شخصاً ليشارككم تجربتكم المميزة.';

  @override
  String get b2cBookingStepDateSelectionVIPDescription =>
      'اختاروا تاريخ زيارتكم. جميع الأسعار معروضة على التقويم. جميع الأسعار المعروضة خاصة بتذكرة البالغ، بالريال السعودي وتشمل ضريبة القيمة المضافة';

  @override
  String get b2cBookingStepVIPGuestsTitle =>
      '<brandWhite>من</brandWhite> سيأتي معكم؟';

  @override
  String b2cBookingAgeRestrictionWarning(int age) {
    return 'لشراء التذاكر عبر مناصتنا الرقمية ، يجب أن يكون عمرك $age عاماً أو أكثر';
  }

  @override
  String get b2cBookingAgeRestrictionBsTitle => 'لحظة ... قبل أن تكملوا';

  @override
  String b2cBookingAgeRestrictionBsDescription(int age) {
    return 'لشراء التذاكر عبر مناصتنا الرقمية ، يجب أن يكون عمرك $age عاماً أو أكثر. يرجى تأكيد عمرك.';
  }

  @override
  String b2cBookingAgeRestrictionPrimaryBtn(int age) {
    return 'نعم، عمري $age عامًا أو أكثر';
  }

  @override
  String get b2cAccountVerificationTitle => 'هل يوجد لديكم حساب معنا؟';

  @override
  String get b2cAccountVerificationDescription =>
      'إذا كان لديكم حساب في Aquarabia مدينة القدية بالفعل، يرجى تسجيل الدخول الآن. أو يمكنك إتمام الشراء كضيف.';

  @override
  String get b2cAccountVerificationPrimaryButton =>
      'سجلوا الدخول أو أنشئوا حسابكم';

  @override
  String get b2cAccountVerificationSecondaryButton => 'إتمام الشراء كضيف';

  @override
  String get b2cEmailValidatedSuccess =>
      'Your email has been validated and added to your profile';

  @override
  String get checkYourConnectionToAccessFullFeatures =>
      'يرجى التحقق من الاتصال بالإنترنت للوصول إلى كافة ميزات التطبيق.';

  @override
  String get connectedAquaTapTicketTitle => 'سوار المعصم';

  @override
  String get aquaTapTicketConnectedStateTitle => 'متصل';

  @override
  String get exploreEntertainment => 'الترفيه';

  @override
  String get exploreFavorites => 'الخيارات المفضلة';

  @override
  String get exploreFavouritesHeadline =>
      '<brandGreen>بتجربتكم</brandGreen> <brandCyan>استمتعوا</brandCyan> في المتنزه!';

  @override
  String get exploreFavouritesSubheadline => 'احفظوا خياراتكم المفضلة';

  @override
  String get exploreFavouritesDescription =>
      'يمكنكم الوصول بسرعة إلى الألعاب والمعالم والفعاليات التي ترغبون في زيارتها!';

  @override
  String get exploreRidesAndAttractions => 'الألعاب والتجارب';

  @override
  String get exploreShopping => 'التسوق';

  @override
  String get wearablePairingSuccessMsg =>
      'تم ربط جهاز Aquatap الخاص بك الآن بتذكرتك.';

  @override
  String get cameraDisabledBSTitle => 'الكاميرا معطّلة';

  @override
  String get cameraDisabledBSDescription =>
      'للمتابعة، يجب السماح بالوصول إلى الكاميرا من إعدادات الجهاز.';

  @override
  String get qrScannerTitle => 'امسح رمز الاستجابة السريعة';

  @override
  String get selectTicketToLinkTitle => 'قم بربط جهاز Aquatap بتذكرة';

  @override
  String get selectTicketToLinkDescription =>
      'قم بتسجيل الدخول إلى حسابك أو اشترك في بضع خطوات بسيطة. الأمر سريع وسهل!';

  @override
  String get pairingMethodTitle => 'اختر كيفية توصيل أكواتاب الخاص بك';

  @override
  String get pairingMethodDescription =>
      'استمتع بالمدفوعات السريعة والسهلة مع أكواتاب NFC أثناء استكشاف الحديقة.';

  @override
  String get pairViaQRTitle =>
      'امسح رمز الاستجابة السريعة الموجود على ظهر أكواتاب';

  @override
  String get pairViaQRDescription =>
      'يرجى التأكد من أنك في منطقة مضاءة جيدًا عند المسح لضمان عملية سلسة وسهلة.';

  @override
  String get descriptionOfScanViaQrOption =>
      'امسح رمز الاستجابة السريعة الموجود في الجزء الخلفي من جهاز Aquatap الخاص بك';

  @override
  String get titleOfScanNfcOption => 'امسح NFC';

  @override
  String get descriptionOfScanNfcOption =>
      'اكتشف معرف Aquatap الخاص بك تلقائيًا باستخدام هاتفك';

  @override
  String get titleOfManualCodeOption => 'رمز يدوي';

  @override
  String get descriptionOfManualCodeOption =>
      'أدخل رمز المعرف الموجود في الجزء الخلفي من جهاز Aquatap الخاص بك';

  @override
  String aquatapActivationTag(int currentStep, int totalSteps) {
    return 'تفعيل أكواتاب $currentStep/$totalSteps';
  }

  @override
  String get exploreDining => 'المطاعم';

  @override
  String get homeTicketsBought => 'استفيدوا من زيارتكم إلى أقصى حد!';

  @override
  String get homeCard4Title => 'اكتشفوا';

  @override
  String get homeCard4Description => 'ألعاب محطمة للأرقام القياسية';

  @override
  String get homeButtonCardTitleActiveCart => 'أكملوا عملية الحجز';

  @override
  String get homeButtonCardTitleTicketsBought => 'خططوا لزيارتكم';

  @override
  String get homeButtonCardTitleWithoutTickets => 'احجزوا تذاكركم';

  @override
  String get homeButtonCardSubtitleActiveCart =>
      'لا تفوّتوا الفرصة! أكملوا عملية الشراء.';

  @override
  String get homeButtonCardSubtitleTicketsBought =>
      'استعدوا ليوم كامل من المتعة';

  @override
  String get homeButtonCardSubtitleWithoutTickets => 'اكتشفوا 22 لعبة وتجربة!';

  @override
  String get homeAreYouSureCloseCartTitle =>
      'هل أنتم متأكدون أنكم تريدون إغلاق السلة؟';

  @override
  String get homeAreYouSureCloseCartDescription =>
      'في حال الإغلاق، ستُحذف جميع العناصر في السلة، وستحتاجون إلى بدء حجز جديد للحصول على تذاكركم.';

  @override
  String get homeYesClearMyCart => 'نعم، إفراغ السلة';

  @override
  String get homeNoProceedToCheckout => 'لا، المتابعة إلى الدفع';

  @override
  String get homeCTATicketsBought => 'ابدؤوا التخطيط';

  @override
  String get homeCTAWithoutTickets => 'احجزوا الآن';

  @override
  String get partnersOfficialPremierPartnersTitle =>
      'الشركاء الرسميون الرئيسيون';

  @override
  String get partnersOfficialPartnersTitle => 'الشركاء الرسميون';

  @override
  String get partnersOfficialProviders => 'المزودون الرسميون';

  @override
  String get partnersDiscoverTitle => 'اكتشف شركائنا';

  @override
  String get partnersViewAllCTA => 'عرض جميع الشركاء';

  @override
  String get exploreMainCategories => 'الفئات الرئيسية';

  @override
  String get explorePersonalised => 'التجارب المخصصة';

  @override
  String get exploreMyVisits => 'زياراتي';

  @override
  String get exploreMyVisitGuestUserAccessPromptHeaderTitle => 'زيارتي';

  @override
  String get exploreUserFeature => 'خاصية المستخدم';

  @override
  String get exploreOther => 'خيارات أخرى';

  @override
  String get exploreNoVisits => 'لا زيارات';

  @override
  String get exploreAttractionsListTitle => 'اكتشفوا المتنزه المائي';

  @override
  String get exploreRidesSectionTitle => 'ألعاب محطمة للأرقام القياسية';

  @override
  String get exploreRidesFilters => 'فلاتر الألعاب والتجارب';

  @override
  String get exploreDiningFilters => 'فلاتر المطاعم';

  @override
  String get exploreShoppingFilters => 'فلاتر التسوق';

  @override
  String get exploreAdvancedFiltersShowResults => 'عرض جميع النتائج';

  @override
  String get exploreMore => 'المزيد';

  @override
  String get exploreNoWaitTimeSpan => 'لا يوجد انتظار';

  @override
  String get exploreReadMore => 'اقرأ المزيد';

  @override
  String get exploreLocationLabel => 'الموقع';

  @override
  String get exploreRideTypeLabel => 'نوع اللعبة';

  @override
  String get exploreThrillLevelLabel => 'مستوى التشويق';

  @override
  String get exploreHeightRequirementLabel => 'ضوابط الطول';

  @override
  String get exploreWeightRequirementLabel => 'ضوابط الوزن';

  @override
  String get exploreAdultCompanionLabel => 'المرافق البالغ';

  @override
  String get exploreHelpAndSupportMoreQuestionsAnswered =>
      'إجابات على المزيد من الأسئلة';

  @override
  String get exploreFeaturesLabel => 'ميزات اللعبة';

  @override
  String get exploreRestaurantTypeLabel => 'نوع المطعم';

  @override
  String get exploreMenuHighlightsLabel => 'أبرز أصناف قائمة الطعام';

  @override
  String get exploreDietaryPreferencesLabel => 'خيارات الطعام';

  @override
  String get exploreCuisineTypeLabel => 'نوع المطبخ';

  @override
  String get exploreStoreTypeLabel => 'نوع المتجر';

  @override
  String get exploreExclusiveDealsLabel => 'عروض حصرية';

  @override
  String get exploreFeaturedCollectionsLabel => 'المجموعات المختارة';

  @override
  String get exploreFiltersReset => 'إعادة ضبط';

  @override
  String get exploreAdvancedFiltersReset => 'إعادة ضبط';

  @override
  String get exploreSortButton => 'ترتيب حسب • ';

  @override
  String get exploreListResultsTitle => 'نتيجة';

  @override
  String get exploreShoppingFeaturedCollectionsPlaceholder =>
      'منتجات ذات طابع ربيعي';

  @override
  String get exploreExclusiveDealsPlaceholder => 'خصم 10% على جميع المنتجات';

  @override
  String get exploreDietaryPreferencesPlaceholder => 'خيارات نباتية';

  @override
  String get exploreMenuHighlightsPlaceholder1 => 'وجبات خفيفة';

  @override
  String get exploreMenuHighlightsPlaceholder2 => 'مشروبات مثلجة';

  @override
  String get exploreDiningSectionTitle => 'المطاعم المختارة';

  @override
  String get exploreSearchRecentSearches => 'أحدث النتائج';

  @override
  String get exploreSearchCleanHistory => 'مسح السجل';

  @override
  String get exploreNoResults => 'لا توجد نتائج';

  @override
  String get exploreTrySearchingForSomethingElse => 'حاول البحث عن شيء آخر';

  @override
  String get exploreSearch => 'بحث';

  @override
  String get exploreFacilities => 'المرافق';

  @override
  String exploreFavoriteNoInternetConnectionOnRemove(Object name) {
    return 'لم نتمكن من إزالة \'$name\' من قائمتك لأنك غير متصل بالإنترنت. تحقق من اتصالك وحاول مرة أخرى.';
  }

  @override
  String exploreFavoriteRemovedSuccess(Object name) {
    return ' تم إزالة $name من خياراتكم المفضلة';
  }

  @override
  String exploreFavoriteAddError(Object name) {
    return 'عذرًا، لم يتم إضافة $name إلى قائمة المفضلة. يُرجى المحاولة مرة أخرى.';
  }

  @override
  String exploreFavoriteRemoveError(Object name) {
    return 'غير قادر على إزالة $name من مفضلاتك.';
  }

  @override
  String exploreFavoriteNoInternetConnectionOnAdd(Object name) {
    return 'لم نتمكن من إضافة \'$name\' إلى مفضلاتك لأنك غير متصل بالإنترنت. تحقق من اتصالك وحاول مرة أخرى.';
  }

  @override
  String exploreFavoriteAddedSuccess(Object name) {
    return 'تم إضافة $name إلى خياراتكم المفضلة';
  }

  @override
  String get privacyPolicyAgreementPrefix => 'أوافق على ';

  @override
  String get startNavigation => 'بدء التنقل';

  @override
  String get openGoogleMaps => 'الانتقال الى خرائط جوجل';

  @override
  String get cardSavedMessage => 'تم حفظ بطاقتك بنجاح';

  @override
  String get creditCardStoreFailed =>
      'لم نتمكن من حفظ بيانات بطاقتك الائتمانية حاليًا. يُرجى المحاولة مجددًا لحفظ معلومات طريقة الدفع.';

  @override
  String get goBackToPaymentMethod => 'انتقل إلى طرق الدفع';

  @override
  String get addNewCardTitle => 'إضافة بطاقة <brandBlue>جديدة</brandBlue>';

  @override
  String get cardHolderName => 'اسم حامل البطاقة';

  @override
  String get bracketedExpiryDate => 'تاريخ الانتهاء (شهر/عام)';

  @override
  String get bracketedSecurityCode => 'رمز الأمان (CVV)';

  @override
  String deleteCardConfirmationTitle(Object cardNumber) {
    return 'هل أنتم متأكدون من حذف $cardNumber؟';
  }

  @override
  String get deleteCardConfirmationDesc =>
      'سيؤدي حذف البطاقة إلى إزالتها نهائيًا من حسابكم وإلغاء ربط طريقة الدفع بأي أكواتاب.';

  @override
  String get setDefultCardConfirmationTitle =>
      'هل ترغبون في حفظ هذه البطاقة كطريقة الدفع الافتراضية؟';

  @override
  String setDefultCardConfirmationDescription(Object cardNumber) {
    return 'طريقة الدفع الافتراضية الحالية هي $cardNumber';
  }

  @override
  String get deleteCatdBtn => 'نعم، احذف البطاقة';

  @override
  String get yesSetDefaultButton => 'نعم، حفظ كطريقة الدفع الافتراضية';

  @override
  String get cardDeletedSuccessMessage => 'تم حذف بطاقتك بنجاح';

  @override
  String setDefaultSuccessMessage(Object cardNumber) {
    return 'تم حفظ $cardNumber كطريقة الدفع الافتراضية.';
  }

  @override
  String setDefailtFailedMessage(Object cardNumber) {
    return 'لم يتم حفظ $cardNumber كطريقة الدفع الافتراضية. يرجى المحاولة مرة أخرى.';
  }

  @override
  String get cardDeletedFailedMessage =>
      'لم يتم حذف بطاقتك الائتمانية. يرجى المحاولة مرة أخرى.';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get errorInternetConnectionMessage =>
      'تعذر الاتصال بالشبكة. يرجى التحقق من خدمة الإنترنت وإعادة المحاولة';

  @override
  String get connectionFailed => 'تعذر الاتصال';

  @override
  String get vpCreatingYourVisitLoading =>
      'نحن نعمل على إنشاء زيارتك، فقط لحظة...';

  @override
  String get totalToPay => 'الإجمالي المستحق للدفع';

  @override
  String get ticketTotal => 'إجمالي التذكرة';

  @override
  String get subtotal => 'إجمالي';

  @override
  String get ticketSummary => 'ملخص الطلب';

  @override
  String get digitalRegistrationCreateAccount => 'إنشاء حساب ';

  @override
  String get exploreNoSearchResultsTile => 'لا توجد نتائج';

  @override
  String get exploreNoSearchResultsSubtitle => 'حاول البحث عن شيء آخر.';

  @override
  String get b2cPaymentErrorDescription =>
      'Try again or use a different payment method to complete your booking.';

  @override
  String get commonReturn => 'عودة';

  @override
  String get exploreViewAllRides => 'عرض جميع الألعاب والتجارب';

  @override
  String get exploreViewAllDining => 'عرض جميع المطاعم';

  @override
  String get exploreViewAllShopping => 'عرض جميع المتاجر';

  @override
  String get exploreStoresSectionTitle => 'المتاجر الرائجة';

  @override
  String get downloadMapTitle => 'يتم تحميل الخريطة ...';

  @override
  String get downloadMapSubTitle =>
      'يرجى الانتظار. قد يستغرق التحميل بعض الوقت';

  @override
  String get connectionLostAdviceMessage =>
      'يرجى التحقق من الاتصال بالإنترنت للوصول إلى كافة ميزات التطبيق.';

  @override
  String get filter => 'فلتر';

  @override
  String get exploreNoAttractionsFoundError => 'لم يتم العثور على نتائج';

  @override
  String get exploreAllCategories => 'جميع الفئات';

  @override
  String get exploreNoTrips => 'لا يوجد زيارات';

  @override
  String get chipText => 'خاصية المستخدم';

  @override
  String get exploreFavouritesTitle => 'الخيارات المفضلة';

  @override
  String get exploreParkMapListViewButton => 'عرض القائمة';

  @override
  String get exploreShowLess => 'أظهر أقل';

  @override
  String get exploreWaitTimeSpan => 'انتظار ';

  @override
  String get exploreProductTypeLabel => 'نوع المنتج';

  @override
  String get exploreAccessibilityInformationText =>
      'معلومات حول إمكانية الوصول';

  @override
  String get exploreAdvancedFiltersUpdating => 'جار التحميل...';

  @override
  String exploreAdvancedFiltersShowResultsWithCount(Object count) {
    return 'عرض النتائج ($count)';
  }

  @override
  String get exploreFastPassLabel => 'تذكرة أكوافاست';

  @override
  String get exploreGenderPlaceholder => 'لِلْجِنْسَيْن';

  @override
  String get exploreCommaSeparator => '، ';

  @override
  String get bookTicketsTitle => 'تذكرة أكوافاست';

  @override
  String get fastPassDesc => 'احجزوا الآن وتجاوزوا الطوابير!';

  @override
  String get fastPassButton => 'للحجز';

  @override
  String get visitName1 => 'اسم الزيارة 1';

  @override
  String get visitName2 => 'اسم الزيارة 2';

  @override
  String get visitName3 => 'اسم الزيارة 3';

  @override
  String get visitName4 => 'اسم الزيارة 4';

  @override
  String get whoGoingTripProTip =>
      '<bold>نصيحة محترف!</bold> الدخول مجاني للأطفال دون الاربع أعوام، ولكن يرجى تسجيلهم أدناه!';

  @override
  String get notificationsViewAll => 'عرض الكل';

  @override
  String get notificationsUnreadOnly => 'الغير مقروءة فقط';

  @override
  String get notificationReadAll => 'قراءة الكل';

  @override
  String get notificationsToday => 'اليوم';

  @override
  String get notificationsYesterday => 'أمس';

  @override
  String get notificationsOlder => 'أقدم';

  @override
  String get aquaTapTitle => 'أكواتاب';

  @override
  String get b2cAquaTapManualCodeActivationHeader =>
      'أدخل رقم أكواتاب الموجود في الخلف';

  @override
  String get guestSelectionInfoToastMessage =>
      'يرجى ملاحظة أن الأطفال بعمر ثلاثة أعوام فأقل لا يحتاجون إلى تذكرة.';

  @override
  String get visitPlannerUpcomingEvents => 'الرحلات القادمة عددها';

  @override
  String get visitPlannerOneUpcomingEvent => 'الرحلات القادمة عددها';

  @override
  String get visitPlannerPastEvents => 'الرحلات السابقة';

  @override
  String get visitPlannerOnePastEvent => 'رحلة سابقة';

  @override
  String get b2cBookingStepDateTicketsDescription =>
      'قم بتسجيل الدخول إلى حسابك أو الاشتراك في بضع خطوات بسيطة. الأمر سريع وسهل!';

  @override
  String get vpExploreMyVisitEmptyTitle => 'حان وقت المرح!';

  @override
  String get vpExploreMyVisitEmptyDescription =>
      'يمكنكم التخطيط لرحلتكم أو الاختيار من بين الجداول الزمنية الجاهزة أو حفظ خياراتكم في القائمة.';

  @override
  String get vpExploreMyVisitEmptyButton => 'خطط لزيارتي';

  @override
  String deleteAquaTapTitle(String wearableId) {
    return 'هل أنتم متأكدون من تعطيل أكواتاب $wearableId؟';
  }

  @override
  String deleteAquaTapDescription(Object wearableId) {
    return 'ستفقدون وسيلة الدفع والاستفادة من الإضافات والتجارب عبر أكواتاب $wearableId';
  }

  @override
  String get deleteAquaTapBtn => 'نعم، تعطيل';

  @override
  String get successDeleteAquaTapMsg => 'تم تعطيل أكواتاب بنجاح.';

  @override
  String get errorDeleteAquaTapMsg =>
      'لم يتم تعطيل أكواتاب. يُرجى المحاولة مرة أخرى.';

  @override
  String get exploreSelectAll => 'تحديد الكل';

  @override
  String get addPaymentMethod => 'إضافة وسيلة دفع';

  @override
  String get linkPaymentMethodTitle =>
      'اربطوا وسيلة دفع لمعاملات رقمية دون الحاجة لإستخدام النقود';

  @override
  String get selectCardDesc =>
      'اختاروا البطاقة التي تودون استخدامها للمدفوعات عبر أكواتاب.';

  @override
  String get ticketDetailsPriceTitle =>
      'السعر الإجمالي (شاملاً ضريبة القيمة المضافة)';

  @override
  String get digitalReactivateInformation1 =>
      'يبدو أن رقم الجوال هذا مرتبط بحساب في تطبيق أكواريبيا مدينة القدية وهو قيد الحذف. أعيدوا تفعيل حسابكم الآن واحتفظوا بجميع مميزاته!';

  @override
  String get digitalReactivateInformation2 =>
      'أعيدوا تفعيل حسابكم للوصول إلى تذاكركم وامتيازاتكم وخياراتكم المفضلة';

  @override
  String get digitalReactivateInformation3 =>
      'أعيدوا تفعيل حسابكم لاسترجاع معلوماتكم الشخصية مجدداً.';

  @override
  String get didUserPrefsQ1Title =>
      'ما هي <brandCyan>المفضلة</brandCyan><brandGreen>الأنشطة </brandGreen>\nلديكم؟';

  @override
  String get b2cBookingStepExperienceTitle =>
      'احجزوا تجربة اجعلوا يومكم أكثر روعة!';

  @override
  String get b2cBookingStepExperienceDescription =>
      'استمتعوا بوقتكم في المتنزه المائي واجعلوا منه تجربة لا تنسى!';

  @override
  String get b2cBookingStepExperienceTag => 'اختيار التذكرة';

  @override
  String get digitalEditYourPhoneNumber => 'حرّر رقم هاتفك';

  @override
  String get didUserPrefsQ3_first_time => 'هذه الزيارة الأولى';

  @override
  String get didUserPrefsQ3_multiple_times_year => 'عدة مرات في السنة';

  @override
  String get personalPreferencesStepperTagLine => 'إعداد الملف الشخصي';

  @override
  String get didUserPrefsQ3Title =>
      'ما <brandCyan>زياراتكم</brandCyan><brandGreen>معدل </brandGreen>\nللمتنزهات الترفيهية؟';

  @override
  String get pairViaNfcTitle => 'ضعوا الجوال فوق أكواتاب لربط الجهازين';

  @override
  String get pairViaNfcDescription =>
      'لربط الجهازين، ضعوا أكواتاب المزوّد بتقنية NFC بالقرب من الجزء العلوي في خلف الجوال.';

  @override
  String get nfcDisabledBSTitle => 'تشغيل NFC';

  @override
  String get nfcDisabledBSDescription =>
      'للمتابعة، يجب تفعيل خاصية NFC من إعدادات جهازكم.';

  @override
  String get parkPoliciesTitle => 'سياسات المتنزه المائي';

  @override
  String get homeLiveStreamTitle => 'لا تفوتوا هذه اللحظات المباشرة!';

  @override
  String get setupPin => 'أعدّوا رمز الدخول لحماية معلوماتكم';

  @override
  String get confirmPin => 'تأكيد الرمز';

  @override
  String get enterPinDesc =>
      'أدخلوا الرمز المكوّن من أربعة أرقام لاستخدامه عند الدفع.\nسيُطلب إدخال هذا الرمز لكل معاملة.';

  @override
  String get reEnterPinDesc => 'أعيدوا إدخال الرمز المكوّن من أربعة أرقام.';

  @override
  String get pinVerificationFailed =>
      'فشل التحقق. نحن نواجه حاليًا صعوبات تقنية. يرجى المحاولة مرة أخرى لاحقًا أو الاتصال بالدعم للحصول على المساعدة.';

  @override
  String get pinSuccessTitle => 'تم إعداد وسيلة الدفع بنجاح!';

  @override
  String get pinSuccessPoint1 =>
      'يمكنكم الآن إجراء عمليات الدفع بشكل سريع وسهل في جميع المتاجر والمطاعم!';

  @override
  String get pinSuccessPoint2 =>
      'استخدموا أكواتاب للدخول إلى المتنزه المائي والاستفادة من جميع الإضافات والمزايا!';

  @override
  String get pinSuccessPoint3 =>
      'بإمكانكم تعطيل أكواتاب في أي وقت عن طريق زيارة صفحة ملفي الشخصي.';

  @override
  String get homeParkOpenStatus => 'مفتوح';

  @override
  String get homeParkClosingStatus => 'على وشك الإغلاق';

  @override
  String get homeParkClosedStatus => 'مغلق';

  @override
  String get homeDiscoverMapTitle => 'اكتشفوا المتنزه المائي';

  @override
  String get exploreWeAreOpen => 'تم الافتتاح!';

  @override
  String get exploreLetTheFunBegin => 'هيا بنا لمرح بلا حدود!';

  @override
  String get exploreOpeningDay => 'الحديقة تفتح';

  @override
  String get exploreDays => 'يوم';

  @override
  String get exploreHours => 'ساعة';

  @override
  String get exploreMin => 'دقيقة';

  @override
  String get exploreSec => 'ثانية';

  @override
  String get b2cRemoveAddonsCartDescription =>
      'يمكنك إزالة أي إضافات مرتبطة بهذه التذكرة، أو حذف التذكرة من السلة.';

  @override
  String get goToDeviceSettigsCta => 'الانتقال إلى إعدادات الجهاز';

  @override
  String get exploreUrgent => 'عاجل';

  @override
  String get notificationSilence => 'تحديثات الصمت لمدة ساعة واحدة';

  @override
  String get exploreGetInstructions => 'احصل على التعليمات';

  @override
  String get informationCardCompletedFinish => 'انهاء';

  @override
  String get informationCardCompletedRouteSubTitle => 'لقد وصلتم إلى وجهتكم!';

  @override
  String informationCardCompletedRouteTitle(Object destination) {
    return 'ها قد وصلت الى $destination!';
  }

  @override
  String get routeInformationCardDistance => 'م';

  @override
  String get routeInformationCardDone => 'إنهاء';

  @override
  String get routeInformationCardMinAway => 'دقائق';

  @override
  String get routeInformationCardMinsAway => 'دقائق';

  @override
  String get oopsExclamation => 'عذرًا';

  @override
  String get exploreDistanceKm => 'كم';

  @override
  String get exploreDistanceMeter => 'م';

  @override
  String get wearablePaymentMethodTitle => 'طرق الدفع';

  @override
  String get exploreThePark => 'استكشف الحديقة';

  @override
  String welcomeTo(Object name) {
    return 'مرحبًا بك في $name';
  }

  @override
  String get enjoyYourVisit => 'استمتع بزيارتك!';

  @override
  String get discoverAllTheAttractions => 'اكتشف جميع المعالم التي نقدمها.';

  @override
  String get commonAdd => 'إضافة';

  @override
  String get linkCardDesc => 'يمكنك اختيار طريقة الدفع هذه مرة أخرى إذا أردت';

  @override
  String get successDeletePaymentMethod => 'تم حذف وسيلة الدفع الخاصة بك بنجاح';

  @override
  String get errorDeletePaymentMethod =>
      'لم يتم حذف وسيلة الدفع الخاصة بك. يرجى المحاولة مرة أخرى.';

  @override
  String get aboutYouTag => 'معلومات المستخدم';

  @override
  String get aboutYouDesc =>
      'يرجى إضافة خياراتكم المفضلة لتخصيص التوصيات وتحسين تجربتكم داخل التطبيق.';

  @override
  String get personalPreferences => 'التفضيلات الشخصية';

  @override
  String get pinErrorInvalidCode => 'رمز غير صحيح. يُرجى المحاولة مرة أخرى.';

  @override
  String get b2cByGabrielMedinaTag => 'ﻣن Gabriel Medina';

  @override
  String get upcomingOnTag => 'قريبًا بتاريخ';

  @override
  String get activitiesErrorRetryButton => 'إعادة المحاولة';

  @override
  String get digitalExploreFavouritesTitle => 'خياراتكم المفضلة';

  @override
  String get digitalExploreFavouritesSubheadline => 'احفظوا خياراتكم المفضلة';

  @override
  String get digitalExploreFavouritesHeadline =>
      '<brandSpecialsPurple>بتجربتكم</brandSpecialsPurple> <brandCyan>استمتعوا</brandCyan> في المتنزه!';

  @override
  String get digitalExploreFavouritesDescription =>
      'اوافق على استخدام عنوان البريد الإلكتروني لجميع المراسلات الخاصة بحاملي التذكرة السنوية من أكواريبيا مدينة القدية .';

  @override
  String get annualEmailAddressCommunicationText =>
      'اوافق على استخدام عنوان البريد الإلكتروني لجميع المراسلات الخاصة بحاملي التذكرة السنوية من أكواريبيا مدينة القدية .';

  @override
  String get junoonDropChipLabel => 'محطمة للأرقام القياسية';

  @override
  String get junoonDropTitle => 'جنون دروب';

  @override
  String get junoonDropDescription => 'أطول أفعوانية مائية في العالم!';

  @override
  String get junoonDropTags => 'مناسبة للعائلات';

  @override
  String get colossalCanyonChipLabel => 'مغامرات';

  @override
  String get colossalCanyonTitle => 'الوادي الرهيب';

  @override
  String get colossalCanyonDescription =>
      'استعد لأقصى مغامرة لمحبي الإثارة في المنطقة!';

  @override
  String get colossalCanyonTags => 'تجربة';

  @override
  String get surftopiaChipLabel => 'سيرفتوبيا';

  @override
  String get surftopiaTitle => 'سيرفتوبيا';

  @override
  String get surftopiaDescription => 'أول مسبح لركوب الأمواج في السعودية';

  @override
  String get surftopiaTags => 'تجربة';

  @override
  String get aquaticarChipLabel => 'أكواتيكار';

  @override
  String get aquaticarTitle => 'أكواتيكار';

  @override
  String get aquaticarDescription =>
      'أول مغامرة فريدة من نوعها تحت الماء تأخذكم في رحلة غامرة لا تنسى!';

  @override
  String get aquaticarTags => 'تجربة';

  @override
  String get exploreAll => 'الكل';

  @override
  String get pricePerPerson => 'للشخص الواحد';

  @override
  String get pluralAnnualPass => 'تذاكر سنوية';
}
