kubectl create namespace gcp-test

openssl genrsa -out private-key.pem 2048

openssl req -new -key private-key.pem \
    -out cert.pem \
    -config config-file.cnf

openssl x509 -req \
    -signkey private-key.pem \
    -in cert.pem \
    -out cert-file.pem \
    -extfile config-file.cnf \
    -extensions extension_requirements \
    -days 30

kubectl create secret tls selfsigned-cert-secret \
    --namespace gcp-test \
    --cert=cert-file.pem \
    --key=private-key.pem

kubectl apply -f gateway.yaml