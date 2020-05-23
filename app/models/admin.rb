# frozen_string_literal: true

class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :trackable,
         :rememberable, :validatable
  has_attached_file :avatar, styles: { medium: "500x500>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
