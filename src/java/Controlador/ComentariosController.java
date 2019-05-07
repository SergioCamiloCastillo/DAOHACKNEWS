/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Dao.ComentarioDAOImpl;
import Dao.NoticiaDAOImpl;
import Modelo.Comentario;
import Modelo.Noticia;
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
public class ComentariosController extends HttpServlet {
//private static final long serialVersionUID = 1L;

    ComentarioDAOImpl comentarioDAO;

    public void init() {

        try {

            comentarioDAO = new ComentarioDAOImpl("jdbc:mysql://localhost:3306/hacknews", "root", "");
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComentariosController() {
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
                case "comentar":
                    comentar(request, response);
                    break;
                case "registrarComentario":
                    registrarComentario(request, response);
                    break;
                case "mostrarComentarios":
                    mostrarComentarios(request, response);
                    break;
                case "showedit":
                    showEditar(request, response);
                    break;
                case "editarComentario":
                    editarComentario(request, response);
                    break;
                case "eliminar":
                    eliminarComentario(request, response);
                    break;
                case "mostrarComentariosPersona":
                    mostrarComentariosPersona(request, response);
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

    private void registrarComentario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        String fecha = dateFormat.format(date);
        Integer id = Integer.parseInt(request.getParameter("txtid"));

        Comentario comentario = new Comentario(0, request.getParameter("comentario"), fecha);
        comentarioDAO.insertarComentario(comentario);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/vistaUsuario.jsp");
        dispatcher.forward(request, response);

    }

    private void comentar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Comentar.jsp");
        dispatcher.forward(request, response);
    }

    private void mostrarComentarios(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/MostrarComentarios.jsp");
        List<Comentario> listaComentarios = comentarioDAO.listarComentario();
        request.setAttribute("comentario", listaComentarios);

        dispatcher.forward(request, response);
    }
    private void mostrarComentariosPersona(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/mostrarComentarioPersona.jsp");
        List<Comentario> listaComentarios = comentarioDAO.listarComentario();
        request.setAttribute("comentario", listaComentarios);

        dispatcher.forward(request, response);
    }

    private void showEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

        //Integer id = Integer.parseInt(request.getParameter("id"));
        Comentario comentario = comentarioDAO.obtenerPorId(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("comentario", comentario);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/EditarComentario.jsp");
        dispatcher.forward(request, response);
    }

    private void editarComentario(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        String fecha = dateFormat.format(date);
        Comentario comentario = new Comentario(Integer.parseInt(request.getParameter("editarId")), request.getParameter("editarComentario"), fecha);
        comentarioDAO.actualizarComentario(comentario);
        index(request, response);

    }

    private void eliminarComentario(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        System.out.println("he lleago hps");
        Comentario comentario = comentarioDAO.obtenerPorId(Integer.parseInt(request.getParameter("id")));
        comentarioDAO.eliminarComentario(comentario);
        RequestDispatcher dispatcher = request.getRequestDispatcher("vistaUsuario.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
