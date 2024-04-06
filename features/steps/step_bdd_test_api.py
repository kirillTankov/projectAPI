import requests
from behave import *
import json


@given('Домен данного API: {domain}')
def step_given_domain(context, domain):
    context.url = domain


@when('Пользователь отправляет get-запрос с ендпоинтом: "{endpoint}"')
def step_when_get_page_endpoint(context, endpoint):
    context.response = requests.get(context.url + endpoint)


@when('Получить тело JSON запроса: "{json_request}"')
def step_when_get_json_request(context, json_request):
    context.request_body = json_request


@when('Пользователь отправляет post-запрос с ендпоинтом: "{endpoint}"')
def step_when_send_post_and_get_endpoint(context, endpoint):
    context.response = requests.post(context.url + endpoint, context.request_body)


@then('Получить ответ со статус кодом: "{code}"')
def step_then_get_status_code(context, code):
    assert context.response.status_code == eval(code)


@then('Получить тело JSON ответа: {json_response}')
def step_then_get_json_response(context, json_response):
    expected_response = json.loads(json_response)
    actual_response = context.response.json()
    assert actual_response == expected_response


