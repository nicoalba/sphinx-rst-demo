Get started with Sphinx and reStructuredText (reST)
===========

This page explains how to install Sphinx, generate a static site using reStructuredText (reST), and deploy it with GitHub Pages.

Install Sphinx
--------------

Install Sphinx via pip:

.. code-block:: bash

   pip install sphinx

(Optional) If you want a dark theme, install Furo:

.. code-block:: bash

   pip install furo

Run the Sphinx quickstart
--------------

Initialize your project with:

.. code-block:: bash

   sphinx-quickstart

This generates folders like `source/` and `build/`, as well as default files such as `conf.py` and `index.rst`.

Customize the reST files
--------------------

Inside the `source/` folder, add your documentation files:

- `index.rst` – homepage and table of contents
- `usage.rst` – usage instructions (this page)
- `api.rst` – API reference content

Update `conf.py` to include your theme:

.. code-block:: python

   html_theme = 'furo'

Build the HTML output
-----------------

You can generate your site using either of the following:

1. Direct command:

   .. code-block:: bash

      sphinx-build -b html source build

2. Or with ``make`` (on Windows use ``make.bat``):

   The `make.bat` file is a batch script that simplifies the Sphinx build process on Windows.

   Copy the :doc:`reference/makefile` into your root, then run it locally:

   .. code-block:: bash

      ./make.bat html

Preview the output
------------------

Open `build/index.html` in a browser to preview your static site locally.

Deploy with GitHub Pages
------------------------

1. Commit and push the project to GitHub.

2. Install the GitHub Pages import tool:

   .. code-block:: bash

      pip install ghp-import

3. Deploy the `build/` folder to a new `gh-pages` branch using:

   .. code-block:: bash

      ghp-import -n -p -f build/html

   This creates the `gh-pages` branch (if it doesn't exist), pushes the contents of `build/`, and sets it up for GitHub Pages.

4. In your GitHub repo:
   - Go to **Settings > Pages**
   - Set **Source** to `gh-pages` branch and `/ (root)`

5. Save your settings. GitHub Pages will publish your site automatically.


