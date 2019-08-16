<html>
 <head>
  <title>This is a PHP file!</title>
 </head>
 <body>
 <?php echo '<p>Hello World</p>'; 
 $usersFile = fopen("/userslist.txt", "r") or die ("Unable to open file1!");
 echo fgets($usersFile);
 fclose($usersFile);
 ?> 
 </body>
</html>