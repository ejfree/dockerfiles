server {
    listen          80;
    server_name     suricata.nubevalabs.com;
    location / {
        proxy_pass  https://vpc-suricata-es-74en24b5ymkuuedkwpchscvw2u.us-east-1.es.amazonaws.com/:443/;
    }
}
