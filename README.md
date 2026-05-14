# README

This README documents the steps necessary to get the
application up and running.

* set up and run the app with bundle install, bin/rails db:setup, bin/rails server.

* libvips, action_text is required as a system dependency for image variants, installation is done with sudo apt update,
sudo apt install libvips and bin/rails action_text:install, bin/rails db:migrate

* sanitization check results: no alerts deployed, text shown as is

* This application uses Devise for user authentication. All resource pages require a signed-in user, including:

- Owners
- Pets
- Vets
- Appointments
- Treatments

The home page remains publicly accessible.

### Seeded Users (Role, First Name, Last Name, Email)

Admin	Admin   User   admin@vetclinic.com password123
Vet	    Victor  Vet	   vet@vetclinic.com password123
Owner	Olivia  Owner  owner@vetclinic.com password123

After running:

```bash
bin/rails db:drop db:create db:migrate db:seed