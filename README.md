# Упражнения по курсу Apache Impala

## Необходимые программы

1. [Git](https://git-scm.com/downloads)
2. [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install)
3. [Docker Desktop](https://docs.docker.com/get-docker/)

## Быстрый старт

1. Открыть Bash или Git Bash
2. Создать новую директорию с проектами: `mkdir ~/projects`
3. Перейти в новую директорию с проектами: `сd ~/projects`
4. Загрузить исходники проекта: `git clone https://github.com/neshkeev/impala-exercises.git`
5. Перейти в директорию с проектом: `сd impala-exercises`
6. Запустить проект: `bash ./start`
7. Дождаться когда в логах появится сообщение:
```bash
manager  | [I 2023-11-27 10:04:18.425 ServerApp] http://manager:8888/lab
manager  | [I 2023-11-27 10:04:18.425 ServerApp]     http://127.0.0.1:8888/lab
```
8. Открыть проект в веб-браузере: [http://localhost:8888/lab](http://localhost:8888/lab)

## Управление проектом

Каждая тема вынесена в отдельную Git ветку, поэтому необходимо переключаться между ветками для работы с разными темами.
Каждая ветка знает, какая ветка тема следует дальше, поэтому переход к следующей теме автоматизирован.

### Переключение на следующую тему

1. Открыть Bash или Git Bash
2. Перейти в директорию с проектом: `сd ~/projects/impala-exercises`
3. Переключиться на следующую ветку: `bash ./next`
4. Запустить новую: `bash ./start`
5. Дождаться когда в логах появится сообщение:
```bash
manager  | [I 2023-11-27 10:04:18.425 ServerApp] http://manager:8888/lab
manager  | [I 2023-11-27 10:04:18.425 ServerApp]     http://127.0.0.1:8888/lab
```
6. Открыть проект в веб-браузере: [http://localhost:8888/lab](http://localhost:8888/lab)

### Остановка запущенного проекта

1. Открыть Bash или Git Bash
2. Перейти в директорию с проектом: `сd ~/projects/impala-exercises`
3. Остановить все Docker сервисы: `docker compose down -v`
