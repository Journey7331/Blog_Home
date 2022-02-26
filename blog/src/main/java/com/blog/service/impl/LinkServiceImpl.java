 package com.blog.service.impl;
 
 import com.blog.dao.LinkDao;
 import com.blog.entity.Link;
 import com.blog.service.LinkService;
 import java.util.List;
 import java.util.Map;
 import javax.annotation.Resource;
 import org.springframework.stereotype.Service;
 
 @Service("linkService")
 public class LinkServiceImpl
   implements LinkService
 {
   @Resource
   private LinkDao linkDao;
   
   public int add(Link link)
   {
     return this.linkDao.add(link);
   }
   
   public int update(Link link)
   {
     return this.linkDao.update(link);
   }
   
   public List<Link> list(Map<String, Object> map)
   {
     return this.linkDao.list(map);
   }
   
   public Long getTotal(Map<String, Object> map)
   {
     return this.linkDao.getTotal(map);
   }
   
   public Integer delete(Integer id)
   {
     return this.linkDao.delete(id);
   }
 }


