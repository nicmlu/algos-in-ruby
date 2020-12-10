# users have accounts 
# users can comment on camps 

# user model (has_many comments)
 - username:string
 - email:string
 - name:string 
 - password_digest:string 

# comment model (belongs_to user, belongs_to camp)
- recommend:boolean
- comment:text 


# camp model (has_many comments, has_many users through comments) 
- name:string
- neighborhood:string
- address:string
- phone:string 
- image_url:string
- description:text 