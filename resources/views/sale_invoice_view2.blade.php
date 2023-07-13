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
        <td style="background-color: #454573; color:#e9e9e9;border:solid 1px #454573">
          <h3> JARRY | 03349021704 </h3>
        </td>
        <td style="text-align:left;border:solid 1px #454573"> TRN. 100429315300003</td>
      </tr>
    </table>

    <table width="100%" cellspacing="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>

        <td style="background-color: #bedefb;  border:solid 1px #bedefb">
          <h3> AIRWAY BILL NO: 62001 <br />
            CARGO TYPE: COURIER INDIA </h3>
        </td>

        <td style="text-align:left;background-color: #bedefb;  border:solid 1px #bedefb">
          Collection Date: 12-07-2023
          <br />
          Office: 123 Cargo - Dubai
          <br />
          Staff: 123 CARGO-UAE
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
              <td>18-06-2023</td>
              <td>Karacm</td>
              <td>23</td>
              <td>40768</td>
              <td align="middle">2474</td>
            </tr>

          </table>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>
          <table width="100%" cellspacing="0">

            <tr>
              <td colspan="2" style="background-color: #454573; color:#e9e9e9;border:solid 1px #454573">
                <h3>CUSTOMER</h3>
              </td>
            </tr>
            <tr>
              <td>Shipper Name</td>
              <td>: Mutahir Shah</td>
            </tr>
            <tr>
              <td>Address</td>
              <td>: Shop No 6. Fujal Mummar Daiar Dilara Dubia </td>
            </tr>
            <tr>
              <td>Customer TRN:</td>
              <td> : 123456</td>
            </tr>
            <tr>
              <td>Mob</td>
              <td> : 03349021704</td>
            </tr>
          </table>
        </td>
        <td>
          <table width="100%" cellspacing="0">
            <tr>
              <td colspan="2" style="background-color: #454573; color:#e9e9e9;border:solid 1px #454573">
                <h3>DELIVERY / RECEIVER</h3>
              </td>
            </tr>
            <tr>
              <td>Shipper Name</td>
              <td>: Mutahir Shah</td>
            </tr>
            <tr>
              <td>Address</td>
              <td>: Shop No 6. Fujal Mummar Daiar Dilara Dubia </td>
            </tr>
            <tr>
              <td>Customer TRN:</td>
              <td> : 123456</td>
            </tr>
            <tr>
              <td>Mob</td>
              <td> : 03349021704</td>
            </tr>
          </table>

        </td>
      </tr>
      <tr>
        <td>
          <table width="100%" cellspacing="0">
            <tr>
              <td colspan="2" style="background-color: #454573; color:#e9e9e9;border:solid 1px #454573">
                <h3>CARGO DETAILS</h3>
              </td>
            </tr>
            <tr>
              <td>Shipper Name</td>
              <td>: Mutahir Shah</td>
            </tr>
            <tr>
              <td>Address</td>
              <td>: Shop No 6. Fujal Mummar Daiar Dilara Dubia </td>
            </tr>
            <tr>
              <td>Customer TRN:</td>
              <td> : 123456</td>
            </tr>
            <tr>
              <td>Mob</td>
              <td> : 03349021704</td>
            </tr>
          </table>
        </td>
        <td>
          <table width="100%" cellspacing="0">
            <tr>
              <td colspan="2" style="background-color: #454573; color:#e9e9e9;border:solid 1px #454573">
                <h3>CHARGES & PAYMENTS</h3>
              </td>
            </tr>
            <tr>
              <td>Shipper Name</td>
              <td>: Mutahir Shah</td>
            </tr>
            <tr>
              <td>Address</td>
              <td>: Shop No 6. Fujal Mummar Daiar Dilara Dubia </td>
            </tr>
            <tr>
              <td>Customer TRN:</td>
              <td> : 123456</td>
            </tr>
            <tr>
              <td>Mob</td>
              <td> : 03349021704</td>
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
                <b> Item Details:</b> PANEL LIGHT 5 , FANCY LIGHT2 , ...................62 KG
              </td>
            </tr>
          </table>

        </td>
      </tr>


      <tr>
        <td colspan="2">
          <table width="100%" cellspacing="0">
            <tr>
              <td colspan="2" style="background-color: #454573; color:#e9e9e9;border:solid 1px #454573;text-align:center">
                <h3>CUSTOMER DECLARATION</h3>
              </td>
            </tr>
            <tr>
              <td style="padding-left:10px">
                <p>
                  <b>Note:</b> Any complaints arising against this consignment should be reported within seven days. Complaints will not be entertained after 7 days of delivery
                  date. Maximum payback for total lost will be Dhs.20/- per Kilogram. Total cargo value should not exceed Rs.20,000/-. 123 CARGO LLC is not responsible
                  for any damages of fragile (glass etc.) items and shipment delay occurring due to the formalities of Government/Air/Sea authorities. We request our
                  customers to cooperate with us.
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

          <img src="{{asset('documents/'.$company[0]->Signature)}}" width="200">
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