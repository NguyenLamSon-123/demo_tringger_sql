# demo_tringger_sql
bài tập số 5 mssv k225480106076 nguyễn lam sơn môn hệ quản trị cơ sở dữ liệu 
# SUBJECT: Trigger on mssql

# A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

# A trình bày đầu bài 
1 yêu cầu đề bài 
Thiết kế một hệ thống quản lý tiệm cầm đồ giúp theo dõi thông tin khách hàng, tài sản cầm cố, hợp đồng vay, thanh toán, nhân viên, và thông báo. Hệ thống đảm bảo:

Quản lý chính xác dòng tiền, lãi suất, các khoản vay.

Theo dõi trạng thái hợp đồng (đang cầm, đã chuộc, đã thanh lý).

Tự động cập nhật thông tin thống kê và gửi thông báo cần thiết.

2 database
bảng khách hàng 
![image](https://github.com/user-attachments/assets/8fe61fb3-33dc-415b-9958-f600a2db6e72)

bảng hợp đồng 
![image](https://github.com/user-attachments/assets/664e5501-95d9-46da-a6d5-fdd5567e6f13)

bảng nhân viên 
![image](https://github.com/user-attachments/assets/b718017a-91ab-45a0-967f-1a68a1fb57ef)

bảng tài sản 
![image](https://github.com/user-attachments/assets/294490d4-6475-4128-8638-0d4597ce8486)

bảng thanh toán 
![image](https://github.com/user-attachments/assets/27f2cfbb-9ffc-42a9-9639-6ddf7f674a4a)

bảng thông báo 
![image](https://github.com/user-attachments/assets/d121b3f6-241f-44dd-bad3-5c9ed90ac08c)

# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

# 2 bổ sung trường phi chuẩn 
CREATE TRIGGER trg_Update_KhachHang_When_Insert_HopDong
ON HopDong
AFTER INSERT
AS
BEGIN
    UPDATE KhachHang
    SET 
        SoHopDongDangVay = SoHopDongDangVay + 1,
        TongTienDangVay = TongTienDangVay + i.SoTienChoVay
    FROM KhachHang k
    JOIN inserted i ON i.MaTaiSan = (
        SELECT TOP 1 MaTaiSan 
        FROM TaiSan 
        WHERE TaiSan.MaTaiSan = i.MaTaiSan AND TaiSan.MaKhachHang = k.MaKhachHang
    );
END;
![image](https://github.com/user-attachments/assets/2e620980-dd12-40b9-a616-be0359ba4230)

# 4 nhập dữ liệu để test trigger 
![image](https://github.com/user-attachments/assets/6b7f2bf8-e8cb-43ff-a8d1-a7fad2d36e4f)

kết quả
![image](https://github.com/user-attachments/assets/875c3f2e-3a41-4d39-9b5a-d3be6db28d00)

# 5 kết luận
Hệ thống tự động cập nhật số hợp đồng và tổng tiền khách đang vay khi tạo hợp đồng.

Cập nhật lại thông tin khi khách hàng chuộc tài sản.

Gửi thông báo ngay lập tức khi phát sinh thanh toán phạt.

Việc triển khai logic này cho phép tăng hiệu quả quản lý, giảm sai sót thủ công và nâng cao trải nghiệm người dùng thông qua thông báo nhắc nhở rõ ràng, kịp thời.

xuất file 
![Uploading image.png…]()










