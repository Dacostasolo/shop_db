CREATE TABLE worker_working_init(
    worker_id VARCHAR(250) NOT NULL,
    worker_begin_date DATETIME NOT NULL,
    worker_end_date DATETIME NOT NULL,
    CONSTRAINT worker_working_init_pk PRIMARY KEY (worker_id, worker_begin_date),
)