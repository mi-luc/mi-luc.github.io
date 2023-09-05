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

$sql="SELECT * FROM users WHERE username='{$data['name']}' AND passwd='{$data['passwd']}'";

$result=$conn->query($sql);
if ( empty($result->num_rows))
echo "EMPTY!";
else
echo $data['name'];
  }


?>