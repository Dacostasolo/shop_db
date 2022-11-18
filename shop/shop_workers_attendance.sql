CREATE TABLE shop_worker_attendance(
    worker_id VARCHAR(250) NOT NULL,
    attendance_date DATETIME NOT NULL,
    attendance_status VARCHAR(250) NOT NULL,
    CONSTRAINT shop_worker_attendance_pk PRIMARY KEY (worker_id, attendance_date),
    CONSTRAINT shop_worker_attendance_worker_fk FOREIGN KEY (worker_id) REFERENCES shop_workers(worker_id)
);