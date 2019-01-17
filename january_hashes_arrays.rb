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