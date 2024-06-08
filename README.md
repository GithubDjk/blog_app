# BlogApp

## Description

BlogApp is a simple blog application built with Ruby on Rails. It allows users to create, read, update, and delete posts. Users can also comment on posts. The application uses Devise for authentication and Bootstrap for styling.

## Requirements

- Ruby 3.0.2
- Rails 6.0.6.1
- PostgreSQL

## Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/GithubDjk/blog_app.git
   cd blog_app
   ```

2. Install the required gems:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   rails db:create
   rails db:migrate
   ```

4. Run the Rails server:

   ```bash
   rails s
   ```

5. Open your browser and navigate to `http://localhost:3000` to see the application running.

## Assumptions

- Users are expected to have basic knowledge of Ruby on Rails and how to set up a Rails application.
- It is assumed that PostgreSQL is installed and running on the user's machine.

## Testing Strategy

The application uses RSpec for testing. The following types of tests are included:

- **Model Tests:** Ensure the validations and associations for `User`, `Post`, and `Comment` models.
- **Controller Tests:** Verify that the actions in `PostsController` and `CommentsController` work as expected.

To run the tests, use the following command:

```bash
bundle exec rspec
```

Ensure that all tests pass to confirm that the application works correctly.

## Usage

1. **Sign Up:** Create a new account using the sign-up link.
2. **Log In:** Log in with your newly created account.
3. **Create a Post:** Click on 'New Post' to create a new blog post.
4. **Edit or Delete Post:** If you are the author of a post, you can edit or delete it.
5. **Comment on Posts:** Authenticated users can comment on any post.

## Additional Features

- **Pagination:** The posts are paginated, showing a limited number of posts per page.
- **Image Upload:** Users can upload an image for each post using Active Storage.
- **Responsive Design:** The application uses Bootstrap to ensure that it is responsive and user-friendly.

## Notes

- Make sure to create and migrate the database correctly to run the application.
- If there are any issues with dependencies, ensure that the correct versions of gems are installed as specified in the `Gemfile`.

## Deployment
 - The app is deployed using ..
  
With these instructions, you should be able to set up, run, and understand the basic functionalities of the BlogApp.