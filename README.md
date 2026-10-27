# GreenTech System

**Hệ thống quản trị hạ tầng và tự động hóa xử lý nhật ký kỹ thuật** dành cho dự án IoT nông trại GreenTech.

## 1. Mục tiêu

- Quản lý cấu trúc thư mục và tài liệu kỹ thuật.
- Tự động lọc các lỗi quan trọng từ nhật ký hệ thống.
- Quản lý thông tin linh kiện phần cứng cho 100 trạm cảm biến IoT.
- Chuẩn hóa dữ liệu để tra cứu thiết bị chính xác.

## 2. Cấu trúc dự án

```text
cntt1_nhapmoncntt_miniproject_greentech/
├── docs/
│   ├── README.md
│   └── srs-he-thong.docx
├── scripts/
│   └── auto_report.bat
├── data/
│   ├── log-he-thong.log
│   └── quan-ly-thiet-bi.xlsx
├── backup/
│   └── bao-cao-su-co.txt
├── .env
└── .gitignore
```

## 3. Cách chạy chương trình

Mở PowerShell tại thư mục dự án và chạy:

```powershell
.\scripts\auto_report.bat
```

Báo cáo sự cố được lưu tại `backup/bao-cao-su-co.txt`.

## 4. Chức năng

- [x] Tạo cấu trúc thư mục dự án.
- [x] Lọc log theo từ khóa `CRITICAL`, `ERROR`, `TIMEOUT`.
- [ ] Hoàn thiện danh mục linh kiện trong Excel.
- [ ] Kiểm thử tra cứu thông tin thiết bị.
- [ ] Hoàn thiện tài liệu SRS.

## 5. Thông số phần cứng

| Thành phần | Thông tin quản lý |
|---|---|
| CPU | Mã linh kiện, tên thiết bị |
| RAM | Dung lượng RAM |
| SSD/HDD | Loại lưu trữ, dung lượng |
| Trạm IoT | Mã trạm, linh kiện, ngày lắp đặt |

## 6. Nguyên tắc xử lý thông tin

- **IPO:** Log và thông tin thiết bị là đầu vào; hệ thống lọc và tra cứu là quá trình xử lý; báo cáo và thông tin thiết bị là đầu ra.
- **DIKW:** Dữ liệu log → thông tin đã lọc → kiến thức về tình trạng hệ thống → quyết định xử lý sự cố.
- **Database Mindset:** Mỗi linh kiện có một mã duy nhất; mã linh kiện trong bảng trạm được dùng để tra cứu danh mục.
- **An toàn:** Không đưa mật khẩu hoặc khóa API thật lên GitHub.

## 7. Kiểm thử

Chạy script với log mẫu và xác nhận báo cáo chứa các dòng sự cố cần thiết. Kiểm tra Excel để bảo đảm mã linh kiện khớp giữa hai bảng và không có khoảng trắng thừa.
