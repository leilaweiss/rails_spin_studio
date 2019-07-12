# frozen_string_literal: true

Studio.destroy_all
studio1 = Studio.create(name: "Philadelphia:")
studio2 = Studio.create(name: "Royersford:")
studio3 = Studio.create(name: "Cherry Hill:")


SpinClass.destroy_all

SpinClass.create(name: "Fusion", studio_id: studio1.id, instructor: "JJ Redick")
SpinClass.create(name: "Torque", studio_id: studio1.id, instructor: "Joel Embiid")
SpinClass.create(name: "Late Night", studio_id: studio1.id, instructor: "TJ McConnell")
SpinClass.create(name: "70s Night", studio_id: studio2.id, instructor: "Jimmy Butler")
SpinClass.create(name: "Sweat it Out", studio_id: studio2.id, instructor: "Ben Simmons")
SpinClass.create(name: "Fusion", studio_id: studio2.id, instructor: "JJ Redick")
SpinClass.create(name: "Spin/Barre", studio_id: studio3.id, instructor: "Joel Embiid")
SpinClass.create(name: "HIIT Spin", studio_id: studio3.id, instructor: "Ben Simmons")
SpinClass.create(name: "Fusion", studio_id: studio3.id, instructor: "JJ Redick")

# This file should contain all the record creation
# needed to seed the database with its default values.
# The data can then be loaded with the rails
# db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
# { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
