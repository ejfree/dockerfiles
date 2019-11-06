server {
    listen          80;
    server_name     moloch.nubevalabs.com;
    location / {
        proxy_pass  http://MolochELB-b133938e9f380a6c.elb.us-east-1.amazonaws.com:8005/;
    }
}
