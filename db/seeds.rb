# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

connection = Faraday.new(url: 'http://universities.hipolabs.com/search') do |faraday|
  faraday.adapter Faraday.default_adapter
  faraday.response :json
end

universities = connection.get.body

universities.each do |uni|

  if ["CA","US"].include? uni["alpha_two_code"]

    multiple_domains = false
    domains = []
    uni["domains"].each do |d|
      domains << d
    end
    multiple_domains = true if domains.count > 1

    web_pages = []
    uni["web_pages"].each do |wp|
      web_pages << wp
    end

    university = University.create(name: uni["name"],
                      country: uni["country"],
                      alpha_two_code: uni["alpha_two_code"],
                      state_province: uni["state-province"],
                      domains: domains,
                      web_pages: web_pages,
                      multiple_domains: multiple_domains)
  end
end
