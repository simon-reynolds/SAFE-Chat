mkdir -p ./dist/Docker/Client
npm install yarn -g
yarn

pushd ./src/Client
dotnet restore
dotnet fable webpack -- -p
popd

cp -a ./src/Client/public/** ./dist/Docker/Client/
pushd ./src/Server
dotnet restore
dotnet publish -c Release -o ../../dist/Docker

popd
pushd ./dist/Docker
ls -l