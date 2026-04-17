CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    position VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    email VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE
);

-- Вставка тестовых данных
INSERT INTO employees (id, name, department, position, salary, hire_date, email) VALUES 
(1, 'Иванов Иван Иванович', 'IT', 'Старший разработчик', 120000, '2022-01-15', 'ivanov@company.ru'),
(2, 'Петров Петр Петрович', 'Sales', 'Руководитель отдела', 95000, '2022-03-20', 'petrov@company.ru'),
(3, 'Сидорова Анна Сергеевна', 'HR', 'HR-директор', 110000, '2021-06-10', 'sidorova@company.ru'),
(4, 'Козлов Дмитрий Алексеевич', 'IT', 'Тестировщик', 65000, '2023-02-28', 'kozlov@company.ru'),
(5, 'Морозова Елена Владимировна', 'Marketing', 'Маркетолог', 78000, '2022-09-14', 'morozova@company.ru');

-- Проверка данных
SELECT * FROM employees;