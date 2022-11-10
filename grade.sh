# Create your grading script here
set -e
CPATH = ".:lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar"

rm -rf student-submission
git clone $1 student-submission
cp GradeServer.java student-submission/
cd student-submission
javac -cp $CPATH *.java
if [[ -e ListExamples.java ]]
then
    echo "file exists"
else
    echo "not exist"