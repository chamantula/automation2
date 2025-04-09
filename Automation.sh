#!/bin/bash



# Function for Task 1
task1() {
  echo "Running Task Nodejs: Installing Nodejs v22"
  ./nodejs.sh
}

# Function for Task 2
task2() {
  echo "Running Task MSSQL: Installing MSSQL & MSSQL18-TOOLS"
  ./mssql.sh
}

# Function for Task 3
task3() {
  echo "Running Task Redis: Installing Redis"
  
  ./redis.sh
}

# Function for Task 4
task4() {
  echo "Running Task Influxdb: Installing Influxdb 1.8"
  ./influxdb.sh
}

# Function for Task 5
task5() {
  echo "Running Task Mongodb: Installing mongodb 8"
  ./mongo7.sh
}

# Function for Task 6
task6() {
  echo "Running Task Download Binnaries: Download iviva Binaries"
  ./BinaryDownloadsTarsV3.sh
}

# Function for Task 7
task7() {
  echo "Running Task 7: Cloning Lucy components"
 ./Lucycomponents.sh 
}


# Function for Task 8 (Running all tasks)
task8() {
  task1
  task2
  task3
  task4
  task5
  task6
  task7
}
task9() {
	echo " Running Task 9 : Installing Iviva Dx"
	./Dx.sh
}
task10() {
	echo " Running Task 10: Executing merge DB commands"
	./mergedb.sh
}
task11(){
	echo "Running Task 11: Chose this to create account for iviva /ivivadx"
	./createaccount.sh
}
# Menu to prompt user for selection
echo "Select a task to run (1-11):"
echo "1 - Install NODEJS"
echo "2 - Install MSSQL"
echo "3 - Install Redis"
echo "4 - Install Influxdb"
echo "5 - Install Mongodb"
echo "6 - Download Iviva binaries"
echo "7 - Clone Lucycomponents"
echo "8 - Run all tasks"
echo "9 - Install ivivadx"
echo "10- Run merge db commands"
echo "11 - Create account iviva or ivivadx"
# Read user input
read -p "Enter your choice (1-11): " choice
./default.sh
# Execute selected task
case $choice in
  1)
    task1
    ;;
  2)
    task2
    ;;
  3)
    task3
    ;;
  4)
    task4
    ;;
  5)
    task5
    ;;
  6)
    task6
    ;;
  7)
    task7
    ;;
  8)
    task8
    ;;
  9)
    task9
    ;;
  10)
    task10
    ;;
  11)
    task11
    ;;
  *)
    echo "Invalid choice. Please select a number between 1 and 11."
    ;;
esac

