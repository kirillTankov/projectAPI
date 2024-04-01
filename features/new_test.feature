Feature: Тестирование списка пользователей API

  Scenario: Получение списка пользователей
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users?page=2"
    Then Пользователь должен получить со статус кодом 200
    And Ожидаем получить указанный JSON ответ: {expected_response_body}
