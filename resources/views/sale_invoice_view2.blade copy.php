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

    .text-left {
      text-align: left;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="row">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="30%">
            <h3>{{$company[0]->Name}}</h3>
            <p>DELIVERY LIMITED</p>
          </td>
          <td>
            <div align="center"><img src="{{asset('documents/'.$company[0]->Logo)}}" width="130"></div>
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

      </table>


      <div class="float-container">
        <table>
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
                  <td colspan="2">&nbsp; </td>
                </tr>
                <tr>
                  <td>Mob</td>
                  <td> 03349021704</td>
                </tr>
              </table>

            </td>
          </tr>

          <tr>
            <td colspan="2">
              <table width="100%" border="1" cellspacing="0">
                <tr>
                  <td>
                    Mode Of Shippment: By Ship
                  </td>
                </tr>
              </table>

            </td>
          </tr>




          <tr>
            <td colspan="2">
              <table width="100%" border="1" cellspacing="0">
                <tr>
                  <th colspan="2">Saleman</th>
                  <td colspan="2">Mutahir Shah</td>
                  <th colspan="2">Rider</th>
                  <td colspan="2">Ehsan Ilahi </td>
                  <th colspan="2">Booking No</th>
                  <td colspan="2">123 </td>
                </tr>
              </table>

            </td>
          </tr>

          <tr>
            <td colspan="2">
              <table width="100%" border="1" cellspacing="0">
                <tr>
                  <td style="border: 1px solid black; background-color:blue;color:#FFFFFF;font-weight:bold;text-transform:capitalize;text-align:center">
                    <h3>PACKING LIST</h3>
                  </td>
                </tr>
              </table>

            </td>
          </tr>

          <tr>
            <td colspan="2">
              <table width="100%" border="1" cellspacing="0">
                <tr>
                  <th>Sr.No</th>
                  <th>Item Description</th>
                  <th>Weight</th>
                  <th>Frieght</th>
                  <th>VAT</th>
                  <th>Total</th>
                </tr>
                <tr>
                  <td>1</td>
                  <td>Panter Box 32</td>
                  <td>35 KG</td>
                  <td>2.50</td>
                  <td>00</td>
                  <td>54</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Shoes</td>
                  <td>10 KG</td>
                  <td>2.50</td>
                  <td>00</td>
                  <td>454</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Cloths</td>
                  <td>15 KG</td>
                  <td>2.50</td>
                  <td>00</td>
                  <td>65</td>
                </tr>


              </table>

            </td>
          </tr>

          <!--    <tr>
            <td colspan="2">

              <table border="1" border="1" cellspacing="0">
                <tr>
                  <th>Box</th>
                  <th>Weight</th>
                </tr>
                <tr>
                  <td>1</td>
                  <td>34</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>34</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>65</td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>65</td>
                </tr>
                <tr>
                  <td colspan="2">
                    Declare Value:130
                  </td>
                </tr>
              </table>
            </td>
          </tr> -->


          <tr>
            <td>
              <ul>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <li>This is line one for new one place</li>
                <h3>NO DAMAGE WARRANTY</h3>
            </td>
            <td>
              <table width="100%" border="1" cellspacing="0">
                <tr>
                  <th width="60%" class="text-left">TOTAL AMOUNT</th>
                  <td width="20%">150</td>
                </tr>
                <tr>
                  <th class="text-left">DOCUMENTS FEES</th>
                  <td>40</td>
                </tr>
                <tr>

                  <th class="text-left">INSURANCE</th>
                  <td>45</td>

                </tr>
                <tr>

                  <th class="text-left">WOODEN BOX / PACKING FEES</th>
                  <td>56</td>
                </tr>
                <tr>

                  <th class="text-left">TRANSPORTATION CHARGES</th>
                  <td>56</td>
                </tr>

                <tr>

                  <th class="text-left">TOTAL VAT</th>
                  <td>56</td>
                </tr>

                <tr>

                  <th class="text-left">GRAND TOTAL</th>
                  <td>56</td>
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
        </table>


      </div>
    </div>

  </div>
</body>

</html>