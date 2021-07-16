# firebase_authentication

A Flutter package to simplify firebase authentication.

## Development State

This is in a very, very early stage. It's a draft basically. It will eventually be ready for production use and will be able to simplify and abstract even more all the details from firebase authentication.

## Issues and Pull Requests
Any issue or pull request is welcome and will be discussed and reviewed. Ultimately the maintainer(s) will need to accept it and merge it.

## Roadmap
To be deemed ready for beta the package should feature:

### Authentication API

- [x] Anonymous sign in
- [x] Email and Password sign up 
- [x] Email and Password sign in
- [x] Email verification
- [ ] Email Link authentication
- [ ] Google authentication
- [ ] Apple authentication
- [ ] Twitter authentication
- [ ] GitHub authentication
- [ ] Phone authentication

### User management
- [x] Deleting a user
- [ ] Reauthenticating a user
- [ ] Linking different accounts

### Comments, Tests and Example Project
Every method or function should have a comment and should be thoroughly tested. The Exmaple project should allow anyone to test the library and every authentication.

### Other useful info
In order to test it, you must setup your own firebase project with your own json and plist files. You musn't commit them or add them to your PRs. I'd recommend you use a test firebase project just for development sakes, don't attach this to any of your production firebase projects.

