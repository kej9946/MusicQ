package musicq.music.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.startup.SetAllPropertiesRule;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import musicq.music.service.IMusicService;
import musicq.music.service.MusicServiceIpml;
import musicq.vo.MusicVO;

@WebServlet("/WeatherMusicController")
public class WeatherMusicController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public WeatherMusicController() {}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IMusicService mus = MusicServiceIpml.getInstance();
		MusicVO mv = new MusicVO();
		
		resp.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = resp.getWriter();

	        // 날씨 API 호출 - 대전
	        String city = "Daejeon";
	        String apiKey = "7b2e0eda8317c7c19a930c777a1c2f9f"; // OpenWeatherMap API 키 입력
	        String apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + apiKey;
	        
	        try {
	            // API 호출
	            URL url = new URL(apiUrl);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	            conn.setRequestMethod("GET");
	            conn.connect();

	            // API 응답 읽기
	            Scanner scanner = new Scanner(url.openStream());
	            StringBuilder result = new StringBuilder();
	            while (scanner.hasNext()) {
	                result.append(scanner.nextLine());
	            }
	            scanner.close();

	            
	            String weatherDescription = parseWeatherDescription(result.toString());
	            
	            if(weatherDescription.equals("Clouds"))
	            {
	            	weatherDescription="Rain";
	            }
	            
	            mv.setmWeatherMusuc(weatherDescription);
	           List<MusicVO> mWList = mus.selectWeatherMusic(mv);
	           req.setAttribute("mWList", mWList);
	   			
	           req.getRequestDispatcher("./main2.jsp").forward(req, resp);
	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    private String parseWeatherDescription(String apiResponse) {
	    	String weatherDescription = "";

	        try {
	            // API 응답을 JsonObject로 변환
	            JsonObject jsonObject = new Gson().fromJson(apiResponse, JsonObject.class);

	            // 날씨 정보를 포함한 JsonArray 추출
	            JsonArray weatherArray = jsonObject.getAsJsonArray("weather");

	            // 첫 번째 날씨 정보 객체에서 날씨 설명 추출
	            if (weatherArray.size() > 0) {
	                JsonObject weatherObject = weatherArray.get(0).getAsJsonObject();
	                weatherDescription = weatherObject.get("main").getAsString();
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return weatherDescription;
	    }
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
	}
		
}
	

