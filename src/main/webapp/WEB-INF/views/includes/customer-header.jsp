


<header>
    <!-- header left mobie -->
    <div class="header-mobile d-md-none">
        <div class="mobile hidden-md-up text-xs-center d-flex align-items-center justify-content-around">


            <!-- menu left -->
            <div class="mobile-menutop" data-target="#mobile-pagemenu">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </div>

            <!-- logo -->
            <div class="mobile-logo">
                <a href="../customer/home.jsp">
                    <img class="logo-mobile img-fluid" src="assets/images/home/logo-mobie.png" alt="Prestashop_Furnitica">
                </a>
            </div>
            <div id="block_myaccount_infos header-cart" class="hidden-sm-down dropdown" style="
    margin-top: auto;
    margin-left: 0rem;
">
                <div class="myaccount-title" style="margin-left: 0.5rem;">
                    <a href="#acount" data-toggle="collapse" class="acount d-flex collapsed" aria-expanded="false">
                        <i class="fa fa-user-circle-o text-black" aria-hidden="true" style=" font-size: 25px;"></i>   <span></span>
                    </a>
                </div>
                <div id="acount" class="collapse" style="">
                    <div class="account-list-content">
                        <div>
                            <a class="login" href="user-acount.jsp" rel="nofollow" title="Log in to your customer account">
                                <i class="fa fa-cog"></i>
                                <span>My Account</span>
                            </a>
                        </div>
                        <div>
                            <a class="login" href="user-login.jsp" rel="nofollow" title="Log in to your customer account">
                                <i class="fa fa-sign-in"></i>
                                <span>Sign in</span>
                            </a>
                        </div>
                        <div>
                            <a class="register" href="user-register.jsp" rel="nofollow" title="Register Account">
                                <i class="fa fa-user"></i>
                                <span>Register Account</span>
                            </a>
                        </div>
                        <div>
                            <a class="check-out" href="product-checkout.jsp" rel="nofollow" title="Checkout">
                                <i class="fa fa-check" aria-hidden="true"></i>
                                <span>Checkout</span>
                            </a>
                        </div>
                        <div>
                            <a href="user-wishlist.jsp" title="My Wishlists">
                                <i class="fa fa-heart"></i>
                                <span>My Wishlists</span>
                            </a>
                        </div>
                        <div id="desktop_currency_selector" class="currency-selector groups-selector hidden-sm-down">
                            <ul class="list-inline">
                                <li>
                                    <a title="Euro" rel="nofollow" href="#">EUR</a>
                                </li>
                                <li class="current list-inline-item">
                                    <a title="British Pound Sterling" rel="nofollow" href="#">GBP</a>
                                </li>
                            </ul>
                        </div>
                        <div id="desktop_language_selector" class="language-selector groups-selector hidden-sm-down">
                            <ul class="list-inline">
                                <li class="list-inline-item current">
                                    <a href="#">
                                        <img class="img-fluid" src="assets/images/home/home1-flas.jpg" alt="English" width="16" height="11">
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <img class="img-fluid" src="assets/images/home/home1-flas2.jpg" alt="Italiano" width="16" height="11">
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <img class="img-fluid" src="assets/images/home/home1-flas3.jpg" alt="FranÃÂ§ais" width="16" height="11">
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <img class="img-fluid" src="assets/images/home/home1-flas4.jpg" alt="EspaÃÂ±ol" width="16" height="11">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- search -->
        <div id="mobile_search" class="d-flex">
            <div id="mobile_search_content">
                <form method="get" action="#">
                    <input type="text" name="s" value="" placeholder="Search">
                    <button type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
            </div>

            <div class="desktop_cart">
                <div class="blockcart block-cart cart-preview tiva-toggle">
                    <div class="header-cart tiva-toggle-btn">
                        <span class="cart-products-count">1</span>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    </div>
                    <div class="dropdown-content">
                        <div class="cart-content">
                            <table>
                                <tbody>
                                <tr>
                                    <td class="product-image">
                                        <a href="../customer/product-detail.jsp">
                                            <img src="images/product/5.jpg" alt="Product">
                                        </a>
                                    </td>
                                    <td>
                                        <div class="product-name">
                                            <a href="../customer/product-detail.jsp">Organic Strawberry Fruits</a>
                                        </div>
                                        <div>
                                            2 x
                                            <span class="product-price">£28.98</span>
                                        </div>
                                    </td>
                                    <td class="action">
                                        <a class="remove" href="#">
                                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr class="total">
                                    <td colspan="2">Total:</td>
                                    <td>£92.96</td>
                                </tr>

                                <tr>
                                    <td colspan="3" class="d-flex justify-content-center">
                                        <div class="cart-button">
                                            <a href="../customer/product-cart.jsp" title="View Cart">View Cart</a>
                                            <a href="product-checkout.jsp" title="Checkout">Checkout</a>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- header desktop -->
    <div class="header-top d-xs-none ">
        <div class="container">
            <div class="row">
                <!-- logo -->
                <div class="col-sm-2 col-md-2 d-flex align-items-center">
                    <div id="logo">
                        <a href="../customer/home.jsp">
                            <img class="img-fluid" src="assets/images/home/logo.png" alt="logo">
                        </a>
                    </div>
                </div>

                <!-- menu -->
                <div class="main-menu col-sm-4 col-md-5 align-items-center justify-content-center navbar-expand-md">
                    <div class="menu navbar collapse navbar-collapse">
                        <ul class="menu-top navbar-nav">
                            <li class="nav-link">
                                <a href="../customer/home.jsp" class="parent">Home</a>
                            </li>
                            <li>
                                <a href="../customer/about-us.jsp" class="parent">About Us</a>
                            </li>
                            <li>
                                <a href="contact.jsp" class="parent">Contact US</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- search-->
                <div id="search_widget" class="col-sm-6 col-md-5 align-items-center justify-content-end d-flex">
                    <form method="get" action="#">
                        <input type="text" name="s" value="" placeholder="Search ..." class="ui-autocomplete-input" autocomplete="off">
                        <button type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>

                    <!-- acount  -->
                    <div id="block_myaccount_infos" class="hidden-sm-down dropdown">
                        <div class="myaccount-title">
                            <a href="#acount" data-toggle="collapse" class="acount">
                                <i class="fa fa-user-circle text-black" aria-hidden="true"></i>
                                <span>Account</span>
                                <i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                        </div>
                        <div id="acount" class="collapse">
                            <div class="account-list-content">
                                <div>
                                    <a class="login" href="user-acount.jsp" rel="nofollow" title="Log in to your customer account">
                                        <i class="fa fa-cog"></i>
                                        <span>My Account</span>
                                    </a>
                                </div>
                                <div>
                                    <a class="login" href="user-login.jsp" rel="nofollow" title="Log in to your customer account">
                                        <i class="fa fa-sign-in"></i>
                                        <span>Sign in</span>
                                    </a>
                                </div>
                                <div>
                                    <a class="register" href="user-register.jsp" rel="nofollow" title="Register Account">
                                        <i class="fa fa-user"></i>
                                        <span>Register Account</span>
                                    </a>
                                </div>
                                <div>
                                    <a class="check-out" href="product-checkout.jsp" rel="nofollow" title="Checkout">
                                        <i class="fa fa-check" aria-hidden="true"></i>
                                        <span>Checkout</span>
                                    </a>
                                </div>
                                <div>
                                    <a href="user-wishlist.jsp" title="My Wishlists">
                                        <i class="fa fa-heart"></i>
                                        <span>My Wishlists</span>
                                    </a>
                                </div>
                                <div id="desktop_currency_selector" class="currency-selector groups-selector hidden-sm-down">
                                    <ul class="list-inline">
                                        <li>
                                            <a title="Euro" rel="nofollow" href="#">EUR</a>
                                        </li>
                                        <li class="current list-inline-item">
                                            <a title="British Pound Sterling" rel="nofollow" href="#">GBP</a>
                                        </li>
                                    </ul>
                                </div>
                                <div id="desktop_language_selector" class="language-selector groups-selector hidden-sm-down">
                                    <ul class="list-inline">
                                        <li class="list-inline-item current">
                                            <a href="#">
                                                <img class="img-fluid" src="assets/images/home/home1-flas.jpg" alt="English" width="16" height="11">
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#">
                                                <img class="img-fluid" src="assets/images/home/home1-flas2.jpg" alt="Italiano" width="16" height="11">
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#">
                                                <img class="img-fluid" src="assets/images/home/home1-flas3.jpg" alt="Français" width="16" height="11">
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#">
                                                <img class="img-fluid" src="assets/images/home/home1-flas4.jpg" alt="Español" width="16" height="11">
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="desktop_cart">
                        <div class="blockcart block-cart cart-preview tiva-toggle">
                            <div class="header-cart tiva-toggle-btn">
                                <span class="cart-products-count">1</span>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            </div>
                            <div class="dropdown-content">
                                <div class="cart-content">
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td class="product-image">
                                                <a href="../customer/product-detail.jsp">
                                                    <img src="assets/images/product/5.jpg" alt="Product">
                                                </a>
                                            </td>
                                            <td>
                                                <div class="product-name">
                                                    <a href="../customer/product-detail.jsp">Organic Strawberry Fruits</a>
                                                </div>
                                                <div>
                                                    2 x
                                                    <span class="product-price">£28.98</span>
                                                </div>
                                            </td>
                                            <td class="action">
                                                <a class="remove" href="#">
                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="total">
                                            <td colspan="2">Total:</td>
                                            <td>£92.96</td>
                                        </tr>

                                        <tr>
                                            <td colspan="3" class="d-flex justify-content-center">
                                                <div class="cart-button">
                                                    <a href="../customer/product-cart.jsp" title="View Cart">View Cart</a>
                                                    <a href="product-checkout.jsp" title="Checkout">Checkout</a>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>