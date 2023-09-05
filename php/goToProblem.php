<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $post = file_get_contents('php://input');
    $data = json_decode($post, true);
    $servername="localhost";
    $username="root";
    $password="";
    $dbname="algogeek";
    
    $conn=new mysqli($servername,$username,$password,$dbname);
    
    if($conn->connect_error)
    {
        die("Eroare la conectare...");
    }
    
    $sql="SELECT * FROM problems WHERE id={$data['problemID']}";
    $sql2="SELECT users.username FROM problems
    INNER JOIN users ON users.id=problems.id_added WHERE problems.id={$data['problemID']}";
    $result=$conn->query($sql);
    $result2=$conn->query($sql2);
    $total="";
    if ( empty($result->num_rows))
    {
        echo "ERROR ON DATABASE!";
        return;
    }
    $row=$result->fetch_assoc();
    $row2=$result2->fetch_assoc();
    
    $htmlCode="<br/><br/><h1 style=\"text-align: center;\" id=\"titlu\">" . $row["Titlu"] . "</h1><br/>";
    $htmlCode= $htmlCode . "<h5 style=\"text-align:right\">Adaugat de: " . $row2['username'] . "</h5><h3>Cerinta</h3>";
    $htmlCode = $htmlCode . "<p id=\"textBox\" id=\"cerinta\">" . $row["cerinta"] . "</p><h3>Date de intrare</h3>";
    $htmlCode = $htmlCode . "<p id=\"textBox\" id=\"in\">" .$row["inData"] ."</p><h3>Date de iesire</h3>";
    $htmlCode = $htmlCode ."<p id=\"textBox\" id=\"out\">" . $row["outData"] . "</p><h3>Restricţii şi precizări</h3>";
    $htmlCode = $htmlCode . "<p id=\"textBox\" id=\"restrictii\">" . $row["constrangeri"] . "</p><h3>Exemplu:</h3><code style=\"margin-left: 40px;\">Intrare</code>";
    $htmlCode = $htmlCode . "<div class=\"littleBox\" id=\"exIN\">" . $row["in_num"] . "</div><br/>";
    $htmlCode = $htmlCode ."<code style=\"margin-left: 40px;\">Iesire</code>"  . "<div class=\"littleBox\" id=\"exOUT\">" . $row["out_num"] . "</div>";
    echo $htmlCode;
}
?>