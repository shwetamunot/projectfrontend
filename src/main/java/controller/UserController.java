
package controller;

import java.util.List;


//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import niit.Dao.UserDao;
import niit.DaoImpl.UserDaoImpl;
import niit.model.User;
@Controller
public class UserController {
	
@Autowired
private	UserDaoImpl userDao;

@RequestMapping("/register")
public String reg()
{
	return "Register";
}

@RequestMapping("/user")
	public String showUser(Model m)
	{
//	setUserDao(new UserDaoImpl());
	List<User> listUser=userDao.retrieveUser();
	m.addAttribute("userList",listUser);
	return "User";
	}
}