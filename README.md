### Technical Test for Automation Engineer

The solution to the technical test is built on this repository:

- Automated tests for web frontend.
- API tests.
- Programming logic.


#Tools used:

<img src="https://cdn.icon-icons.com/icons2/2415/PNG/512/ruby_original_wordmark_logo_icon_146364.png" alt="Ruby Logo" width="200" />

<img src="https://automationpanda.com/wp-content/uploads/2017/10/cucumber.png?w=1200" alt="Cucumber" width="300" />

<img src="https://res.cloudinary.com/damien1/w_800,c_scale,f_auto,q_auto,dpr_2.0/blog/selenium_logo.png" alt="Cucumber" width="300" />


###Prerequisites

> Ruby 3.2.2
> Bundler 2.5.17

####Clone repository:

#####Using URL https

`$ git clone https://github.com/haroldpineda/technical_test_harold.git`

#####Using URL SSH

`$ git clone git@github.com:haroldpineda/technical_test_harold.git`

####Install the dependencies:

`$ bundle install`

###Running tests  :fa-play:
                    
Test         | command
-------------  | -------------
All | `$ cucumber`
Api| `$ cucumber --tags @api_test`
Frontend| `$ cucumber --tags @frontend_test`
Logic Challenge| `$ cucumber --tags @challenge_logic_test`
