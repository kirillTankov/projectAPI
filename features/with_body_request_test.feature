Feature: Тестирование POST, PUT, DELETE-запросов с телом и параметрами

  Scenario: Создание пользователя
    Given Домен данного API: https://reqres.in/
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
