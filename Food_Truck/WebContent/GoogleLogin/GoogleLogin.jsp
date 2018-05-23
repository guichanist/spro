<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="928532416878-1ng6og2sddinhr5qljdenvd0g3g4t9s6.apps.googleusercontent.com">
 <script src="https://apis.google.com/js/platform.js" async defer></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
 <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
        
        
        //수정
        var name = profile.getName();
        sessionStorage.setItem("name", name );
      };
   




    </script>
    
</body>
</html>