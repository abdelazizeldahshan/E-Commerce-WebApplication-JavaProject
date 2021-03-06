package gov.iti.jets.shoppy.presentation.controllers;

import gov.iti.jets.shoppy.presentation.dtos.CustomerPostRequestDto;
import gov.iti.jets.shoppy.service.DomainFacade;
import gov.iti.jets.shoppy.service.dtos.CustomerDto;
import gov.iti.jets.shoppy.service.util.HashManager;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet (name = "RegisterServletController" , value = "/register")
public class RegisterServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/customer/auth-forms.jsp");
        try {
            rd.include(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected  void doPost(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException{
        CustomerPostRequestDto customerReqDto = (CustomerPostRequestDto) req.getAttribute("customerData");
        Date formattedDOB = new Date();
        System.out.println(formattedDOB);
        try {
            formattedDOB = new SimpleDateFormat("yyyy-MM-dd").parse(customerReqDto.getDateOfBirth().trim());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        CustomerDto customerDto = CustomerDto.builder()
                .username(customerReqDto.getUsername().trim())
                .email(customerReqDto.getEmail().trim())
                .password(HashManager.INSTANCE.generateSecurePassword(customerReqDto.getPassword().trim()))
                .dob(formattedDOB)
                .creditLimit(1000)
                .isMale(customerReqDto.isMale())
                .interests(customerReqDto.getInterests().trim()).build();
        System.out.println(customerDto);
        if(DomainFacade.getInstance().signUp(customerDto)) {
            resp.sendRedirect("login");
        }
        else {
            resp.sendRedirect("register?emailValidation=false");
        }
    }

}
