# lzd_test_assessment

This test suite created as test assessment for QAA position at Lazada Tech-Hub

## Installation

For linux machines:
- Install RVM:
    $ curl -L get.rvm.io | bash -s stable
    $ source ~/.rvm/scripts/rvm
    $ rvm list known
    $ rvm install 2.2.1

- Download project
    $ git clone git@github.com:a0rthur0/lzd_test_assessment.git
- Make sure you have firefox installed
- Install the bundler gem:

    $ rvm 2.2.1 do gem install bundler

- Install all of the required gems defined in the gemfile:
    $ cd /project_folder_path/lzd_test_assesment/
    $ rvm 2.2.1 do bundle install


## Usage

- Run cucumber through:

    $ cucumber features/check_product_info.feature --format html > features.html
    
- Check report in root project folder: open features.html
