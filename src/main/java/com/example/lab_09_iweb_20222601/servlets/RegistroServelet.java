package com.example.lab_09_iweb_20222601.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(name = "RegistroServlet", value = "/RegistroServlet")
public class RegistroServelet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            RequestDispatcher view = request.getRequestDispatcher("registro.jsp");
            view.forward(request, response);
        }




    }

}
