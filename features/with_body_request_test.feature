Feature: Тестирование POST, PUT, DELETE-запросов с телом и параметрами

  Scenario: Создание пользователя
    Given Домен данного API: https://reqres.in/
    When Получить тело JSON запроса: "json_request"
    | name    | job    |
    | morpheus | leader |
    When Пользователь отправляет post-запрос с ендпоинтом: "api/users"
    Then Получить ответ со статус кодом: "201"
    Then Получить тело JSON ответа: "{json_response}"
    | name     | job    | id  |
    | morpheus | leader | 572 |
