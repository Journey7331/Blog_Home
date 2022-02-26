 package com.blog.util;
 
 public class PageUtil
 {
   public static String genPagination(String targetUrl, long totalNum, int currentPage, int pageSize, String param)
   {
     long totalPage = totalNum % pageSize == 0L ? totalNum / pageSize : totalNum / pageSize + 1L;
     if (totalPage == 0L) {
       return "未查询到数据";
     }
     StringBuffer pageCode = new StringBuffer();
     pageCode.append("<li><a href='" + targetUrl + "?page=1&" + param + "'>First page</a></li>");
     if (currentPage > 1) {
       pageCode.append("<li><a href='" + targetUrl + "?page=" + (currentPage - 1) + "&" + param + "'>Previous page</a></li>");
     } else {
       pageCode.append("<li class='disabled'><a href='#'>Previous page</a></li>");
     }
     for (int i = currentPage - 2; i <= currentPage + 2; i++) {
       if ((i >= 1) && (i <= totalPage)) {
         if (i == currentPage) {
           pageCode.append("<li class='active'><a href='" + targetUrl + "?page=" + i + "&" + param + "'>" + i + "</a></li>");
         } else {
           pageCode.append("<li><a href='" + targetUrl + "?page=" + i + "&" + param + "'>" + i + "</a></li>");
         }
       }
     }
     if (currentPage < totalPage) {
       pageCode.append("<li><a href='" + targetUrl + "?page=" + (currentPage + 1) + "&" + param + "'>Next page</a></li>");
     } else {
       pageCode.append("<li class='disabled'><a href='#'>Next page</a></li>");
     }
     pageCode.append("<li><a href='" + targetUrl + "?page=" + totalPage + "&" + param + "'>End page</a></li>");
     return pageCode.toString();
   }
 }


