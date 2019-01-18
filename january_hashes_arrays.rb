#January 15, 2019

#hash & array practice


#hashes within hashes

the_office = {
    'michael' => {
        'name' => 'Michael Scott',
        'age' => 45,
        'gender' => 'male',
        'hobbies' => ['improv', 'basketball', 'family']
     },
    'angela' => {
        'name' => 'Angela Martin',
        'age' => 42,
        'gender' => 'female',
        'hobbies' => ['cats', 'religion', 'creepy baby art']
    },
    'jim' => {
        'name' => 'Jim Halpert',
        'age' => 33,
        'gender' => 'male',
        'hobbies' => ['traveling', 'jokes', 'movies'] 
    },
    'dwight' => {
        'name' => 'Dwight Schrute',
        'age' => 35,
        'gender' => 'male',
        'hobbies' => ['bears', 'beets', 'Battlestar Galactica']
    }
    
}

#accessing the data and adding to it

#adding a hobby to Michael's hobbies
puts the_office ['michael']['hobbies'].push("smiling")
#returns in list form: improv, basketball, family, smiling

#displaying angela's hobbies 
puts the_office['angela']['hobbies']
#returns in list form: cats, religion, creepy baby art

#listing the_office keys
p the_office.keys
#returns ["michael", "angela", "jim", "dwight"]

#listing the keys for michael
p the_office['michael'].keys
#returns ["name", "age", "gender", "hobbies"]



#arrays within arrays

the_office_nested_array = [
    [
        "Michael Scott",
        45,
        "male",
        [
            "improv",
            "basketball",
            "family"
            ]
    ],
    [
        "Angela Martin",
        42,
        "female",
        [
            "cats",
            "religion",
            "creepy baby photos"
            ]
    ],
    [
        "Jim Halpert",
        33,
        "male",
        [
            "traveling",
            "jokes",
            "movies"
            
        ]
    ],
    [
        "Dwight Schrute",
        35,
        "male",
        [
            "bears",
            "beets",
            "Battlestar Galactica"
        ]
    ]
]

#accessing the data within the_office_nested_array

puts the_office_nested_array[1]
#output in list form: Angela Martin, 42, female, cats, religion, creepy baby photos

puts the_office_nested_array[1][3]
#output: cats, religion, creepy baby photos

puts the_office_nested_array[2][2]
#output: male


#adding data to the_office_nested_array
the_office_nested_array.push("Pam Beesley")

#modifying the "Pam Beesley" element and adding more data
the_office_nested_array[4] = ["Pam Beesley", 32, "female", ["art", "jokes", "kids"]]

#adding an element to Pam's hobbies (and placing it at the end)
the_office_nested_array[4][3].push("yogurt")
#returns: art, jokes, kids, yogurt
