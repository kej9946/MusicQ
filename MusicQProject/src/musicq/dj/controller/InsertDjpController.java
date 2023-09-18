package musicq.dj.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import musicq.dj.service.DjPageServiceImpl;
import musicq.dj.service.IDjPageService;
import musicq.vo.DjPageVO;

@MultipartConfig(maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50 // 50MB
)
@WebServlet("/dj/djpcreate.do")
public class InsertDjpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/dj/djpcreate.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 1.파일 업로드를 처리할 서버의 디렉토리 경로
		String savePath = "D:/1.설치및압축파일/2.work/2.hightjava/MusicQProject/WebContent/dj/djimages/"; // MusicQProject/WebContent/dj/djimages

		System.out.println("경로지정");
		// 2. 저장할 경로의 File 객체 생성
		File uploadDir = new File(savePath);

		// 3. 폴더가 존재하지 않으면 생성
		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}

		// 첨부파일 가져오기
		Part djpImgPart = req.getPart("djpImgCd");
		Part djpDjimgPart = req.getPart("djpDjimgCd");
		System.out.println("첨부파일 가져오기 :" + djpImgPart + "," + djpDjimgPart);

		// 파일 이름 가져오기
		String djpImgCdNm = getFileName(djpImgPart);
		String djpDjimgCdNm = getFileName(djpDjimgPart);
		// String djpImgCdNm = "1.jpg";
		// String djpDjimgCdNm = "2.jpg";
		System.out.println("파일이름 가져오기 :" + djpImgCdNm + "," + djpDjimgCdNm);

		// 4. 업로드된 파일을 저장할 File 객체 생성 및 저장
		// File djpImgFile = new File(djpImgCdNm);
		// File djpDjimgFile = new File(uploadDir, djpDjimgCdNm);
		djpImgPart.write(savePath + File.separator + djpImgCdNm);
		djpDjimgPart.write(savePath + File.separator + djpDjimgCdNm);
		System.out.println("업로드 파일을 저장할 파일객체 생성");

		// 5. 데이터베이스에 파일 절대경로 저장
		String basePath = "/dj/djimages/";
		// String djpImgPath = djpImgFile.getAbsolutePath();
		// String djpDjimgPath = djpImgFile.getAbsolutePath();

		String djpImgRelativePath = basePath + djpImgCdNm;
		String djpDjimgRelativePath = basePath + djpDjimgCdNm;
		System.out.println("상대경로 저장 : " + djpImgRelativePath + ", " + djpDjimgRelativePath);

		System.out.println("데이터 베이스에 파일 경로 저장");

		// djpImgPath, djpDjimgPath를 이용하여 데이터베이스에 저장하는 코드 작성

		// resp.sendRedirect(req.getContextPath() + "/dj/djplist.do");

		// 세션을 가져옴
		HttpSession session = req.getSession();

		String uId = null;
		String uPw = null;

		// 로그인 정보 가져오기
		if (session.getAttribute("loginCode") != null && session.getAttribute("loginPw") != null) {
			uId = (String) session.getAttribute("loginCode");
			uPw = (String) session.getAttribute("loginPw");
		}
		// 로그인 정보가 없을 경우
		/*
		 * } else { System.out.println("로그인 정보가 없는 회원"); String redirectURL =
		 * req.getContextPath() + "/dj/djpcreate.jsp"; resp.sendRedirect(redirectURL);
		 * return; }
		 */

		// form 데이터 받기
		String djpNm = req.getParameter("djpNm"); // DJ페이지명
		String djpIntro = req.getParameter("djpIntro"); // DJ페이지 소개글
		String djpKeywd = req.getParameter("djpKeywd"); // DJ페이지 검색키워드(대표테마)
		String djpHit = req.getParameter("djpHit"); // DJ페이지 찜수
		/*
		 * String djpImgCd = djpImgPath; // DJ페이지 대표 이미지 코드 String djpDjimgCd =
		 * djpDjimgPath; // DJ페이지 프로필 이미지 코드
		 */

		// 상대경로로 저장
		String djpImgCd = djpImgRelativePath; // DJ페이지 대표 이미지 코드
		String djpDjimgCd = djpDjimgRelativePath; // DJ페이지 프로필 이미지 코드

		String djpSns = req.getParameter("djpSns"); // DJ SNS주소
		
		String djNm = req.getParameter("djNm"); // DJ 닉네임
		String djpGenre = req.getParameter("djpGenre"); // DJ페이지 대표장르
		String djpSnsCorp = req.getParameter("djpSnsCorp"); // DJ Sns분류(인스타, 트위터..)

		System.out.println(uId + "님의 " + djpNm + "페이지 생성 정보 불러오기 완료");

		DjPageVO djpv = new DjPageVO(uId, djpNm, djpIntro, djpKeywd, djpHit, djpImgCd, djpDjimgCd, djpSns, djNm,
				djpGenre, djpSnsCorp);

		System.out.println(uId + "님의 " + djpNm + "페이지 생성 정보를 vo객체 저장 완료");

		// 서비스 객체 생성 및 DB저장(DBMS insert)
		IDjPageService djps = DjPageServiceImpl.getInstance();

		int cnt = djps.insertdjp(djpv);

		String msg = "";
		if (cnt > 0) {
			msg = "DJ페이지 생성 성공";
			System.out.println(msg);
		} else {
			// 실패...
			msg = "DJ페이지 생성 실패";
			System.out.println(msg);
		}

		// 해당 아이디의 DJ페이지 생성 여부 확인(none>>없음, yes >>있음)
		String result = "";
		if (djps.getDjp(uId) == null) {
			result = "none";
			System.out.println("result>>none");
		} else {
			result = "yes";
			System.out.println("result>>yes");
		}

		// String redirectURL = req.getContextPath() + "/dj/mydjpage.jsp?djpImgCd=" +
		// URLEncoder.encode(djpImgCd, "UTF-8") + "&djpDjimgCd=" +
		// URLEncoder.encode(djpDjimgCd, "UTF-8");
		String redirectURL = req.getContextPath() +  "/dj/mydjpage.do?uId=" + URLEncoder.encode(uId, "UTF-8")
				+ "&result=" + result;
		resp.sendRedirect(redirectURL); // resp:정보전달(리다이렉트로 객체 정보 전달은 불가)
		// System.out.println("리다이렉트 완료");
	}

	private String getFileName(Part part) {
		String contentDispositionHeader = part.getHeader("content-disposition");
		if (contentDispositionHeader == null) {
			return null;
		}
		String[] elements = contentDispositionHeader.split(";");
		for (String element : elements) {
			if (element.trim().startsWith("filename")) {
				return element.substring(element.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

}
