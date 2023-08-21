<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link
      rel="stylesheet"
      href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
    />
<style>
   .hover-underline-animation {
    /* color: ; */
    display: inline-block;
    /* position: relative; */
}
.hover-underline-animation:after {
  background: none repeat scroll 0 0 transparent;
  bottom: 0;
  content: "";
  display: block;
  height: 2px;
  left: 50%;
  position: relative;
  /* transition: transform 0.25s ease-out; */
  transition: width 0.3s ease 0s, left 0.3s ease 0s;
  width: 0;
}
.hover-underline-animation:hover:after {
  width: 100%;
  left: 0;
}

.hover-underline-animation-black:after {
  background-color: rgb(0,0,0);
  /* width: min-content; */
}
</style>
</head>
<body>
<?php 
function br() {
  echo "<br>";
}

if(isset($_POST['submit'])) {
  $username = $_POST['username'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  ?>
<p class="text-4xl mt-5">
  <?php
  echo "Info recieved.";
  ?>
</p>

<?php
  br();
  echo "Hello " . $username;
  br();
  echo "Email id: " . $email;
  br();
  echo "Password: " . $password;

  $tb_name = "users";
  $query = "INSERT INTO users(username,email,passwrd) VALUES('$username','$email','$password');";
  

  $connection = new mysqli('localhost','root','password','chairs_login',4307);
if($connection){
  echo "<br>We are connected to the database.";
} else {
  die("Connection failed." . mysqli_error());
}
// $conn = ('localhost','root','password','users'); 
  $result = mysqli_query($connection,$query);
  if($result) {
    br();
    echo "Info entry successful in users table.";
  } else {
    echo "<br>Entry failed." . mysql_error();
  }
}

?>
<div>
  <a href="index.html">
    <h3 class="text-2xl mt-2 hover-underline-animation hover-underline-animation-black ">Place an order on Homepage</h3>
  </a>
</div>

</body>
</html>
