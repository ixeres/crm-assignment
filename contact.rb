require_relative 'crm'

class Contact

  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note

    @id = @@id
    @@id += 1 # this way the next contact will get a different id
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find
    puts "Please enter contact ID:"
      query = gets.chomp
        query.each do |get_id|
          if get_id == self.@id
            print "ID #{@id} found for Contact: #{@id.last_name}, #{@id.first_name}. Email: #{@id.email}, Note: #{@id.note}."
          else puts "No contact found."
          end
        end
      end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update
    puts 'Update Contact:'
    puts '[1] First Name'
    puts '[2] Last Name'
    puts '[3] Email'
    puts '[4] Note'
    puts '[5] Return to Main Menu'
    puts 'Enter a number: '
    update = gets.chomp
    if update == 1
      puts "Please enter new value for First Name:"
        firstname_new = gets.chomp
          @@id.first_name = firstname_new
          puts "Changed First Name to #{@@id.first_name}."
    elsif update == 2
      puts "Please enter new value for Last Name:"
        lastname_new = gets.chomp
          @@id.last_name = lastname_new
          puts "Changed Last Name to #{@@id.last_name}."
    elsif update == 3
      puts "Please enter new value for Email:"
        email_new = gets.chomp
          @@id.email = email_new
          puts "Changed Email to #{@@id.email}."
    elsif update == 4
      puts "Please enter new value for Note:"
        note_new = gets.chomp
          @@id.note = note_new
          puts "Changed Note to #{@@id.note}."
    else #method that calls main menu.
    end
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by
    puts 'Locate contact by:'
    puts '[1] First Name'
    puts '[2] Last Name'
    puts '[3] Email'
    puts '[4] Return to Main Menu'
    puts 'Enter a number: '
    input = gets.chomp
    if input == 1
      puts "Please enter contact's First Name:"
        firstname_query = gets.chomp
          firstname_query.each do |firstname|
            if firstname_query == firstname
              puts "ID #{@id} found for Contact: #{@id.last_name}, #{@id.first_name}. Email: #{@id.email}, Note: #{@id.note}."
            else puts "No ID found for '#{firstname_query}'."
              end
            end
          end
        end
      elsif input == 2
        puts "Please enter contact's Last Name:"
          lastname_query = gets.chomp
            lastname_query.each do |lastname|
              if lastname_query == lastname
                puts "ID #{@id} found for Contact: #{@id.last_name}, #{@id.first_name}. Email: #{@id.email}, Note: #{@id.note}."
              else puts "No ID found for '#{lastname_query}'."
                end
              end
            end
          end
      elsif input == 3
        puts "Please enter contact's Email:"
          email_query = gets.chomp
            email_query.each do |email|
              if email_query == email
                puts "ID #{@id} found for Contact: #{@id.last_name}, #{@id.first_name}. Email: #{@id.email}, Note: #{@id.note}."
              else puts "No ID found for '#{email_query}'."
                end
              end
            end
          end
      else return
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.delete_all
  end

  def full_name
    #... What should this do? Display the full name of a contact, I guess. I'll get back to it.
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete(contact_id)
      @@contacts.delete_if {contact_id == @id} #I'm honestly just making an educated guess with this one. Or just a regular guess.
  end

  # Feel free to add other methods here, if you need them.

  #No. I refuse.

end
