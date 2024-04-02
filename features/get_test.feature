Feature: Тестирование списка пользователей API

  Scenario: Получение списка пользователей
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users?page=2"
    Then Пользователь должен получить ответ со статус кодом 200
    And Пользователь должен получить следующий JSON ответ: {"page":2,"per_page":6,"total":12,"total_pages":2,"data":[{"id":7,"email":"michael.lawson@reqres.in","first_name":"Michael","last_name":"Lawson","avatar":"https://reqres.in/img/faces/7-image.jpg"},{"id":8,"email":"lindsay.ferguson@reqres.in","first_name":"Lindsay","last_name":"Ferguson","avatar":"https://reqres.in/img/faces/8-image.jpg"},{"id":9,"email":"tobias.funke@reqres.in","first_name":"Tobias","last_name":"Funke","avatar":"https://reqres.in/img/faces/9-image.jpg"},{"id":10,"email":"byron.fields@reqres.in","first_name":"Byron","last_name":"Fields","avatar":"https://reqres.in/img/faces/10-image.jpg"},{"id":11,"email":"george.edwards@reqres.in","first_name":"George","last_name":"Edwards","avatar":"https://reqres.in/img/faces/11-image.jpg"},{"id":12,"email":"rachel.howell@reqres.in","first_name":"Rachel","last_name":"Howell","avatar":"https://reqres.in/img/faces/12-image.jpg"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}

  Scenario: Получение уникального пользователя
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users/2"
    Then Пользователь должен получить ответ со статус кодом 200
    And Пользователь должен получить следующий JSON ответ: {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}

  Scenario: Получение несуществующего пользователя
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users/23"
    Then Пользователь должен получить ответ со статус кодом 404
    And Пользователь должен получить следующий JSON ответ: {}

  Scenario: Получение списка цветов
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/unknown"
    Then Пользователь должен получить ответ со статус кодом 404

