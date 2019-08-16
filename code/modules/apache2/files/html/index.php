<html>
 <head>
  <title>This is a PHP file!</title>
 </head>
 <body>
 <?php echo '<p>Hello World</p>'; 
 echo '<p>Registered Users</p>';
 $usersFile = fopen("/home/ubuntu/ubuntu/userlist.txt", "r") or die ("Unable to open file1!");
 while(!feof($usersFile)) {
     echo fgets($usersFile) . "<br>";
 }
 fclose($usersFile);

 echo '<p>Recently authenticated users</p>';
 $lastUsersFile = fopen("/userslast.txt", "r") or die ("Unable to open file2");
 while(!feof($lastUsersFile)) {
     echo fgets($lastUsersFile) . "<br>";
 }
 fclose($lastUsersFile);
 ?> 
 </body>
</html>