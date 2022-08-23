//package com.proj.pots.membership.service;
//
//import java.io.BufferedReader;
//import java.io.BufferedWriter;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.io.OutputStreamWriter;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.HashMap;
//
//import org.springframework.stereotype.Service;
//
//import com.google.gson.JsonElement;
//import com.google.gson.JsonObject;
//import com.google.gson.JsonParser;
//
//@Service
//public class naverService {
//
//   public String getAccessToken(String code, String state) {
////      String accessToken = "";
//
//	    String access_token = "";
//      String reqURL = "https://nid.naver.com/oauth2.0/token";
//      try {
//         String sendMessage = "grant_type=authorization_code" 
//        		 + "&client_id=Tfs97zQRihtlD6y1o9wt"
//        		 + "&client_secret=Tfs97zQRihtlD6y1o9wt"
//        		 + "&redirect_uri=http://localhost/CallBack"
//        		 + "&code=" + code
//         		 + "&state=" + state;
//
//         URL url = new URL(reqURL); // POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
//         HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//         conn.setRequestMethod("POST"); // POST 요청을 위해 기본값 false에서 setDoOutput을 true로 변경
//         conn.setDoOutput(true); // POST 메소드를 이용해서 데이터를 전달하기 위한 설정
//
//         // 기본 outputStream을 통해 문자열로 처리할 수 있는 OutPutStreamWriter 변환 후 처리속도를 빠르게 하기위한
//         // BufferedWriter로 변환해서 사용한다.
//         BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
//         bw.write(sendMessage);
//         bw.flush();
//
//         int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
//         System.out.println("responseCode : " + responseCode);
//
//         // 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
//         BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//         String line = "", result = "";
//         while ((line = br.readLine()) != null) {
//            result += line;
//         }
//
//         System.out.println("response body : " + result);
//         System.out.println("result.split : " + result.split(","));
//
//         // Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
//         JsonElement element = JsonParser.parseString(result);
//         access_token = element.getAsJsonObject().get("access_token").getAsString();
//         System.out.println("access_token : " + access_token);
//
//         br.close();
//         bw.close();
//      } catch (IOException e) {
//         e.printStackTrace();
//      }
//      return access_token;
//   }
//   
//   public HashMap<String, String> getUserInfo (String access_token) {
//       HashMap<String, String> userInfo = new HashMap<String, String>();
//       String reqURL = "https://openapi.naver.com/v1/nid/me	";
//       
//       try {
//           URL url = new URL(reqURL);
//           HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//           conn.setRequestMethod("POST");
//           
//           // 요청에 필요한 Header에 포함될 내용
//           conn.setRequestProperty("Authorization", "Bearer " + access_token);
//           
//           int responseCode = conn.getResponseCode();
//           System.out.println("responseCode : " + responseCode);
//           
//           BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//           String line = "";
//           String result = "";
//           while ((line = br.readLine()) != null) {
//               result += line;
//           }
//           System.out.println("response body : " + result);
///*
// * 
// * {
// * "id":2346643532,
// * "connected_at":"2022-07-18T12:21:01Z",
// * "properties":{"nickname":"이상협"},
// * "kakao_account":{
// * "profile_nickname_needs_agreement":false,
// * "profile":{"nickname":"이상협"},
// * "has_email":true,
// * "email_needs_agreement":false,
// * "is_email_valid":true,
// * "is_email_verified":true,
// * "email":"ish6225@hanmail.net"}}
// */
//           JsonElement element = JsonParser.parseString(result);
////           JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
////           String nickname = properties.getAsJsonObject().get("nickname").getAsString();
//
//           JsonObject naver_email = element.getAsJsonObject().get("response/email").getAsJsonObject();
//           JsonObject profile = naver_email.getAsJsonObject().get("response/name").getAsJsonObject();
//           String nickname = profile.getAsJsonObject().get("nickname").getAsString();
//           String email = naver_email.getAsJsonObject().get("email").getAsString();
//           
//           userInfo.put("name", nickname);
//           userInfo.put("id", email);
//           userInfo.put("navername", nickname);
//           userInfo.put("naverid", email);
//           
//       } catch (IOException e) {
//           e.printStackTrace();
//       }
//       return userInfo;
//   }
//}
