package br.ufsm.csi.so.webserver;
import br.ufsm.csi.so.model.Poltrona;


import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.util.ArrayList;

public class Server{


    private static final String HEADER = "HTTP/1.1 200 OK\n" +
            "Content-Type: mime; charset=UTF-8\n\n";
    private static final String HTML = "<html><head>" +
            "<title>Ola Mundo</title></head>" +
            "<body><h1>Ola Mundo!!!</h1></body></html>";
    private static ArrayList<Poltrona> poltronas= new ArrayList<>();
    final static int vagasDisp= 15;
    private static String status;
    private static String nomeVar;
    private static String valor;
    private static String nomePessoa;
    private static String idPessoa;

    public static void main(String[] args) throws IOException {
        try {
            for (int i = 1; i <= vagasDisp; i++) {
                Poltrona p = new Poltrona();
                p.setId(i);
                p.setLivre(true);
                poltronas.add(p);
            }
            ServerSocket serverSocket = new ServerSocket(8080);

            System.out.println("Escutando a http://localhost:8080 ...");

            while (true) {

                Socket socket = serverSocket.accept();

                InputStream in = socket.getInputStream(); //le os dados

                OutputStream out = socket.getOutputStream(); //grava os dados

                byte[] buffer = new byte[2048];
                //int len = in.read(buffer); /* guarda o comprimento do objeto socket lido pelo buffer  */

                int size =in.read(buffer);
                /*-------------------------------------------------------------------------------------*/

                String req = new String(buffer, 0, size); //guarda requisição que vem quando conecta com o servidor

                String[] linhas = req.split("\n");

                //     Requisição do server
                //    pt1               pt2
                //    [0]               [1]
                //    metodo            recurso

                String[] linha0 = linhas[0].split(" ");

                String metodo = linha0[0];

                String recurso = linha0[1];
                //Metodo = GET

                if (metodo.equals("GET")) {
                    recurso = recurso.substring(1); //retorna uma parte da string
                    //Feito para redirecionar para a página inicial
                    if (recurso.isEmpty()) {
                        recurso = "paginaInicial.jsp";
                    }

                    //     /reserva?nome=maria&pol=6&reserva=reserva

                    if (recurso.startsWith("reserva")) {
                        String[] str1 = recurso.split("[?]");

                        String[] vars = str1[1].split("&");
                        //nome=maria
                        //
                        // pol=6


                        for (String v : vars) {
                            String[] nome = v.split("=");

                            // /[0]nomevar  [1]=maria(valor)

                            nomeVar = nome[0]; //recebeu "nome"

                            valor = nome[1]; //recebeu "maria"

                            //If para armazenar o nome do cliente
                            if (nomeVar.equals("nome")) {
                                nomePessoa = valor;
                            }
                            //If para armazenar o numero da poltrona do cliente
                            if (nomeVar.startsWith("pol")) {
                                idPessoa = valor;
                            }
                        }

                        //Chama uma função para efetuar a reservar ou não
                        status = reservaPoltrona(Integer.parseInt(idPessoa), nomePessoa);
                        System.out.println(status);
                        //Caso a reserva for concluida redirecionara o cliente para uma página apresentando uma mensagem para ele
                        if (status.equals("Poltrona Reservada")) {
                            recurso = "reservaFeita.jsp";
                        }
                        //Caso a reserva não for concluida redirecionara o cliente para uma página apresentando uma mensagem para ele
                        else {
                            recurso = "reservaErro.jsp";
                        }
                    } else {
                        recurso = "paginaInicial.jsp";
                    }

                    File file = new File("src\\main\\resources\\" + recurso);
                    if (file.exists() && file.isFile()) {
                        Path path = file.toPath();
                        String mimeType = Files.probeContentType(path);
                        String head = HEADER;
                        if (mimeType != null) {
                            head = HEADER.replaceAll("mime", mimeType);
                        }
                        //System.out.println(head);
                        out.write(head.getBytes(StandardCharsets.UTF_8));
                        FileInputStream fin = new FileInputStream(file);
                        byte[] buf_arquivo = new byte[2048];
                        int read;
                        do {
                            read = fin.read(buf_arquivo);
                            if (read > 0) {
                                out.write(buf_arquivo, 0, read);
                            }
                        } while (read > 0);
                        fin.close();
                    } else {
                        //System.out.println("recurso " + recurso + " nao encontrado.");
                        out.write("HTTP/1.1 404 NOT FOUND\n\n".getBytes(StandardCharsets.UTF_8));
                    }
                }
                in.close();
                out.close();
                socket.close();

            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (NumberFormatException e) {
            throw new RuntimeException(e);
        }catch (StringIndexOutOfBoundsException e){
            System.out.println("erro");
        }

    }


    public static String reservaPoltrona(int id, String nome){
        for( Poltrona p : poltronas ){
            if(p.getId() == id && p.isLivre() == true){
                p.setNome(nome);
                p.setLivre(false);
                p.setDataHora(LocalDateTime.now());
                poltronas.add(p);
                System.out.println("Poltrona: "+id);
                System.out.println("Nome da pessoa: "+nome);
                System.out.println("Data e hora da reserva: "+p.getDataHora());
                status= "Poltrona Reservada";
                break;
            }
            if(p.getId() == id && p.isLivre() == false){
                System.out.println("Poltrona: "+id);
                System.out.println("Nome da pessoa: "+nome);
                status= "Poltrona já Reservada";
                break;
            }


        }
        return status;
    }
}
