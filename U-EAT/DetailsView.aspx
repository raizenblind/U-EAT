<%@ Page Title="CustomerView" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetailsView.aspx.cs" Inherits="U_EAT.DetailsView" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
                    <div class="col s12 m12">
                        <div class="card">



                            <div class="card-content">
                                <div class="card-title">
                                    <h4>80% OFF ON ALL FOOD AT CHEF TONY'S</h4>
                                    <h5 class="blue-text">₱3,900 <small class="discount">₱4,100</small></h5>

                                    <p>
                                        <span class="chip red white-text">
                                            ALABANG TOWN CENTER
                                        </span>

                                        <span class="chip red white-text">
                                            CHEF TONY'S
                                        </span>


                                        <a class="waves-effect waves-light btn red right large"><i class="material-icons left">star</i>4.2</a>


                                    </p>
                                </div>
                            </div>

                            <div class="carousel carousel-slider" data-indicators="true">
                                <div class="carousel-fixed-item center">
                                    <a class="btn waves-effect waves-light green modal-trigger" href="#ReserveModal">Reserve</a>
                                </div>
                                <a class="carousel-item" href="#one!"><img src="https://lorempixel.com/800/400/food/1"></a>
                                <a class="carousel-item" href="#two!"><img src="https://lorempixel.com/800/400/food/2"></a>
                                <a class="carousel-item" href="#three!"><img src="https://lorempixel.com/800/400/food/3"></a>
                                <a class="carousel-item" href="#four!"><img src="https://lorempixel.com/800/400/food/4"></a>
                            </div>


                            <div class="card-content">

                                <span class="card-title">
                                    About
                                </span>
                                <p class="grey-text">
                                    Explore the vast selection of organic and freshly prepared gustatory delights The Pantry has to offer. Located in Makati, this very cozy and sophisticated dining place is the in-house restaurant of Dusit Thani that caters decadent flavors and textures from Indian, Italian, Filipino and Pan-Asian cuisines. Aside from its sumptuous buffet perfect for big groups like friends and families, this restaurant also serves a la carte menu that highlights from-farm-to-fork dishes and comfort meals.</p>

                                <div class="section"></div>

                                <span class="card-title">
                                    Special Conditions
                                </span>

                                <span class="grey-text darken-3">
                                    <ul class="collection">
                                      <li class="collection-item">Senior Citizens and PWD may choose between Eatigo discount OR the Senior Citizen/PWD discount, discounts cannot be stacked on top of each other</li>
                                      <li class="collection-item">Discount does not apply to kids for the buffet - Discount does not apply to beverages - Lunch Buffet is from 12:00 to 14:30 - Dinner Buffet is from <span class="red-text">18:00 to 22:00</span> </li>
                                <li class="collection-item">A la carte is from <span class="red-text">15:00 - 17:30</span> - Discount is valid for dine-in only</li>
                                <li class="collection-item">Discount is valid for dine-in only</li>
                                </ul>

                                </span>

                                <span class="card-title">
                                    Address
                                </span>

                                <p class="grey-text">

                                    the pantry, ground level, dusit thani manila, 1223 ayala center, makati city
                                </p>

                                <div id="map" class="maps"></div>


                            </div>
                            <div class="card-action">
                                <a class="btn waves-effect waves-light green modal-trigger" href="#ReserveModal">Reserve</a>
                            </div>
                        </div>
                    </div>
                </div>


    <!--Reservation Modal -->
    <div id="ReserveModal" class="modal modal-fixed-footer">
        <div class="modal-content">
            <h4>Reservation Details</h4>
            <div class="row">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="" type="text" class="validate">
                            <label for="">Reservation Time</label>
                        </div>
                        
                        <div class="input-field col s2">
                            <input id="" disabled type="text" class="validate center-align" value="3"> 
                            <label for="">Persons</label>
                        </div>
                        
                        <div class="input-field col s4">
                            <!-- Dropdown Trigger -->
                            <a class='dropdown-button btn' href='#' data-activates='dropdown1'><i class="material-icons left">supervisor_account</i>Number of Persons</a>

                            <!-- Dropdown Structure -->
                            <ul id='dropdown1' class='dropdown-content'>
                                <li><a href="#!">Reserve for:</a></li>
                                <li class="divider"></li>
                                <li><a href="#!">1 Person</a></li>
                                <li><a href="#!">2 Persons</a></li>
                                <li><a href="#!">3 Persons</a></li>
                                <li><a href="#!">4 Persons</a></li>
                                <li><a href="#!">5 Persons</a></li>
                                <li><a href="#!">6 Persons</a></li>
                                <li><a href="#!">7 Persons</a></li>
                                <li><a href="#!">8 Persons</a></li>
                                <li><a href="#!">9 Persons</a></li>
                                <li><a href="#!">10 Persons</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        
                    </div>
                    
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="" type="text" class="validate">
                            <label for="">Guest Name</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="" type="text" class="validate">
                            <label for="">Email</label>
                        </div>
                        
                        <div class="input-field col s6">
                            <input id="" type="text" class="validate">
                            <label for="">Phone Number</label>
                        </div>
                    </div>
                    
                    
                    
                    
                </form>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-action modal-close waves-effect waves-light btn green large" onclick="Materialize.toast('Reserve Success', 3000, 'green')">Reserve</a>
            <a href="#!" class="modal-action modal-close waves-effect waves-light btn-flat red-text">Close</a>
        </div>
    </div>
       

</asp:Content>
