module time

data time =  one | two | three | four | five | six | seven | eight | nine | ten | eleven | twelve

change: time -> time
change one = two
change two = three
change three = four
change four = five
change five = six
change six = seven
change seven = eight
change eight = nine
change nine = ten
change ten = eleven
change eleven = twelve
change _ = one
