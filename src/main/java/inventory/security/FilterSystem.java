package inventory.security;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import inventory.model.Auth;
import inventory.model.UserRole;
import inventory.model.Users;
import inventory.utils.Constant;

public class FilterSystem implements HandlerInterceptor {
 Logger logger = Logger.getLogger(FilterSystem.class);

 @Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	logger.info("Request URI = " + request.getRequestURL());
	Users users = (Users) request.getSession().getAttribute(Constant.USER_INFO);//lấy session, thông tin của user
	if(users == null) {//nếu null hay ko có session thì sẽ trả về login
		response.sendRedirect(request.getContextPath()+"/login");
	    return false;
	}
    if(users != null) {
    	String url = request.getServletPath();//lấy url từ bên trên
    	if (!hasPermission(url, users)) {//nếu sai thì chuyển sang file acsess-denied
			response.sendRedirect(request.getContextPath()+ "/access-denied");
		    return false;
    	}
    }
    return true;
 }//dùng để check các request trc khi vào contronller

 
 private boolean hasPermission(String url, Users users) {
	 if(url.contains("/index") || url.contains("/access-denied") || url.contains("/logout")) {
			return true;
		}
	 UserRole userRole = (UserRole) users.getUserRoles().iterator().next();
	 //lấy ra từ users đang nhập1 hàm set để định ra userRole của 1 người có user từ đ
	 Set<Auth> auths = userRole.getRole().getAuths();
	 //lấy ra xem 1 người có role là gì(trên và dưới sẽ cho ta biết 1 người bao gồm cả user và auth là gì)
     for (Object obj : auths) {
		Auth auth = (Auth) obj;
		if(url.contains(auth.getMenu().getUrl())) {//kiểm tra url có chưa auth đó có url đó không
			return auth.getPermission() == 1 ;//nếu có trả về auth đó = 1 (chính là bằng true)
		}
	}
     return false;
 }//dùng để check phân quyền có truy cập vào những trang định sẵn
  //dùng để check các request sau khi vào contronller
}
