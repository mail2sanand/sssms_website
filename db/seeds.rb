# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {:email=>"sssmhms.admin@gmail.com",
    :password=>"sairam",
    :password_confirmation=>"sairam"
  },
  {:email=>"admin@admin.com",
   :password=>"admin123",
   :password_confirmation=>"admin123"
  },
  {:email=>"mail2sanand@gmail.com",
   :password=>"sairam",
   :password_confirmation=>"sairam"
  }
])

Stat.create({
	:number_of_patients_served => {
		"male" => "",
		"female" => "",
		"children" => ""
	},
	:distribution_of_patients => {
		"male" => "",
		"female" => "",
		"children" => ""
	},
	:diagnostic_procedures_performed => {
		"xray" => "",
		"ultrasound" => "",
		"ecg" => "",
		"echo" => "",
		"bio_chem_inv" => ""
	},
	:stats_from => "",
	:stats_to => "",
	:no_of_villages =>"",
	:no_of_mandals =>""
})