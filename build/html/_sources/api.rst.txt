API reference
=============

This is a sample API reference page written in reStructuredText.

GET /users
----------

Returns a list of all users.

**Response:**

.. code-block:: json

   [
     { "id": 1, "name": "Nico" },
     { "id": 2, "name": "Enzo" }
   ]

POST /users
-----------

Creates a new user.

**Request Body:**

.. code-block:: json

   {
     "name": "Charlie"
   }

**Response:**

.. code-block:: json

   {
     "id": 3,
     "name": "Charlie"
   }
