package inventory.validate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import inventory.model.Category;
import inventory.service.ProductService;
@Component
public class CategoryValidator implements Validator{
	@Autowired
	private ProductService productService;
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Category.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		Category category = (Category) target;
		ValidationUtils.rejectIfEmpty(errors, "code", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "name", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "description", "msg.required");
		if(category.getCode()!=null) {
			List<Category> results=  productService.findCategory("code", category.getCode());//lay ra code với điều kiện getcode
			if(results!=null && !results.isEmpty() ) {//nếu code không null và không rỗng
			if(category.getId()!=null && category.getId()!=0) {//dùng trong trường hợp edit tránh cùng code //nếu id không null và khác 0
				if( results.get(0).getId()!= category.getId()) {//neu id tim kiem khong trùng vs id muốn sửa thì
					errors.rejectValue("code", "msg.code.exist");//lỗi đã tồn tại
				}
			}else {
				errors.rejectValue("code", "msg.code.exist");//trường hợp code khi thêm mới 
			}
			
				
			}
		}
		
		
	}
	

}
