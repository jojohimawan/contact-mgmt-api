# Contact API Spec

## Create Contact

Endpoint: POST /api/contacts

Headers:

- Authorization: token

Request Body:

```json
{
  "first_name": "Eko Kurniawan",
  "last_name": "Khannedy",
  "email": "eko@example.com",
  "phone": "09888888"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "first_name": "Eko Kurniawan",
    "last_name": "Khannedy",
    "email": "eko@example.com",
    "phone": "09888888"
  }
}
```

## Get Contact

Endpoint: GET /api/contacts/:contactId

Headers:

- Authorization: token

Response Body:

```json
{
  "data": {
    "id": 1,
    "first_name": "Eko Kurniawan",
    "last_name": "Khannedy",
    "email": "eko@example.com",
    "phone": "09888888"
  }
}
```

## Update Contact

Endpoint: PUT /api/contacts/:contactId

Headers:

- Authorization: token

Request Body:

```json
{
  "first_name": "Eko Kurniawan",
  "last_name": "Khannedy",
  "email": "eko@example.com",
  "phone": "09888888"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "first_name": "Eko Kurniawan",
    "last_name": "Khannedy",
    "email": "eko@example.com",
    "phone": "09888888"
  }
}
```

## Remove Contact

Endpoint: DELETE /api/contacts/:contactId

Headers:

- Authorization: token

Response Body:

```json
{
  "data": true
}
```

## Search Contact

Endpoint: GET /api/contacts/

Headers:

- Authorization: token

Query Params:

- name: string, contact firs_name or last_name, optional
- phone: string, phone number, optional
- email: string, contact email, optional
- page: number, default 1
- size: number, default 10

Response Body:

```json
{
  "data": [
    {
      "id": 1,
      "first_name": "Eko Kurniawan",
      "last_name": "Khannedy",
      "email": "eko@example.com",
      "phone": "09888888"
    },
    {
      "id": 2,
      "first_name": "Eko Kurniawan",
      "last_name": "Khannedy",
      "email": "eko@example.com",
      "phone": "09888888"
    }
  ],
  "paging": {
    "current_page": 1,
    "total_page": 10,
    "size": 10
  }
}
```
