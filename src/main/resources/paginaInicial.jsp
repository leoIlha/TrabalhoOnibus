<!DOCTYPE html>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Reserva</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        #onibus {
            margin-top: 20px;
            margin-bottom: 60px;
            border: 2px solid #b8b8b8;
            border-bottom-left-radius: 72px;
            border-top-left-radius: 72px;
            width: 500px;
            position: relative;
            right: 1%;
        }
        #motorista {
            border: 4px solid #b8b8b8;
            border-bottom-left-radius: 70px;
            border-top-left-radius: 70px;
            /* padding-right: 100px; */
            width: 100px;
            height: 275px;
            background-color: #000000;
        }
        #fila-topo {
            width: 100%;
            height: 35%;
            position: absolute;
            top: 5%;
            left: 14%;
        }
        #linha-topo-fila-topo {
            height: 40px;
            margin-left: 50px;
            position: absolute;
            width: 100%;
            height: 50%;
        }
        .box-onibus {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
        }
        .form-check-input{
            font-size: 20px;
            margin-left: 10px;
        }
        .form-check-label{
            font-size: 20px;
        }
        #treze{
            margin-left: 10px;
        }
        .cadeiras{
            margin-top: 20px;
        }
        .cadeiras2{
            margin-top: 70px;
            margin-bottom: 5px;
        }
        #button{
            text-align: center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="paginaInicial.jsp"><strong>RESERVA DE PASSAGENS</strong></a>
    </div>
</nav>
<div class="container">
    <h1>Reserva</h1>
    <form action="reserva" method="get">
        <label class="form-label" for="nome">Nome: </label>
        <input class="form-control" type="text" id="nome" name="nome" placeholder="Digite seu nome">
        <div class="box-onibus">
            <div id="onibus">
                <div id="motorista">
                    <div id="fila-topo">
                        <div id="linha-topo-fila-topo">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol1" name="pol" value="1">
                                <label class="form-check-label" for="pol1">1</label><br>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol5" name="pol" value="5">
                                <label class="form-check-label" for="pol5">5</label><br>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol9" name="pol" value="9">
                                <label class="form-check-label" for="pol9">9</label><br>
                            </div>
                            <div id="treze" class="form-check form-check-inline">
                                <input class="form-check-input"  type="radio" id="pol13" name="pol" value="13">
                                <label class="form-check-label" for="pol13">13</label><br>
                            </div>
                            </br>
                            <div class="cadeiras">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol2" name="pol" value="2">
                                    <label class="form-check-label" for="pol2">2</label><br>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol6" name="pol" value="6">
                                    <label class="form-check-label" for="pol6">6</label><br>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol10" name="pol" value="10">
                                    <label class="form-check-label" for="pol10">10</label><br>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol14" name="pol" value="14">
                                    <label class="form-check-label" for="pol14">14</label><br>
                                </div>
                            </div>
                            <div class="cadeiras2">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol3" name="pol" value="3">
                                    <label class="form-check-label" for="pol3">3</label><br>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol7" name="pol" value="7">
                                    <label class="form-check-label" for="pol7">7</label><br>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol11" name="pol" value="11">
                                    <label class="form-check-label" for="pol10">11</label><br>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="pol15" name="pol" value="15">
                                    <label class="form-check-label" for="pol15">15</label><br>
                                </div>
                            </div>
                            </br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol4" name="pol" value="4">
                                <label class="form-check-label" for="pol4">4</label><br>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol8" name="pol" value="8">
                                <label class="form-check-label" for="pol8">8</label><br>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol12" name="pol" value="12">
                                <label class="form-check-label" for="pol12">12</label><br>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="pol16" name="pol" value="16">
                                <label class="form-check-label" for="pol16">16</label><br>
                            </div>

                            <!--<input type="radio" id="pol1" name="pol" value="1">
                            <label for="pol1">1</label><br>
                            <input type="radio" id="pol2" name="pol" value="2">
                            <label for="pol2">2</label><br>
                            <input type="radio" id="pol3" name="pol" value="3">
                            <label for="pol">3</label><br>
                            <input type="radio" id="pol4" name="pol" value="4">
                            <label for="pol">4</label><br>
                            <input type="radio" id="pol5" name="pol" value="5">
                            <label for="pol">5</label><br>
                            <input type="radio" id="pol6" name="pol" value="6">
                            <label for="pol">6</label><br>
                            <input type="radio" id="pol7" name="pol" value="7">
                            <label for="pol">7</label><br>
                            <input type="radio" id="pol8" name="pol" value="8">
                            <label for="pol">8</label><br>
                            <input type="radio" id="pol9" name="pol" value="9">
                            <label for="pol">9</label><br>
                            <input type="radio" id="pol10" name="pol" value="10">
                            <label for="pol">10</label><br>
                            <input type="radio" id="pol11" name="pol" value="11">
                            <label for="pol">11</label><br>
                            <input type="radio" id="pol12" name="pol" value="12">
                            <label for="pol">12</label><br>
                            <input type="radio" id="pol13" name="pol" value="13">
                            <label for="pol">13</label><br>
                            <input type="radio" id="pol14" name="pol" value="14">
                            <label for="pol">14</label><br>
                            <input type="radio" id="pol15" name="pol" value="15">
                            <label for="pol">15</label><br>-->
                            <!--<input type="submit" value="reserva">-->

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="button">
            <button type="submit" class="btn btn-outline-primary btn-lg" value="reserva" name="reserva">Reservar</button>
        </div>

    </form>


   <!--<table class="table">
        <thead>
        <tr>
            <th scope="col">Id Poltrona</th>
            <th scope="col">Status</th>
            <th scope="col">Nome da Pessoa</th>
        </tr>
        </thead>
        <tbody>
        <tr><th scope="row">1</th>
            <td>${param/nome}</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>

        </tr>
        <tr><th scope="row">4</th>
            <td>Mark</td>
        </tr>
        <tr>
            <th scope="row">5</th>
            <td>Jacob</td>
        </tr>
        <tr>
            <th scope="row">6</th>
            <td colspan="2">Larry the Bird</td>


        </tr>  <tr><th scope="row">7</th>
            <td>Mark</td>
        </tr>
        <tr>
            <th scope="row">8</th>
            <td>Jacob</td>
        </tr>
        <tr>
            <th scope="row">9</th>
            <td colspan="2">Larry the Bird</td>

        </tr>  <tr><th scope="row">10</th>
            <td>Mark</td>
        </tr>
        <tr>
            <th scope="row">11</th>
            <td>Jacob</td>
        </tr>
        <tr>
            <th scope="row">12</th>
            <td colspan="2">Larry the Bird</td>
        </tr>
        <tr><th scope="row">13</th>
            <td>Mark</td>
        </tr>
        <tr>
            <th scope="row">14</th>
            <td>Jacob</td>
        </tr>
        <tr>
            <th scope="row">15</th>
            <td colspan="2">Larry the Bird</td>

        </tr>
        <tr>
            <th scope="row">16</th>
            <td colspan="2">Larry the Bird</td>

        </tr>
        </tbody>
    </table>-->


</div>
</body>
</html>