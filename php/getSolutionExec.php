<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $post = file_get_contents('php://input');
    $data = json_decode($post, true);
    // $servername="localhost";
    // $username="root";
    // $password="";
    // $dbname="algogeek";
    
    // $conn=new mysqli($servername,$username,$password,$dbname);
    
    // if($conn->connect_error)
    // {
    //     die("Eroare la conectare...");
    // }
    $pwd=exec("whoami");
    //echo $pwd;
    // echo $data["solution"];
    $myfile = fopen(".\\problems\\test.c", "w");
    fwrite($myfile, $data["solution"]);
    fclose($myfile);
    $cmd=".\\problems\\comp.bat";
    //echo $cmd;
    $output = exec($cmd);
    $out=exec(".\\problems\\test.exe");
    echo $out;
}
?>