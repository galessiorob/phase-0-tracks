#Release 1: Playing with hashes
#Interior designer job application

#Initial hash

application = {
  name: 'John McJohns',
  address: '560 Pacific, San Francisco',
  email: 'john@gmail.com',
  blue_shade: 'indigo',
  wallpaper_preference: 'paisley',
  ombre_is: 'fierce'
}


#=========================================
#Driving code

p application

#Changing a value in the hash
application [:address] = "560 Pacific, Santa Cruz"

#Adding a new key and value
application [:State] = "California"

p application

#Concatenating two keys:
p application[:name] + application[:address]


