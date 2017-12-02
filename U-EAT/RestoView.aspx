<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="U_EAT.Index" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" id="cardcontainer">
        <!-- CARD -->
        <div class="col s12 m4">
            <div class="card">
                <div class="card-image">
                    <img src="https://goo.gl/QK4cfz">
                    <a class="btn-floating halfway-fab waves-effect waves-light red editBtn"><input type="hidden" value="1" /><i class="material-icons">mode_edit</i></a>
                </div>

                <div class="card-content">
                    <span class="card-title activator clsDescription" >
                        <object id="desc1">80% OFF ON ALL FOOD AT CHEF TONY'S</object>
                                <small class="red-text promoTime" id="promoTime1">01:00PM to 3:00PM</small>
                        <span class="blue-text" id="discPrice1">₱3,900</span>
                        <small class="discount" id="origPrice1">₱4,100</small>
                    </span>
                    <table class="highlight responsive">
                        <tbody>
                            <tr>
                                <th>Purchased</th>
                                <td class="clsPurchased">
                                    <span class="new badge green" data-badge-caption="">65</span>
                                </td>
                            </tr>

                            <tr>
                                <th>Reserved</th>
                                <td>
                                    <span class="new badge blue" data-badge-caption="">23</span>
                                </td>
                            </tr>

                            <tr>
                                <th>Cancelled</th>
                                <td>
                                    <span class="new badge red" data-badge-caption="">3</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>





                </div>
            </div>
        </div>



    </div>


    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {

            displayCards();

            $('.editBtn').click(function () {
                alert('button pressed');
                var selid = $(this).find('input').val();
                if ($(this).find('i').text() == 'mode_edit') {
                    $(this).find('i').text('check');
                    var cardDesc = $('#desc' + selid).text();
                    var cardPromoTime = $('#promoTime' + selid).text();
                    var cardDiscPrice = $('#discPrice' + selid).text();
                    var cardOrigPrice = $('#origPrice' + selid).text();
                    $('#desc' + selid).empty();
                    $('#promoTime' + selid).empty();
                    $('#discPrice' + selid).empty();
                    $('#origPrice' + selid).empty();
                    $('#desc' + selid).append('<input type="text" id="newDesc' + selid + '" value="' + cardDesc + '" />');
                    $('#promoTime' + selid).append('<input type="text" id="newPromoTime' + selid + '" value="' + cardPromoTime + '" />');
                    $('#discPrice' + selid).append('<input type="text" id="newDiscPrice' + selid + '" value="' + cardDiscPrice + '" />');
                    $('#origPrice' + selid).append('<input type="text" id="newOrigPrice' + selid + '" value="' + cardOrigPrice + '" />');
                }
                else {

                    //////// AJAX here... well not right now //////////////
                    var newDesc = $('#newDesc' + selid).val();
                    var newPromoTime = $('#newPromoTime' + selid).val();
                    var newDiscPrice = $('#newDiscPrice' + selid).val();
                    var newOrigPrice = $('#newOrigPrice' + selid).val();
                    $('#desc' + selid).empty();
                    $('#promoTime' + selid).empty();
                    $('#discPrice' + selid).empty();
                    $('#origPrice' + selid).empty();
                    $('#desc' + selid).append(newDesc);
                    $('#promoTime' + selid).append(newPromoTime);
                    $('#discPrice' + selid).append(newDiscPrice);
                    $('#origPrice' + selid).append(newOrigPrice);
                    $(this).find('i').text('mode_edit');
                }
            });
        });

        function displayCards() {
            $('#cardcontainer').empty();
            var x = "3";
            $.ajax({
                async: false,
                type: 'POST',
                url: 'RestoView.aspx/getRestoCards',
                processData: false,
                contentType: 'application/json',
                success: function (result) {
                    displayrestocards(result.d);
                },
                failure: function (response) {
                    console.log(response.d);
                },
                error: function (response) {
                    console.log(response.responseText);
                }
            });
            function displayrestocards(myData) {
                //$('#cardcontainer').empty();
                $.each(myData, function (record, recordnumber) {
                    alert("Hello");
                    $('#cardcontainer').append('<div class="col s12 m4">\
                    <div class="card-image">\
                    <img src="https://goo.gl/QK4cfz">\
                    <a class="btn-floating halfway-fab waves-effect waves-light red editBtn"><input type="hidden" value="' + recordnumber.RowID + '" /><i class="material-icons">mode_edit</i></a>\
                    </div>\
                    <div class="card-content">\
                    <span class="card-title activator clsDescription" >\
                    <object id="desc' + recordnumber.RowID + '">' + recordnumber.cardDescription + '</object>\
                    <small class="red-text promoTime" id="promoTime' + recordnumber.RowID + '">' + recordnumber.TimePeriod + '</small>\
                    <span class="blue-text" id="discPrice' + recordnumber.RowID + '">' + recordnumber.Discounted + '</span>\
                    <small class="discount" id="origPrice' + recordnumber.RowID + '">' + recordnumber.Original + '</small>\
                    </span>\
                    <table class="highlight responsive">\
                        <tbody>\
                            <tr>\
                                <th>Purchased</th>\
                                <td class="clsPurchased">\
                                    <span class="new badge green" data-badge-caption="">' + recordnumber.Purchased + '</span>\
                                </td>\
                            </tr>\
                            <tr>\
                                <th>Reserved</th>\
                                <td>\
                                    <span class="new badge blue" data-badge-caption="">' + recordnumber.Reserved + '</span>\
                                </td>\
                            </tr>\
                            <tr>\
                                <th>Cancelled</th>\
                                <td>\
                                    <span class="new badge red" data-badge-caption="">' + recordnumber.Cancelled + '</span>\
                                </td>\
                            </tr>\
                        </tbody>\
                    </table></div></div></div>');
                });
            }
        }
    </script>

</asp:Content>
