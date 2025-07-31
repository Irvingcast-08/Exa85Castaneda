<%-- 
    Document   : rGeneral
    Created on : 14/06/2025, 10:09:57 AM
    Author     : Dell 5470
--%>

<jsp:include page="includes/header.jsp"/>

<div class="container">
    <div class="container">
        <div class="order-details">
            <div class="row"><!--inicia fila 1----->

                <from method="post" action="rUsuario1.jsp">
                    <center>
                        <h3> ALTA USUARIO</h3>
                        <img src="./img/icon/inisesionalum2.jpg"/>
                        <div col-sm-6> 
                            <label>usuario</label>
                            <input class="input" type="text" placeholder="Usuario" required name="usuario"/>
                            <label>Password</label>
                            <input class="input" type="text" placeholder="Password" required name="contrase"/>
                            <br> <br>
                            <input type="submit" class="primary-btn order-submit" value="Registrarme"/>
                        </div>
                    </center>
                </from>


            </div><!-----termina fila 1----->
        </div>
    </div>
</div>


<jsp:include page="includes/footer.jsp"/>
