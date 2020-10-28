### Date
10/29/2020
### Location of deployed application
If applicable, please provide the url where we can find and interact with your running application.
### Time spent
2.5 hours
### Assumptions made
- User can sign up, sign in and sign out
- User can search weather via web UI and displays results nicely
- API key management tab for creating new keys
- JSON response to API endpoint if correct key passed
### Shortcuts/Compromises made
- Better profile features (recover password, welcome email, etc.)
### Stretch goals attempted
- UI for the service
- Authentication
- Deployed to webserver
- Fetches api via api.openweathermap.org
### Instructions to run assignment locally
Standard Rails application.
Requirements:
- postgresql
- rails 6+

After requirements are set up, clone and cd into repo.
```
bundle install
bundle exec rails db:create db:migrate
rails s
```
visit localhost:3000.
### Other information about your submission that you feel it's important that we know if applicable.
Just a sample app so I didn't want to spend time on custom provisioning it on AWS EC2. Heroku makes deployment happen in 5 clicks.
### Your feedback on this technical challenge
Pretty straight forward, thanks for the opportunity to showcase my skills.
