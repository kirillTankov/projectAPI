Feature: Тестирование POST, PUT, DELETE-запросов с телом и параметрами

  Scenario: Создание пользователя
    Given Домен данного API: https://reqres.in/
<<<<<<< HEAD
    When Получить тело JSON запроса: "json_request"
    | name    | job    |
    | morpheus | leader |
    When Пользователь отправляет post-запрос с ендпоинтом: "api/users"
    Then Получить ответ со статус кодом: "201"
    Then Получить тело JSON ответа: "{json_response}"
    | name     | job    | id  |
    | morpheus | leader | 572 |
=======
    When Пользователь отправляет POST-запрос с ендпоинтом: "api/users"
    When Пользователь отправляет тело запроса: 'request_body'
    """
    {
      "name": "morpheus",
      "job": "leader"
    }
    """
    Then Пользователь должен получить ответ со статус кодом: "201"
    And Пользователь должен получить следующий JSON ответ:
    """
    {
      "name": "morpheus",
      "job": "leader",
      "id": "445",
      "createdAt": "2024-04-02T14:45:48.474Z"
    }
    """
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5
