def authentication(auth,role_id,user_role_id):
    if auth == True:
        if role_id==user_role_id:
            return True
        else:
            return False,"Invalid_user"
    else:
        return False,"Not_Login"