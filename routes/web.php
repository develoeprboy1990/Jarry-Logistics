<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Route;


 
use App\Http\Controllers\KM;
use App\Http\Controllers\Accounts;
use App\Http\Controllers\EstimateController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\User;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\Documents;
use App\Http\Controllers\ChartOfAccount;
use App\Http\Controllers\Warehouse;
 
   
 Route::get('/base1/',[KM::class,'base1']);
 Route::post('/base2/',[KM::class,'base2']);

 
 
 
Route::get('/',[Accounts::class,'Login']);
Route::get('/Login',[Accounts::class,'Login']);
Route::post('/UserVerify',[Accounts::class,'UserVerify']);


 
 Route::group(['middleware' => ['CheckAdmin']], function () {

Route::get('/Dashboard',[Accounts::class,'Dashboard']);


Route::get('/Prayer/',[KM::class,'Prayer']);
 


Route::get('/Invoice',[Accounts::class,'Invoice']);

Route::get('/InvoiceCreate',[Accounts::class,'InvoiceCreate']);
Route::get('/ajax_invoice',[Accounts::class,'ajax_invoice']);
 
Route::post('/InvoiceSave',[Accounts::class,'InvoiceSave']);
route::get('/InvoiceEdit/{id}',[Accounts::class,'InvoiceEdit']);
route::get('/InvoicePDF/{id}',[Accounts::class,'InvoicePDF']);
route::get('/InvoiceView/{id}',[Accounts::class,'InvoiceView']);

Route::post('/InvoiceUpdate',[Accounts::class,'InvoiceUpdate']);
route::get('/InvoiceDelete/{id}',[Accounts::class,'InvoiceDelete']);

Route::post('/Ajax_Balance',[Accounts::class,'Ajax_Balance']);
Route::post('/Ajax_VHNO',[Accounts::class,'Ajax_VHNO']);
Route::post('/ajax_invoice_vhno',[Accounts::class,'ajax_invoice_vhno']);
 
 
Route::get('/Voucher',[Accounts::class,'Voucher']);
Route::get('/VoucherCreate/{vouchertype}',[Accounts::class,'VoucherCreate']);
Route::post('/VoucherSave',[Accounts::class,'VoucherSave']);
Route::get('/ajax_voucher',[Accounts::class,'ajax_voucher']);
Route::get('/VoucherEdit/{id}',[Accounts::class,'VoucherEdit']);
Route::post('/VoucherUpdate',[Accounts::class,'VoucherUpdate']);
Route::get('/VoucherDelete/{id}',[Accounts::class,'VoucherDelete']);
Route::get('/VoucherView/{id}',[Accounts::class,'VoucherView']);

Route::get('/JV/',[Accounts::class,'JV']);
Route::post('/JVSave/',[Accounts::class,'JVSave']);


Route::get('/Item',[Accounts::class,'Item']);
Route::post('/ItemSave',[Accounts::class,'ItemSave']);
Route::get('/ItemEdit/{id}',[Accounts::class,'ItemEdit']);
Route::post('/ItemUpdate/',[Accounts::class,'ItemUpdate']);
Route::get('/ItemDelete/{id}',[Accounts::class,'ItemDelete']); 

Route::get('/ExpenseReport/',[Accounts::class,'ExpenseReport']);
Route::post('/ExpenseReport1/',[Accounts::class,'ExpenseReport1']);


Route::get('/User',[User::class,'Show']);
Route::post('/UserSave',[User::class,'UserSave']);
Route::get('/UserEdit/{id}',[User::class,'UserEdit']);
Route::post('/UserUpdate/',[User::class,'UserUpdate']);
Route::get('/UserDelete/{id}',[User::class,'UserDelete']); 



Route::get('/Supplier',[Accounts::class,'Supplier']);
Route::post('/SaveSupplier',[Accounts::class,'SaveSupplier']);
Route::get('/SupplierEdit/{id}',[Accounts::class,'SupplierEdit']);
Route::post('/SupplierUpdate/',[Accounts::class,'SupplierUpdate']);
Route::get('/SupplierDelete/{id}',[Accounts::class,'SupplierDelete']);


Route::get('/Parties',[Accounts::class,'Parties']);
Route::post('/SaveParties',[Accounts::class,'SaveParties']);
Route::get('/PartiesEdit/{id}',[Accounts::class,'PartiesEdit']);
Route::post('/PartiesUpdate/',[Accounts::class,'PartiesUpdate']);
Route::get('/PartiesDelete/{id}',[Accounts::class,'PartiesDelete']);



Route::get('/CheckUserRole1/{userid},{tablename},{action}',[Accounts::class,'CheckUserRole1']);




Route::get('/table',[Accounts::class,'table']);
Route::get('/datatable',[Accounts::class,'datatable']);



// Petty Cash

Route::get('/PettyCashCreate',[Accounts::class,'PettyCashCreate']);
Route::get('/PettyCash',[Accounts::class,'PettyCash']);
Route::get('/ajax_pettycash',[Accounts::class,'ajax_pettycash']);
Route::post('/PettyCashSave',[Accounts::class,'PettyCashSave']);
route::get('/PettyCashEdit/{id}',[Accounts::class,'PettyCashEdit']);
Route::post('/PettyCashUpdate',[Accounts::class,'PettyCashUpdate']);
Route::post('/Ajax_PVHNO',[Accounts::class,'Ajax_PVHNO']);


Route::get('/ChartOfAcc/',[ChartOfAccount::class,'ChartOfAcc']);
route::post('/ChartOfAccountSave/',[ChartOfAccount::class,'ChartOfAccountSave']);
route::post('/ChartOfAccountSaveL3/',[ChartOfAccount::class,'ChartOfAccountSaveL3']);
route::get('/ChartOfAccountDelete/{ChartOfAccountID}',[ChartOfAccount::class,'ChartOfAccountDelete']);
route::get('/ChartOfAccountEdit/{id}',[ChartOfAccount::class,'ChartOfAccountEdit']);
route::post('/ChartOfAccountUpdate/',[ChartOfAccount::class,'ChartOfAccountUpdate']);

route::get('/PartyLedger/',[Accounts::class,'PartyLedger']);
route::post('/PartyLedger1/',[Accounts::class,'PartyLedger1']);
route::post('/PartyLedger1PDF/',[Accounts::class,'PartyLedger1PDF']);

route::post('/PartySalesLedger1PDF/',[Accounts::class,'PartySalesLedger1PDF']);
route::post('/PartyLedger2PDF/',[Accounts::class,'PartyLedger2PDF']);
route::post('/PartyLedgerAccount1PDF/',[Accounts::class,'PartyLedgerAccount1PDF']);

route::post('/PartySalesLedger2PDF/',[Accounts::class,'PartySalesLedger2PDF']);



route::get('/SupplierLedger/',[Accounts::class,'SupplierLedger']);
route::get('/AdjustmentBalance/',[Accounts::class,'AdjustmentBalance']);
route::post('/AdjustmentBalanceSave/',[Accounts::class,'AdjustmentBalanceSave']);

route::get('/SupplierBalance/',[Accounts::class,'SupplierBalance']);
route::post('/SupplierBalance1/',[Accounts::class,'SupplierBalance1']);
route::post('/SupplierBalance1PDF/',[Accounts::class,'SupplierBalance1PDF']);


route::get('/PartyList/',[Accounts::class,'PartyList']);
route::get('/PartyListPDF/',[Accounts::class,'PartyListPDF']);
route::get('/OutStandingInvoice/',[Accounts::class,'OutStandingInvoice']);
route::post('/OutStandingInvoice1/',[Accounts::class,'OutStandingInvoice1']);
route::post('/OutStandingInvoice1PDF/',[Accounts::class,'OutStandingInvoice1PDF']);


route::get('/PartyWiseSale/',[Accounts::class,'PartyWiseSale']);
route::post('/PartyWiseSale1/',[Accounts::class,'PartyWiseSale1']);
route::post('/PartyWiseSale1PDF/',[Accounts::class,'PartyWiseSale1PDF']);

route::get('/YearlyPartyBalance/',[Accounts::class,'YearlyPartyBalance']);
route::post('/YearlyPartyBalance1/',[Accounts::class,'YearlyPartyBalance1']);




route::get('/PartyBalance/',[Accounts::class,'PartyBalance']);
route::post('/PartyBalance1/',[Accounts::class,'PartyBalance1']);
route::post('/PartyBalance1PDF/',[Accounts::class,'PartyBalance1PDF']);
route::post('/PartyBalanceAreawise2PDF/',[Accounts::class,'PartyBalanceAreawise2PDF']);
route::post('/PartySaleItemWise/',[Accounts::class,'PartySaleItemWise']);




route::get('/PartyYearlyBalance/',[Accounts::class,'PartyYearlyBalance']);
route::post('/PartyYearlyBalance1/',[Accounts::class,'PartyYearlyBalance1']);
route::post('/PartyYearlyBalance1PDF/',[Accounts::class,'PartyYearlyBalance1PDF']);


// supplier reports

route::get('/SupplierLedger/',[Accounts::class,'SupplierLedger']);
route::post('/SupplierLedger1/',[Accounts::class,'SupplierLedger1']);
route::post('/SupplierLedger1PDF/',[Accounts::class,'SupplierLedger1PDF']);
route::post('/SupplierBillLedger2PDF/',[Accounts::class,'SupplierBillLedger2PDF']);

route::get('/SupplierWiseSale/',[Accounts::class,'SupplierWiseSale']);
route::post('/SupplierWiseSale1/',[Accounts::class,'SupplierWiseSale1']);
route::post('/SupplierWiseSale1PDF/',[Accounts::class,'SupplierWiseSale1PDF']);

route::get('/TaxReport/',[Accounts::class,'TaxReport']);
route::post('/TaxReport1/',[Accounts::class,'TaxReport1']);
route::post('/TaxReport1PDF/',[Accounts::class,'TaxReport1PDF']);

route::get('/SalemanReport/',[Accounts::class,'SalemanReport']);
route::post('/SalemanReport1/',[Accounts::class,'SalemanReport1']);
route::post('/SalemanReport1PDF/',[Accounts::class,'SalemanReport1PDF']);

route::get('/AirlineSummary/',[Accounts::class,'AirlineSummary']);
route::post('/AirlineSummary1/',[Accounts::class,'AirlineSummary1']);
route::post('/AirlineSummary1PDF/',[Accounts::class,'AirlineSummary1PDF']);

// accounts report

route::get('/VoucherReport/',[Accounts::class,'VoucherReport']);
route::post('/VoucherReport1/',[Accounts::class,'VoucherReport1']);
route::post('/VoucherReport1PDF/',[Accounts::class,'VoucherReport1PDF']);

route::get('/CashbookReport/',[Accounts::class,'CashbookReport']);
route::post('/CashbookReport1/',[Accounts::class,'CashbookReport1']);
route::post('/CashbookReport1PDF/',[Accounts::class,'CashbookReport1PDF']);

route::get('/DaybookReport/',[Accounts::class,'DaybookReport']);
route::post('/DaybookReport1/',[Accounts::class,'DaybookReport1']);
route::post('/DaybookReport1PDF/',[Accounts::class,'DaybookReport1PDF']);


route::get('/GeneralLedger/',[Accounts::class,'GeneralLedger']);
route::post('/GeneralLedger1/',[Accounts::class,'GeneralLedger1']);
route::post('/GeneralLedger1PDF/',[Accounts::class,'GeneralLedger1PDF']);

route::get('/TrialBalance/',[Accounts::class,'TrialBalance']);
route::post('/TrialBalance1/',[Accounts::class,'TrialBalance1']);
route::post('/TrialBalance1PDF/',[Accounts::class,'TrialBalance1PDF']);


route::get('/TrialBalanceActivity/',[Accounts::class,'TrialBalanceActivity']);
route::post('/TrialBalanceActivity1/',[Accounts::class,'TrialBalanceActivity1']);
route::post('/TrialBalanceActivity1PDF/',[Accounts::class,'TrialBalanceActivity1PDF']);

route::get('/BalanceSheet/',[Accounts::class,'BalanceSheet']);
route::post('/BalanceSheet1/',[Accounts::class,'BalanceSheet1']);
route::post('/BalanceSheet1PDF/',[Accounts::class,'BalanceSheet1PDF']);

Route::get('/BalanceSheetDetail/{ChartOfAccountID}/{StartDat}/{EndDate}',[Accounts::class,'BalanceSheetDetail']);
Route::get('/JournalEntries/{ChartOfAccountID}/{StartDat}/{EndDate}',[Accounts::class,'JournalEntries']);


route::get('/TicketRegister/',[Accounts::class,'TicketRegister']);
route::post('/TicketRegister1/',[Accounts::class,'TicketRegister1']);
route::post('/TicketRegister1PDF/',[Accounts::class,'TicketRegister1PDF']);

route::get('/InvoiceSummary/',[Accounts::class,'InvoiceSummary']);
route::post('/InvoiceSummary1/',[Accounts::class,'InvoiceSummary1']);
route::post('/InvoiceSummary1PDF/',[Accounts::class,'InvoiceSummary1PDF']);

route::get('/ProfitAndLoss/',[Accounts::class,'ProfitAndLoss']);
route::post('/ProfitAndLoss1/',[Accounts::class,'ProfitAndLoss1']);
route::post('/ProfitAndLoss1PDF/',[Accounts::class,'ProfitAndLoss1PDF']);




route::get('/tmp/',[Accounts::class,'tmp']); 

Route::get('/Logout',[Accounts::class,'Logout']);


 

route::get('/Role/{UserID}',[Accounts::class,'Role']);
 route::post('/RoleSave',[Accounts::class,'RoleSave']);
 route::get('/RoleView/{UserID}',[Accounts::class,'RoleView']);
 route::post('/RoleUpdate',[Accounts::class,'RoleUpdate']);

 route::get('/checkUserRole/{UserID}',[Accounts::class,'checkUserRole']);


 route::get('/UserProfile',[Accounts::class,'UserProfile']);
 route::get('/ChangePassword',[Accounts::class,'ChangePassword']);
 route::post('/UpdatePassword',[Accounts::class,'UpdatePassword']);



 route::get('/SalesInvoiceCreate/',[Accounts::class,'SalesInvoiceCreate']);
 route::post('/SaleInvoiceSave/',[Accounts::class,'SaleInvoiceSave']);
 route::get('/SaleInvoiceEdit/{id}',[Accounts::class,'SaleInvoiceEdit']);
 route::post('/SaleInvoiceUpdate/',[Accounts::class,'SaleInvoiceUpdate']);
 route::get('/SaleInvoiceDelete/{id}',[Accounts::class,'SaleInvoiceDelete']);
 route::get('/SaleInvoiceView/{id}',[Accounts::class,'SaleInvoiceView']);
 route::get('/SaleInvoiceViewPDF/{id}',[Accounts::class,'SaleInvoiceViewPDF']);
 route::get('/SaleInvoiceViewPDF2/{id}',[Accounts::class,'SaleInvoiceViewPDF2']);


 
 

 route::get('/DeliveryChallan/',[Accounts::class,'DeliveryChallan']);


 route::get('/Payment/',[Accounts::class,'Payment']);
 route::get('/ajax_payment',[Accounts::class,'ajax_payment']);
 
 route::get('/PaymentCreate/',[Accounts::class,'PaymentCreate']);

Route::get('/Ajax_PartyInvoices/{id}',[Accounts::class,'Ajax_PartyInvoices']);
route::get('/PaymentViewPDF/{id}',[Accounts::class,'PaymentViewPDF']);


route::get('/DeliveryChallan/',[Accounts::class,'DeliveryChallan']);
route::get('/ajax_deliverychallan/',[Accounts::class,'Ajax_DeliveryChallan']);
route::get('/DeliveryChallanCreate/',[Accounts::class,'DeliveryChallanCreate']);
route::post('/DeliveryChallanSave/',[Accounts::class,'DeliveryChallanSave']);
route::get('/DeliveryChallanView/{id}',[Accounts::class,'DeliveryChallanView']);
route::get('/DeliveryChallanViewPDF/{id}',[Accounts::class,'DeliveryChallanViewPDF']);
route::get('/DeliveryChallanEdit/{id}',[Accounts::class,'DeliveryChallanEdit']);
route::post('/DeliveryChallanUpdate/',[Accounts::class,'DeliveryChallanUpdate']);



route::get('/DeliveryChallanDelete/{id}',[Accounts::class,'DeliveryChallanDelete']);
 
 
 route::get('/PaymentCreate/',[Accounts::class,'PaymentCreate']);
route::post('/PaymentSave/',[Accounts::class,'PaymentSave']);
route::get('/PaymentDelete/{id}',[Accounts::class,'PaymentDelete']);
route::get('/PaymentEdit/{id}',[Accounts::class,'PaymentEdit']);
route::post('/PaymentUpdate/',[Accounts::class,'PaymentUpdate']);

// bulk payment from parties

 route::get('/BulkPaymentCreate/',[Accounts::class,'BulkPaymentCreate']);
 route::post('/BulkPaymentSearch/',[Accounts::class,'BulkPaymentSearch']);
 route::post('/BulkPaymentSave/',[Accounts::class,'BulkPaymentSave']);



 route::get('/CreditNote/',[Accounts::class,'CreditNote']);
 route::get('/ajax_creditnote',[Accounts::class,'ajax_creditnote']);

 route::get('/CreditNoteCreate',[Accounts::class,'CreditNoteCreate']);
 route::post('/CreditNoteSave',[Accounts::class,'CreditNoteSave']);
 route::get('/CreditNoteEdit/{id}',[Accounts::class,'CreditNoteEdit']);
 route::post('/CreditNoteUpdate',[Accounts::class,'CreditNoteUpdate']);
 route::get('/CreditNoteDelete/{id}',[Accounts::class,'CreditNoteDelete']);
 route::get('/CreditNoteView/{id}',[Accounts::class,'CreditNoteView']);
 route::get('/CreditNoteViewPDF/{id}',[Accounts::class,'CreditNoteViewPDF']);



// ..............Bill / Purchase.............
route::get('/Bill/',[Accounts::class,'Bill']);
route::get('/ajax_bill/',[Accounts::class,'Ajax_bill']);
route::get('/BillCreate/',[Accounts::class,'BillCreate']);
route::post('/BillSave/',[Accounts::class,'BillSave']);
route::get('/BillEdit/{id}',[Accounts::class,'BillEdit']);
route::post('/BillUpdate/',[Accounts::class,'BillUpdate']);
route::get('/BillDelete/{id}',[Accounts::class,'BillDelete']);
route::get('/BillView/{id}',[Accounts::class,'BillView']);
route::get('/BillViewPDF/{id}',[Accounts::class,'BillViewPDF']);

// ..............Purchase Return .............
 route::get('/DebitNote/',[Accounts::class,'DebitNote']);
 route::get('/ajax_debitnote/',[Accounts::class,'ajax_debitnote']);
 route::get('/DebitNoteCreate/',[Accounts::class,'DebitNoteCreate']);
 route::post('/DebitNoteSave/',[Accounts::class,'DebitNoteSave']);
 route::get('/DebitNoteEdit/{id}',[Accounts::class,'DebitNoteEdit']);
 route::post('/DebitNoteUpdate/',[Accounts::class,'DebitNoteUpdate']);
 route::get('/DebitNoteDelete/{id}',[Accounts::class,'DebitNoteDelete']);
 route::get('/DebitNoteView/{id}',[Accounts::class,'DebitNoteView']);
 route::get('/DebitNoteViewPDF/{id}',[Accounts::class,'DebitNoteViewPDF']);

// ..............Estimate.............
route::get('/Estimate/',[EstimateController::class,'Estimate']);

route::get('/EstimateCreate/',[EstimateController::class,'EstimateCreate']);

route::post('/EstimateSave/',[EstimateController::class,'EstimateSave']);
route::get('/ajax_estimate/',[EstimateController::class,'ajax_estimate']);

route::get('/EstimateDelete/{id}',[EstimateController::class,'EstimateDelete']);
route::get('/EstimateView/{id}',[EstimateController::class,'EstimateView']);
route::get('/EstimateEdit/{id}',[EstimateController::class,'EstimateEdit']);
route::post('/EstimateUpdate/',[EstimateController::class,'EstimateUpdate']);
route::get('/BlankReport/',[Accounts::class,'BlankReport']);
route::get('/EstimateViewPDF/{id}',[EstimateController::class,'EstimateViewPDF']);


//.............Complete Journal..............
route::get('/completejournal',[ReportController::class,'completejournal']);


// ............Company............
Route::get('/Company',[CompanyController::class,'Company']);
Route::post('/SaveCompany',[CompanyController::class,'SaveCompany']);
Route::get('/CompanyEdit/{id}',[CompanyController::class,'CompanyEdit']);
Route::post('/CompanyUpdate/',[CompanyController::class,'CompanyUpdate']);
Route::get('/CompanyDelete/{id}',[CompanyController::class,'CompanyDelete']);

// //................. PAYMENT FOR PURCHASES....................

route::get('/PurchasePayment/',[Accounts::class,'PurchasePayment']);
route::get('/ajax_purchasepaymenttable',[Accounts::class,'ajax_purchasepaymenttable']);
route::get('/PurchasePaymentCreate/',[Accounts::class,'PurchasePaymentCreate']);
Route::POST('/Ajax_SupplierInvoices/',[Accounts::class,'Ajax_SupplierInvoices']);

route::get('/PurchasePaymentEdit/{id}',[Accounts::class,'PurchasePaymentEdit']);
Route::POST('/PurchasePaymentUpdate/',[Accounts::class,'PurchasePaymentUpdate']);


route::post('/PurchasePaymentSave/',[Accounts::class,'PurchasePaymentSave']);
route::get('/PurchasePaymentDelete/{id}',[Accounts::class,'PurchasePaymentDelete']);
route::get('/PurchasePaymentView/{id}',[Accounts::class,'PurchasePaymentView']);
// // Ajax_SupplierInvoices


//...................purchaseorder...........................
 route::get('/PurchaseOrder/',[Accounts::class,'PurchaseOrder']);
 route::get('/ajax_purchaseorder/',[Accounts::class,'ajax_purchaseorder']);
 route::get('/PurchaseOrderCreate/',[Accounts::class,'PurchaseOrderCreate']);
 route::post('/PurchaseOrderSave/',[Accounts::class,'PurchaseOrderSave']);
 route::get('/PurchaseOrderEdit/{id}',[Accounts::class,'PurchaseOrderEdit']);
 route::post('/PurchaseOrderUpdate/',[Accounts::class,'PurchaseOrderUpdate']);
 route::get('/PurchaseOrderDelete/{id}',[Accounts::class,'PurchaseOrderDelete']);
 route::get('/PurchaseOrderView/{id}',[Accounts::class,'PurchaseOrderView']);
 route::get('/PurchaseOrderViewPDF/{id}',[Accounts::class,'PurchaseOrderViewPDF']);


// ..............attachment iframe for all invoices ......
route::get('/Attachment',[Accounts::class,'Attachment']);
Route::post('AttachmentSave',[Accounts::class,'AttachmentSave']);
Route::get('AttachmentDelete/{id}/{filename}',[Accounts::class,'AttachmentDelete']);

Route::get('AttachmentRead', [Accounts::class,'AttachmentRead']);



//  ................Trail Report.............
route::get('/trialreportsearch', [ReportController::class,'trialreportsearch']);
route::post('/trialreport', [ReportController::class,'trialreport']);


// ..................journal report...................

route::get('/generalReport', [ReportController::class,'generalReport']);
route::get('/showGeneralReport', [ReportController::class,'showGeneralReport']);
route::post('/searchjournal', [ReportController::class,'searchByDate']);


route::get('/DailyIncomeExpense/',[Accounts::class,'DailyIncomeExpense']);
route::post('/DailyIncomeExpense1PDF/',[Accounts::class,'DailyIncomeExpense1PDF']);


//  ............Payable..............
route::get('/payablesearch', [ReportController::class,'payablesearch']);
route::post('/payable', [ReportController::class,'payable']);


//  ............Paymentsmade..............
route::get('/paymentsmadesearch', [ReportController::class,'paymentsmadesearch']);
route::post('/paymentsmade', [ReportController::class,'paymentsmade']);


//  ............receiveabledetail..............
route::get('/receiveabledetailsearch', [ReportController::class,'receiveabledetailsearch']);
route::post('/receiveabledetail', [ReportController::class,'receiveabledetail']);

//  ............receiveabledetailsummary..............
route::get('/receiveabledetailsummarysearch', [ReportController::class,'receiveabledetailsummarysearch']);
route::post('/receiveabledetailsummary', [ReportController::class,'receiveabledetailsummary']);

//  ............Vendor Credits..............
route::get('/vendorcreditsearch', [ReportController::class,'vendorcreditsearch']);
route::post('/vendorcredits', [ReportController::class,'vendorcredits']);

route::get('/kashif/',[Accounts::class,'kashif']);
route::get('/kupload/',[Accounts::class,'kupload']);

route::get('/ReconcileReport/',[Accounts::class,'ReconcileReport']);
route::post('/ReconcileReport1/',[Accounts::class,'ReconcileReport1']);


route::get('/ReconcileUpdate/{status}/{id}',[Accounts::class,'ReconcileUpdate']);



Route::get('/Inventory/',[Accounts::class,'Inventory']);
Route::post('/Inventory1/',[Accounts::class,'Inventory1']);

Route::post('/Inventory1PDF/',[Accounts::class,'Inventory1PDF']);
Route::get('/lnventoryDetail/{itemid}/{startdate}/{enddate}',[Accounts::class,'lnventoryDetail']);

route::get('/km/{id}',[Accounts::class,'km']);


 // =====================================Expense Section=====================================
Route::get('/Expense',[Accounts::class,'Expense']);
route::get('/ExpenseCreate/',[Accounts::class,'ExpenseCreate']);
Route::get('/ajax_Expense',[Accounts::class,'ajax_Expense']);

Route::post('/ExpenseSave',[Accounts::class,'ExpenseSave']);
route::get('/ExpenseEdit/{id}',[Accounts::class,'ExpenseEdit']);
route::get('/ExpensePDF/{id}',[Accounts::class,'ExpensePDF']);
route::get('/ExpenseView/{id}',[Accounts::class,'ExpenseView']);

Route::post('/ExpenseUpdate',[Accounts::class,'ExpenseUpdate']);
route::get('/ExpenseDelete/{id}',[Accounts::class,'ExpenseDelete']); 

route::get('/TaxReportSupplier/',[Accounts::class,'TaxReportSupplier']);
route::post('/TaxReportSupplier1/',[Accounts::class,'TaxReportSupplier1']);
route::post('/TaxReportSupplier1PDF/',[Accounts::class,'TaxReportSupplier1PDF']);


route::get('/TaxOverallReport/',[Accounts::class,'TaxOverallReport']);
route::post('/TaxOverallReport1/',[Accounts::class,'TaxOverallReport1']);
route::post('/TaxOverallReport1PDF/',[Accounts::class,'TaxOverallReport1PDF']);
     

// import item from excel
 route::post('/ItemImport/',[Accounts::class,'ItemImport']);
 route::get('/base64/',[Accounts::class,'base64']);



Route::get('/PartyAgingPDF/',[Accounts::class,'PartyAgingPDF']);


Route::get('/Salesman/',[Accounts::class,'Salesman']);
Route::post('/SalesmanSave/',[Accounts::class,'SalesmanSave']);
Route::get('/SalesmanEdit/{id}',[Accounts::class,'SalesmanEdit']);
Route::post('/SalesmanUpdate/',[Accounts::class,'SalesmanUpdate']);
Route::get('/SalesmanDelete/{id}',[Accounts::class,'SalesmanDelete']);


// document category
route::get('/DocumentCategory',[Documents::class,'DocumentCategory']);
 route::Post('/DocumentCategorySave',[Documents::class,'DocumentCategorySave']);
 route::get('/DocumentCategoryDelete/{id}',[Documents::class,'DocumentCategoryDelete']);
 route::get('/DocumentCategoryEdit/{id}',[Documents::class,'DocumentCategoryEdit']);
 route::post('/DocumentCategoryUpdate/',[Documents::class,'DocumentCategoryUpdate']);

 
//Document section
route::get('/Document/{id?}',[Documents::class,'Document']);
route::post('/DocumentSave',[Documents::class,'DocumentSave']);
route::get('/DocumentDelete/{id}/{file}',[Documents::class,'DocumentDelete']);



// ware house
Route::get('/wareHouseList', [Warehouse::class, 'wareHouseList']);
Route::post('/storeWareHouse', [Warehouse::class, 'storeWareHouse']);
Route::post('/getWarehouseDetail', [Warehouse::class, 'getWarehouseDetail']);
Route::post('/updateWareHouse', [Warehouse::class, 'updateWareHouse']);
Route::get('/deleteWareHouse/{id}', [Warehouse::class, 'deleteWareHouse']);


Route::get('/DBDump/',[Accounts::class,'DBDump']);


Route::get('Backup', function () {
	
	/* php artisan migrate */
    \Artisan::call('database:backup');
    dd("Done");
});




Route::post('/DBDump/',[Accounts::class,'DBDump']);
Route::post('/Excel/',[Accounts::class,'Excel']);

Route::get('/SalesmanExport/{city}',[Accounts::class,'SalesmanExport']);

Route::get('/CitywiseReport/',[Accounts::class,'CitywiseReport']);
 
   });  
// middleware end