# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_11_205414) do
  create_table "covers", force: :cascade do |t|
    t.string "front"
    t.string "back"
    t.string "titlescreen"
    t.integer "gamesection_id"
  end

  create_table "examples", force: :cascade do |t|
    t.string "title"
    t.string "box"
    t.text "kanji"
    t.text "nokanji"
    t.text "english"
    t.integer "japanesesection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamesections", force: :cascade do |t|
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "howtomakes", force: :cascade do |t|
    t.text "text"
    t.integer "japanesesection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "japanesecopyparagraphs", force: :cascade do |t|
    t.text "text"
    t.integer "japanesesection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "japanesesections", force: :cascade do |t|
    t.integer "lesson_id"
    t.text "lessontitle"
    t.text "shortdescription"
    t.text "screenshot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.boolean "isgame"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otherpics", force: :cascade do |t|
    t.string "pic"
    t.text "caption"
    t.integer "cover_id"
  end

  create_table "paragraphs", force: :cascade do |t|
    t.text "text"
    t.integer "gamesection_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "ques"
    t.text "choice1"
    t.text "choice2"
    t.text "choice3"
    t.text "choice4"
    t.text "correctChoice"
    t.integer "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "releases", force: :cascade do |t|
    t.string "system"
    t.string "date"
    t.integer "gamesection_id"
  end

  create_table "screenshots", force: :cascade do |t|
    t.string "url"
    t.text "caption"
    t.integer "gamesection_id"
  end

  create_table "vocabwords", force: :cascade do |t|
    t.string "kanji"
    t.string "nokanji"
    t.string "english"
    t.integer "japanesesection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
