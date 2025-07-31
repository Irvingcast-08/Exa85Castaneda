<%-- 
    Document   : index
    Created on : 7/06/2025, 09:47:35 AM
    Author     : Dell 5470
--%>

<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>


<br>
<div class="container"> <!------INICIA CONTENEDOR PRINCIPAL----->
    <center>

        <h4>LISTA OFICIAL DE EMPLEADOS DE SISTEMA CASTAÑEDA</h4>
        <br>
    </center>  
    <%@include file="conexion.jsp"%> <!------CONEXION A BASE DE DATOS----->
 <!------MAQUETACION POR ROW (FILAS) Y COL (COLUMNAS)----->
    <div class="row col-md-12" >
        <table class="table table-striped table-bordered table-hover" style="text-align: center">
            <thead>
                <tr>
                    <th style="text-align: center">ID</th>
                    <th style="text-align: center">Nombre</th>
                    <th style="text-align: center">Puesto</th>
                     <th style="text-align: center">Dias trabajados</th>
                    <th style="text-align: center">Sueldo</th>

                    <th style="text-align: center">Operaciones</th>
                    <th style="text-align: center">Operaciones</th>
                </tr>
            </thead> <!------termina cabecera de tabla----->
            <tbody><!----inicia cuerpo de la tabla---->

                <%//inicia scriplet (codigo java)
                    st = conexion.prepareStatement("select * from templeados");
                    rs = st.executeQuery();
                    while (rs.next()) {//inicia while
                  //inicia scriplet (codigo java)
%>  
                <tr>
                    <td><%=rs.getString("id_empleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("puesto")%></td>
                    <td><%=rs.getString("dias_trab")%></td>
                    <td><%=rs.getString("sueldo")%></td>



                    <td><a class="btn btn-danger" href="eliminar.jsp?id_usuario=<%=rs.getString("id_empleado")%>">Eliminar</a></td>
                    <td><a class="btn btn-success" href="editarUsuario.jsp?id_usuario=<%= rs.getString(1)%>&usuario=<%= rs.getString(2)%>&password=<%= rs.getString(3)%>">Editar</a></td>
                </tr>
                <%
                            }//termina while  
%>
            </tbody><!----termina cuerpo de la tabla---->
        </table><!-----termina fila 1-------->
    </div> <!------TERMINA MAQUETACION POR ROW(FILAS Y COL (COLUMNAS) ----->
</div>  <!------TERMINA CONTENEDOR PRINCIPAL----->           

<center>  <h4>Fecha y hora del sistema : <%= new java.util.Date()%></h4></center>    


<jsp:include page="includes/footer.jsp"/>


