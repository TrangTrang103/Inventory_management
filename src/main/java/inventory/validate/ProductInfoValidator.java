package inventory.validate;

import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import inventory.model.ProductInfo;
import inventory.service.ProductService;

@Component
public class ProductInfoValidator implements Validator {
	@Autowired
	private ProductService productService;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == ProductInfo.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ProductInfo productInfo = (ProductInfo) target;
		ValidationUtils.rejectIfEmpty(errors, "code", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "name", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "description", "msg.required");
		if(productInfo.getId()!=null) {
			ValidationUtils.rejectIfEmpty(errors, "multipartFile", "msg.required");
		}
		if (productInfo.getCode() != null) {
			List<ProductInfo> results = productService.findProductInfo("code", productInfo.getCode());//lay ra code với điều kiện getcode
			if (results != null && !results.isEmpty()) {//nếu code không null và không rỗng
				if (productInfo.getId() != null && productInfo.getId() != 0) {//dùng trong trường hợp edit tránh cùng code //nếu id không null và khác 0
					if (results.get(0).getId() != productInfo.getId()) {//neu id tim kiem khong trùng vs id muốn sửa thì
						errors.rejectValue("code", "msg.code.exist");//lỗi đã tồn tại
					}
				} else {
					errors.rejectValue("code", "msg.code.exist");//trường hợp code khi thêm mới 
				}

			}
		}
		if (!productInfo.getMultipartFile().getOriginalFilename().isEmpty()) {
			String extension = FilenameUtils.getExtension(productInfo.getMultipartFile().getOriginalFilename());
			if (!extension.equals("jpg") && !extension.equals("png")) {
				errors.rejectValue("multipartFile", "msg.file.extension.error");
			}
		}

	}

}
