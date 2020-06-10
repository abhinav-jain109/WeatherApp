if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi
echo
mvn clean install -Denv=docker
denv="$1" docker-compose up
