Feature: Тестирование GET-запросов без тела и параметров

  Scenario: Получение списка пользователей
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users?page=2"
<<<<<<< HEAD
    Then Получить ответ со статус кодом: "200"
    And Получить тело JSON ответа: {"page":2,"per_page":6,"total":12,"total_pages":2,"data":[{"id":7,"email":"michael.lawson@reqres.in","first_name":"Michael","last_name":"Lawson","avatar":"https://reqres.in/img/faces/7-image.jpg"},{"id":8,"email":"lindsay.ferguson@reqres.in","first_name":"Lindsay","last_name":"Ferguson","avatar":"https://reqres.in/img/faces/8-image.jpg"},{"id":9,"email":"tobias.funke@reqres.in","first_name":"Tobias","last_name":"Funke","avatar":"https://reqres.in/img/faces/9-image.jpg"},{"id":10,"email":"byron.fields@reqres.in","first_name":"Byron","last_name":"Fields","avatar":"https://reqres.in/img/faces/10-image.jpg"},{"id":11,"email":"george.edwards@reqres.in","first_name":"George","last_name":"Edwards","avatar":"https://reqres.in/img/faces/11-image.jpg"},{"id":12,"email":"rachel.howell@reqres.in","first_name":"Rachel","last_name":"Howell","avatar":"https://reqres.in/img/faces/12-image.jpg"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
=======
    Then Пользователь должен получить ответ со статус кодом: "200"
    And Пользователь должен получить следующий JSON ответ: {"page":2,"per_page":6,"total":12,"total_pages":2,"data":[{"id":7,"email":"michael.lawson@reqres.in","first_name":"Michael","last_name":"Lawson","avatar":"https://reqres.in/img/faces/7-image.jpg"},{"id":8,"email":"lindsay.ferguson@reqres.in","first_name":"Lindsay","last_name":"Ferguson","avatar":"https://reqres.in/img/faces/8-image.jpg"},{"id":9,"email":"tobias.funke@reqres.in","first_name":"Tobias","last_name":"Funke","avatar":"https://reqres.in/img/faces/9-image.jpg"},{"id":10,"email":"byron.fields@reqres.in","first_name":"Byron","last_name":"Fields","avatar":"https://reqres.in/img/faces/10-image.jpg"},{"id":11,"email":"george.edwards@reqres.in","first_name":"George","last_name":"Edwards","avatar":"https://reqres.in/img/faces/11-image.jpg"},{"id":12,"email":"rachel.howell@reqres.in","first_name":"Rachel","last_name":"Howell","avatar":"https://reqres.in/img/faces/12-image.jpg"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5

  Scenario: Получение уникального пользователя
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users/2"
<<<<<<< HEAD
    Then Получить ответ со статус кодом: "200"
    And Получить тело JSON ответа: {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
=======
    Then Пользователь должен получить ответ со статус кодом: "200"
    And Пользователь должен получить следующий JSON ответ: {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5

  Scenario: Получение несуществующего пользователя
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/users/23"
<<<<<<< HEAD
    Then Получить ответ со статус кодом: "404"
    And Получить тело JSON ответа: {}
=======
    Then Пользователь должен получить ответ со статус кодом: "404"
    And Пользователь должен получить следующий JSON ответ: {}
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5

  Scenario: Получение списка ресурсов
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/unknown"
<<<<<<< HEAD
    Then Получить ответ со статус кодом: "200"
    And Получить тело JSON ответа: {"page":1,"per_page":6,"total":12,"total_pages":2,"data":[{"id":1,"name":"cerulean","year":2000,"color":"#98B2D1","pantone_value":"15-4020"},{"id":2,"name":"fuchsia rose","year":2001,"color":"#C74375","pantone_value":"17-2031"},{"id":3,"name":"true red","year":2002,"color":"#BF1932","pantone_value":"19-1664"},{"id":4,"name":"aqua sky","year":2003,"color":"#7BC4C4","pantone_value":"14-4811"},{"id":5,"name":"tigerlily","year":2004,"color":"#E2583E","pantone_value":"17-1456"},{"id":6,"name":"blue turquoise","year":2005,"color":"#53B0AE","pantone_value":"15-5217"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
=======
    Then Пользователь должен получить ответ со статус кодом: "200"
    And Пользователь должен получить следующий JSON ответ: {"page":1,"per_page":6,"total":12,"total_pages":2,"data":[{"id":1,"name":"cerulean","year":2000,"color":"#98B2D1","pantone_value":"15-4020"},{"id":2,"name":"fuchsia rose","year":2001,"color":"#C74375","pantone_value":"17-2031"},{"id":3,"name":"true red","year":2002,"color":"#BF1932","pantone_value":"19-1664"},{"id":4,"name":"aqua sky","year":2003,"color":"#7BC4C4","pantone_value":"14-4811"},{"id":5,"name":"tigerlily","year":2004,"color":"#E2583E","pantone_value":"17-1456"},{"id":6,"name":"blue turquoise","year":2005,"color":"#53B0AE","pantone_value":"15-5217"}],"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5

  Scenario: Получение уникального ресурса
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/unknown/2"
<<<<<<< HEAD
    Then Получить ответ со статус кодом: "200"
    And Получить тело JSON ответа: {"data":{"id":2,"name":"fuchsia rose","year":2001,"color":"#C74375","pantone_value":"17-2031"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
=======
    Then Пользователь должен получить ответ со статус кодом: "200"
    And Пользователь должен получить следующий JSON ответ: {"data":{"id":2,"name":"fuchsia rose","year":2001,"color":"#C74375","pantone_value":"17-2031"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5

  Scenario: Получение несуществующего ресурса
    Given Домен данного API: https://reqres.in/
    When Пользователь отправляет get-запрос с ендпоинтом: "api/unknown/23"
<<<<<<< HEAD
    Then Получить ответ со статус кодом: "404"
    And Получить тело JSON ответа: {}
=======
    Then Пользователь должен получить ответ со статус кодом: "404"
    And Пользователь должен получить следующий JSON ответ: {}
>>>>>>> b7cad0b0960228ea99703763733c4f45471c18c5
