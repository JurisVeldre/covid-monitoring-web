# frozen_string_literal: true

class User
  include Mongoid::Document

  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable

  ## Database authenticatable
  field :name, type: String, default: ''
  field :encrypted_password, type: String, default: ''

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  validates :name, presence: true

  validates :name, uniqueness: true, case_sensitive: false

  def email_required?; false end

  def email_changed?; false end

  include Mongoid::Timestamps
end
