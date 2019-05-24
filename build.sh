#yarn install
#paket restore

cd ./src/Client
dotnet fable webpack -- -p
cd -

cd ./src/Server
dotnet build
cd -
