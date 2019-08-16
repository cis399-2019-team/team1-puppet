<html>
 <head>
  <title>This is a PHP file!</title>
 </head>
 <body>
 <?php echo '<p>Hello World</p>'; 
 echo '<p>Registered Users</p>';
 set_time_limit(0);
 while(true) {
    $usersFile = fopen(__DIR__ . '/userslist.txt', 'r') or die ("Unable to open file1!");
    while(!feof($usersFile)) {
        echo fgets($usersFile) . "<br>";
    }
    fclose($usersFile);
    sleep(30);
 }


 echo '<p>Recently authenticated users</p>';
 while(true) {
    $lastUsersFile = fopen(__DIR__ .'/userslast.txt', 'r') or die ("Unable to open file2");
    while(!feof($lastUsersFile)) {
        echo fgets($lastUsersFile) . "<br>";
    }
    fclose($lastUsersFile);
    sleep(30);
 }
 ?> 
 </body>
</html>