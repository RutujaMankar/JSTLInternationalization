<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization (i18n) Tag</title>
<link rel = "stylesheet" href="style.jstl">
<link rel = "stylesheet" href="https://fonts.googleapis.com">
</head>
<body>
     <nav>
     
        <ul>
        <li><a href="#">Home</a></li>
        <li>
          <a href="#">Locations</a>
          <ul class = "dropdown">
               <li><a href="#">English(US)</a></li>    
               <li><a href="#">Hindi</a></li>    
               <li><a href="#">Marathi</a></li>    
               <li><a href="#">Russian</a></li>    
               <li><a href="#">French</a></li>    
               <li><a href="#">Gujrati</a></li> 
               <li><a href="#">Danish</a></li> 
            
          </ul>
        
        </li>
             <li><a href="#">About Us</a></li> 
             <li><a href="#">Connect</a></li> 
             <li><a href="#">Another Code</a></li> 
        
        </ul>
     </nav>
View Website in:
<------<a href="?locale=en_US">English(US)</a>
<a href="?locale=hi_IN">Hindi</a>
<a href="?locale=mr_IN">Marathi</a>
<a href="?locale=ru_RU">Russian</a>
<a href="?locale=fr_CA">French</a>
<a href="?locale=gu_IN">Gujrati</a>
<a href="?locale=da_DK">Danish</a>----->

<br/>
<br/>
<hr/>
<fmt:setLocale value = "${param.locale}" />

<fmt:bundle basename="i18n/website">
<p><fmt:message key="label.hello"/>  
<p><fmt:message key="label.your" />
<p><fmt:message key="label.how"  />
<p><fmt:message key="label.text"/>
<p><fmt:message key="label.message"/>
<p><fmt:message key="label.thankyou"/>
</fmt:bundle>
<br/>
Locale: ${param.locale}


</body>
</html>

