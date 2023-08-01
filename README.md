
```bash
./test.sh
[+] Building 0.1s (11/11) FINISHED                                                                                                                              docker:desktop-linux
 => [internal] load .dockerignore                                                                                                                                               0.0s
 => => transferring context: 2B                                                                                                                                                 0.0s
 => [internal] load build definition from Dockerfile                                                                                                                            0.0s
 => => transferring dockerfile: 929B                                                                                                                                            0.0s
 => [internal] load metadata for docker.io/library/alpine:3.17.3                                                                                                                0.0s
 => [without 1/6] FROM docker.io/library/alpine:3.17.3                                                                                                                          0.0s
 => [internal] load build context                                                                                                                                               0.0s
 => => transferring context: 282B                                                                                                                                               0.0s
 => CACHED [without 2/6] WORKDIR app                                                                                                                                            0.0s
 => CACHED [without 3/6] RUN apk add --no-cache     bash     git     openssl     openssh     wget     patch     rsync     php81=~8.1     php81     php81-json     php81-phar    0.0s
 => CACHED [without 4/6] RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --version  0.0s
 => CACHED [without 5/6] RUN composer require --dev phpstan/phpstan                                                                                                             0.0s
 => [without 6/6] ADD test.php /app/test.php                                                                                                                                    0.0s
 => exporting to image                                                                                                                                                          0.0s
 => => exporting layers                                                                                                                                                         0.0s
 => => writing image sha256:f66092500df70c9317539501323ee02f2c6c7174a1edabc93fac4641fe12b9e7                                                                                    0.0s
 => => naming to docker.io/library/without-ext                                                                                                                                  0.0s

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview

 1/1 [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%

 -- ------------------------------------------------------------------------------------------ 
     Error                                                                                     
 -- ------------------------------------------------------------------------------------------ 
     Internal error: Internal error: Class "SimpleXMLElement" not found in file /app/test.php  
     Run PHPStan with -v option and post the stack trace to:                                   
     https://github.com/phpstan/phpstan/issues/new?template=Bug_report.yaml                    
     Child process error (exit code 1):                                                        
 -- ------------------------------------------------------------------------------------------ 


                                                                                                                        
 [ERROR] Found 2 errors                                                                                                 
                                                                                                                        

[+] Building 1.1s (12/12) FINISHED                                                                                                                              docker:desktop-linux
 => [internal] load .dockerignore                                                                                                                                               0.0s
 => => transferring context: 2B                                                                                                                                                 0.0s
 => [internal] load build definition from Dockerfile                                                                                                                            0.0s
 => => transferring dockerfile: 929B                                                                                                                                            0.0s
 => [internal] load metadata for docker.io/library/alpine:3.17.3                                                                                                                0.0s
 => [without 1/6] FROM docker.io/library/alpine:3.17.3                                                                                                                          0.0s
 => [internal] load build context                                                                                                                                               0.0s
 => => transferring context: 30B                                                                                                                                                0.0s
 => CACHED [without 2/6] WORKDIR app                                                                                                                                            0.0s
 => CACHED [without 3/6] RUN apk add --no-cache     bash     git     openssl     openssh     wget     patch     rsync     php81=~8.1     php81     php81-json     php81-phar    0.0s
 => CACHED [without 4/6] RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --version  0.0s
 => CACHED [without 5/6] RUN composer require --dev phpstan/phpstan                                                                                                             0.0s
 => CACHED [without 6/6] ADD test.php /app/test.php                                                                                                                             0.0s
 => [with 1/1] RUN apk add --no-cache     php81-simplexml                                                                                                                       1.0s
 => exporting to image                                                                                                                                                          0.0s
 => => exporting layers                                                                                                                                                         0.0s
 => => writing image sha256:9e35801526eda19c9f9867859b8b08f568660a94500bac1d8adc299753f87c63                                                                                    0.0s
 => => naming to docker.io/library/with-ext                                                                                                                                     0.0s

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview

 1/1 [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%


[OK] No errors                                                                                                         
                                                                                                                        
```
