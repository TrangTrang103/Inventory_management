package inventory.validate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import inventory.model.Users;
import inventory.service.UserService;
import inventory.utils.HashingPassword;
@Component
public class LoginValidator implements Validator {
@Autowired
private UserService userService;
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Users.class;
	}

public void validate(Object target, Errors errors) {
	Users user = (Users) target;
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "msg.required");//thông báo nếu để khoảng trống đưa ra thông báo phần username
	ValidationUtils.rejectIfEmpty(errors, "password", "msg.required");//tương tự cái trên
	    if(!StringUtils.isEmpty(user.getUserName()) && !StringUtils.isEmpty(user.getPassword())) {
	//nếu UserName không rỗng và password không rỗng thì
	    	List<Users> users = userService.findByProperty("userName", user.getUserName());//lay tu truong users và có điều kiện getUserName
	    	//lấy trường userName có điều kiện value có tên là gì(getUserName)
	        if(users != null && !users.isEmpty()) {//nếu list users không null và ko rỗng thì
	        	if (!users.get(0).getPassword().equals(HashingPassword.encrypt(user.getPassword()))) {//nếu list users lấy password khong bằng password đã nhập thì
					errors.rejectValue("password", "msg.wrong.password");//dua ra loi
				}
	        }else {
				errors.rejectValue("userName", "msg.wrong.username");////nếu list users  null và rỗng thì đưa ra lỗi
			}
	    
	    }
	
	}

}
