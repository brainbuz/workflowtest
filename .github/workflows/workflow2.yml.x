# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the action will run. 
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

jobs:
  perl_tester:
    runs-on: ubuntu-latest
    name: "perl v${{ matrix.perl-version }}"

    strategy:
      fail-fast: false
      matrix:
        perl-version:
          - "5.30"
          - "5.28"
          - "5.26"
          - "5.24"
          - "5.22"
          - "5.20"
          - '5.8'

    container:
      image: perldocker/perl-tester:${{ matrix.perl-version }}

    steps:
      - uses: actions/checkout@v2
      - name: uses install-with-cpm
        uses: perl-actions/install-with-cpm@stable
        with:
          cpanfile: "cpanfile"
          sudo: false
      - run: dzil test