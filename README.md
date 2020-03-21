# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  2.5.1
* Rails version
  5.2.4.1
* System dependencies

* Configuration

* Screen display
https://gyazo.com/f45b0b59ee613eb4107efab4933c48b0

* Database creation

* Database initialization

## users table
|Column|Type|Option|
|------|----|------|
|nickname|text|null: false|
|group_id|references|foreign_key: true|

## Assosiation
- has_many :comments

## boards table
|Column|Type|Option|
|------|----|------|
|title|string|null: false|
|image|string||

## Assosiation
- has_many :comments
- has_many :tags
- has_many :tags ,through :category

## tags table
|Column|Type|Option|
|------|----|------|
|board_id|references|foreign_key: true|
|category_id|references|foreign_key: true|

## Assosiation
- belongs_to :board
- belongs_to :category

## categories table
|Column|Type|Option|
|------|----|------|
|name|string||

## Assosiation
- has_many :boards
- has_many :tags
- has_many :boards,through :tags

## comments table
|Column|Type|Option|
|------|----|------|
|text|text|null: false|
|user_id|references|foreign_key: true|
|board_id|references|foreign_key: true|


## Assosiation
- belongs_to :board
- belongs_to :user

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


