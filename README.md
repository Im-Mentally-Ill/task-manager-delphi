# 📋 Веб-приложение "Список сотрудников" на Delphi

[![Delphi](https://img.shields.io/badge/Delphi-10.2-red.svg)](https://www.embarcadero.com/products/delphi)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows-blue.svg)]()

## 📌 О проекте

Веб-приложение для отображения списка сотрудников компании, разработанное на **Embarcadero Delphi 10.2** с использованием технологии **WebBroker**.

Приложение реализует архитектуру клиент-сервер:  
- Веб-браузер отправляет HTTP-запросы  
- Сервер на Delphi обрабатывает запросы и динамически генерирует HTML-страницу  
- Данные могут быть получены из базы данных PostgreSQL (структура подготовлена)

## 🚀 Быстрый старт

### Требования

- Windows 7/8/10/11  
- Embarcadero Delphi 10.2 (или выше)  
- PostgreSQL 18 (опционально, для дальнейшего расширения)

### Запуск приложения

bash
# 1. Клонировать репозиторий
git clone https://github.com/ВАШ_АККАУНТ/WebApp-Delphi-Employees.git

# 2. Открыть проект в Delphi
File → Open → WebApp.dproj

# 3. Скомпилировать и запустить
F9 (Run)

# 4. Открыть в браузере


### Структура проекта

WebApp-Delphi-Employees/
├── WebModuleUnit1.pas      # Главный модуль (обработка запросов)
├── WebModuleUnit1.dfm      # Файл формы веб-модуля
├── Project1.dpr            # Файл проекта
├── Project1.dproj          # Настройки проекта
├── database/
│   └── employees.sql       # SQL скрипт для создания БД
├── README.md               # Документация
└── REPORT.md               # Отчет о работе
http://localhost:8080


### База данных (подготовленная структура)
Схема таблицы employees
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



















