```ruby
%W/this year is #{2017+1}/
# => ["this", "year", "is", "2018"]

%w[this year is #{2017+1}]
# => ['this', 'year', 'is', '#{2017+1}']
```
____
Có 2 cách để chạy  command shell từ Ruby:  
- Cách 1: Lệnh đặt trong 1 string
```
system "ls -s file1 file 2"
```  
- Cách 2: Lệnh đặt trong một list các strings
```
system "ls", "-s", "file1", "file2" 
```
Đối với cách 2 *(nên dùng)*, ta có thể áp dụng array literal như sau:  
```ruby
command = %W[ls] # ["ls"]
options = %W[-s] # ["-s"]
agruments = %W[file1 file2] # ["file1", "file2"]

system *(command + options + agruments)
# system "ls", "-s", "file1", "file2" 
```
Note: splat operator `*` bỏ dấu ngoặc `[]` của array. Ví dụ:
```ruby
a = [1, 2, 3]
*a
# => 1, 2, 3
```

