<html>
 <head>
  <title>Hello World</title>
 </head>
 <meta http-equiv="refresh" content="60">
 <body>
 <?php echo '<p>Served by PHP</p>'; 
 echo '<p>Registered Users</p>';

$usersFile = fopen(__DIR__ . '/userslist.txt', 'r') or die ("Unable to open file1!");
while(!feof($usersFile)) {
    echo fgets($usersFile) . "<br>";
}
fclose($usersFile);
sleep(30);


 echo '<p>Recently authenticated users</p>';
$lastUsersFile = fopen(__DIR__ .'/userslast.txt', 'r') or die ("Unable to open file2");
while(!feof($lastUsersFile)) {
    echo fgets($lastUsersFile) . "<br>";
}
fclose($lastUsersFile);
sleep(30);
 ?> 
 </body>
</html>