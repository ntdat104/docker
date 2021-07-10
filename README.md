## Một số lệnh Docker CLI thường dùng

---

```bash
docker
```

- Hiển thị các lệnh docker

```bash
docker --version
```

- Xem version của docker

```bash
docker build -t my_image_name:v1.0.0 .
```

- Build image từ Dockerfile

```bash
docker pull nginx
```

- Download image nginx bản latest từ docker-hub

```bash
docker images
```

- Xem tất cả các images đang có

```bash
docker rmi 0dc225f1450d
```

- Xóa một image(stoped) - "Có thể chèn nhiều tag để xóa nhiều image"

```bash
docker run -it -p 8080:80 --name nginx_1 nginx
```

- Chạy container từ image nginx trên terminal => truy cập localhost:8080

```bash
docker run -d -p 8080:80 --name nginx_2 nginx
```

- Chạy container từ image nginx ở background

```bash
docker ps
```

- Liệt kê ra tất cả các container đang chạy

```bash
docker ps -a
```

- Liệt kê ra tất cả các container

```bash
docker stop 0dc225f1450d
```

- Dừng một container đang chạy - "Có thể chèn nhiều tag để dừng nhiều container"

```bash
docker rm 0dc225f1450d
```

- Xóa một container(stoped) - "Có thể chèn nhiều tag để xóa nhiều container"

```bash
docker start 0dc225f1450d
```

- Chạy một container - "Có thể chèn nhiều tag để chạy nhiều container"

```bash
docker exec -it 0dc225f1450d bash
```

- Go to container

```bash
docker login
```

- Login docker-hub

```bash
docker tag my_image_name ntdat104/test_image:v1.0.0
```

- Setup tag cho image của mình

```bash
docker push ntdat104/test_image:v1.0.0
```

- Đẩy của mình lên docker-hub

```bash
docker pull ntdat104/test_image:v1.0.0
```

- Lấy image của mình về local từ docker-hub
