![](https://media0.giphy.com/media/2zeji2UedvZzvIZ45N/giphy.gif?cid=3640f6095c4a8a4d6b6958366767066f)

# Event PROJECT

~~ Cynthia @Yacinth ~~ William @Willyspa

## Ruby version

```ruby
ruby 2.5.1
```

# Got to Heroku website

not yet

# Or do like always with this steps :

## Git Clone

- Aquerir le repository en local avec clef SSH

```ruby
$ git clone git@github.com:Yacinth/EventProject.git
```

## Bundle Install

- Executer un bundle install pour pouvoir utiliser les gems du Gemfile

```ruby
$ bundle install
```

## create Database

```ruby
$ rails db:create
```

## Migration

- Verifier le statut des migrations dans le terminal

```ruby
$ rails db:migrate:statuts
```

- Si des migrations sont down, effectuer :

```ruby
$ rails db:migrate
```

## Database

- Generer la database à partir de ../migrate/seed.rb :

```ruby
$ rails db:seed
```

## Console Rails

- Pour lancer la console rails et tester la création de row:

```ruby
$ rails console
```

- Pour créer un user u et lancer l'email welcome :

```ruby
$ u = User.create(first_name:"First_name", last_name: "Last_name", description: "Voici ma description", encrypted_password: "password",  email:"alt.yo-2ofbtykj@yopmail.com")
```

- Pour créer une Attendance et lancer une alert à l'admin de l'event :

Créer d'abord un event avec u comme admin_event

```ruby
$ e = Event.create!(participant_id: 3, admin_event_id: u.id, start_date: Faker::Date.forward(5), duration: "5", title: Faker::Book.title, description: Faker::Lorem.paragraph(2),  price: Faker::Number.between(1, 1000), location: "Fresnes")
```

Créer ensuite l'Attendance et envoies l'alert à u, l'admin de l'event :

```ruby
$ a = Attendance.create(participant_id: 5, event_id: Event.last.id,  stripe_customer_id: 300)
```

Go sur ta fausse boite mail : http://www.yopmail.com/?login=nimportekoi
Ou dans : https://app.sendgrid.com/email_activity

### A tout de suite les correcteurs <3
