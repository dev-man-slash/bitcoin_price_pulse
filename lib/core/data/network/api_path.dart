const String loginApi = "login";
const String logoutApi = "logout";
const String verificationCodeApi = "verificationcode";
const String getCategoriesApi = "getcategories";
const String getAdInfoApi = "getdetailsadvert";

const String getCategorySchemasApi = "getschema";

String getAllAdByCityApi(int page, String lang) => "getadvertbycity?lang=$lang&page=$page";

String getAllAdByCityAndCategoryApi(int page, String lang) =>
    "getadvertbycityandcategory?lang=$lang&page=$page";

String searchInCategories(int page, String lang) => "advertsearch?lang=$lang&page=$page";
String getAdBySearch(int page, String lang) => "getadvertpagesearch?lang=$lang&page=$page";

String adFilterApi(int page, String lang) => "advertfiltering?lang=$lang&page=$page";
const String filterNotifyMe = "filternotifyme";

const String getAllStatesApi = "getstates";
const String getAllCitiesApi = "getcities";
const String searchCitiesApi = "searchcity";
const String getAllCitiesCountryApi = "allcity";

const String getZonesApi = "getzones";
const String sendAdvertisementApi = "insertadvertising";

const String markOrUnMark = "markorunmarkadvert";
const String getMarkedAdvert = "checkmarkedadvert";
const String addAdvertNote = "addadvertnote";
const String deleteAdvertNote = "deleteadvertnote";
const String getMarksApi = "getadvertmarked";
const String getAdvertNote = "getnoteadvert";
const String getCategoriesByIds = "getcategoriesbyids";
const String getNotesApi = "getadvertnoted";
const String adReportApi = "advertreport";
const String getAdvertisementByIdApi = "getadvertsbyids";
const String getMyAdsApi = "getadvertbyauth";
const String deleteAdApi = "deleteadvert";
const String getSchemaByCategoryApi = "getschema";
const String editAdApi = "editadvertising";
const String deleteAdImageApi = "deleteadvertimage";
const String getAdVisitsApi = "getadvertview";
const String getUserDetailsApi = "getdetailsuserbyauth";
const String sendReagentCodeApi = "registerreagentcode";
const String chatStatusApi = "checkuseropenchat";
const String openChatApi = "openchat";
const String getMessagesApi = "getchatmessage";
const String messageSeenStatusApi = "seenchatmessage";
const String insertMessageApi = "insertchatmessage";
const String getUserChatApi = "getchatsuser";
const String changeLanguageApi = "changelang";
const String getAdvertisingApi = "getads";
const String getAdvertisingByCategoryId = "getadsbycategoryid";
const String getNotifyMeApi = "my-notify";
const String deleteNotifyMeApi = "delete-my-notify";
const String getCategoryInfoApi = "category";
const String getAllPaymentsApi = "payment/get-all-payments";
