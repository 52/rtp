## 001 - Binary Literals

Cách dễ nhớ để set permission cho file trong Linux.
```
chmod 755 file_name
```
Linux dùng hệ cơ số 8 để biểu hiện permission.  
Có 3 đối tượng:
- User
- Group
- Other

Mỗi đối tượng có 3 quyền:
- `r` Read
- `w` Write
- `x` Execute

Để dễ nhớ, ta biểu thị permission bằng hệ cơ số 2 (binary) trước, rồi dùng hàm `to_s(8)` để chuyển sang hệ cơ số 8 (octal)

```
# User - Group - Other
# U  G  O
# rwxrwxrwx (Read - Write - Execute)
0b111101101

# Chuyển từ binary sang octal
perms = 0b111101101
perms.to_s 8 # "755"
```