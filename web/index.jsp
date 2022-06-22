<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String[] alumno1 = new String[]{"5719", "Pedro", "Tejeda", "Ojeda", "10", "9", "8"};
    String[] alumno2 = new String[]{"5720", "Abel", "Miranda", "Castillo","10", "10", "10" };
    String[] alumno3 = new String[]{"5721", "victor", "Bautista", "Nievez", "2", "6", "8"};
    String[] alumno4 = new String[]{"5722", "susano", "Moras", "Gatica", "10", "4", "5"};
    String[] alumno5 = new String[]{"5724", "kevin", "Garcia", "Camacho", "10", "1", "7"};
    String[] alumno6 = new String[]{"5725", "yonathan", "Pastran", "Tepostlan", "7", "7", "8"};
    String[] alumno7 = new String[]{"5726", "yosef", "Cecil", "Sanchez", "6", "6", "7"};
    String[] alumno8 = new String[]{"5727", "veronica", "Ojeda", "Tejeda", "8", "8", "9"};
    String[] alumno9 = new String[]{"5728", "amado", "Amargado", "Solano", "4", "9", "9"};
    String[] alumno10 = new String[]{"5729", "adrian", "Pelcastre", "Trejon","4", "7", "10" };


    Double[] promedios = new Double[10];

    String[] arreglo = new String[1];

%>

<%
    for (int i = 0; i < 10; i++) {

        double suma = 0;
        double promedio = 0.00;

        switch (i) {
            case 0:
                arreglo = alumno1;
                break;
            case 1:
                arreglo = alumno2;
                break;
            case 2:
                arreglo = alumno3;
                break;
            case 3:
                arreglo = alumno4;
                break;
            case 4:
                arreglo = alumno5;
                break;
            case 5:
                arreglo = alumno6;
                break;
            case 6:
                arreglo = alumno7;
                break;
            case 7:
                arreglo = alumno8;
                break;
            case 8:
                arreglo = alumno9;
                break;
            default:
                arreglo = alumno10;
        }

        for (int x = 4; x <= 6; x++) {
            int calificacion = Integer.parseInt(new String(arreglo[x]));
            suma += calificacion;
        }

        promedio = Math.round((suma / 3)*100.0)/100.0;

        promedios[i] = promedio;
    }

%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla Calificaciones</title>
        <link rel="stylesheet" href="./estilo.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        
    </head>
    <body>
        <div id="content">
            <nav class="navbar navbar-dark bg-dark">
                <a class="navbar-brand" href="#"> Tabla Alumnos :</a>
            </nav>

            <table class="table table-striped" id="tabla">
                <thead >
                    <tr class="bg-warning">
                        <th scope="col" bgcolor="red" >Matricula</th>
                        <th scope="col" bgcolor="teal" >Alumno</th>
                        <th scope="col" bgcolor="green" >DDI</th>
                        <th scope="col" bgcolor="yellow" >DWI</th>
                        <th scope="col" bgcolor="gray" >ECBD</th>
                        <th scope="col" bgcolor="aqua" >Calificacion final</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno1[0]%></td>
                        <td bgcolor="teal" ><%=alumno1[1]%> <%=alumno1[2]%> <%=alumno1[3]%></td>
                        <td bgcolor="green" ><%=alumno1[4]%></td>
                        <td bgcolor="yellow" ><%=alumno1[5]%></td>
                        <td bgcolor="gray" ><%=alumno1[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[0]%></td>
                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno2[0]%></td>
                        <td bgcolor="teal" ><%=alumno2[1]%> <%=alumno2[2]%> <%=alumno2[3]%></td>
                        <td bgcolor="green" ><%=alumno2[4]%></td>
                        <td bgcolor="yellow" ><%=alumno2[5]%></td>
                        <td bgcolor="gray" ><%=alumno2[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[1]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno3[0]%></td>
                        <td bgcolor="teal" ><%=alumno3[1]%> <%=alumno3[2]%> <%=alumno3[3]%></td>
                        <td bgcolor="green" ><%=alumno3[4]%></td>
                        <td bgcolor="yellow" ><%=alumno3[5]%></td>
                        <td bgcolor="gray" ><%=alumno3[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[2]%></td>
                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno4[0]%></td>
                        <td bgcolor="teal" ><%=alumno4[1]%> <%=alumno4[2]%> <%=alumno4[3]%></td>
                        <td bgcolor="green" ><%=alumno4[4]%></td>
                        <td bgcolor="yellow" ><%=alumno4[5]%></td>
                        <td bgcolor="gray" ><%=alumno4[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[3]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno5[0]%></td>
                        <td bgcolor="teal" ><%=alumno5[1]%> <%=alumno5[2]%> <%=alumno5[3]%></td>
                        <td bgcolor="green" ><%=alumno5[4]%></td>
                        <td bgcolor="yellow" ><%=alumno5[5]%></td>
                        <td bgcolor="gray" ><%=alumno5[6]%></td>
                        <td bgcolor="aqua"><%=promedios[4]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno6[0]%></td>
                        <td bgcolor="teal" ><%=alumno6[1]%> <%=alumno6[2]%> <%=alumno6[3]%></td>
                        <td bgcolor="green" ><%=alumno6[4]%></td>
                        <td bgcolor="yellow" ><%=alumno6[5]%></td>
                        <td bgcolor="gray" ><%=alumno6[6]%></td>
                        <td bgcolor="aqua"><%=promedios[5]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno7[0]%></td>
                        <td bgcolor="teal" ><%=alumno7[1]%> <%=alumno7[2]%> <%=alumno7[3]%></td>
                        <td bgcolor="green" ><%=alumno7[4]%></td>
                        <td bgcolor="yellow" ><%=alumno7[5]%></td>
                        <td bgcolor="gray" ><%=alumno7[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[6]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno8[0]%></td>
                        <td bgcolor="teal" ><%=alumno8[1]%> <%=alumno8[2]%> <%=alumno8[3]%></td>
                        <td bgcolor="green" ><%=alumno8[4]%></td>
                        <td bgcolor="yellow" ><%=alumno8[5]%></td>
                        <td bgcolor="gray" ><%=alumno8[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[7]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno9[0]%></td>
                        <td bgcolor="teal" ><%=alumno9[1]%> <%=alumno9[2]%> <%=alumno9[3]%></td>
                        <td bgcolor="green" ><%=alumno9[4]%></td>
                        <td bgcolor="yellow" ><%=alumno9[5]%></td>
                        <td bgcolor="gray"><%=alumno9[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[8]%></td>

                    </tr>
                    <tr>
                        <td scope="row" bgcolor="red"><%=alumno10[0]%></td>
                        <td bgcolor="teal" ><%=alumno10[1]%> <%=alumno10[2]%> <%=alumno10[3]%></td>
                        <td bgcolor="green" ><%=alumno10[4]%></td>
                        <td bgcolor="yellow" ><%=alumno10[5]%></td>
                        <td bgcolor="gray" ><%=alumno10[6]%></td>
                        <td bgcolor="aqua" ><%=promedios[9]%></td>

                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
