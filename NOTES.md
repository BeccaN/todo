Test Driven Development approach to a todo manager application built entirely with Rails. 

- List model
  * List has_many Todos
  * title: string
  * priority: string

- Todo model
  * belongs_to a List
  * content: string
  * complete by date: string

POINTS OF FOCUS FOR STUDYING
* routes
* controller actions
* views
* form helper apis (form_with)

User will open todo app and be greeted with a list of all todo lists (list#index). Lists will be organized by priority.
User can click on a List to view todos within the list. 

Stretch:
- User model
  * username: string
  * password_digest: string
  * email: string
