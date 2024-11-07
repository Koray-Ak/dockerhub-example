# Temel imaj olarak Debian kullanılıyor
FROM debian:latest

# Apache2 kurulumu ve temizleme işlemi
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Apache2'nin çalışacağı portu belirtiyoruz
EXPOSE 80

# Apache2'nin arka planda çalışmasını sağlamak için entrypoint tanımlıyoruz
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
