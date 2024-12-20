if [ -z "$1" ]; then
    echo Give version please, thank you and have a good day.
    exit 1
fi

echo Building the docker image...

pushd ./tugas-4-case5
docker build --no-cache -t drewwebserver:$1 -f Dockerfile .
popd

echo Load the image into kind :\)
kind load docker-image drewwebserver:$1 --name mylab99

echo Apply to the kubernetes cluster now :D
kubectl apply -f deployment.yaml -f service.yaml -f ingress.yaml
kubectl rollout restart deployment tugas-5-cc

echo Done! Have a good day :\)
