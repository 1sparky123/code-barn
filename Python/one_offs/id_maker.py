print('please input your info bellow')
print('------------------------------------')
first_name=input('what is your first name? ').title()
last_name=input('what is your last name? ').upper()
job=input('what is your job description? ').title()
id=input('what is your work ID? ')
email=input('what is your email? ').lower()
number=input('what is your phone number? ( ͡° ͜ʖ ͡°) ')
#hair=input('what is your hair color? ').title
#eye=input('what is your eye color?').title
#month=input('what month did you join the firm?')
#training=input('have you compleated the advanced training set? (True/False) ')
print('''privew of your ID bellow
------------------------------------''')
print("{}, {}\n{}\nID: {}\n\n{}\n{}\n.".format(last_name, first_name, job, id, email, number))