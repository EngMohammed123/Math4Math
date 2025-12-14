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
/// import 'l10n/app_localizations.dart';
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

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
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
    Locale('en'),
  ];

  /// No description provided for @lang.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get lang;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get success;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error Happend'**
  String get error;

  /// No description provided for @some_thing_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get some_thing_went_wrong;

  /// No description provided for @please_select_your_language.
  ///
  /// In en, this message translates to:
  /// **'please select your language'**
  String get please_select_your_language;

  /// No description provided for @you_can_change_it_later.
  ///
  /// In en, this message translates to:
  /// **'you can change it later'**
  String get you_can_change_it_later;

  /// No description provided for @continue_text.
  ///
  /// In en, this message translates to:
  /// **'continue'**
  String get continue_text;

  /// No description provided for @service_under_maintenance.
  ///
  /// In en, this message translates to:
  /// **'service under maintenance'**
  String get service_under_maintenance;

  /// No description provided for @we_are_working_on_it.
  ///
  /// In en, this message translates to:
  /// **'we are working on it'**
  String get we_are_working_on_it;

  /// No description provided for @update_available.
  ///
  /// In en, this message translates to:
  /// **'update available'**
  String get update_available;

  /// No description provided for @new_version_of_the_app_is_available.
  ///
  /// In en, this message translates to:
  /// **'new_version_of_the_app_is_available'**
  String get new_version_of_the_app_is_available;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'update'**
  String get update;

  /// No description provided for @no_connection.
  ///
  /// In en, this message translates to:
  /// **'no connection'**
  String get no_connection;

  /// No description provided for @try_again_later.
  ///
  /// In en, this message translates to:
  /// **'try again later'**
  String get try_again_later;

  /// No description provided for @check_your_connection.
  ///
  /// In en, this message translates to:
  /// **'check your connection'**
  String get check_your_connection;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'dismiss'**
  String get dismiss;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'retry'**
  String get retry;

  /// No description provided for @new_version.
  ///
  /// In en, this message translates to:
  /// **'New Version'**
  String get new_version;

  /// No description provided for @login_now.
  ///
  /// In en, this message translates to:
  /// **'Log in now'**
  String get login_now;

  /// No description provided for @hi_we_are_happy.
  ///
  /// In en, this message translates to:
  /// **'Welcome.. glad to have you with us'**
  String get hi_we_are_happy;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'Member code'**
  String get id;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @have_trouble_logging_in.
  ///
  /// In en, this message translates to:
  /// **'I\'m having trouble logging in'**
  String get have_trouble_logging_in;

  /// No description provided for @forget_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password'**
  String get forget_password;

  /// No description provided for @forget_id.
  ///
  /// In en, this message translates to:
  /// **'Forget your code'**
  String get forget_id;

  /// No description provided for @welcome_in_brimore.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Brimore'**
  String get welcome_in_brimore;

  /// No description provided for @register_new_membership.
  ///
  /// In en, this message translates to:
  /// **'Register a new membership'**
  String get register_new_membership;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'full name *'**
  String get full_name;

  /// No description provided for @fourth_name.
  ///
  /// In en, this message translates to:
  /// **'fourth_name'**
  String get fourth_name;

  /// No description provided for @enter_mobile_number.
  ///
  /// In en, this message translates to:
  /// **'Enter the mobile number *'**
  String get enter_mobile_number;

  /// No description provided for @you_will_receive_membership_code.
  ///
  /// In en, this message translates to:
  /// **'(You will receive a membership code to this number)'**
  String get you_will_receive_membership_code;

  /// No description provided for @national_id.
  ///
  /// In en, this message translates to:
  /// **'national id'**
  String get national_id;

  /// No description provided for @passport.
  ///
  /// In en, this message translates to:
  /// **'passport'**
  String get passport;

  /// No description provided for @enter_national_id.
  ///
  /// In en, this message translates to:
  /// **'Enter the national number *'**
  String get enter_national_id;

  /// No description provided for @enter_passport_id.
  ///
  /// In en, this message translates to:
  /// **'passport number *'**
  String get enter_passport_id;

  /// No description provided for @have_no_experience.
  ///
  /// In en, this message translates to:
  /// **'Have no experience'**
  String get have_no_experience;

  /// No description provided for @have_experience.
  ///
  /// In en, this message translates to:
  /// **'have experience'**
  String get have_experience;

  /// No description provided for @invalid_code.
  ///
  /// In en, this message translates to:
  /// **'* the code must be 6 digits'**
  String get invalid_code;

  /// No description provided for @invalid_password.
  ///
  /// In en, this message translates to:
  /// **'* The password must not be less than 6 characters'**
  String get invalid_password;

  /// No description provided for @start_ur_business.
  ///
  /// In en, this message translates to:
  /// **'start_ur_business'**
  String get start_ur_business;

  /// No description provided for @start_ur_business_meg.
  ///
  /// In en, this message translates to:
  /// **'start_ur_business_meg'**
  String get start_ur_business_meg;

  /// No description provided for @instance_win.
  ///
  /// In en, this message translates to:
  /// **'instance_win'**
  String get instance_win;

  /// No description provided for @instance_win_msg.
  ///
  /// In en, this message translates to:
  /// **'instance_win_msg'**
  String get instance_win_msg;

  /// No description provided for @order_track.
  ///
  /// In en, this message translates to:
  /// **'order_track'**
  String get order_track;

  /// No description provided for @order_track_msg.
  ///
  /// In en, this message translates to:
  /// **'order_track_msg'**
  String get order_track_msg;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'next'**
  String get next;

  /// No description provided for @skip_into.
  ///
  /// In en, this message translates to:
  /// **'Skip into'**
  String get skip_into;

  /// No description provided for @buy_now.
  ///
  /// In en, this message translates to:
  /// **'buy_now'**
  String get buy_now;

  /// No description provided for @invalid_building_number.
  ///
  /// In en, this message translates to:
  /// **'invalid building number'**
  String get invalid_building_number;

  /// No description provided for @invalid_full_name.
  ///
  /// In en, this message translates to:
  /// **'empty_full_name'**
  String get invalid_full_name;

  /// No description provided for @invalid_phone_number.
  ///
  /// In en, this message translates to:
  /// **'invalid_phone_number'**
  String get invalid_phone_number;

  /// No description provided for @invalid_passport.
  ///
  /// In en, this message translates to:
  /// **'invalid_passport'**
  String get invalid_passport;

  /// No description provided for @invalid_national_id.
  ///
  /// In en, this message translates to:
  /// **'invalid_national_id'**
  String get invalid_national_id;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'optional'**
  String get optional;

  /// No description provided for @click_to_select_state.
  ///
  /// In en, this message translates to:
  /// **'click_to_select_state'**
  String get click_to_select_state;

  /// No description provided for @click_to_select_city.
  ///
  /// In en, this message translates to:
  /// **'click_to_select_city'**
  String get click_to_select_city;

  /// No description provided for @street_name.
  ///
  /// In en, this message translates to:
  /// **'street_name'**
  String get street_name;

  /// No description provided for @building_number.
  ///
  /// In en, this message translates to:
  /// **'building_number'**
  String get building_number;

  /// No description provided for @aprtment.
  ///
  /// In en, this message translates to:
  /// **'aprtment'**
  String get aprtment;

  /// No description provided for @address_additional_info.
  ///
  /// In en, this message translates to:
  /// **'address_additional_info'**
  String get address_additional_info;

  /// No description provided for @invalid_street_name.
  ///
  /// In en, this message translates to:
  /// **'invalid_street_name'**
  String get invalid_street_name;

  /// No description provided for @call_us_if_you_need_help.
  ///
  /// In en, this message translates to:
  /// **'call_us_if_you_need_help'**
  String get call_us_if_you_need_help;

  /// No description provided for @please_select_state.
  ///
  /// In en, this message translates to:
  /// **'please_select_state'**
  String get please_select_state;

  /// No description provided for @please_select_city.
  ///
  /// In en, this message translates to:
  /// **'please_select_city'**
  String get please_select_city;

  /// No description provided for @referrer_name.
  ///
  /// In en, this message translates to:
  /// **'referrer_name'**
  String get referrer_name;

  /// No description provided for @referrer_code.
  ///
  /// In en, this message translates to:
  /// **'referrer_name'**
  String get referrer_code;

  /// No description provided for @blocked_referral.
  ///
  /// In en, this message translates to:
  /// **'blocked referral'**
  String get blocked_referral;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'name'**
  String get name;

  /// No description provided for @member_code.
  ///
  /// In en, this message translates to:
  /// **'Member code'**
  String get member_code;

  /// No description provided for @investor_name.
  ///
  /// In en, this message translates to:
  /// **'Investor name'**
  String get investor_name;

  /// No description provided for @investor_code.
  ///
  /// In en, this message translates to:
  /// **'Investor code'**
  String get investor_code;

  /// No description provided for @children_numbers.
  ///
  /// In en, this message translates to:
  /// **'Children number'**
  String get children_numbers;

  /// No description provided for @experience_years.
  ///
  /// In en, this message translates to:
  /// **'Experience year '**
  String get experience_years;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @choose_address.
  ///
  /// In en, this message translates to:
  /// **'Choose main address'**
  String get choose_address;

  /// No description provided for @first_address.
  ///
  /// In en, this message translates to:
  /// **'First address'**
  String get first_address;

  /// No description provided for @second_address.
  ///
  /// In en, this message translates to:
  /// **'Second address '**
  String get second_address;

  /// No description provided for @government.
  ///
  /// In en, this message translates to:
  /// **'government*'**
  String get government;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'city*'**
  String get city;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'name/streetnumber*'**
  String get street;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'edit   '**
  String get edit;

  /// No description provided for @add_address.
  ///
  /// In en, this message translates to:
  /// **'Add address'**
  String get add_address;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'phone'**
  String get phone;

  /// No description provided for @choose_phone.
  ///
  /// In en, this message translates to:
  /// **'Choose main phone number'**
  String get choose_phone;

  /// No description provided for @first_phone.
  ///
  /// In en, this message translates to:
  /// **'First phone '**
  String get first_phone;

  /// No description provided for @second_phone.
  ///
  /// In en, this message translates to:
  /// **'second phone '**
  String get second_phone;

  /// No description provided for @add_phone.
  ///
  /// In en, this message translates to:
  /// **'Add new phone  '**
  String get add_phone;

  /// No description provided for @personal_info.
  ///
  /// In en, this message translates to:
  /// **' Personal Info'**
  String get personal_info;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// No description provided for @personal_info_title.
  ///
  /// In en, this message translates to:
  /// **' Personal Info'**
  String get personal_info_title;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQs'**
  String get faq;

  /// No description provided for @edit_phone.
  ///
  /// In en, this message translates to:
  /// **'Edit phone'**
  String get edit_phone;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone*'**
  String get phone_number;

  /// No description provided for @save_numbers.
  ///
  /// In en, this message translates to:
  /// **'Save numbers'**
  String get save_numbers;

  /// No description provided for @delete_number.
  ///
  /// In en, this message translates to:
  /// **'Delete number'**
  String get delete_number;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Hom'**
  String get home;

  /// No description provided for @work.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get work;

  /// No description provided for @floor.
  ///
  /// In en, this message translates to:
  /// **'floor'**
  String get floor;

  /// No description provided for @landmark.
  ///
  /// In en, this message translates to:
  /// **'Landmark'**
  String get landmark;

  /// No description provided for @building_name.
  ///
  /// In en, this message translates to:
  /// **'Building_name'**
  String get building_name;

  /// No description provided for @apartment.
  ///
  /// In en, this message translates to:
  /// **'Apartment'**
  String get apartment;

  /// No description provided for @new_phone.
  ///
  /// In en, this message translates to:
  /// **'Add new phone'**
  String get new_phone;

  /// No description provided for @landline.
  ///
  /// In en, this message translates to:
  /// **'landline'**
  String get landline;

  /// No description provided for @default_address_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you want to choose this address to make it default address ?'**
  String get default_address_confirmation;

  /// No description provided for @default_phone_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you want to choose this phone to make it default phone ?'**
  String get default_phone_confirmation;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this address from your account?'**
  String get delete_confirmation;

  /// No description provided for @delete_confirmation_message.
  ///
  /// In en, this message translates to:
  /// **'when you will delete this address won\'t be in your contact list.'**
  String get delete_confirmation_message;

  /// No description provided for @edit_address.
  ///
  /// In en, this message translates to:
  /// **'Edit address'**
  String get edit_address;

  /// No description provided for @name_number_building.
  ///
  /// In en, this message translates to:
  /// **'Name or number building'**
  String get name_number_building;

  /// No description provided for @save_address.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save_address;

  /// No description provided for @delete_address.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete_address;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'state'**
  String get state;

  /// No description provided for @city_name.
  ///
  /// In en, this message translates to:
  /// **' city'**
  String get city_name;

  /// No description provided for @street_number_street.
  ///
  /// In en, this message translates to:
  /// **'name/number street'**
  String get street_number_street;

  /// No description provided for @my_profile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get my_profile;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get portfolio;

  /// No description provided for @training.
  ///
  /// In en, this message translates to:
  /// **'Training '**
  String get training;

  /// No description provided for @my_orders.
  ///
  /// In en, this message translates to:
  /// **' My orders'**
  String get my_orders;

  /// No description provided for @current_gifts.
  ///
  /// In en, this message translates to:
  /// **'Available offers'**
  String get current_gifts;

  /// No description provided for @quick_order.
  ///
  /// In en, this message translates to:
  /// **'Quick order'**
  String get quick_order;

  /// No description provided for @create_new_member.
  ///
  /// In en, this message translates to:
  /// **'Create new member'**
  String get create_new_member;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @my_tree.
  ///
  /// In en, this message translates to:
  /// **'My tree'**
  String get my_tree;

  /// No description provided for @search_name_or_code.
  ///
  /// In en, this message translates to:
  /// **'Search by name or code'**
  String get search_name_or_code;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @show_sorting.
  ///
  /// In en, this message translates to:
  /// **'Show sorting'**
  String get show_sorting;

  /// No description provided for @select_order.
  ///
  /// In en, this message translates to:
  /// **'Select order'**
  String get select_order;

  /// No description provided for @highest_points.
  ///
  /// In en, this message translates to:
  /// **'Highest points'**
  String get highest_points;

  /// No description provided for @lowest_points.
  ///
  /// In en, this message translates to:
  /// **'Lowest points'**
  String get lowest_points;

  /// No description provided for @all_members.
  ///
  /// In en, this message translates to:
  /// **'All members'**
  String get all_members;

  /// No description provided for @partener_members.
  ///
  /// In en, this message translates to:
  /// **'Partener members'**
  String get partener_members;

  /// No description provided for @active_members.
  ///
  /// In en, this message translates to:
  /// **'Active members'**
  String get active_members;

  /// No description provided for @inactive_members.
  ///
  /// In en, this message translates to:
  /// **'Inactive members'**
  String get inactive_members;

  /// No description provided for @member_level.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get member_level;

  /// No description provided for @no_members_founded.
  ///
  /// In en, this message translates to:
  /// **'No members founded'**
  String get no_members_founded;

  /// No description provided for @no_faq_founded.
  ///
  /// In en, this message translates to:
  /// **'No FAQs founded'**
  String get no_faq_founded;

  /// No description provided for @tree_city.
  ///
  /// In en, this message translates to:
  /// **'City: '**
  String get tree_city;

  /// No description provided for @personal_points.
  ///
  /// In en, this message translates to:
  /// **'Personal points'**
  String get personal_points;

  /// No description provided for @personal_points_desc.
  ///
  /// In en, this message translates to:
  /// **'(PP)'**
  String get personal_points_desc;

  /// No description provided for @group_points.
  ///
  /// In en, this message translates to:
  /// **'Group points'**
  String get group_points;

  /// No description provided for @group_points_desc.
  ///
  /// In en, this message translates to:
  /// **'(GP)'**
  String get group_points_desc;

  /// No description provided for @team_points.
  ///
  /// In en, this message translates to:
  /// **'Team points'**
  String get team_points;

  /// No description provided for @team_points_desc.
  ///
  /// In en, this message translates to:
  /// **'(TP)'**
  String get team_points_desc;

  /// No description provided for @credit.
  ///
  /// In en, this message translates to:
  /// **'Alnota'**
  String get credit;

  /// No description provided for @fawry.
  ///
  /// In en, this message translates to:
  /// **'Fawry'**
  String get fawry;

  /// No description provided for @profit.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get profit;

  /// No description provided for @cs_voucher.
  ///
  /// In en, this message translates to:
  /// **'Cs voucher'**
  String get cs_voucher;

  /// No description provided for @credit_acquisition.
  ///
  /// In en, this message translates to:
  /// **'Alnota Acquisition'**
  String get credit_acquisition;

  /// No description provided for @frequent_questions.
  ///
  /// In en, this message translates to:
  /// **'Frequent questions'**
  String get frequent_questions;

  /// No description provided for @credit_subscription.
  ///
  /// In en, this message translates to:
  /// **'Alnota subscription'**
  String get credit_subscription;

  /// No description provided for @my_wallet.
  ///
  /// In en, this message translates to:
  /// **'My wallet'**
  String get my_wallet;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @transaction_type.
  ///
  /// In en, this message translates to:
  /// **'Transaction type'**
  String get transaction_type;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @due_date.
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get due_date;

  /// No description provided for @eg.
  ///
  /// In en, this message translates to:
  /// **'EG'**
  String get eg;

  /// No description provided for @charge_credit.
  ///
  /// In en, this message translates to:
  /// **'Charge credit'**
  String get charge_credit;

  /// No description provided for @fawry_transaction_details.
  ///
  /// In en, this message translates to:
  /// **'fawry transaction details'**
  String get fawry_transaction_details;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @way_to_charge.
  ///
  /// In en, this message translates to:
  /// **'Way to charge'**
  String get way_to_charge;

  /// No description provided for @way_to_charge_details.
  ///
  /// In en, this message translates to:
  /// **'Go to the nearest branch where there is a Fawry machine Choose a primer to send the desired amount and then count By entering the membership code for Brimore'**
  String get way_to_charge_details;

  /// No description provided for @no_transactions.
  ///
  /// In en, this message translates to:
  /// **'No transactions'**
  String get no_transactions;

  /// No description provided for @transfer_profit.
  ///
  /// In en, this message translates to:
  /// **'Transfer profit'**
  String get transfer_profit;

  /// No description provided for @profit_transaction_details.
  ///
  /// In en, this message translates to:
  /// **'peofit transaction details'**
  String get profit_transaction_details;

  /// No description provided for @transfer_now.
  ///
  /// In en, this message translates to:
  /// **'transfer now'**
  String get transfer_now;

  /// No description provided for @transfer_profit_message.
  ///
  /// In en, this message translates to:
  /// **'enter code member and the amount to transfer profit'**
  String get transfer_profit_message;

  /// No description provided for @credit_transaction_details.
  ///
  /// In en, this message translates to:
  /// **'credit transaction details'**
  String get credit_transaction_details;

  /// No description provided for @data.
  ///
  /// In en, this message translates to:
  /// **'data'**
  String get data;

  /// No description provided for @alnota.
  ///
  /// In en, this message translates to:
  /// **'alnota'**
  String get alnota;

  /// No description provided for @used_credit.
  ///
  /// In en, this message translates to:
  /// **'used credit'**
  String get used_credit;

  /// No description provided for @remaining_credit.
  ///
  /// In en, this message translates to:
  /// **'remaining credit'**
  String get remaining_credit;

  /// No description provided for @pay_settlement.
  ///
  /// In en, this message translates to:
  /// **'pay'**
  String get pay_settlement;

  /// No description provided for @alnota_aquisition.
  ///
  /// In en, this message translates to:
  /// **'Alnota aquisition'**
  String get alnota_aquisition;

  /// No description provided for @alnota_subscription.
  ///
  /// In en, this message translates to:
  /// **'alnota subscription'**
  String get alnota_subscription;

  /// No description provided for @unsubscribe_message.
  ///
  /// In en, this message translates to:
  /// **'You are not subscribed to this service'**
  String get unsubscribe_message;

  /// No description provided for @egp.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get egp;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get points;

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get add_to_cart;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get more;

  /// No description provided for @abount_product.
  ///
  /// In en, this message translates to:
  /// **'about product'**
  String get abount_product;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'quantity'**
  String get quantity;

  /// No description provided for @sign_in_again.
  ///
  /// In en, this message translates to:
  /// **'Sign in again'**
  String get sign_in_again;

  /// No description provided for @please_sign_in_again.
  ///
  /// In en, this message translates to:
  /// **'Please sign in again'**
  String get please_sign_in_again;

  /// No description provided for @pdf.
  ///
  /// In en, this message translates to:
  /// **'Download the October Portfolio on your device'**
  String get pdf;

  /// No description provided for @showAll.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get showAll;

  /// No description provided for @brands.
  ///
  /// In en, this message translates to:
  /// **'Buy By Brand'**
  String get brands;

  /// No description provided for @ourMarket.
  ///
  /// In en, this message translates to:
  /// **'our Market'**
  String get ourMarket;

  /// No description provided for @mostBrands.
  ///
  /// In en, this message translates to:
  /// **'Most Popular Brands'**
  String get mostBrands;

  /// No description provided for @availableBrands.
  ///
  /// In en, this message translates to:
  /// **'Available Brands'**
  String get availableBrands;

  /// No description provided for @newBrands.
  ///
  /// In en, this message translates to:
  /// **'New Brands'**
  String get newBrands;

  /// No description provided for @set_new_password.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get set_new_password;

  /// No description provided for @set_new_password2.
  ///
  /// In en, this message translates to:
  /// **'re-enter password'**
  String get set_new_password2;

  /// No description provided for @match_password.
  ///
  /// In en, this message translates to:
  /// **'Password doesn\'t match'**
  String get match_password;

  /// No description provided for @fullReport.
  ///
  /// In en, this message translates to:
  /// **'Full Report'**
  String get fullReport;

  /// No description provided for @links.
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get links;

  /// No description provided for @team_point.
  ///
  /// In en, this message translates to:
  /// **'Team Points'**
  String get team_point;

  /// No description provided for @group_point.
  ///
  /// In en, this message translates to:
  /// **'Group Points'**
  String get group_point;

  /// No description provided for @personal_point.
  ///
  /// In en, this message translates to:
  /// **'Personal Points'**
  String get personal_point;

  /// No description provided for @new_members.
  ///
  /// In en, this message translates to:
  /// **'New Members'**
  String get new_members;

  /// No description provided for @new_members_2.
  ///
  /// In en, this message translates to:
  /// **'new members'**
  String get new_members_2;

  /// No description provided for @add_new_membership.
  ///
  /// In en, this message translates to:
  /// **'add new membership'**
  String get add_new_membership;

  /// No description provided for @member_removal_warning.
  ///
  /// In en, this message translates to:
  /// **'Note that if the new member did not confirm any order within grace period (remaining days of the month of membership\'s creation + days of the new month), he will removed from your members\' tree'**
  String get member_removal_warning;

  /// No description provided for @activated.
  ///
  /// In en, this message translates to:
  /// **'activated'**
  String get activated;

  /// No description provided for @inactivated.
  ///
  /// In en, this message translates to:
  /// **'inactivated'**
  String get inactivated;

  /// No description provided for @registration_date.
  ///
  /// In en, this message translates to:
  /// **'Registration date:'**
  String get registration_date;

  /// No description provided for @membership_expiration_date.
  ///
  /// In en, this message translates to:
  /// **'Membership expiration date'**
  String get membership_expiration_date;

  /// No description provided for @no_new_members.
  ///
  /// In en, this message translates to:
  /// **'There is no new members /n add new member'**
  String get no_new_members;

  /// No description provided for @point.
  ///
  /// In en, this message translates to:
  /// **'point'**
  String get point;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get day;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get hour;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get minute;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'second'**
  String get second;

  /// No description provided for @choose_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Choose the phone number'**
  String get choose_phone_number;

  /// No description provided for @verification_code_title.
  ///
  /// In en, this message translates to:
  /// **'Enter the activation code'**
  String get verification_code_title;

  /// No description provided for @verification_code_message.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code that was sent to your mobile phone.'**
  String get verification_code_message;

  /// No description provided for @resen_code.
  ///
  /// In en, this message translates to:
  /// **'resend'**
  String get resen_code;

  /// No description provided for @does_not_send_code.
  ///
  /// In en, this message translates to:
  /// **'Did you not receive the code?'**
  String get does_not_send_code;

  /// No description provided for @cart_single_product.
  ///
  /// In en, this message translates to:
  /// **'Single products'**
  String get cart_single_product;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @delete_cart.
  ///
  /// In en, this message translates to:
  /// **'Delete cart'**
  String get delete_cart;

  /// No description provided for @piece.
  ///
  /// In en, this message translates to:
  /// **'Piece'**
  String get piece;

  /// No description provided for @cart_currency.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get cart_currency;

  /// No description provided for @change_language.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get change_language;

  /// No description provided for @brimore.
  ///
  /// In en, this message translates to:
  /// **'Brimore'**
  String get brimore;

  /// No description provided for @purchases_value.
  ///
  /// In en, this message translates to:
  /// **'The value of your purchase'**
  String get purchases_value;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'order details'**
  String get order_details;

  /// No description provided for @choose_address_title.
  ///
  /// In en, this message translates to:
  /// **'Choose your delivery address or pick-up location'**
  String get choose_address_title;

  /// No description provided for @alnota_hint.
  ///
  /// In en, this message translates to:
  /// **' اشتري دلوقتي .. وادفعي بعدين '**
  String get alnota_hint;

  /// No description provided for @alnota_message.
  ///
  /// In en, this message translates to:
  /// **' اشتركي الآن في إحدى باقات ع نوته واحصلي على تمويل فوري لطلبك '**
  String get alnota_message;

  /// No description provided for @pay_cash.
  ///
  /// In en, this message translates to:
  /// **'لست بحاجة إلى تمويل ، أفضل الدفع نقدًا عند الاستلام'**
  String get pay_cash;

  /// No description provided for @total_after_alnota.
  ///
  /// In en, this message translates to:
  /// **' المبلغ النهائي المطلوب للدفع  بعد الاشتراك في ع نوته '**
  String get total_after_alnota;

  /// No description provided for @credit_my_wallet.
  ///
  /// In en, this message translates to:
  /// **' credit '**
  String get credit_my_wallet;

  /// No description provided for @current_profit.
  ///
  /// In en, this message translates to:
  /// **'current profit'**
  String get current_profit;

  /// No description provided for @other_costs.
  ///
  /// In en, this message translates to:
  /// **' other costs'**
  String get other_costs;

  /// No description provided for @shipping_cost.
  ///
  /// In en, this message translates to:
  /// **'shipping cost'**
  String get shipping_cost;

  /// No description provided for @pay_when_delivery.
  ///
  /// In en, this message translates to:
  /// **'الدفع عند الأستلام'**
  String get pay_when_delivery;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'المبلغ النهائى المطلوب عند الأستلام'**
  String get total;

  /// No description provided for @confirm_order.
  ///
  /// In en, this message translates to:
  /// **'confirm order'**
  String get confirm_order;

  /// No description provided for @get_now.
  ///
  /// In en, this message translates to:
  /// **'Get now'**
  String get get_now;

  /// No description provided for @le.
  ///
  /// In en, this message translates to:
  /// **'LE'**
  String get le;

  /// No description provided for @alnota_pending.
  ///
  /// In en, this message translates to:
  /// **'طلب عالنوتة قيد التنفيذ'**
  String get alnota_pending;

  /// No description provided for @administrative_fees.
  ///
  /// In en, this message translates to:
  /// **'administrative fees'**
  String get administrative_fees;

  /// No description provided for @send_order.
  ///
  /// In en, this message translates to:
  /// **' send order'**
  String get send_order;

  /// No description provided for @order_number.
  ///
  /// In en, this message translates to:
  /// **'Order number'**
  String get order_number;

  /// No description provided for @deliver_date.
  ///
  /// In en, this message translates to:
  /// **'Deliver date'**
  String get deliver_date;

  /// No description provided for @expected_deliver_date.
  ///
  /// In en, this message translates to:
  /// **'Expected deliver date'**
  String get expected_deliver_date;

  /// No description provided for @cancel_date.
  ///
  /// In en, this message translates to:
  /// **'Cancel date'**
  String get cancel_date;

  /// No description provided for @created_date.
  ///
  /// In en, this message translates to:
  /// **'Create date'**
  String get created_date;

  /// No description provided for @updated_date.
  ///
  /// In en, this message translates to:
  /// **'Last Update'**
  String get updated_date;

  /// No description provided for @invoice.
  ///
  /// In en, this message translates to:
  /// **'invoice'**
  String get invoice;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'send'**
  String get send;

  /// No description provided for @rate_service.
  ///
  /// In en, this message translates to:
  /// **'rate service'**
  String get rate_service;

  /// No description provided for @confirm_reciving.
  ///
  /// In en, this message translates to:
  /// **'Confirm receipt of order'**
  String get confirm_reciving;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'ok'**
  String get ok;

  /// No description provided for @confirm_code_tip.
  ///
  /// In en, this message translates to:
  /// **'In the event that the shipment reaches you and does not appear on the application, and you want to confirm the status of the shipment and that it has been received'**
  String get confirm_code_tip;

  /// No description provided for @cs_message.
  ///
  /// In en, this message translates to:
  /// **'The service administrators will activate the subscription as soon as possible'**
  String get cs_message;

  /// No description provided for @pay_with_alnota.
  ///
  /// In en, this message translates to:
  /// **'pay with alnota'**
  String get pay_with_alnota;

  /// No description provided for @current_credit.
  ///
  /// In en, this message translates to:
  /// **'current credit'**
  String get current_credit;

  /// No description provided for @add_new_product.
  ///
  /// In en, this message translates to:
  /// **'add new product'**
  String get add_new_product;

  /// No description provided for @confirm_message.
  ///
  /// In en, this message translates to:
  /// **''**
  String get confirm_message;

  /// No description provided for @confirm_check_box.
  ///
  /// In en, this message translates to:
  /// **''**
  String get confirm_check_box;

  /// No description provided for @confirm_payment.
  ///
  /// In en, this message translates to:
  /// **'Confirm payment'**
  String get confirm_payment;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'delivery'**
  String get delivery;

  /// No description provided for @confirm_order_message.
  ///
  /// In en, this message translates to:
  /// **'Your order has been confirmed and your order is being processed.'**
  String get confirm_order_message;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @have_question.
  ///
  /// In en, this message translates to:
  /// **'Have a query? Connect with us'**
  String get have_question;

  /// No description provided for @cancel_order.
  ///
  /// In en, this message translates to:
  /// **'cancel order'**
  String get cancel_order;

  /// No description provided for @cancel_order_details.
  ///
  /// In en, this message translates to:
  /// **'You can cancel the order within an hour of confirming it.'**
  String get cancel_order_details;

  /// No description provided for @home_screen.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_screen;

  /// No description provided for @confirm_order_with_sales.
  ///
  /// In en, this message translates to:
  /// **'Confirm order with sales within 2 days'**
  String get confirm_order_with_sales;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'L.E'**
  String get currency;

  /// No description provided for @total_bill.
  ///
  /// In en, this message translates to:
  /// **'Total bill'**
  String get total_bill;

  /// No description provided for @other_fees.
  ///
  /// In en, this message translates to:
  /// **'Other fees'**
  String get other_fees;

  /// No description provided for @shipping_fees.
  ///
  /// In en, this message translates to:
  /// **'Shipping fees'**
  String get shipping_fees;

  /// No description provided for @final_required_price.
  ///
  /// In en, this message translates to:
  /// **'Final required price'**
  String get final_required_price;

  /// No description provided for @my_wallet_balance.
  ///
  /// In en, this message translates to:
  /// **'My wallet balance'**
  String get my_wallet_balance;

  /// No description provided for @current_profit_balance.
  ///
  /// In en, this message translates to:
  /// **'Current profit balance'**
  String get current_profit_balance;

  /// No description provided for @cash_on_delivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on delivery'**
  String get cash_on_delivery;

  /// No description provided for @order_is_received.
  ///
  /// In en, this message translates to:
  /// **'Your order is received successfully'**
  String get order_is_received;

  /// No description provided for @order_is_being_checked.
  ///
  /// In en, this message translates to:
  /// **'We will check and confirm it in few minutes'**
  String get order_is_being_checked;

  /// No description provided for @order_number_will_be_sent_later.
  ///
  /// In en, this message translates to:
  /// **'You will be notified of the order number later'**
  String get order_number_will_be_sent_later;

  /// No description provided for @order_edit.
  ///
  /// In en, this message translates to:
  /// **'Order edit'**
  String get order_edit;

  /// No description provided for @order_cancellation.
  ///
  /// In en, this message translates to:
  /// **'Order cancellation'**
  String get order_cancellation;

  /// No description provided for @home_page.
  ///
  /// In en, this message translates to:
  /// **'home'**
  String get home_page;

  /// No description provided for @do_you_want_to_cancel_order.
  ///
  /// In en, this message translates to:
  /// **'Do you want to cancel the order ?'**
  String get do_you_want_to_cancel_order;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes I want'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No I do not'**
  String get no;

  /// No description provided for @order_is_cancelled.
  ///
  /// In en, this message translates to:
  /// **'The order is cancelled'**
  String get order_is_cancelled;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'copied'**
  String get copied;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'okay'**
  String get okay;

  /// No description provided for @update_address_to_confirm_order.
  ///
  /// In en, this message translates to:
  /// **'Update your address to confirm the order'**
  String get update_address_to_confirm_order;

  /// No description provided for @address_update.
  ///
  /// In en, this message translates to:
  /// **'Address update'**
  String get address_update;

  /// No description provided for @order_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Order confirmation'**
  String get order_confirmation;

  /// No description provided for @order_update.
  ///
  /// In en, this message translates to:
  /// **'Order update'**
  String get order_update;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @notify_me.
  ///
  /// In en, this message translates to:
  /// **'Notify me when available'**
  String get notify_me;

  /// No description provided for @product_variant_not_exist.
  ///
  /// In en, this message translates to:
  /// **'Variant does not exist'**
  String get product_variant_not_exist;

  /// No description provided for @products_count.
  ///
  /// In en, this message translates to:
  /// **'Product number'**
  String get products_count;

  /// No description provided for @expected_delivery_date.
  ///
  /// In en, this message translates to:
  /// **'Expected arrival date'**
  String get expected_delivery_date;

  /// No description provided for @cancellation_date.
  ///
  /// In en, this message translates to:
  /// **'Cancellation date'**
  String get cancellation_date;

  /// No description provided for @title_activity_invoice.
  ///
  /// In en, this message translates to:
  /// **'Invoice'**
  String get title_activity_invoice;

  /// No description provided for @brief.
  ///
  /// In en, this message translates to:
  /// **'Brief'**
  String get brief;

  /// No description provided for @shipping_company.
  ///
  /// In en, this message translates to:
  /// **'Shipping company'**
  String get shipping_company;

  /// No description provided for @delivery_statement.
  ///
  /// In en, this message translates to:
  /// **'Delivery statement'**
  String get delivery_statement;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get total_amount;

  /// No description provided for @creation_date.
  ///
  /// In en, this message translates to:
  /// **'Creation date '**
  String get creation_date;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @order_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount of the order'**
  String get order_total_amount;

  /// No description provided for @packages_count.
  ///
  /// In en, this message translates to:
  /// **'Packages count'**
  String get packages_count;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @discounts.
  ///
  /// In en, this message translates to:
  /// **'Discounts'**
  String get discounts;

  /// No description provided for @membership_fees.
  ///
  /// In en, this message translates to:
  /// **'Membership fees'**
  String get membership_fees;

  /// No description provided for @cs_voucher_discount.
  ///
  /// In en, this message translates to:
  /// **'Balance deduction (customer service)'**
  String get cs_voucher_discount;

  /// No description provided for @profit_balance.
  ///
  /// In en, this message translates to:
  /// **'My wallet balance'**
  String get profit_balance;

  /// No description provided for @golden_point_invoice.
  ///
  /// In en, this message translates to:
  /// **'Bonus points'**
  String get golden_point_invoice;

  /// No description provided for @voucher_discount.
  ///
  /// In en, this message translates to:
  /// **'Debit due on your account'**
  String get voucher_discount;

  /// No description provided for @credit_balance_label.
  ///
  /// In en, this message translates to:
  /// **'Alnote credit'**
  String get credit_balance_label;

  /// No description provided for @final_price.
  ///
  /// In en, this message translates to:
  /// **'Final amount'**
  String get final_price;

  /// No description provided for @golden_point.
  ///
  /// In en, this message translates to:
  /// **'golden point'**
  String get golden_point;

  /// No description provided for @invoice_breif.
  ///
  /// In en, this message translates to:
  /// **'Brief summary'**
  String get invoice_breif;

  /// No description provided for @virtual_profit.
  ///
  /// In en, this message translates to:
  /// **'Virtual profit'**
  String get virtual_profit;

  /// No description provided for @gift.
  ///
  /// In en, this message translates to:
  /// **'Gift'**
  String get gift;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @final_required_amount.
  ///
  /// In en, this message translates to:
  /// **'Final required amount'**
  String get final_required_amount;

  /// No description provided for @empty_shopping_cart.
  ///
  /// In en, this message translates to:
  /// **'The shopping cart is empty'**
  String get empty_shopping_cart;

  /// No description provided for @loading_failure.
  ///
  /// In en, this message translates to:
  /// **'It seems like there is a loading failure,please try again'**
  String get loading_failure;

  /// No description provided for @reload.
  ///
  /// In en, this message translates to:
  /// **'reload'**
  String get reload;

  /// No description provided for @error_order_quantity_invalid.
  ///
  /// In en, this message translates to:
  /// **'You cannot enter zero as order quantity'**
  String get error_order_quantity_invalid;

  /// No description provided for @product_deletion.
  ///
  /// In en, this message translates to:
  /// **'Product deletion'**
  String get product_deletion;

  /// No description provided for @deletion_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Deletion confirmation'**
  String get deletion_confirmation;

  /// No description provided for @do_you_want_to_delete_product.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this product ?'**
  String get do_you_want_to_delete_product;

  /// No description provided for @do_you_want_to_delete_all_products.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete all the products ?'**
  String get do_you_want_to_delete_all_products;

  /// No description provided for @do_you_want_to_delete_all.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete all ?'**
  String get do_you_want_to_delete_all;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'delete'**
  String get delete;

  /// No description provided for @product_added_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Product added to cart'**
  String get product_added_to_cart;

  /// No description provided for @search_product_name_code.
  ///
  /// In en, this message translates to:
  /// **'Search with product name or code'**
  String get search_product_name_code;

  /// No description provided for @no_product_found.
  ///
  /// In en, this message translates to:
  /// **'No product found!'**
  String get no_product_found;

  /// No description provided for @shop_now.
  ///
  /// In en, this message translates to:
  /// **'Shop now'**
  String get shop_now;

  /// No description provided for @check_all_results.
  ///
  /// In en, this message translates to:
  /// **'Check all results'**
  String get check_all_results;

  /// No description provided for @when_you_get.
  ///
  /// In en, this message translates to:
  /// **'When you get'**
  String get when_you_get;

  /// No description provided for @from_product_named.
  ///
  /// In en, this message translates to:
  /// **'from products'**
  String get from_product_named;

  /// No description provided for @you_will_get_a_discount_of.
  ///
  /// In en, this message translates to:
  /// **'You will get a discount of'**
  String get you_will_get_a_discount_of;

  /// No description provided for @remaining_quantity.
  ///
  /// In en, this message translates to:
  /// **'Remaining quantity'**
  String get remaining_quantity;

  /// No description provided for @low_stock.
  ///
  /// In en, this message translates to:
  /// **'Low stock'**
  String get low_stock;

  /// No description provided for @out_of_stock.
  ///
  /// In en, this message translates to:
  /// **'Out of stock'**
  String get out_of_stock;

  /// No description provided for @available_limit_for_you.
  ///
  /// In en, this message translates to:
  /// **'Available limit for you'**
  String get available_limit_for_you;

  /// No description provided for @for_duration.
  ///
  /// In en, this message translates to:
  /// **'for'**
  String get for_duration;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// No description provided for @product_out_of_stock.
  ///
  /// In en, this message translates to:
  /// **'This product is out of stock'**
  String get product_out_of_stock;

  /// No description provided for @could_not_open_url.
  ///
  /// In en, this message translates to:
  /// **'Could not open url'**
  String get could_not_open_url;

  /// No description provided for @other_gifts.
  ///
  /// In en, this message translates to:
  /// **'Other gifts'**
  String get other_gifts;

  /// No description provided for @shipment.
  ///
  /// In en, this message translates to:
  /// **'the shipment'**
  String get shipment;

  /// No description provided for @shipment_details.
  ///
  /// In en, this message translates to:
  /// **'Shipment details'**
  String get shipment_details;

  /// No description provided for @required_amount.
  ///
  /// In en, this message translates to:
  /// **'The amount required'**
  String get required_amount;

  /// No description provided for @first.
  ///
  /// In en, this message translates to:
  /// **'first'**
  String get first;

  /// No description provided for @second_.
  ///
  /// In en, this message translates to:
  /// **'the second'**
  String get second_;

  /// No description provided for @third.
  ///
  /// In en, this message translates to:
  /// **'the third'**
  String get third;

  /// No description provided for @fourth.
  ///
  /// In en, this message translates to:
  /// **'the fourth'**
  String get fourth;

  /// No description provided for @fifth.
  ///
  /// In en, this message translates to:
  /// **'Fifth'**
  String get fifth;

  /// No description provided for @sixth.
  ///
  /// In en, this message translates to:
  /// **'Fifth'**
  String get sixth;

  /// No description provided for @seventh.
  ///
  /// In en, this message translates to:
  /// **'Seven'**
  String get seventh;

  /// No description provided for @eighth.
  ///
  /// In en, this message translates to:
  /// **'eight'**
  String get eighth;

  /// No description provided for @ninth.
  ///
  /// In en, this message translates to:
  /// **'the ninth'**
  String get ninth;

  /// No description provided for @tenth.
  ///
  /// In en, this message translates to:
  /// **'tenth'**
  String get tenth;

  /// No description provided for @new_order.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the code for your order is not available yet. You can wait or cancel the order'**
  String get new_order;

  /// No description provided for @check_request.
  ///
  /// In en, this message translates to:
  /// **'Check request'**
  String get check_request;

  /// No description provided for @enter_code_of_six_digits.
  ///
  /// In en, this message translates to:
  /// **'Enter code of six digits'**
  String get enter_code_of_six_digits;

  /// No description provided for @quick_order_description.
  ///
  /// In en, this message translates to:
  /// **'Enter the product code and quikly ordering it'**
  String get quick_order_description;

  /// No description provided for @please_enter_at_least_one_code.
  ///
  /// In en, this message translates to:
  /// **'Please enter at least one code'**
  String get please_enter_at_least_one_code;

  /// No description provided for @collected_order.
  ///
  /// In en, this message translates to:
  /// **'Collected order'**
  String get collected_order;

  /// No description provided for @order_with_product_code.
  ///
  /// In en, this message translates to:
  /// **'Order with product code'**
  String get order_with_product_code;

  /// No description provided for @check_your_selection.
  ///
  /// In en, this message translates to:
  /// **'Check your products selection'**
  String get check_your_selection;

  /// No description provided for @send_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Send to cart'**
  String get send_to_cart;

  /// No description provided for @following_codes_are_wrong.
  ///
  /// In en, this message translates to:
  /// **'Following codes are wrong'**
  String get following_codes_are_wrong;

  /// No description provided for @delete_product.
  ///
  /// In en, this message translates to:
  /// **'Delete product'**
  String get delete_product;

  /// No description provided for @choose_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Choose payment method'**
  String get choose_payment_method;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'payment'**
  String get payment;

  /// No description provided for @total_points.
  ///
  /// In en, this message translates to:
  /// **'total points'**
  String get total_points;

  /// No description provided for @delivery_address.
  ///
  /// In en, this message translates to:
  /// **'delivery address'**
  String get delivery_address;

  /// No description provided for @lucky_wheel.
  ///
  /// In en, this message translates to:
  /// **'Lucky wheel'**
  String get lucky_wheel;

  /// No description provided for @total_point_per_shipment.
  ///
  /// In en, this message translates to:
  /// **'total point per shippment'**
  String get total_point_per_shipment;

  /// No description provided for @box.
  ///
  /// In en, this message translates to:
  /// **'Box'**
  String get box;

  /// No description provided for @your_golden_points.
  ///
  /// In en, this message translates to:
  /// **'Your golden points'**
  String get your_golden_points;

  /// No description provided for @the_golden_points.
  ///
  /// In en, this message translates to:
  /// **'Golden points'**
  String get the_golden_points;

  /// No description provided for @my_tree_report.
  ///
  /// In en, this message translates to:
  /// **'my tree report'**
  String get my_tree_report;

  /// No description provided for @target.
  ///
  /// In en, this message translates to:
  /// **'target'**
  String get target;

  /// No description provided for @current_members.
  ///
  /// In en, this message translates to:
  /// **'current members'**
  String get current_members;

  /// No description provided for @active_members_target.
  ///
  /// In en, this message translates to:
  /// **'active member target'**
  String get active_members_target;

  /// No description provided for @in_active_members.
  ///
  /// In en, this message translates to:
  /// **'in acctive member'**
  String get in_active_members;

  /// No description provided for @in_active_members_target.
  ///
  /// In en, this message translates to:
  /// **'in acctive member target'**
  String get in_active_members_target;

  /// No description provided for @target_points.
  ///
  /// In en, this message translates to:
  /// **'target points'**
  String get target_points;

  /// No description provided for @target_reports.
  ///
  /// In en, this message translates to:
  /// **'target reports'**
  String get target_reports;

  /// No description provided for @precentage.
  ///
  /// In en, this message translates to:
  /// **'precntage'**
  String get precentage;

  /// No description provided for @achieved_points.
  ///
  /// In en, this message translates to:
  /// **'achieved points'**
  String get achieved_points;

  /// No description provided for @level.
  ///
  /// In en, this message translates to:
  /// **'level'**
  String get level;

  /// No description provided for @order_average.
  ///
  /// In en, this message translates to:
  /// **' order average'**
  String get order_average;

  /// No description provided for @expected_profits.
  ///
  /// In en, this message translates to:
  /// **'expected profits'**
  String get expected_profits;

  /// No description provided for @achieved.
  ///
  /// In en, this message translates to:
  /// **'achieved'**
  String get achieved;

  /// No description provided for @points_count.
  ///
  /// In en, this message translates to:
  /// **'points count'**
  String get points_count;

  /// No description provided for @team_point_label.
  ///
  /// In en, this message translates to:
  /// **'TP'**
  String get team_point_label;

  /// No description provided for @personal_point_label.
  ///
  /// In en, this message translates to:
  /// **'PP'**
  String get personal_point_label;

  /// No description provided for @group_point_label.
  ///
  /// In en, this message translates to:
  /// **'GP'**
  String get group_point_label;

  /// No description provided for @subscription_confirm_title.
  ///
  /// In en, this message translates to:
  /// **''**
  String get subscription_confirm_title;

  /// No description provided for @subscription_confirm_message.
  ///
  /// In en, this message translates to:
  /// **''**
  String get subscription_confirm_message;

  /// No description provided for @subscription_reject_title.
  ///
  /// In en, this message translates to:
  /// **'تم رفض طلب عالنوتة  '**
  String get subscription_reject_title;

  /// No description provided for @subscription_reject_message.
  ///
  /// In en, this message translates to:
  /// **'لمعرفة سبب الرفض يرجى التواصل مع خدمة العملاء'**
  String get subscription_reject_message;

  /// No description provided for @activate_subscription.
  ///
  /// In en, this message translates to:
  /// **'activate subscription'**
  String get activate_subscription;

  /// No description provided for @subscribe.
  ///
  /// In en, this message translates to:
  /// **'subscribe'**
  String get subscribe;

  /// No description provided for @subscription_error_message.
  ///
  /// In en, this message translates to:
  /// **''**
  String get subscription_error_message;

  /// No description provided for @required_amount_to_get.
  ///
  /// In en, this message translates to:
  /// **'المبلغ المراد الحصول عليه *'**
  String get required_amount_to_get;

  /// No description provided for @national_id_title.
  ///
  /// In en, this message translates to:
  /// **'رقم البطاقة *'**
  String get national_id_title;

  /// No description provided for @national_id_front_image.
  ///
  /// In en, this message translates to:
  /// **'صورة أمامية للبطاقة *'**
  String get national_id_front_image;

  /// No description provided for @national_id_back_image.
  ///
  /// In en, this message translates to:
  /// **'صورة خلفية للبطاقة *'**
  String get national_id_back_image;

  /// No description provided for @birth_date.
  ///
  /// In en, this message translates to:
  /// **'تاريخ الميلاد *'**
  String get birth_date;

  /// No description provided for @main_phone.
  ///
  /// In en, this message translates to:
  /// **'رقم التليفون الأساسى *'**
  String get main_phone;

  /// No description provided for @second_phone_.
  ///
  /// In en, this message translates to:
  /// **'رقم تليفون اخر *'**
  String get second_phone_;

  /// No description provided for @government_title.
  ///
  /// In en, this message translates to:
  /// **'المحافظة *'**
  String get government_title;

  /// No description provided for @address_title.
  ///
  /// In en, this message translates to:
  /// **'العنوان *'**
  String get address_title;

  /// No description provided for @city_title.
  ///
  /// In en, this message translates to:
  /// **'المركز  *'**
  String get city_title;

  /// No description provided for @register_message.
  ///
  /// In en, this message translates to:
  /// **''**
  String get register_message;

  /// No description provided for @customers_service.
  ///
  /// In en, this message translates to:
  /// **'Customer service'**
  String get customers_service;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @thanks_for_registration.
  ///
  /// In en, this message translates to:
  /// **'Thanks for registration'**
  String get thanks_for_registration;

  /// No description provided for @start_now.
  ///
  /// In en, this message translates to:
  /// **'Start now'**
  String get start_now;

  /// No description provided for @you_are_from_brimore_team.
  ///
  /// In en, this message translates to:
  /// **'You are from Brimore Team'**
  String get you_are_from_brimore_team;

  /// No description provided for @your_opinion.
  ///
  /// In en, this message translates to:
  /// **'your opinion is important'**
  String get your_opinion;

  /// No description provided for @evaluate_shopping.
  ///
  /// In en, this message translates to:
  /// **''**
  String get evaluate_shopping;

  /// No description provided for @very_bad.
  ///
  /// In en, this message translates to:
  /// **'very bad'**
  String get very_bad;

  /// No description provided for @bad.
  ///
  /// In en, this message translates to:
  /// **'bad'**
  String get bad;

  /// No description provided for @neutral.
  ///
  /// In en, this message translates to:
  /// **'neutral'**
  String get neutral;

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'good'**
  String get good;

  /// No description provided for @very_good.
  ///
  /// In en, this message translates to:
  /// **'very good'**
  String get very_good;

  /// No description provided for @full_order_details.
  ///
  /// In en, this message translates to:
  /// **'Full order details'**
  String get full_order_details;

  /// No description provided for @please_enter_next_fields.
  ///
  /// In en, this message translates to:
  /// **'Please enter next fields'**
  String get please_enter_next_fields;

  /// No description provided for @member_code_required.
  ///
  /// In en, this message translates to:
  /// **'*Member code'**
  String get member_code_required;

  /// No description provided for @you_will_receive_a_code_on_your_phone.
  ///
  /// In en, this message translates to:
  /// **'You will receive a code on your phone'**
  String get you_will_receive_a_code_on_your_phone;

  /// No description provided for @request_code.
  ///
  /// In en, this message translates to:
  /// **'Request code'**
  String get request_code;

  /// No description provided for @please_validate_your_data.
  ///
  /// In en, this message translates to:
  /// **'Please validate your data'**
  String get please_validate_your_data;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get change_password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirm_password;

  /// No description provided for @your_registered_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Your registered phone number'**
  String get your_registered_phone_number;

  /// No description provided for @gifts.
  ///
  /// In en, this message translates to:
  /// **'The gifts'**
  String get gifts;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'discount'**
  String get discount;

  /// No description provided for @you_got_discount_with_amount.
  ///
  /// In en, this message translates to:
  /// **'You got discount with amount of'**
  String get you_got_discount_with_amount;

  /// No description provided for @pound.
  ///
  /// In en, this message translates to:
  /// **'pound'**
  String get pound;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'offers'**
  String get offers;

  /// No description provided for @used.
  ///
  /// In en, this message translates to:
  /// **'used'**
  String get used;

  /// No description provided for @auto_confirm_order.
  ///
  /// In en, this message translates to:
  /// **'Confirm order now'**
  String get auto_confirm_order;

  /// No description provided for @add_more_products.
  ///
  /// In en, this message translates to:
  /// **'Add more products'**
  String get add_more_products;

  /// No description provided for @you_got_free_shipping.
  ///
  /// In en, this message translates to:
  /// **'You got free shipping with percentage of'**
  String get you_got_free_shipping;

  /// No description provided for @please_complete_voucher.
  ///
  /// In en, this message translates to:
  /// **'Please complete the free vouchers'**
  String get please_complete_voucher;

  /// No description provided for @choose_your_favorite_products.
  ///
  /// In en, this message translates to:
  /// **'Choose your favorite products'**
  String get choose_your_favorite_products;

  /// No description provided for @choose_your_gift.
  ///
  /// In en, this message translates to:
  /// **'Choose your gift'**
  String get choose_your_gift;

  /// No description provided for @choose_favorite_products.
  ///
  /// In en, this message translates to:
  /// **'Choose the favorite products'**
  String get choose_favorite_products;

  /// No description provided for @you_have_used.
  ///
  /// In en, this message translates to:
  /// **'You have used'**
  String get you_have_used;

  /// No description provided for @products_selection_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Products selection confirmation'**
  String get products_selection_confirmation;

  /// No description provided for @choose_one_of_the_following_products.
  ///
  /// In en, this message translates to:
  /// **'Choose one of the following products'**
  String get choose_one_of_the_following_products;

  /// No description provided for @add_gift.
  ///
  /// In en, this message translates to:
  /// **'ِAdd the gift'**
  String get add_gift;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'ِfrom'**
  String get from;

  /// No description provided for @no_more_products_to_be_added.
  ///
  /// In en, this message translates to:
  /// **'No more products can be added , you have reached the maximum amount'**
  String get no_more_products_to_be_added;

  /// No description provided for @free_products.
  ///
  /// In en, this message translates to:
  /// **'The free products'**
  String get free_products;

  /// No description provided for @gifts_deletion.
  ///
  /// In en, this message translates to:
  /// **'Delete the gifts'**
  String get gifts_deletion;

  /// No description provided for @gift_deletion.
  ///
  /// In en, this message translates to:
  /// **'Delete the gift'**
  String get gift_deletion;

  /// No description provided for @do_you_want_to_delete_all_gifts.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete all the free gifts ?'**
  String get do_you_want_to_delete_all_gifts;

  /// No description provided for @do_you_want_to_delete_this_gift.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this free gift ?'**
  String get do_you_want_to_delete_this_gift;

  /// No description provided for @complete_your_gift_amount.
  ///
  /// In en, this message translates to:
  /// **'Please complete the remaining amount of your gift'**
  String get complete_your_gift_amount;

  /// No description provided for @no_chosen_products.
  ///
  /// In en, this message translates to:
  /// **'There are no chosen products'**
  String get no_chosen_products;

  /// No description provided for @please_choose_gift.
  ///
  /// In en, this message translates to:
  /// **'Please choose your gift'**
  String get please_choose_gift;

  /// No description provided for @your_order_is_confirmed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Your order is confirmed successfully \n You will be notified when the order will be received'**
  String get your_order_is_confirmed_successfully;

  /// No description provided for @gift_review_with_sales.
  ///
  /// In en, this message translates to:
  /// **'Sales will contact you to review order gifts'**
  String get gift_review_with_sales;

  /// No description provided for @remove_unavailable_products.
  ///
  /// In en, this message translates to:
  /// **'You should remove unavailable products to continue the order'**
  String get remove_unavailable_products;

  /// No description provided for @following_unavailable.
  ///
  /// In en, this message translates to:
  /// **'The following products are not available'**
  String get following_unavailable;

  /// No description provided for @following_less_quantity.
  ///
  /// In en, this message translates to:
  /// **'The following products are available in less quantity'**
  String get following_less_quantity;

  /// No description provided for @available_quantity_of.
  ///
  /// In en, this message translates to:
  /// **'The available quantity of'**
  String get available_quantity_of;

  /// No description provided for @all_products_unavailable.
  ///
  /// In en, this message translates to:
  /// **'All the required products are unavailable'**
  String get all_products_unavailable;

  /// No description provided for @choose_alternative_products.
  ///
  /// In en, this message translates to:
  /// **'Choose alternative products'**
  String get choose_alternative_products;

  /// No description provided for @out_of_stock_product.
  ///
  /// In en, this message translates to:
  /// **'This product is not available'**
  String get out_of_stock_product;

  /// No description provided for @low_quantity.
  ///
  /// In en, this message translates to:
  /// **'Remaining quantity '**
  String get low_quantity;

  /// No description provided for @low_limit.
  ///
  /// In en, this message translates to:
  /// **'Low stock'**
  String get low_limit;

  /// No description provided for @not_in_pricelist.
  ///
  /// In en, this message translates to:
  /// **'Sorry this product is not available now'**
  String get not_in_pricelist;

  /// No description provided for @error_loading_data.
  ///
  /// In en, this message translates to:
  /// **'Error in loading data'**
  String get error_loading_data;

  /// No description provided for @you_have_amount.
  ///
  /// In en, this message translates to:
  /// **'You have amount of'**
  String get you_have_amount;

  /// No description provided for @use_value_of_your_credit.
  ///
  /// In en, this message translates to:
  /// **'Use value of your credit'**
  String get use_value_of_your_credit;

  /// No description provided for @cs_voucher_discount_value.
  ///
  /// In en, this message translates to:
  /// **'return discount with value of %s pounds'**
  String get cs_voucher_discount_value;

  /// No description provided for @cs_voucher_shipping_fees.
  ///
  /// In en, this message translates to:
  /// **'return shipping fees'**
  String get cs_voucher_shipping_fees;
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
    'that was used.',
  );
}
