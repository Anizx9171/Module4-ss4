USE QuanLySinhVien;
-- a
SELECT * FROM quanlysinhvien.subject 
where credit = (SELECT MAX(Credit) FROM quanlysinhvien.subject) 
LIMIT 0, 100;

-- b
SELECT s.*, m.Mark as 'điểm trung bình'
FROM quanlysinhvien.mark m
Join quanlysinhvien.subject s
on m.SubId = s.SubId
where Mark = (SELECT MAX(Mark) FROM quanlysinhvien.mark);

-- c
SELECT s.*, m.mark 
FROM quanlysinhvien.student s
Left JOIN quanlysinhvien.mark m
ON m.StudentId = s.StudentId
order by m.mark desc
;