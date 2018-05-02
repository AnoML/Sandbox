<?php
# Fill our vars and run on cli
# $ php -f db-connect-test.php
$dbname = 'name';
$dbuser = 'user';
$dbpass = 'pass';
$dbhost = 'host';
$connections=[];
$num_connections=2;

for ($x = 0; $x <= $num_connections; $x++) {
  $connect = mysql_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");
  mysql_select_db($dbname) or die("Could not open the db '$dbname'");
  echo "Created a db connection";
  array_push($connections,$connect);
}
