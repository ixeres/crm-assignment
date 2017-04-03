class Contact

  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []
  @@id = 0

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note = 'none')
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
      query = gets.chomp.to_i
        @@contacts.each { |listing| return listing if listing.id == query } #inline arguments for .each method. Much more compact! Refer back when you inevitably mess up trying to do it later on.
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update
    puts "Update Contact:"
    puts '[1] First Name'
    puts '[2] Last Name'
    puts '[3] Email'
    puts '[4] Note'
    puts 'Enter a number: '
      update = gets.chomp.to_i
        if update == 1
          puts "Please enter new value for First Name:"
            firstname_new = gets.chomp.to_s
              @first_name = firstname_new
                return @first_name
                puts "Changed First Name to #{@first_name}."
        end

        if update == 2
          puts "Please enter new value for Last Name:"
            lastname_new = gets.chomp.to_s
              @last_name = lastname_new
                return @last_name
                puts "Changed Last Name to #{@last_name}."
        end

        if update == 3
          puts "Please enter new value for Email:"
            email_new = gets.chomp.to_s
              @email = email_new
                return @email
                puts "Changed Email to #{@email}."
        end

        if update == 4
          puts "Please enter new value for Note:"
            note_new = gets.chomp
              @note = note_new
                return @note
                puts "Changed Note to #{@note}."
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
    puts 'Enter a number: '
    input = gets.chomp.to_i
    if input == 1
      puts "Please enter contact's First Name:"
        search_first = gets.chomp.to_s
          @@contacts.each do |item|
            return item if item.first_name == search_first
          end
    end
    if input == 2
      puts "Please enter contact's Last Name:"
        search_last = gets.chomp.to_s
          @@contacts.each do |item|
            return item if item.last_name == search_last
          end
    end
    if input == 3
      puts "Please enter contact's Email:"
        search_email = gets.chomp.to_s
          @@contacts.each do |item|
            return item if item.email == search_email
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
  def delete
      @@contacts.delete(self) #I'm honestly just making an educated guess with this one. Or just a regular guess.
  end

  # Feel free to add other methods here, if you need them.

  #No. I refuse.

end
