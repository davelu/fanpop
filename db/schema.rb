# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141014223305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: true do |t|
    t.string   "hotelName"
    t.string   "hotelAddress"
    t.string   "hotelCity"
    t.string   "hotelState"
    t.string   "hotelPostalCode"
    t.string   "hotelCountry"
    t.string   "hotelAirport"
    t.string   "propertyName"
    t.string   "hotelDestination"
    t.float    "hotelRating"
    t.float    "tripAdvisorRating"
    t.text     "tripAdvisorReview"
    t.string   "hotelDescription"
    t.string   "locationDescription"
    t.string   "shortDescription"
    t.integer  "hotelThumbnail"
    t.string   "imageGallery"
    t.string   "propertyAmenities"
    t.integer  "triponomyScore"
    t.integer  "propertyCategory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "offers", force: true do |t|
    t.float    "totalStay"
    t.float    "nightlyRate"
    t.integer  "numberOfBedrooms"
    t.string   "bedType"
    t.string   "roomType"
    t.boolean  "nonRefundable"
    t.string   "rateCode"
    t.string   "roomDescription"
    t.string   "promoID"
    t.string   "promoDescription"
    t.string   "valueAdd"
    t.float    "surchargeTotal"
    t.float    "roomRateTotal"
    t.string   "currencyCode"
    t.float    "averageRate"
    t.float    "averageBaseRate"
    t.float    "commissionableUsdTotal"
    t.string   "hotelFeeDescription"
    t.float    "hotelFeeAmount"
    t.string   "cancellationPolicy"
    t.string   "rateType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.string   "location"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "startDate"
    t.string   "endDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postalCode"
    t.string   "billingAddress"
    t.string   "billingCity"
    t.string   "billingState"
    t.string   "billingPostalCode"
    t.string   "billingCountry"
    t.string   "creditCardNumber"
    t.string   "creditCardCid"
    t.string   "creditCardExpiration"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
