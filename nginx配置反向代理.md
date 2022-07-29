nginx配置反向代理

```nginx
server {
        listen       80;
        server_name  106.12.20.244;
        root   /java/dist;

        location /santank-manage/ {
            try_files $uri $uri/ @router;
            index  index.html index.htm;
        }

        location /kaiji/{
            try_files $uri $uri/ @router;
            index  index.html index.htm;
        }

				location /api/phono/ {
                    alias /data/wwwjar/santak-mini/photo/santakPhoto;
                   

                    autoindex on;        
        }
	
  location /api-admin/ {
   proxy_pass              http://106.12.20.244:18081/api-admin/;
   proxy_set_header        Host 106.12.20.244;
   proxy_set_header        X-Real-IP $remote_addr;
   proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  location /api/ {
   proxy_pass              http://106.12.20.244:18080/api/;
   proxy_set_header        Host 106.12.20.244;
   proxy_set_header        X-Real-IP $remote_addr;
   proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  location /third-party-api/ {
   proxy_pass		   http://106.12.20.244:18082/third-party-api/;
   proxy_set_header        Host 106.12.20.244;
   proxy_set_header        X-Real-IP $remote_addr;
   proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  error_page   500 502 503 504  /50x.html;
  location = /50x.html {
  root   html;
  }
 }

```

检查配置是否正确：

```
nginx -t
```

重新启用nginx:

```shell
 nginx -s reload
```

