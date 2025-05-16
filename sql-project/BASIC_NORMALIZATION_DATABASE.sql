#normalization database

1NF :FIRST NORMAL FORM
- single valued attributes
- attributes domain cant be change
- attributes have unique Name

2NF :SECOND NORMAL FORM
- include 1NF
- No partial dependency between key attributes and non attributes

3NF :THIRD NORMAL FORM
-include 2NF
- no transitive dependency attributes (example : employee_id(primary key)=> department_id(non key attributes)=> department_name(non key attributes))
