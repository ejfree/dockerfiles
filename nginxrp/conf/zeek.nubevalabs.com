server {
    listen          80;
    server_name     zeek.nubevalabs.com;
    location / {
        proxy_pass  https://vpc-zeek-es-rhhteseeayvtdmxjohsbh25mge.us-east-1.es.amazonaws.com/;
    }
}
