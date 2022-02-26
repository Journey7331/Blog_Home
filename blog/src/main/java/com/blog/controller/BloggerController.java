  package com.blog.controller;
  
  import com.blog.entity.Blogger;
  import com.blog.service.BloggerService;
  import com.blog.util.CryptographyUtil;
  import javax.annotation.Resource;
  import javax.servlet.http.HttpServletRequest;
  import org.apache.shiro.SecurityUtils;
  import org.apache.shiro.authc.UsernamePasswordToken;
  import org.apache.shiro.subject.Subject;
  import org.springframework.stereotype.Controller;
  import org.springframework.web.bind.annotation.RequestMapping;
  import org.springframework.web.servlet.ModelAndView;
  
  @Controller
  @RequestMapping({"/blogger"})
  public class BloggerController
  {
    @Resource
    private BloggerService bloggerService;
    
    @RequestMapping({"/login"})
    public String login(Blogger blogger, HttpServletRequest request)
    {
      Subject subject = SecurityUtils.getSubject();
      UsernamePasswordToken token = new UsernamePasswordToken(blogger.getUserName(), CryptographyUtil.md5(blogger.getPassword(), "darryl"));
      try 
      {
        subject.login(token);
        return "redirect:/admin/main.jsp";
      }
      catch (Exception e)
      {
        e.printStackTrace();
        request.setAttribute("blogger", blogger);
        request.setAttribute("errorInfo", "User/Password Error!");
      }
      return "login";
    }
    
    @RequestMapping({"/aboutMe"})
    public ModelAndView aboutMe()
      throws Exception
    {
      ModelAndView mav = new ModelAndView();
      mav.addObject("blogger", this.bloggerService.find());
      mav.addObject("mainPage", "foreground/blogger/info.jsp");
      mav.addObject("pageTitle", "About blogger_My Blog");
      mav.setViewName("mainTemp");
      return mav;
    }
  }
