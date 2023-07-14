<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <title>INVOICE</title>
  <style type="text/css">
    @page {
      margin-top: 0.1cm;
      margin-bottom: 0.0cm;
      margin-left: 0.4cm;
      margin-right: 0.4cm;
    }

    body,
    th {
      font-family: Arial, Helvetica, sans-serif;
      font-size: 10pt;
      padding-left: 10px;
      padding-right: 10px;
    }

    .style3 {
      color: #FFFFFF;
      font-weight: bold;
    }

    #footer {
      position: absolute;
      bottom: 4.5cm;
      left: 50%;
      right: 50%;
      height: 0cm;
      text-align: center;
      /*border-top: 0.1mm solid gray;*/
      margin-bottom: 0;
      padding-top: 2mm;
    }

    .rowborder {
      border-top: 1px solid #e9e9e9;
      border-bottom: 1px solid #e9e9e9;
      height: 25px;
    }

    .top-table td {
      text-align: center
    }

    .float-container {
      padding: 5px;
    }

    .float-child {
      width: 50%;
      float: left;
      margin-right: 5px;
    }

    .text-left {
      text-align: left;
    }

    .td-color {
      background-color: #252060
    }
    h3{
      margin:5px;
    }
  </style>
</head>

<body>
  <div class="container">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="30%">
          <img src="{{asset('documents/'.$company[0]->Logo)}}">
        </td>
        <td width="50%" style="padding-left: 0px !important; padding-right: 1px !important;">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td style="padding-left: 0px !important; padding-right: 1px !important;">{{$company[0]->Name}}</td>
            </tr>
            <tr>
              <td style="padding-left: 0px !important; padding-right: 1px !important;">Office: {{$company[0]->Address}} </td>
            </tr>

            <tr>
              <td style="padding-left: 0px !important; padding-right: 1px !important;">Contact: {{$company[0]->Contact}}</td>
            </tr>

            <tr>
              <td style="padding-left: 0px !important; padding-right: 1px !important;">TRN : {{$company[0]->TRN}}</td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td style=" color:#e9e9e9;border:solid 1px #454573" class="td-color">
          <h3 > {{$company[0]->Name}} | {{$company[0]->Contact}} </h3>
        </td>
        <td style="border:solid 1px #454573;text-align:right;"> TRN. {{$company[0]->TRN}}&nbsp;&nbsp;</td>
      </tr>
    </table>

    <table width="100%" cellspacing="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>

        <td style="background-color: #bedefb;  border:solid 1px #bedefb">
          <h3> AIRWAY BILL NO: {{$invoice_master[0]->TrackingNumber}} <br />
            CARGO TYPE: {{$invoice_master[0]->ModeofShipment}} </h3>
        </td>

        <td style="text-align:right;background-color: #bedefb;  border:solid 1px #bedefb">
          Collection Date: {{$invoice_master[0]->Date}}&nbsp;&nbsp;
          <br />
          Office: 123 Cargo - Dubai&nbsp;&nbsp;
          <br />
          Staff: 123 CARGO-UAE&nbsp;&nbsp;
        </td>

      </tr>
    </table>

    <table width="100%" cellspacing="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">
          <table width="100%" border="1" cellspacing="0" class="top-table">
            <tr>
              <th>Date</th>
              <th>Destination</th>
              <th>Pcs</th>
              <th>Total Weight</th>
              <th>Tracking Number</th>
            </tr>
            <tr>
              <td>{{$invoice_master[0]->Date}}</td>
              <td>{{$invoice_master[0]->Destination}}</td>
              <td>{{$invoice_master[0]->Pcs}}</td>
              <td>{{$invoice_master[0]->TotalWeight}}</td>
              <td align="middle">{{$invoice_master[0]->TrackingNumber}}</td>
            </tr>

          </table>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top">
          <table width="100%" style="height: 150px;" cellspacing="0">
            <tr>
              <td colspan="2" style=" color:#e9e9e9;border:solid 1px #454573"  class="td-color">
                <h3>CUSTOMER</h3>
              </td>
            </tr>
            <tr>
              <td>Customer </td>
              <td>: {{$invoice_master[0]->WalkinCustomerName}}</td>
            </tr>
            <tr>
              <td>Mobile</td>
              <td>: {{$invoice_master[0]->mobile_number}}</td>
            </tr>
            <tr>
              <td>Sender</td>
              <td>: {{$invoice_master[0]->sender}}</td>
            </tr>
            <tr>
              <td>Phone</td>
              <td>: {{$invoice_master[0]->phone}}</td>
            </tr>
            <tr>
              <td>Emirate/State</td>
              <td>: {{$invoice_master[0]->state}}</td>
            </tr>
            <tr>
              <td>Doc.Type</td>
              <td>: {{$invoice_master[0]->DocNo}}</td>
            </tr>
            <tr>
              <td>Doc.No.</td>
              <td>: {{$invoice_master[0]->TrackingNumber}}</td>
            </tr>
            <tr>
              <td>Address</td>
              <td>: {{$invoice_master[0]->address}}</td>
            </tr>
          </table>
        </td>
        <td valign="top">
          <table width="100%"  style="height: 150px;" cellspacing="0">
            <tr>
              <td colspan="2" style="color:#e9e9e9;border:solid 1px #454573"  class="td-color">
                <h3>DELIVERY / RECEIVER</h3>
              </td>
            </tr>
            <tr>
              <td>Name</td>
              <td>: {{$invoice_master[0]->ReceiverName}}</td>
            </tr>
            <tr>
              <td>Phone</td>
              <td>: {{$invoice_master[0]->ReceiverMob}}</td>
            </tr>
            <tr>
              <td>Doc.Type</td>
              <td>: {{$invoice_master[0]->ReceiverDocType}}</td>
            </tr>
            <tr>
              <td>Doc.No.</td>
              <td>: {{$invoice_master[0]->ReceiverDocNo}}</td>
            </tr>
            <tr>
              <td>Address</td>
              <td>: {{$invoice_master[0]->ReceiverAddress}}</td>
            </tr>
          </table>
        </td>
      </tr>

      <tr>
        <td valign="top">
          <table width="100%" style="height: 150px;" cellspacing="0">
            <tr>
              <td colspan="2" style=" color:#e9e9e9;border:solid 1px #454573" class="td-color">
                <h3>CARGO DETAILS</h3>
              </td>
            </tr>
            <tr>
              <td>Total Weight</td>
              <td>:  {{$invoice_master[0]->TotalWeight}} KG</td>
            </tr>
            <tr>
              <td>Cargo Value</td>
              <td>: 1800</td>
            </tr>
            <tr>
              <td>No. of Boxes</td>
              <td> : {{$invoice_master[0]->Pcs}}</td>
            </tr>
          </table>
        </td>
        <td valign="top">
          <table width="100%" style="height: 150px;" cellspacing="0" >
            <tr>
              <td colspan="2"  style=" color:#e9e9e9;border:solid 1px #454573" class="td-color">
                <h3>CHARGES & PAYMENTS</h3>
              </td>
            </tr>
            <tr>
              <td>Total Amount</td>
              <td>:  {{$invoice_master[0]->SubTotal}}</td>
            </tr>
            <tr>
              <td>Documents Fee</td>
              <td>:  {{$invoice_master[0]->DocumentFees}}</td>
            </tr>
            <tr>
              <td>Insurance</td>
              <td>:  {{$invoice_master[0]->Insurance}}</td>
            </tr>
            <tr>
              <td>Wooden Box / Packing Fees</td>
              <td>:  {{$invoice_master[0]->PackingFee}}</td>
            </tr>
            <tr>
              <td>Transortation Charges</td>
              <td>:  {{$invoice_master[0]->TransportationCharges}}</td>
            </tr>
            <tr>
              <td>Total VAT</td>
              <td>:  {{$invoice_master[0]->TotalVat}}</td>
            </tr>
            <tr>
              <td>Grand Total</td>
              <td>:  {{$invoice_master[0]->GrandTotal}}</td>
            </tr>
            
          </table>

        </td>
      </tr>

      <tr>
        <td colspan="2">
          <hr />
        </td>
      </tr>

      <tr>
        <td colspan="2">
          <table width="100%" border="1" cellspacing="0">
            <tr>
              <td>
                <b> Item Details:</b> 
               @foreach($invoice_detail as $key => $value)
               
               {{$value->Description}},
               
               @endforeach
               ........{{$invoice_master[0]->TotalWeight}} KG
              </td>
            </tr>
          </table>

        </td>
      </tr>


      <tr>
        <td colspan="2">
          <table width="100%" cellspacing="0">
            <tr>
              <td colspan="2" style="color:#e9e9e9;border:solid 1px #454573;text-align:center"  class="td-color">
                <h3>CUSTOMER DECLARATION</h3>
              </td>
            </tr>
            <tr>
              <td style="padding-left:10px">
                <p>
                  <b>Note:</b> Any complaints arising against this consignment should be reported within seven days. Complaints will not be entertained after 7 days of delivery
                  date. Maximum payback for total lost will be Dhs.20/- per Kilogram. Total cargo value should not exceed Rs.20,000/-. 123 CARGO LLC is not responsible
                  for any damages of fragile (glass etc.) items and shipment delay occurring due to the formalities of Government/Air/Sea authorities. We request our
                  customers to cooperate with us.<br>
                  I, JAFFAR R holder of Emirates ID number: 784- hereby declare that all the above said items are my personal effects/home appliances sending to my
                  Friend Mr./Mrs. Jolly Aggarwal through 123 CARGO LLC, PO BOX 92908, Dubai, United Arab Emirates vide their waybill number : 62001 which is sent as
                  the unaccompanied baggage of an international passenger.
                </p>
              </td>
            </tr>
          </table>

        </td>
      </tr>



    </table>
    <table width="100%">
      <tr>
        <td width="180">

          <p>Customer Signature</p>
        </td>
        <td width="20" style="text-align: right;">
          <img src="{{asset('documents/'.$company[0]->Signature)}}" width="200">
          <p>JARRY LOGISTICS</p>


        </td>
      </tr>
      <tr>
        <td colspan="2">
          <hr />
        </td>
      </tr>

      <tr>
        <td colspan="2" style="text-align:center">
          https://extbooks.com
        </td>
      </tr>
    </table>

  </div>
</body>

</html>