package gov.iti.jets.shoppy.service.util;

import gov.iti.jets.shoppy.service.impls.AuthServiceImpl;
import gov.iti.jets.shoppy.service.impls.ShoppingCartServiceImpl;
import gov.iti.jets.shoppy.service.impls.ProductServiceImpl;
import gov.iti.jets.shoppy.service.impls.UserServiceImpl;
import gov.iti.jets.shoppy.service.interfaces.AuthService;
import gov.iti.jets.shoppy.service.interfaces.ShoppingCartService;
import gov.iti.jets.shoppy.service.interfaces.ProductService;
import gov.iti.jets.shoppy.service.interfaces.UserService;

public enum ServiceFactory {
    INSTANCE;

    private AuthService authService = new AuthServiceImpl();
    private ProductService productService = new ProductServiceImpl();
    private ShoppingCartService shoppingCartService = new ShoppingCartServiceImpl();

    public AuthService getAuthService() {
        return authService;
    }
    public ProductService getProductService() {return productService;}
    public ShoppingCartService getShoppingCartService() {return shoppingCartService;}
    public UserService getUserService() {return userService;}
}
