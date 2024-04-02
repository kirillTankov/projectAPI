import requests
from behave import *


@given('Домен данного API: {domain}')
def step_given_domain(context, domain):
    context.url = domain


@when('Пользователь отправляет get-запрос с ендпоинтом: "{endpoint}"')
def step_when_get_page_endpoint(context, endpoint):
    context.response = requests.get(context.url + endpoint)


@When('Пользователь отправляет тело запроса: {request_body}')
def step_when_send_request_body(context, request_body):
    context.request_body = request_body


@then('Пользователь должен получить ответ со статус кодом: "{code}"')
def step_then_get_test_status_code(context, code):
    assert context.response.status_code == eval(code)


@then('Пользователь должен получить следующий JSON ответ: {expected_response_body}')
def step_then_get_expected_resnonse_body(context, expected_response_body):
    assert context.response.json() == eval(expected_response_body)
