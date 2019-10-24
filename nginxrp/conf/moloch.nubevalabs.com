server {
    listen          80;
    server_name     moloch.nubevalabs.com;
    location / {
        proxy_pass  http://MolochELB-e237c89e32c6816d.elb.us-east-1.amazonaws.com:8005/;
    }
}
