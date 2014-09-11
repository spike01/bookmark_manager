require 'spec_helper'
require_relative 'helpers/links'

feature "User adds a new link" do

  scenario "adding a new link" do
    expect(Link.count).to eq(0)
    visit '/links/new'
    add_link("http://www.makersacademy.com/", "Makers Academy")
    expect(Link.count).to eq(1)
    link = Link.first
    expect(link.url).to eq("http://www.makersacademy.com/")
    expect(link.title).to eq("Makers Academy")
  end


  scenario "with a few tags" do
    visit '/links/new'
    add_link("http://www.makersacademy.com/",
             "Makers Academy",
             ['education', 'ruby'])
    expect(Link.count).to eq(1)
    link = Link.first
    expect(link.tags.map(&:text)).to include("education")
    expect(link.tags.map(&:text)).to include("ruby")
  end

end


