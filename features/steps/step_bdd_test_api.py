import requests
from behave import *


@given('Домен данного API: {domain}')
def step_given_domain(context, domain):
    context.url = domain


@when('Пользователь отправляет get-запрос с ендпоинтом: "api/users?page=2"')
def step_when_get_page_endpoint(context):
    context.response = requests.get(context.url + "api/users?page=2")


@then('Пользователь должен получить ответ со статус кодом 200')
def step_then_get_test_status_code(context):
    assert context.response.status_code == 200


@then('Ожидаем получить следующий JSON ответ: {expected_response_body}')
def step_then_get_expected_resnonse_body(context, expected_response_body):
    context.expected_response_body = dict(page=2, per_page=6, total=12, total_pages=2, data=[
        {"id": 7, "email": "michael.lawson@reqres.in", "first_name": "Michael", "last_name": "Lawson",
         "avatar": "https://reqres.in/img/faces/7-image.jpg"},
        {"id": 8, "email": "lindsay.ferguson@reqres.in", "first_name": "Lindsay", "last_name": "Ferguson",
         "avatar": "https://reqres.in/img/faces/8-image.jpg"},
        {"id": 9, "email": "tobias.funke@reqres.in", "first_name": "Tobias", "last_name": "Funke",
         "avatar": "https://reqres.in/img/faces/9-image.jpg"},
        {"id": 10, "email": "byron.fields@reqres.in", "first_name": "Byron", "last_name": "Fields",
         "avatar": "https://reqres.in/img/faces/10-image.jpg"},
        {"id": 11, "email": "george.edwards@reqres.in", "first_name": "George", "last_name": "Edwards",
         "avatar": "https://reqres.in/img/faces/11-image.jpg"},
        {"id": 12, "email": "rachel.howell@reqres.in", "first_name": "Rachel", "last_name": "Howell",
         "avatar": "https://reqres.in/img/faces/12-image.jpg"}], support={"url": "https://reqres.in/#support-heading",
                                                                          "text": "To keep ReqRes free, contributions towards server costs are appreciated!"})

    assert context.response.json() == context.expected_response_body


@when('Пользователь отправляет get-запрос с ендпоинтом: "api/users/2"')
def step_when_get_user_endpoint(context):
    context.response = requests.get(context.url + "api/users/2")


@then('Пользователь должен получить следующий JSON ответ: {expected_response_body}')
def step_then_get_expected_resnonse_body(context, expected_response_body):
    context.expected_response_body = dict(
        data={"id": 2, "email": "janet.weaver@reqres.in", "first_name": "Janet", "last_name": "Weaver",
              "avatar": "https://reqres.in/img/faces/2-image.jpg"},
        support={"url": "https://reqres.in/#support-heading",
                 "text": "To keep ReqRes free, contributions towards server costs are appreciated!"})

    assert context.response.json() == context.expected_response_body
