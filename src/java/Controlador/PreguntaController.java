/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Dao.ComentarioDAOImpl;
import Dao.PreguntaDAOImpl;
import Modelo.Comentario;
import Modelo.Pregunta;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class PreguntaController extends HttpServlet {
//private static final long serialVersionUID = 1L;

    PreguntaDAOImpl preguntaDAO;

    public void init() {

        try {

            preguntaDAO = new PreguntaDAOImpl("jdbc:mysql://localhost:3306/hacknews", "root", "");
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreguntaController() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println(action);
        try {
            switch (action) {
                case "index":
                    index(request, response);
                    break;
                case "indexx":
                    indexx(request, response);
                    break;
                case "preguntar":
                    preguntar(request, response);
                    break;
                case "registrarPregunta":
                    registrarPregunta(request, response);
                    break;
                case "mostrarPreguntas":
                    mostrarPregunta(request, response);
                    break;
                case "mostrarPreguntasPersona":
                    mostrarPreguntaPersona(request, response);
                    break;
                case "showedit":
                    showEditar(request, response);
                    break;
                case "editarPregunta":
                    editarPregunta(request, response);
                    break;
                case "eliminar":
                    eliminarPregunta(request, response);
                    break;

                default:
                    break;
            }
        } catch (SQLException e) {
            e.getStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Servlet..");
        doGet(request, response);
    }

    private void index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        //mostrar(request, response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/vistaUsuario.jsp");
        dispatcher.forward(request, response);
    }
     private void indexx(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        //mostrar(request, response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }

    private void registrarPregunta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        String fecha = dateFormat.format(date);
        //Integer id = Integer.parseInt(request.getParameter("id"));

        Pregunta pregunta = new Pregunta(0, request.getParameter("pregunta"), fecha);
        preguntaDAO.insertarPregunta(pregunta);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/vistaUsuario.jsp");
        dispatcher.forward(request, response);

    }

    private void preguntar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/RegistrarPregunta.jsp");
        dispatcher.forward(request, response);
    }

    private void mostrarPregunta(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/MostrarPreguntas.jsp");
        List<Pregunta> listaPregunta = preguntaDAO.listarPregunta();
        request.setAttribute("pregunta", listaPregunta);

        dispatcher.forward(request, response);
    }

    private void mostrarPreguntaPersona(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/mostrarPreguntasPersona.jsp");
        List<Pregunta> listaPregunta = preguntaDAO.listarPregunta();
        request.setAttribute("pregunta", listaPregunta);

        dispatcher.forward(request, response);
    }

    private void showEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

        //Integer id = Integer.parseInt(request.getParameter("id"));
        Pregunta pregunta = preguntaDAO.obtenerPorId(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("pregunta", pregunta);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/EditarPregunta.jsp");
        dispatcher.forward(request, response);
    }

    private void editarPregunta(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        String fecha = dateFormat.format(date);
        Pregunta pregunta = new Pregunta(0, request.getParameter("editarPregunta"), fecha);
        System.out.println(Integer.parseInt(request.getParameter("editarId")));
        System.out.println(request.getParameter("editarPregunta"));
        preguntaDAO.actualizarPregunta(pregunta);
        index(request, response);

    }

    private void eliminarPregunta(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        System.out.println("he lleago hps");
        Pregunta pregunta = preguntaDAO.obtenerPorId(Integer.parseInt(request.getParameter("id")));
        preguntaDAO.eliminarPregunta(pregunta);
        RequestDispatcher dispatcher = request.getRequestDispatcher("vistaUsuario.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
