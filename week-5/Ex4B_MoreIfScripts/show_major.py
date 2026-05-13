"""Create a script named show_major.py that defines two variables for a student: 
student_name and student_major. 

The student_major variable will contain a code for the student’s major"""

student_name = input("Enter student name: ")
major_codes = ["BIOL","CSCI","ENG","HIST","MKT"]
print(f"These are the availabe major codes: {major_codes}")
student_major = input("Enter student major code: ")

if student_major == "BIOL" or "biol":
    print(f"Name Of Major: Biology\nDepartment Office: Science Bldg, Room 310")
elif student_major == "CSCI" or "csci":
    print(f"Name Of Major: Computer Science\nDepartment Office: Sheppard Hall, Room 314")
elif student_major == "ENG" or "eng":
    print(f"Name Of Major: English\nDepartment Office: Kerr Hall, Room 201")
elif student_major == "HIST" or "hist":
    print(f"Name Of Major: History\nDepartment Office: Kerr Hall, Room 114")
elif student_major == "MKT" or "mkt":
    print(f"Name Of Major: Marketing\nDepartment Office: Westly Hall, Room 310")
else: 
    print(f"Name Of Major: Unknown")