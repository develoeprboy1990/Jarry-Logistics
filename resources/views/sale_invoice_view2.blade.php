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
    td,
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
  </style>
</head>

<body>
  <div class="container">
    <div class="row">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
            <div align="center"><img src="{{asset('documents/'.$company[0]->Logo)}}" width="180"></div>
          </td>
        </tr>
        <tr>
          <td style="font-size: 28px !important;">
            <div align="center"><strong>INVOICE</strong></div>
          </td>
        </tr>

        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td style="padding-left: 0px !important; padding-right: 1px !important;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
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
                <td width="50%" valign="top" style="padding-left: 0px !important; padding-right: 1px !important;">

                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td style="padding-left: 0px !important; padding-right: 1px !important;">

                        <div align="right" style="font-size: 14pt;"># {{$invoice_master[0]->InvoiceNo}} </div>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <div align="right"></div>
                      </td>
                    </tr>
                    <tr>
                      <td style="padding-left: 0px !important; padding-right: 1px !important;">
                        <div align="right">Balance Due </div>
                      </td>
                    </tr>
                    <tr>
                      <td style="padding-left: 0px !important; padding-right: 1px !important;">
                        <div align="right">{{session::get('Currency')}}{{$invoice_master[0]->GrandTotal}} </div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
          <td valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="50%" style="padding-left: 0px !important; padding-right: 1px !important;">

            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">Bill To </td>
              </tr>
              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important; font-weight: bolder;"> {{$invoice_master[0]->PartyName}} </td>
              </tr>

              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">Office: {{$invoice_master[0]->Address}} </td>
              </tr>

              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">{{$invoice_master[0]->Phone}}</td>
              </tr>


            </table>
          </td>
          <td width="50%" valign="top" style="padding-left: 0px !important; padding-right: 1px !important;">

            <table width="100%" border="0" cellspacing="0" cellpadding="3">
              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;" width="80%">
                  <div align="right">Invoice Date : </div>
                </td>
                <td style="padding-left: 0px !important; padding-right: 1px !important;" width="20%">
                  <div align="right">{{dateformatreport($invoice_master[0]->Date)}} </div>
                </td>
              </tr>
              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">
                  <div align="right">Terms : </div>
                </td>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">
                  <div align="right">Custom</div>
                </td>
              </tr>
              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">
                  <div align="right">Due Date : </div>
                </td>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">
                  <div align="right">{{dateformatreport($invoice_master[0]->DueDate)}} </div>
                </td>
              </tr>
              <tr>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">
                  <div align="right">VAT No. : </div>
                </td>
                <td style="padding-left: 0px !important; padding-right: 1px !important;">
                  <div align="right">{{$invoice_master[0]->TRN}}</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <br />
      <div class="float-container">
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
      </div>
      <div class="float-container">
        <table>
          <tr>
            <td>
              <table width="100%" border="1" cellspacing="0">
                <tr>
                  <td>Shipper Name</td>
                  <td>Mutahir Shah</td>
                </tr>
                <tr>
                  <td>Address</td>
                  <td>Shop No 6. Fujal Mummar Daiar Dilara Dubia </td>
                </tr>
                <tr>
                  <td>Customer TRN:</td>
                  <td> </td>
                </tr>
                <tr>
                  <td>Mob</td>
                  <td> 03349021704</td>
                </tr>
              </table>
              </td> 
            <td>
              <table width="100%" border="1" cellspacing="0"  >
                <tr>
                  <td>Shipper Name</td>
                  <td>Mutahir Shah</td>
                </tr>
                <tr>
                  <td>Address</td>
                  <td>Shop No 6. Fujal Mummar Daiar Dilara Dubia </td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp; </td>
                </tr>
                <tr>
                  <td>Mob</td>
                  <td> 03349021704</td>
                </tr>
              </table>

              </td></tr>
              <tr>
                    <td>Mode Of Shippment: </td>
                  </tr>
        </table>

             
      </div>







    </div>
    <p>Notes</p>
    <p>Thanks for your business </p>
    <div id="footer">
      <img src="{{asset('documents/'.$company[0]->Signature)}}" width="250">
    </div>
  </div>
</body>

</html>