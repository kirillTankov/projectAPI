Feature: Тестирование GET-запросов без тела и параметров

  Scenario: Получение уникального пользователя
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users/2"
    Then Получить ответ со статус кодом: "200"
    And Получить тело JSON ответа: {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
