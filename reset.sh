user="root"
pwd="Poke8112"
database="nasdaq_development"
command="DROP DATABASE nasdaq_development;" 
command2="CREATE DATABASE nasdaq_development;"

mysql -u $user -p << EOF 
$command
$command2
EOF
