Studio.destroy_all
studio1 = Studio.create(name: "Philadelphia:")
studio2 = Studio.create(name: "Royersford:")
studio3 = Studio.create(name: "Cherry Hill:")

SpinClass.destroy_all

SpinClass.create(name: "Fusion", studio_id: studio1.id)
SpinClass.create(name: "Torque", studio_id: studio1.id)
SpinClass.create(name: "Late Night", studio_id: studio1.id)
SpinClass.create(name: "70s Night", studio_id: studio2.id)
SpinClass.create(name: "Sweat it Out", studio_id: studio2.id)
SpinClass.create(name: "Fusion", studio_id: studio2.id)
SpinClass.create(name: "Spin/Barre", studio_id: studio3.id)
SpinClass.create(name: "HIIT Spin", studio_id: studio3.id)
SpinClass.create(name: "Fusion", studio_id: studio3.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
