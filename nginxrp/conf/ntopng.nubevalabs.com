server {
    listen          80;
    server_name     ntopng.nubevalabs.com;
    location / {
        proxy_pass  http://NtophELB-00bec0c840c40058.elb.us-east-1.amazonaws.com:3000/;
    }
}
