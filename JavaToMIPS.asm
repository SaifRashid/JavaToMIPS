.data
    newline:            .asciiz "\n"
    name_prompt:        .asciiz "Enter your name: "
    age_prompt:         .asciiz "Enter your age: "
    address_prompt:     .asciiz "Enter your address: "
    city_prompt:        .asciiz "Enter your city: "
    state_code_prompt:  .asciiz "Enter your state code: "
    zip_code_prompt:    .asciiz "Enter your zip code: "
    phone_number_prompt:.asciiz "Enter your phone number: "

    name:       .space  50      # String to store name
    age:        .word   0       # Integer to store age
    address:    .space  50      # String to store address
    city:       .space  50      # String to store city
    stateCode:  .space  10      # String to store state code
    zipCode:    .space  20      # String to store zip code
    phoneNumber:.space  20      # String to store phone number
    
    user_details_out:.asciiz "User Details:"
    name_out:        .asciiz "Name: "
    age_out:         .asciiz "Age: "
    address_out:     .asciiz "Address: "
    city_out:        .asciiz "City: "
    state_code_out:  .asciiz "State Code: "
    zip_code_out:    .asciiz "Zip Code: "
    phone_number_out:.asciiz "Phone Number: "

.text
.globl main

main:
    # Prompt for name
    li $v0, 4
    la $a0, name_prompt
    syscall

    # Read name
    li $v0, 8
    la $a0, name
    li $a1, 50
    syscall

    # Prompt for age
    li $v0, 4
    la $a0, age_prompt
    syscall

    # Read age
    li $v0, 5
    syscall
    sw $v0, age

    # Prompt for address
    li $v0, 4
    la $a0, address_prompt
    syscall

    # Read address
    li $v0, 8
    la $a0, address
    li $a1, 50
    syscall

    # Prompt for city
    li $v0, 4
    la $a0, city_prompt
    syscall

    # Read city
    li $v0, 8
    la $a0, city
    li $a1, 50
    syscall

    # Prompt for state code
    li $v0, 4
    la $a0, state_code_prompt
    syscall

    # Read state code
    li $v0, 8
    la $a0, stateCode
    li $a1, 10
    syscall

    # Prompt for zip code
    li $v0, 4
    la $a0, zip_code_prompt
    syscall

    # Read zip code
    li $v0, 8
    la $a0, zipCode
    li $a1, 20
    syscall

    # Prompt for phone number
    li $v0, 4
    la $a0, phone_number_prompt
    syscall

    # Read phone number
    li $v0, 8
    la $a0, phoneNumber
    li $a1, 20
    syscall

    # Print user details
    li $v0, 4
    la $a0, newline
    syscall
    
    li $v0, 4
    la $a0, user_details_out
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall
    
    li $v0, 4
    la $a0, name_out
    syscall

    li $v0, 4
    la $a0, name
    syscall

    li $v0, 4
    la $a0, age_out
    syscall

    li $v0, 1
    lw $a0, age
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall
    
    li $v0, 4
    la $a0, address_out
    syscall

    li $v0, 4
    la $a0, address
    syscall
    
    li $v0, 4
    la $a0, city_out
    syscall

    li $v0, 4
    la $a0, city
    syscall
    
    li $v0, 4
    la $a0, state_code_out
    syscall

    li $v0, 4
    la $a0, stateCode
    syscall
    
    li $v0, 4
    la $a0, zip_code_out
    syscall

    li $v0, 4
    la $a0, zipCode
    syscall
    
    li $v0, 4
    la $a0, phone_number_out
    syscall

    li $v0, 4
    la $a0, phoneNumber
    syscall

    # Exit
    li $v0, 10
    syscall
