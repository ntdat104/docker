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
docker search centos
```

- Tìm kiếm image ubuntu trên Docker-hub

```bash
docker pull nginx
```

- Download image nginx bản latest từ docker-hub

```bash
docker build -t my_image_name:v1.0.0 ./
```

- Build image từ Dockerfile

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
docker run -it --rm -p 8080:80 --name nginx_1 nginx (remove ngay sau khi dừng)
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
docker rm -f 0dc225f1450d (đang chạy)
```

- Xóa một container(stoped) - "Có thể chèn nhiều tag để xóa nhiều container" - thêm "-f" để xóa container đang chạy

```bash
docker start 0dc225f1450d
```

- Chạy một container - "Có thể chèn nhiều tag để chạy nhiều container"

```bash
docker exec -it 0dc225f1450d bash
```

- Go to container cách 1

```bash
docker attach 0dc225f1450d
```

- Go to container cách 2

- Thoát container có thể dùng lệnh "exit" hoặc "ctrl + P Q"

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

```bash
docker volume ls
```

- Xem danh sách ổ đĩa

```bash
docker volume create Disk_1
```

- Tạo ổ đĩa Disk_1

```bash
docker volume inspect Disk_1
```

- Kiểm tra thông tin ổ đĩa Disk_1

```bash
docker volume rm Disk_1
```

- Xóa ổ đĩa Disk_1

```bash
docker run -it --name C1 --mount source=Disk_1,target=/app/disk1 busybox:latest
```

- Gán ổ đĩa Disk_1 vào container

```bash
docker volume create --opt device="C:\Users\dat.nguyentien\Downloads\hero" --opt type=none --opt o=bind Disk_1
```

- Tạo ổ đĩa ánh xạ trực tiếp với máy host.

```bash
docker run -it -v Disk_1:/app/disk1 busybox:latest
```

- Gán ổ đĩa Disk_1 vào container khi Disk_1 được ánh xạ với máy host.

```bash
docker network ls
```

- Xem danh sách mạng

```bash
docker network inspect [network_name]
```

- Tra cứu mạng
